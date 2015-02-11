/** @file
 *
 * @ingroup scoreLibrary
 *
 * @brief a container class to manage time events and time processes instances in the time
 *
 * @see TTTimeEvent, TTTimeProcess
 *
 * @authors Théo de la Hogue & Clément Bossut
 *
 * @copyright Copyright © 2013, Théo de la Hogue & Clément Bossut @n
 * This code is licensed under the terms of the "CeCILL-C" @n
 * http://www.cecill.info
 */

#include "TTTimeContainer.h"
#include <libxml/encoding.h>
#include <libxml/xmlwriter.h>
#include <libxml/xmlreader.h>

#define thisTTClass         TTTimeContainer
#define thisTTClassName     "TimeContainer"
#define thisTTClassTags     "time, container"

/****************************************************************************************************/

TTObjectBasePtr TTTimeContainer::instantiate (TTSymbol name, const TTValue arguments)
{
	return new TTTimeContainer(arguments);
}


extern "C" void TTTimeContainer::registerClass()
{
	TTClassRegister(TTSymbol(thisTTClassName), thisTTClassTags, TTTimeContainer::instantiate);
}


TTTimeContainer :: TTTimeContainer (const TTValue& arguments) :
TTTimeProcess(arguments)
{
    TTObject thisObject(this);
    mScheduler.registerObserverForNotifications(thisObject);
}

TTTimeContainer::~TTTimeContainer()
{
    TTObject thisObject(this);
    mScheduler.unregisterObserverForNotifications(thisObject);
}

TTUInt32 TTTimeContainer::getTimeEventDate(TTObject& aTimeEvent)
{
    return TTTimeEventPtr(aTimeEvent.instance())->mDate;
}

TTSymbol& TTTimeContainer::getTimeEventStatus(TTObject& aTimeEvent)
{
    return TTTimeEventPtr(aTimeEvent.instance())->mStatus;
}

TTObject& TTTimeContainer::getTimeEventState(TTObject& aTimeEvent)
{
    return TTTimeEventPtr(aTimeEvent.instance())->mState;
}

TTObject& TTTimeContainer::getTimeEventCondition(TTObject& aTimeEvent)
{
    return TTTimeEventPtr(aTimeEvent.instance())->mCondition;
}

TTObject& TTTimeContainer::getTimeProcessStartEvent(TTObject& aTimeProcess)
{
    return TTTimeProcessPtr(aTimeProcess.instance())->getStartEvent();
}

void TTTimeContainer::setTimeProcessStartEvent(TTObject& aTimeProcess, TTObject& aTimeEvent)
{
    TTTimeProcessPtr(aTimeProcess.instance())->setStartEvent(aTimeEvent);
}

TTObject& TTTimeContainer::getTimeProcessEndEvent(TTObject& aTimeProcess)
{
    return TTTimeProcessPtr(aTimeProcess.instance())->getEndEvent();
}

void TTTimeContainer::setTimeProcessEndEvent(TTObject& aTimeProcess, TTObject& aTimeEvent)
{
    TTTimeProcessPtr(aTimeProcess.instance())->setEndEvent(aTimeEvent);
}

TTUInt32 TTTimeContainer::getTimeProcessDurationMin(TTObject& aTimeProcess)
{
    return TTTimeProcessPtr(aTimeProcess.instance())->mDurationMin;
}

TTUInt32 TTTimeContainer::getTimeProcessDurationMax(TTObject& aTimeProcess)
{
    return TTTimeProcessPtr(aTimeProcess.instance())->mDurationMax;
}

TTBoolean TTTimeContainer::getTimeProcessRunning(TTObject& aTimeProcess)
{
    return TTTimeProcessPtr(aTimeProcess.instance())->mRunning;
}

#if 0
#pragma mark -
#pragma mark Notifications
#endif



#if 0
#pragma mark -
#pragma mark Some Methods
#endif

void TTTimeContainerFindTimeProcess(const TTValue& aValue, TTPtr timeProcessPtrToMatch, TTBoolean& found)
{
    TTObject anObject = aValue[0];
	found = anObject.instance() == (TTObjectBasePtr)timeProcessPtrToMatch;
}

void TTTimeContainerFindTimeEvent(const TTValue& aValue, TTPtr timeEventPtrToMatch, TTBoolean& found)
{
    TTObject anObject = aValue[0];
	found = anObject.instance() == (TTObjectBasePtr)timeEventPtrToMatch;
}

void TTTimeContainerFindTimeEventWithName(const TTValue& aValue, TTPtr timeEventNamePtrToMatch, TTBoolean& found)
{
    TTValuePtr  b = TTValuePtr(timeEventNamePtrToMatch);
    TTSymbol    nameToMatch = (*b)[0];
    TTObject    timeEventToTest = aValue[0];
    
    found = TTTimeEventPtr(timeEventToTest.instance())->mName == nameToMatch;
}

void TTTimeContainerFindTimeProcessWithTimeEvent(const TTValue& aValue, TTPtr timeEventPtrToMatch, TTBoolean& found)
{
    TTObject    aTimeProcess = aValue[0];
    TTValue     v;
    
    // check start event
    found = TTTimeProcessPtr(aTimeProcess.instance())->getStartEvent() == TTObjectBasePtr(timeEventPtrToMatch);
        
    if (found)
        return;
        
    // check end event
    found = TTTimeProcessPtr(aTimeProcess.instance())->getEndEvent() == TTObjectBasePtr(timeEventPtrToMatch);
        
    return;
}

void TTTimeContainerFindTimeCondition(const TTValue& aValue, TTPtr timeConditionPtrToMatch, TTBoolean& found)
{
    TTObject anObject = aValue[0];
	found = anObject.instance() == (TTObjectBasePtr)timeConditionPtrToMatch;
}
