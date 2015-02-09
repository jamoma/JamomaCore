/** @file
 *
 * @ingroup scoreLibrary
 *
 * @brief a class to define a condition and a set of different cases
 *
 * @see TTTimeCondition
 *
 * @authors Théo de la Hogue & Clément Bossut
 *
 * @copyright Copyright © 2013, Théo de la Hogue & Clément Bossut @n
 * This code is licensed under the terms of the "CeCILL-C" @n
 * http://www.cecill.info
 */

#include "TTTimeCondition.h"
#include <libxml/encoding.h>
#include <libxml/xmlwriter.h>
#include <libxml/xmlreader.h>

#define thisTTClass         TTTimeCondition
#define thisTTClassName     "TimeCondition"
#define thisTTClassTags     "time, condition"

/****************************************************************************************************/

TT_BASE_OBJECT_CONSTRUCTOR,
mActive(NO),
mReady(NO),
mNotPendingEventCounter(0)
{
    if (arguments.size() == 1)
        mContainer = arguments[0];
    
    addAttribute(Container, kTypeObject);

    addAttribute(Name, kTypeSymbol);
    
    addAttributeWithSetter(Active, kTypeBoolean);
    
    addAttribute(Ready, kTypeBoolean);
    addAttributeProperty(Ready, readOnly, YES);
    
    addAttributeWithGetterAndSetter(DisposeExpression, kTypeSymbol);
    
    registerAttribute(TTSymbol("expressions"), kTypeLocalValue, NULL, (TTGetterMethod)& TTTimeCondition::getExpressions, NULL);
    registerAttribute(TTSymbol("events"), kTypeLocalValue, NULL, (TTGetterMethod)& TTTimeCondition::getEvents, NULL);
    
    addMessage(Clear);
    addMessageWithArguments(EventAdd);
    addMessageWithArguments(EventRemove);
    addMessageWithArguments(EventExpression);
    addMessageWithArguments(EventDefault);
    addMessageWithArguments(ExpressionFind);
    addMessageWithArguments(DefaultFind);
    addMessageWithArguments(ExpressionTest);
    addMessageWithArguments(Trigger);
    addMessageWithArguments(Dispose);
    addMessage(Default);
    
	// needed to be handled by a TTXmlHandler
	addMessageWithArguments(WriteAsXml);
	addMessageProperty(WriteAsXml, hidden, YES);
	addMessageWithArguments(ReadFromXml);
	addMessageProperty(ReadFromXml, hidden, YES);
    
    // needed to be notified by events
    addMessageWithArguments(EventDateChanged);
    addMessageWithArguments(EventStatusChanged);
	
    // generate a random name
    mName = mName.random();
}

TTTimeCondition::~TTTimeCondition()
{
    TTObject empty;
    
    // disable condition
    mActive = NO;
    
    // update each event condition
    for (TTCaseMapIterator it = mCases.begin() ; it != mCases.end() ; it++)
    {
        if (TTObjectBasePtr(it->first)->valid)
            TTObjectBasePtr(it->first)->setAttributeValue(kTTSym_condition, empty);
    }
    
    // remove all receivers
    TTValue     keys, v;
    TTSymbol    key;
    TTObject    aReceiver;
    
    mReceivers.getKeys(keys);
    for (TTUInt32 i = 0; i < keys.size(); i++)
    {
        key = keys[i];
        mReceivers.lookup(key, v);
        aReceiver = v[0];
        
        aReceiver.set(kTTSym_address, kTTAdrsEmpty);
    }
    mReceivers.clear();
}

TTErr TTTimeCondition::setActive(const TTValue& value)
{
    TTBoolean newActive = value[0];
    
    // filter repetitions
    if (newActive != mActive)
    {
        // if the condition is ready to be active
        if (newActive && mReady)
        {
            mActive = YES;
            
            // reset the "not pending event" counter
            mNotPendingEventCounter = 0;
            
            // create the receivers
            TTCaseMapIterator it;
            
            // check if thre is a true case
            for(it = mCases.begin() ; it != mCases.end() ; it++)
            {
                if (it->second.trigger.getAddress() == "true")
                {
                    TTObject event = TTObjectBasePtr(it->first);
                    TTValue none;
                    return Trigger(event, none);
                }
            }
            
            // for each trigger case
            for(it = mCases.begin() ; it != mCases.end() ; it++)
                addReceiver(it->second.trigger.getAddress());
            
            // for dispose case
            addReceiver(mDispose.getAddress());
            
            return kTTErrNone;
        }
        
        if (!newActive)
        {
            mActive = NO;
            
            // reset the "not pending event" counter
            mNotPendingEventCounter = mCases.size();

            // remove all receivers
            TTValue     keys, v;
            TTSymbol    key;
            TTObject    aReceiver;
            
            mReceivers.getKeys(keys);
            for (TTUInt32 i = 0; i < keys.size(); i++)
            {
                key = keys[i];
                mReceivers.lookup(key, v);
                aReceiver = v[0];
                
                aReceiver.set(kTTSym_address, kTTAdrsEmpty);
            }
            mReceivers.clear();
            
            return kTTErrNone;
        }
    }
    
    return kTTErrGeneric;
}

