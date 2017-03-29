#include "Slot.h"

#include "Observable.h"
#include <cassert>

Slot::Slot(tNotify notify)
    : mNotify(notify)
{
}

Slot::~Slot()
{
    for(auto pSub : mSubscriptions)
    {
        assert(pSub);
        pSub->removeSubscriber(static_cast<Observer&>(*this));
    }
}


void Slot::sensitive(Observable & toWhat)
{
    toWhat.addSubscriber(static_cast<Observer&>(*this));
}

void Slot::addSubscription(Observable & toWhat)
{
    mSubscriptions.emplace(&toWhat);
}

void Slot::removeSubscription(Observable & toWhat)
{
    mSubscriptions.erase(&toWhat);
}

void Slot::notify()
{
    //std::cout << "TRIGGERED" << std::endl;
    mNotify();
}


