#include "TrackIntegrator.h"


TrackIntegrator::TrackIntegrator(
        InSignal<unsigned> iLap,
        InSignal<double> iDeltaDistance,
        OutSignal<double> oTrackDistance,
        OutSignal<double> oTrackLength
        )
    : mInDeltaDistance(iDeltaDistance)
    , mInLap(iLap)
    , mOutTrackDistance(oTrackDistance)
    , mOutTrackLength(oTrackLength)
    , mLapCrossing([this]() mutable { return this->LapCrossing(); })
    , mUpdateMetrics([this]() mutable { return this->UpdateMetrics(); })
    , mLapLength(0.0)
    , mLapDistanceCovered(0.0)
{
    mLapCrossing.sensitive(mInLap.onWrite());
    mUpdateMetrics.sensitive(mInDeltaDistance.onWrite());
}

TrackIntegrator::~TrackIntegrator(){}
    

void TrackIntegrator::LapCrossing()
{
    mLapLength = mLapDistanceCovered;
    mOutTrackLength.write(mLapLength);
    mLapDistanceCovered = 0.0;
    mOutTrackDistance.write(0.0);
}

void TrackIntegrator::UpdateMetrics()
{
    mLapDistanceCovered += mInDeltaDistance.read();
    mOutTrackDistance.write(mLapDistanceCovered);
}
