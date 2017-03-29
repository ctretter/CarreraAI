#include <iostream>
#include <string>
#include <array>
#include <sstream>
#include <fstream>
#include <iomanip>
#include <cassert>

#include "Slot.h"
#include "Signal.h"
#include "XCorrelator.h"
#include "DeltaDiffer.h"
#include "SimpleTracer.h"
#include "TrackIntegrator.h"

struct StimFromFileReplay
{
    StimFromFileReplay(
        std::string FileName,
        OutSignal<double> t,
        OutSignal<double> DistanceEst,
        OutSignal<GyroProvider::aRadiant> Yaw,
        OutSignal<double> Speed,
        OutSignal<unsigned> LapNumber)
        : oTime(t)
        , oDistanceEst(DistanceEst)
        , oYaw(Yaw)
        , oSpeed(Speed)
        , oLap(LapNumber)
        , mLapNumber(0)
        , mLastDistanceEstimated(0.0)
        , mFile(FileName)
    {
    }

    void rewind()
    {
        mFile.clear();
        mFile.seekg(0, std::ios::beg);
        
        oTime.write(0);
        oDistanceEst.write(0);
        oYaw.write(0.0);
        oSpeed.write(0.0);
        mLapNumber = 0;
        mLastDistanceEstimated = 0.0;
        mCurrentContinousEstimatedDistance = 0.0;
    }

    void parseAndOutput(const std::string& line)
    {
        double time = 0.0;
        double distance = -1.0;
        double yaw = 0.0;
        double speed = 0.0;
        double distance_corrected = -1.0;
        unsigned target_speed = 0;
        unsigned pwm = 0;
        char ignore = '\0';
        
        std::istringstream ss(line);
        //Time Distance Speed Z-Angle Distance Corrected Target Speed PWM Value
        ss >> time >> ignore
           >> distance >> ignore
           >> speed >> ignore
           >> yaw >> ignore
           >> distance_corrected >> ignore
           >> target_speed >> ignore
           >> pwm;

        
        if(distance == 0.0)
        {
            mLapNumber ++;
            oLap.write(mLapNumber);
            mLastDistanceEstimated = 0.0;
        }
        else if(distance != -1.0)
        {
            auto deltaDistanceEst = distance - mLastDistanceEstimated;
            mCurrentContinousEstimatedDistance += deltaDistanceEst;
            if(deltaDistanceEst <  0.0)
            {
                std::cerr << "But that's fucking wrong, aborting: current distance=" << distance << ", last=" << mLastDistanceEstimated << std::endl;
                assert(false);
            }
        
            oTime.write(time);
            oDistanceEst.write(mCurrentContinousEstimatedDistance);
            oYaw.write(yaw);
            oSpeed.write(speed);
            mLastDistanceEstimated = distance;
        }
        
        
    }
    
    bool step()
    {
        std::string line;
        if(getline(mFile, line))
        {
            parseAndOutput(line);
            return true;
        }
        return false;
    }

private:
    OutSignal<double> oTime;
    OutSignal<double> oDistanceEst;
    OutSignal<GyroProvider::aRadiant> oYaw;
    OutSignal<double> oSpeed;
    OutSignal<unsigned> oLap;

    unsigned mLapNumber;
    double mLastDistanceEstimated;
    double mCurrentContinousEstimatedDistance;
    
    std::ifstream mFile;
};


int main()
{
    Signal<double> t("time", 0);
    Signal<GyroProvider::aRadiant> pitch("pitch", 0.0);
    Signal<GyroProvider::aRadiant> yaw("yaw", 0.0);
    Signal<GyroProvider::aRadiant> roll("roll", 0.0);
    Signal<double> DistanceEstimate("dist_est", 0.0);
    Signal<double> DistanceCorrelated("dist_xcorr", 0.0);
    Signal<double> speed("speed", 0);
    Signal<unsigned> laps("laps", 0);
    Signal<bool> startcorr("xcorr_active", false);
    Signal<double> deltaDistance("delta_d", 0.0);
    Signal<double> error("error", 0.0);
    Signal<double> OnTrackDistance("dist_track", 0.0);
    Signal<double> TrackLength("track_len", 0.0);
    Signal<double> FeedBackDistance("dist_feedback", 0.0);

    DeltaDiffer<double> deltadiffer(DistanceEstimate.in(), deltaDistance.out());

    TrackIntegrator TheTrackIntegrator(laps.in(), deltaDistance.in(),
                                       OnTrackDistance.out(), 
                                       TrackLength.out());
    XCorrelator<> StupdCorrelator(
        t.in(),
        laps.in(),
        yaw.in(),
        OnTrackDistance.in(),
        DistanceCorrelated.out(),
        startcorr);

    Slot ErrorCalculation(
        [&]()
        { error.write(OnTrackDistance.read()- DistanceCorrelated.read()); });
    
    ErrorCalculation.sensitive(OnTrackDistance.onWrite());
    ErrorCalculation.sensitive(DistanceCorrelated.onWrite());
    
    SimpleTracer<6> wr({
            &t,
            &laps,
                //&DistanceEstimate,
            &OnTrackDistance,
            &yaw,
            &DistanceCorrelated,
            &error});
    
    StimFromFileReplay Replay(
        "round7.csv",
        t.out(),
        DistanceEstimate.out(),
        yaw.out(),
        speed.out(),
        laps.out());

    while(Replay.step())
    {
        //std::cout << "step file" << std::endl;
        wr.display();
    }
    std::cout << "stim end" << std::endl;

    StupdCorrelator.DumpPattern();

}
