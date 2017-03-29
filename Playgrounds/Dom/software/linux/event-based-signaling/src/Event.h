#pragma once
#include "Observable.h"
#include <set>

class Event
    : public Observable
{
public:
    Event();
    virtual ~Event();
    virtual void addSubscriber(Observer & subscriber);
    virtual void removeSubscriber(Observer & subscriber);
    virtual void publish();

private:
    std::set<Observer*> mSubscribers;
};
