#pragma once

#include "Signal.h"
#include "Slot.h"

template<class tDifferenciatable>
class DeltaDiffer
{
public:
    DeltaDiffer(InSignal<tDifferenciatable> _i, OutSignal<tDifferenciatable> _o)
        : sComb([this]() mutable { return this->comb(); })
        , iSignal(_i)
        , oDifferenciated(_o)
        , mLast(0.0)
    {
        sComb.sensitive(iSignal.onWrite());
    }

private:
    void comb()
    {
        auto Current = iSignal.read();
        auto Delta = Current - mLast;
        oDifferenciated.write(Delta);
        //std::cout << "Update: Delta=" << Delta
        //<< ", Current=" << Current << ", mLast=" << mLast << std::endl;
        mLast = Current;
    }

    Slot sComb;
    InSignal<tDifferenciatable> iSignal;
    OutSignal<tDifferenciatable> oDifferenciated;
    tDifferenciatable mLast;
};