TTErr TTTimeCondition::getExpressions(TTValue& value)
{
    value.clear();
    
    // for each event, append the associated expressions to the result
    for (TTCaseMapIterator it = mCases.begin() ; it != mCases.end() ; it++)
    {
        value.append(it->second.trigger);
    }
    
    // append the dispose expression
    value.append(mDispose);
    
    return kTTErrNone;
}

TTErr TTTimeCondition::getEvents(TTValue& value)
{
    value.clear();
    
    // for each case, append the event to the result
    for (TTCaseMapIterator it = mCases.begin() ; it != mCases.end() ; it++)
    {
        TTObject event = (TTObjectBasePtr)it->first;
        value.append(event);
    }
    
    return kTTErrNone;
}

TTErr TTTimeCondition::Clear()
{
    TTValue none, allEvents;
    
    for (TTCaseMapIterator cit = mCases.begin(); cit != mCases.end(); cit++)
    {
        TTObject event = TTObjectBasePtr(cit->first);
        allEvents.append(event);
    }
    
    for (TTElementIter vit = allEvents.begin() ; vit != allEvents.end() ; vit++)
    {
        TTObject event = TTElement(*vit);
        EventRemove(event, none);
    }
    
    return kTTErrNone;
}

TTErr TTTimeCondition::EventAdd(const TTValue& inputValue, TTValue& outputValue)
{
    TTObject        event, thisObject(this);
    Comportment     aComportment;
    TTValue         v;
    
    switch (inputValue.size())
    {
/* TODO : don't know how to pass Comportment as TTValue
        // if we have two arguments
        case 2 :
            
            // if the second argument isn't a symbol
            if (inputValue[1].type() != kTypeSymbol)
                
                // return an error TODO : should warn the user
                return kTTErrInvalidType;
            
            // if it's a symbol : convert it to an expression
            ExpressionParseFromValue(inputValue[1], anExpression);
            
            // add receivers for the address if needed
            if (anExpression.getAddress() != kTTAdrsEmpty)
                addReceiver(anExpression.getAddress());
*/
        // if we have one or two arguments
        case 1 :
            
            // if the first argument isn't an object
            if (inputValue[0].type() != kTypeObject)
                
                // return en error TODO : should warn the user
                return kTTErrInvalidType;
            
            // if it's an object : convert it to an event
            event = inputValue[0];
            
            // insert the event with an expression
            mCases.insert({{event.instance(), aComportment}});
            
            // increment the "not pending event" counter
            mNotPendingEventCounter++;
            
            // tell the event it is conditioned
            event.set(kTTSym_condition, thisObject);
            
            // observe the event
            event.registerObserverForNotifications(thisObject);
            
            // return no error
            return kTTErrNone;
            
        // if there is less than 1 or more than 2 arguments
        default :
            
            // return an error TODO : should warn the user
            return kTTErrWrongNumValues;
    }
    
    // never evaluated
    return kTTErrGeneric;
}

TTErr TTTimeCondition::EventRemove(const TTValue& inputValue, TTValue& outputValue)
{
    TTObject            event = inputValue[0];
    TTCaseMapIterator   it = mCases.find(event.instance());
    
    // if the event exists
    if (it != mCases.end()) {
        
        TTValue     v;
        TTObject    thisObject(this);
        
        // remove the case
        mCases.erase(it);
        
        // decrement the "not pending event" counter
        mNotPendingEventCounter--;
        
        // tell the event it is not conditioned anymore
        v = TTObject();
        event.set(kTTSym_condition, v);
        
        // don't observe the event anymore
        event.unregisterObserverForNotifications(thisObject);
        
        return kTTErrNone;
    }
    
    return kTTErrValueNotFound;
}

