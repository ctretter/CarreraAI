#pragma once

#include "Signal.h"
#include "Slot.h"

class TrackIntegrator
{
public:
    TrackIntegrator(
        InSignal<unsigned> iLap,
        InSignal<double> iDeltaDistance,
        OutSignal<double> oTrackDistance,
        OutSignal<double> oTrackLength
        );

    virtual ~TrackIntegrator();
    
private:
    void LapCrossing();
    void UpdateMetrics();
   
    InSignal<double> mInDeltaDistance;
    InSignal<unsigned> mInLap;
    OutSignal<double> mOutTrackDistance;
    OutSignal<double> mOutTrackLength;
    
    Slot mLapCrossing;
    Slot mUpdateMetrics;

    double mLapLength;
    double mLapDistanceCovered;
};
