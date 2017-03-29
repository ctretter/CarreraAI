#pragma once
#include "BasicProperty.h"
#include "PropertyReader.h"
#include "PropertyWriter.h"

#include "InSignal.h"
#include "OutSignal.h"

template<class tValue>
class Signal
    : public BasicProperty
    , public PropertyReader<tValue>
    , public PropertyWriter<tValue>
{
public:
    Signal(const std::string & name, const tValue& initial)
        : mName(name)
        , mValue(initial)
    {}

    virtual tValue read() const
    {
        //std::cout << "read on " << mName << "." << std::endl;
        return mValue;
    }

    virtual void write(const tValue & v)
    {
        //std::cout << "wrote to " << mName << "." << std::endl;
        mValue = v;
        onWrite().publish();
    }

    virtual Event& onWrite()
    {
        return mOnWrite;
    }

    virtual const std::string& name()
    {
        return mName;
    }
    
    //for writing into a stream
    virtual void inspect(std::ostream & stream)
    {
        stream << mValue;
    }

    InSignal<tValue> in()
    {
        return InSignal<tValue>(static_cast<BasicProperty&>(*this),
                                static_cast<PropertyReader<tValue>&>(*this));
    }

    OutSignal<tValue> out()
    {
        return OutSignal<tValue>(static_cast<BasicProperty&>(*this),
                                 static_cast<PropertyWriter<tValue>&>(*this));
    }
    
    
    
private:
    std::string mName;
    tValue mValue;
    Event mOnWrite;
};
