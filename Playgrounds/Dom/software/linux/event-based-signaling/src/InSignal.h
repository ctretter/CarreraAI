#pragma once

#include "BasicProperty.h"
#include "PropertyReader.h"

template<class tValue>
class InSignal
    : public BasicProperty
    , public PropertyReader<tValue>
{
public:
    InSignal(BasicProperty & baseProperty,  PropertyReader<tValue> & readProperty)
        : mPropertyBaseAccess(baseProperty)
        , mPropertyReadAccess(readProperty)
        {}

    InSignal(const InSignal & other)
        : mPropertyBaseAccess(other.mPropertyBaseAccess)
        , mPropertyReadAccess(other.mPropertyReadAccess)
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

    virtual tValue read() const
    {
        return mPropertyReadAccess.read();
    }
    
    virtual Event& onWrite()
    {
        return mPropertyReadAccess.onWrite();
    }

private:
    BasicProperty & mPropertyBaseAccess;
    PropertyReader<tValue> & mPropertyReadAccess;
};
