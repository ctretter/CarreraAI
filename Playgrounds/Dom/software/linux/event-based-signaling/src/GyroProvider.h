#pragma once

struct GyroProvider
{
    using aRadiant = double;
    OutSignal<aRadiant> & oPitch;
    OutSignal<aRadiant> & oYaw;
    OutSignal<aRadiant> & oRoll;

    GyroProvider(OutSignal<aRadiant> & _p, OutSignal<aRadiant> & _y, OutSignal<aRadiant> & _r)
        : oPitch(_p)
        , oYaw(_y)
        , oRoll(_r)
    {}
};