TTErr TTTimeCondition::EventExpression(const TTValue& inputValue, TTValue& outputValue)
{
    TTObject            event = inputValue[0];
    TTCaseMapIterator   it = mCases.find(event.instance());
    
    // if the event exists
    if (it != mCases.end()) {
        
        // replace the old expression by the new one
        Expression newExpression;
        
        ExpressionParseFromValue(inputValue[1], newExpression);
        
        mCases[it->first].trigger = newExpression;
        
        return kTTErrNone;
    }
    
    return kTTErrValueNotFound;
}

TTErr TTTimeCondition::EventDefault(const TTValue &inputValue, TTValue &outputValue)
{
    TTObject            event = inputValue[0];
    TTCaseMapIterator   it = mCases.find(event.instance());
    
    // if the event exists
    if (it != mCases.end()) {
        
        // change its default comportment
        mCases[it->first].dflt = TTBoolean(inputValue[1]);
        
        return kTTErrNone;
    }
    
    return kTTErrValueNotFound;
}

TTErr TTTimeCondition::ExpressionFind(const TTValue& inputValue, TTValue& outputValue)
{
    TTObject            event = inputValue[0];
    TTCaseMapIterator   it = mCases.find(event.instance());
    
    // if the event exists
    if (it != mCases.end()) {
        
        outputValue = it->second.trigger;
        return kTTErrNone;
    }
    
    return kTTErrValueNotFound;
}

TTErr TTTimeCondition::DefaultFind(const TTValue& inputValue, TTValue& outputValue)
{
    TTObject            event = inputValue[0];
    TTCaseMapIterator   it = mCases.find(event.instance());
    
    // if the event exists
    if (it != mCases.end()) {
        
        outputValue = it->second.dflt;
        return kTTErrNone;
    }
    
    return kTTErrValueNotFound;
}

TTErr TTTimeCondition::getDisposeExpression(TTValue &value)
{
    value.clear();
    
    value.append(mDispose);
    
    return kTTErrNone;
}

TTErr TTTimeCondition::setDisposeExpression(const TTValue &value)
{
    ExpressionParseFromValue(value, mDispose);
    
    return kTTErrNone;
}

TTErr TTTimeCondition::ExpressionTest(const TTValue& inputValue, TTValue& outputValue)
{
    Expression      anExpression;
    TTObject        aReceiver;
    TTValue         v;
    
    // parse the input value
    ExpressionParseFromValue(inputValue, anExpression);
    
    // get the receiver for the expression address
    if (!mReceivers.lookup(anExpression.getAddress(), v)) {
        
        aReceiver = v[0];
        
        // ask the value at this address
        return aReceiver.send(kTTSym_Get);
    }
    
    return kTTErrGeneric;
}

TTErr TTTimeCondition::Trigger(const TTValue& inputValue, TTValue& outputValue)
{
    // only if the condition is ready
    if (!mReady)
        return kTTErrNone;
    
    TTList  timeEventToHappen;
    TTList  timeEventToDispose;
    
    // for each case
    for (TTCaseMapIterator it = mCases.begin(); it != mCases.end(); it++)
    {
        TTObject caseEvent = TTObjectBasePtr(it->first);
        
        // if no event are passed : trigger all the events
        if (inputValue.size() == 0)
        {
            timeEventToHappen.append(caseEvent);
            continue;
        }
        
        TTBoolean found = NO;
        
        // check if the event is part of the inputValue to prepare it to be triggered
        for (TTUInt32 i = 0; i < inputValue.size(); i++)
        {
            if (inputValue[i].type() == kTypeObject)
            {
                TTObject event = inputValue[i];
                
                if (event == caseEvent) {
                    timeEventToHappen.append(caseEvent);
                    found = YES;
                    break;
                }
            }
        }
        
        // else prepare it to be disposed
        if (!found)
             timeEventToDispose.append(caseEvent);
    }
    
    // if at least one event is in the trigger list
    if (!timeEventToHappen.isEmpty())
    {
        setReady(NO);
        
        // trigger all events of the trigger list
        for (timeEventToHappen.begin(); timeEventToHappen.end(); timeEventToHappen.next())
        {
            TTObject event = timeEventToHappen.current()[0];
            event.send(kTTSym_Happen);
        }
        
        // dispose all the other events
        for (timeEventToDispose.begin(); timeEventToDispose.end(); timeEventToDispose.next())
        {
            TTObject event = timeEventToDispose.current()[0];
            event.send(kTTSym_Dispose);
        }
    }
    
    return kTTErrNone;
}

