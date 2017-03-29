#pragma once

#include <string>
#include <sstream>

class BasicProperty
{
public:
    //Property has to have a name
    virtual const std::string& name() = 0;
    //for writing into a stream
    virtual void inspect(std::ostream & stream) = 0;
};
