#pragma once

#include <deque>
#include <algorithm>

#include "Signal.h"
#include "Slot.h"

template<class aValue, size_t kSampleSize = 500>
class RollingAverage
{
public:
    using aHistory = std::deque<aValue>;
    
    RollingAverage()
        : mHistory(kSampleSize)
        , mRollingAverage(0)
    {}

    RollingAverage(const aHistory& GivenHistory)
        : mHistory(GivenHistory)
        , mRollingAverage(0)
    {
        assert(kSampleSize == GivenHistory.size());
        //First calculate average
        for(aValue v : GivenHistory)
        {
            mRollingAverage += v;
        }
        mRollingAverage /= GivenHistory.size();
    }
        
    void push(const aValue& v)
    {
        //rotate, the first element now falls out
        std::rotate(mHistory.begin(),mHistory.begin()+1, mHistory.end());
        mRollingAverage -= mHistory[0]/(kSampleSize*1.0);

        //insert newest element, contributing to average
        mHistory[0] = v;
        mRollingAverage += v/(kSampleSize*1.0);
    }

    inline aValue getAverage() const
    {
        return mRollingAverage;
    }

    inline const aHistory& getHistory() const
    {
        return mHistory;
    }
    
private:
    std::deque<aValue> mHistory;
    aValue mRollingAverage;
};
