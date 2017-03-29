#pragma once

#include "BasicProperty.h"
#include "PropertyWriter.h"

template<class tValue>
class OutSignal
    : public BasicProperty
    , public PropertyWriter<tValue>
{
public:
    OutSignal(BasicProperty & baseProperty,  PropertyWriter<tValue> & writeProperty)
        : mPropertyBaseAccess(baseProperty)
        , mPropertyWriteAccess(writeProperty)
        {}


    OutSignal(const OutSignal & other)
        : mPropertyBaseAccess(other.mPropertyBaseAccess)
        , mPropertyWriteAccess(other.mPropertyWriteAccess)
        {}
    
    //Property has to have a name
    virtual const std::string& name()
    {
        return mPropertyBaseAccess.name();
    }
    
    //for writing into a stream
    virtual void inspect(std::ostream & stream)
    {
        mPropertyBaseAccess.inspect(stream);
    }

    virtual void write(const tValue & v)
    {
        mPropertyWriteAccess.write(v);
    }

private:
    BasicProperty & mPropertyBaseAccess;
    PropertyWriter<tValue> & mPropertyWriteAccess;
};
