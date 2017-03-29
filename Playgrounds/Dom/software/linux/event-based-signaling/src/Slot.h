#pragma once

#include <functional>
#include <set>

#include "Observer.h"

class Slot
    : public Observer
{
public:
    using tNotify = std::function<void(void)>;
    
    Slot(tNotify notify);
    virtual ~Slot();
    
    void sensitive(Observable & toWhat);
    virtual void addSubscription(Observable & toWhat);
    virtual void removeSubscription(Observable & toWhat);
    virtual void notify();
    
    

private:
    std::set<Observable*> mSubscriptions;
    tNotify mNotify;
};
