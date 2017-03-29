#ifndef OBSERVER_H
#define OBSERVER_H

class Observable;

class Observer
{
public:
    virtual void addSubscription(Observable & toWhat) = 0;
    virtual void removeSubscription(Observable & toWhat) = 0;
    virtual void notify() = 0;
};


#endif