TTErr TTTimeCondition::Dispose(const TTValue& inputValue, TTValue& outputValue)
{
    // only if the condition is ready
    if (!mReady)
        return kTTErrNone;
    
    TTList  timeEventToHappen;
    TTList  timeEventToDispose;
    
    // for each case
    for (TTCaseMapIterator it = mCases.begin(); it != mCases.end(); it++)
    {
        TTObject caseEvent = TTObjectBasePtr(it->first);
        
        // if no event are passed : dispose all the events
        if (inputValue.size() == 0)
        {
            timeEventToDispose.append(caseEvent);
            continue;
        }
        
        TTBoolean found = NO;
        
        // check if the event is part of the inputValue to prepare it to be disposed
        for (TTUInt32 i = 0; i < inputValue.size(); i++)
        {
            if (inputValue[i].type() == kTypeObject)
            {
                TTObject event = inputValue[i];
                
                if (event == caseEvent)
                {
                    timeEventToDispose.append(caseEvent);
                    found = YES;
                    break;
                }
            }
        }
        
        // else prepare it to be triggered
        if (!found)
            timeEventToHappen.append(caseEvent);
    }
    
    // if at least one event is in the trigger list
    if (!timeEventToHappen.isEmpty())
    {
        setReady(NO);
        
        // trigger all events of the trigger list
        for (timeEventToHappen.begin(); timeEventToHappen.end(); timeEventToHappen.next())
        {
            TTObject event = timeEventToHappen.current()[0];
            event.send(kTTSym_Happen);
        }
        
        // dispose all the other events
        for (timeEventToDispose.begin(); timeEventToDispose.end(); timeEventToDispose.next())
        {
            TTObject event = timeEventToHappen.current()[0];
            event.send(kTTSym_Dispose);
        }
    }
    
    return kTTErrNone;
}

TTErr TTTimeCondition::Default()
{
    TTValue     v;
    TTSymbol    status;
    
    for (TTCaseMapIterator it = mCases.begin() ; it != mCases.end() ; it++)
    {
        it->first->getAttributeValue(kTTSym_status, v);
        status = v[0];
        
        if (status != kTTSym_eventDisposed && status != kTTSym_eventHappened)
            it->first->sendMessage(it->second.dflt?kTTSym_Happen:kTTSym_Dispose);
    }
    
    return kTTErrNone;
}

TTErr TTTimeCondition::WriteAsXml(const TTValue& inputValue, TTValue& outputValue)
{
	TTObject o = inputValue[0];
	TTXmlHandlerPtr aXmlHandler = (TTXmlHandlerPtr)o.instance();
    if (!aXmlHandler)
		return kTTErrGeneric;
    
    TTObjectBasePtr event;
    TTValue         v, keys;
    TTSymbol        key, name;
    TTCaseMapIterator it;
	
    // Write the name
    xmlTextWriterWriteAttribute((xmlTextWriterPtr)aXmlHandler->mWriter, BAD_CAST "name", BAD_CAST mName.c_str());
    
    // Write the dispose expression
    xmlTextWriterWriteAttribute((xmlTextWriterPtr)aXmlHandler->mWriter, BAD_CAST "dispose", BAD_CAST mDispose.c_str());
    
    // Write each case
    for (it = mCases.begin(); it != mCases.end(); it++) {
        
        Comportment aComportment = it->second;
        
        event = it->first;
        
        // Start a case node
        xmlTextWriterStartElement((xmlTextWriterPtr)aXmlHandler->mWriter, BAD_CAST "case");
        
        // Write the event name
        event->getAttributeValue(kTTSym_name, v);
        name = v[0];
        xmlTextWriterWriteAttribute((xmlTextWriterPtr)aXmlHandler->mWriter, BAD_CAST "event", BAD_CAST name.c_str());
        
        // Write the comportment
        xmlTextWriterWriteAttribute((xmlTextWriterPtr)aXmlHandler->mWriter, BAD_CAST "trigger", BAD_CAST aComportment.trigger.c_str());
        xmlTextWriterWriteAttribute((xmlTextWriterPtr)aXmlHandler->mWriter, BAD_CAST "default", BAD_CAST (aComportment.dflt ? "1" : "0"));
        
        // Close the case node
        xmlTextWriterEndElement((xmlTextWriterPtr)aXmlHandler->mWriter);
    }
    
	return kTTErrNone;
}

