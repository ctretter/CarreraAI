#pragma once

#include "Event.h"

template<class tValue>
class PropertyReader
{
public:
    virtual tValue read() const = 0;
    virtual Event& onWrite() = 0;
};
