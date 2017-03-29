#pragma once

#include "RollingAverage.h"
#include "GyroProvider.h"
#include "Signal.h"
#include "Slot.h"

template<size_t kHistorySize = 500, size_t kShift = 35>
class XCorrelator
{
public:
    using aTime = double; //s
    using aRadiant = GyroProvider::aRadiant;

    struct aYawDistancePair
    {
        aYawDistancePair(double d, aRadiant y)
            : distance(d)
            , yaw(y)
        {}
        double distance;
        aRadiant yaw;
    };
    
    InSignal<aTime> iTime;
    //InSignal<aRadiant> & iPitch;
    InSignal<unsigned> iLaps;
    InSignal<aRadiant> iYaw;
    //InSignal<aRadiant> & iRoll;
    InSignal<double> iEstDistance;
    OutSignal<double> oCorrDistance;
    Slot sRecalc;
    Slot sUpdateMetrics;
    Slot sCrossingFinishLine;

    
    XCorrelator(InSignal<aTime> _t,
                InSignal<unsigned> _laps,
                //InSignal<aRadiant> & _p,
                InSignal<aRadiant> _y,
                //InSignal<aRadiant> & _r,
                InSignal<double> _ed,
                OutSignal<double> _xd,
                Signal<bool> & _startcorr)
        : iTime(_t)
        , iLaps(_laps)
          //, iPitch(_p)
        , iYaw(_y)
          //, iRoll(_r)
        , iEstDistance(_ed)
        , oCorrDistance(_xd)
        
        , sRecalc([this]() mutable { return this->recalculate(); })
        , sUpdateMetrics([this]() mutable { return this->updateMetrics(); })
        , sCrossingFinishLine([this]() mutable { return this->CrossingFinishLine(); })
        , mHistory()
        , mStartCorrelation(_startcorr)
    {
        sUpdateMetrics.sensitive(iTime.onWrite());
        sRecalc.sensitive(iEstDistance.onWrite());
        sCrossingFinishLine.sensitive(iLaps.onWrite());
        mStartCorrelation.write(false);
        mEstimatedLapDistance = 0.0;

        resetRecording();
        mRecordTrack = true;
    }

    void resetRecording()
    {
        mPattern.clear();
    }

    void DumpPattern()
    {
        std::cout << "Pattern Dump (s=" << mPattern.size() << "):" << std::endl;
        for(auto DistanceYawPair : mPattern)
        {
            std::cout << std::setfill (' ')
                      << "d=" << std::setw (10) << std::left << DistanceYawPair.distance
                      << "y=" << std::setw (10) << std::left << DistanceYawPair.yaw << std::endl;
        }
    }
    
    void CrossingFinishLine()
    {
        //Triggered on new lap
        //Check what's the current estimated distance - todo:magic
        auto CurrentLap = iLaps.read();
        
        if(mRecordTrack)
        {            
            //Try again if we are less than one track piece
            if(mEstimatedLapDistance < 100.0)
            {
                resetRecording();
                std::cout << "Current Lap Length is " << mEstimatedLapDistance << ", try again MF." << std::endl;
            }
            else //we have a recorded pattern
            {
                mRecordTrack = false;
                mStartCorrelation.write(true);
                
            }
        }

        mEstimatedLapDistance = 0.0;
    }
    
    void updateMetrics()
    {
        auto yaw = iYaw.read();
        mEstimatedLapDistance = iEstDistance.read();
        mHistory.push(yaw);
        if(mRecordTrack)
        {
            mPattern.push_back(aYawDistancePair(mEstimatedLapDistance, yaw));
        }
    }
    
    void recalculate()
    {
        if(!mStartCorrelation.read())
        {
            oCorrDistance.write(0.0);
            return;
        }
        
        //Find nearest match in distance of recorded pattern
        auto EstimatedDistanceMatch = mPattern.begin();
        while(EstimatedDistanceMatch->distance < mEstimatedLapDistance && EstimatedDistanceMatch != mPattern.end()) {
            ++EstimatedDistanceMatch;
        }

        if(EstimatedDistanceMatch == mPattern.end())
        {
            //Correlator cannot correlate, thus give the estimate
            oCorrDistance.write(0.0);
            return;
        }

        //Get the average of the current history
        auto HistoryAverage = mHistory.getAverage();

        // Move iterator left by "shift" and pattern.size()
        auto searchStartIterator = EstimatedDistanceMatch;
        for(size_t i = 0; i < (kShift + mHistory.getHistory().size()); ++i) {
            if(searchStartIterator ==  mPattern.begin()) {
                searchStartIterator =  mPattern.end();
            }
            --searchStartIterator;
        }

        double sum = 0;
        double maxSum = std::numeric_limits<double>::min();
        auto CorrelatedDistanceMatch = EstimatedDistanceMatch;
        for(size_t s = 0; s < 2*kShift; ++s) {
            // Calculate average for this part of the route
            double routeAverage = 0;
            auto routeIterator = searchStartIterator;
            for(size_t i = 0; i < mHistory.getHistory().size(); i++) {
                routeAverage += routeIterator->yaw;
                ++routeIterator;
                if(routeIterator == mPattern.end()) {
                    routeIterator = mPattern.begin();
                }
            }
            routeAverage /= mPattern.size();

            sum = 0;
            routeIterator = searchStartIterator;
            for(const auto HistoryItem : mHistory.getHistory())
            {
                sum += (HistoryItem - HistoryAverage) * (routeIterator->yaw - routeAverage);
                if(routeIterator == mPattern.end()) {
                    routeIterator = mPattern.begin();
                }
            }
            
            if(sum > maxSum) {
                maxSum = sum;
                CorrelatedDistanceMatch = routeIterator;
            }
            searchStartIterator++;
            if(searchStartIterator == mPattern.end()) {
                searchStartIterator = mPattern.begin();
            }

            //Now we got the correlated distance, update
            oCorrDistance.write(CorrelatedDistanceMatch->distance);
        }
    }

private:
    RollingAverage<aRadiant, kHistorySize> mHistory;
    std::deque<aYawDistancePair> mPattern;
    Signal<bool> & mStartCorrelation;
    double mEstimatedLapDistance;
    bool mRecordTrack;
};
