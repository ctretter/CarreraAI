#pragma once

#include "BasicProperty.h"

template<size_t TraceSize>
struct SimpleTracer
{
    using TraceSet = std::array<BasicProperty*, TraceSize>;
    
    SimpleTracer(const TraceSet& toTrace)
        : mToTrace(toTrace)
    {
    }


    void display()
    {
        std::cout << std::setfill (' ');
        for(auto pToTrace : mToTrace)
        {
            std::cout << pToTrace->name() << "=" << std::setw (10) << std::left;
            pToTrace->inspect(std::cout);
        }

        std::cout << std::endl;
    }
    

private:
    TraceSet mToTrace;
};
