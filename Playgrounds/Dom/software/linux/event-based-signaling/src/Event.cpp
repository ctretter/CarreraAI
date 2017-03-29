#include "Event.h"


Event::Event()
: mSubscribers()
{}

Event::~Event()
{
    for(auto pSubscriber : mSubscribers)
    {
        pSubscriber->removeSubscription(static_cast<Observable&>(*this));
    }
}

void Event::addSubscriber(Observer & subscriber)
{
    mSubscribers.emplace(&subscriber);
}

void Event::removeSubscriber(Observer & subscriber)   
{
    mSubscribers.erase(&subscriber);
}

void Event::publish()   
{
    for(auto pSubscriber : mSubscribers)
    {
        pSubscriber->notify();
    }
}
