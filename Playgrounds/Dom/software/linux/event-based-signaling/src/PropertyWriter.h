#pragma once

template<class tValue>
class PropertyWriter
{
public:
    virtual void write(const tValue & v) = 0;
};
