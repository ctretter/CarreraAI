#pragma once

#include "Observer.h"

class Observable
{
public:
    virtual void addSubscriber(Observer & subscriber) = 0;
    virtual void removeSubscriber(Observer & subscriber) = 0;
    virtual void publish() = 0;
};