TTErr TTTimeCondition::ReadFromXml(const TTValue& inputValue, TTValue& outputValue)
{
	TTObject o = inputValue[0];
	TTXmlHandlerPtr aXmlHandler = (TTXmlHandlerPtr)o.instance();
    if (!aXmlHandler)
		return kTTErrGeneric;
    
    TTValue v, out;
    
    // Condition node
    if (aXmlHandler->mXmlNodeName == kTTSym_condition) {
        
        // Get the name
        if (!aXmlHandler->getXmlAttribute(kTTSym_name, v, YES)) {
            
            if (v.size() == 1) {
                
                if (v[0].type() == kTypeSymbol) {
                    
                    mName = v[0];
                }
            }
        }
        
        // Get the dispose expression
        if (!aXmlHandler->getXmlAttribute(TTSymbol("dispose"), v, YES)) {
            
            if (v.size() == 1) {
                
                if (v[0].type() == kTypeSymbol) {
                    
                    ExpressionParseFromValue(v, mDispose);
                }
            }
        }
    }
    
    // Case node
    if (aXmlHandler->mXmlNodeName == kTTSym_case) {
        
        // get the event
        if (!aXmlHandler->getXmlAttribute(kTTSym_event, v, YES)) {
            
            // Find the event using his name from our container
            if (!mContainer.send("TimeEventFind", v, out)) // théo : it is bad because we suppose it is a Scenario
            {
                EventAdd(out, v); // TODO : better using the second argument
                
                // get the expressions
                if (!aXmlHandler->getXmlAttribute(TTSymbol("trigger"), v, YES)) {
                    out.append(v[0]);
                    EventExpression(out, v);
                    out.pop_back();
                }
                if (!aXmlHandler->getXmlAttribute(TTSymbol("default"), v, NO)) {
                    out.append(v[0] == 1);
                    EventDefault(out, v);
                }
            }
        }
    }
	
	return kTTErrNone;
}

TTErr TTTimeCondition::EventDateChanged(const TTValue& inputValue, TTValue& outputValue)
{
    TT_ASSERT("TTTimeCondition::EventDateChanged : inputValue is correct", inputValue.size() == 1 && inputValue[0].type() == kTypeObject);
    
    TTObject            event = inputValue[0];
    TTCaseMapIterator   it = mCases.find(event.instance());
    TTUInt32            date;
    TTValue             v;
    
    // if the event exists
    if (it != mCases.end()) {
        
        // get the date
        event.get(kTTSym_date, v);
        date = v[0];
        
        return kTTErrNone;
    }
    
    TTLogError("TTTimeCondition::EventDateChanged %s : wrong event\n", mName.c_str());
    return kTTErrGeneric;
}

TTErr TTTimeCondition::EventStatusChanged(const TTValue& inputValue, TTValue& outputValue)
{
    TT_ASSERT("TTTimeCondition::EventStatusChanged : inputValue is correct", inputValue.size() == 3 && inputValue[0].type() == kTypeObject);
    
    TTObject            event = inputValue[0];
    TTCaseMapIterator   it = mCases.find(event.instance());
    TTSymbol            newStatus = inputValue[1], oldStatus = inputValue[2];
    
    TTBoolean           different = newStatus != oldStatus; // JamomaCore #321
    TT_ASSERT("TTTimeCondition::EventStatusChanged : status effectively changed", different);
    
    // inside a container ignore event notifications if the container is not running
    TTBoolean running = YES;
    if (mContainer.valid())
        mContainer.get("running", running);
    
    if (!running)
        return kTTErrGeneric;
    
    // if the event exists
    if (it != mCases.end())
    {
        switch (mNotPendingEventCounter)
        {
            // all events are pending
            case 0:
            {
                // if one of the pending events happens
                if (oldStatus == kTTSym_eventPending &&
                    newStatus == kTTSym_eventHappened)
                {
                    return setReady(NO);
                }
                
                break;
            }
            
            // there are still not pending events
            default:
            {
                // a not pending event becomes pending
                if (newStatus == kTTSym_eventPending)
                {
                    // decrement the "not pending event" counter
                    if (--mNotPendingEventCounter == 0)
                    {
                        return setReady(YES);
                    }
                }
                
                break;
            }
        }
        
        if (mNotPendingEventCounter == 0 && !mReady)
            TTLogError("TTTimeCondition::EventStatusChanged %s : not pending event counter is equal to 0 but is not ready\n", mName.c_str());
        
        if (mNotPendingEventCounter > 0 && mReady)
            TTLogError("TTTimeCondition::EventStatusChanged %s : not pending event counter is greater than 0 but is ready\n", mName.c_str());
        
        if (mNotPendingEventCounter < 0)
            TTLogError("TTTimeCondition::EventStatusChanged %s : not pending event counter is lower than 0\n", mName.c_str());
        
        if (mNotPendingEventCounter > mCases.size())
            TTLogError("TTTimeCondition::EventStatusChanged %s : not pending event counter is greter than the number of cases\n", mName.c_str());
        
        return kTTErrNone;
    }
    
    TTLogError("TTTimeCondition::EventStatusChanged %s : wrong event\n", mName.c_str());
    return kTTErrGeneric;
}

TTErr TTTimeCondition::setReady(TTBoolean newReady)
{
    // filter repetitions
    if (newReady != mReady)
    {
        // set the ready value
        mReady = newReady;
        
        // send notification
        sendNotification(kTTSym_ConditionReadyChanged, mReady);
        
        // notify ready observers
        // this is useful for network observation (see in Modular)
        TTAttributePtr readyAttribute;
        this->findAttribute("ready", &readyAttribute);
        readyAttribute->sendNotification(kTTSym_notify, mReady);
    }
    
    return kTTErrGeneric;
}

void TTTimeCondition::addReceiver(TTAddress anAddress)
{
    TTObject    aReceiver, aReceiverCallback;
    TTValue     args, baton, none;
    
    // if there is no receiver for the expression address
    if (anAddress != kTTAdrsEmpty && mReceivers.lookup(anAddress, none))
    {
        // no callback to get the received address back
        args = TTObject();
        
        // a callback to get the received value back
        aReceiverCallback = TTObject("callback");
        
        baton = TTValue(TTObject(this), anAddress);
        aReceiverCallback.set(kTTSym_baton, baton);
        aReceiverCallback.set(kTTSym_function, TTPtr(&TTTimeConditionReceiverReturnValueCallback));
        
        args.append(aReceiverCallback);
        
        aReceiver = TTObject(kTTSym_Receiver, args);
        
        // register the receiver
        mReceivers.append(anAddress, aReceiver);
        
        // set the address of the receiver (and this will try to get the current value)
        aReceiver.set(kTTSym_address, anAddress);
    }
}

#if 0
#pragma mark -
#pragma mark Some Methods
#endif

TTErr TTTimeConditionReceiverReturnValueCallback(const TTValue& baton, const TTValue& data)
{
    TTObject            o;
    TTTimeConditionPtr  aTimeCondition;
    TTAddress           anAddress;
    Expression          triggerExp;
    TTList              timeEventToHappen;
    TTList              timeEventToDispose;
    TTValue             v;
	
	// unpack baton (condition, address)
	o = baton[0];
	aTimeCondition = (TTTimeConditionPtr)o.instance();
    
    // only if the condition is ready
    if (!aTimeCondition->mReady)
        return kTTErrNone;
    
    anAddress = baton[1];
    
    // if the dispose expression is true
    if (anAddress == aTimeCondition->mDispose.getAddress() && aTimeCondition->mDispose.evaluate(data))
    {
        aTimeCondition->setReady(NO);
        
        // dispose every event
        aTimeCondition->getEvents(v);
        for (TTElementIter it = v.begin() ; it != v.end() ; it++)
        {
            TTObject event = TTElement(*it);
            event.send(kTTSym_Dispose);
        }
    }
    // if didn't dispose
    else {
        
        // for each event's expressions matching the incoming address
        for (TTCaseMapIterator it = aTimeCondition->mCases.begin(); it != aTimeCondition->mCases.end(); it++)
        {
            TTObject caseEvent = TTObjectBasePtr(it->first);

            triggerExp = it->second.trigger;
            
            // if the test of the expression passes
            if (anAddress == triggerExp.getAddress() && triggerExp.evaluate(data))
            {
                // append the event to the trigger list
                timeEventToHappen.append(caseEvent);
            } else {
                
                // append the event to the dispose list
                timeEventToDispose.append(caseEvent);
            }
        }
        
        // if at least one event is in the trigger list
        if (!timeEventToHappen.isEmpty()) {
            
            aTimeCondition->setReady(NO);
            
            // trigger all events of the trigger list
            for (timeEventToHappen.begin(); timeEventToHappen.end(); timeEventToHappen.next())
            {
                o = timeEventToHappen.current()[0];
                o.send(kTTSym_Happen);
            }
            
            // dispose all the other events
            for (timeEventToDispose.begin(); timeEventToDispose.end(); timeEventToDispose.next())
            {
                o = timeEventToDispose.current()[0];
                o.send(kTTSym_Dispose);
            }
        }
    }
    
    return kTTErrNone;
}
