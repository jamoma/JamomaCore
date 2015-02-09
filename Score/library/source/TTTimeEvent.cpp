/** @file
 *
 * @ingroup scoreLibrary
 *
 * @brief a class to define an event
 *
 * @see TTTimeProcess
 *
 * @authors Théo de la Hogue & Clément Bossut
 *
 * @copyright Copyright © 2013, Théo de la Hogue & Clément Bossut @n
 * This code is licensed under the terms of the "CeCILL-C" @n
 * http://www.cecill.info
 */

#include "TTTimeEvent.h"
#include <libxml/encoding.h>
#include <libxml/xmlwriter.h>
#include <libxml/xmlreader.h>

#define thisTTClass         TTTimeEvent
#define thisTTClassName     "TimeEvent"
#define thisTTClassTags     "time, event"

#if 0
#pragma mark -
#pragma mark Constructor / Destructor
#endif

TT_BASE_OBJECT_CONSTRUCTOR,
mName(kTTSymEmpty),
mDate(0),
mStatus(kTTSym_eventWaiting),
mMute(NO),
mState(kTTSym_Script),
mMinReachedProcessesCounter(0),
mEndedProcessesCounter(0),
mDisposedProcessesCounter(0),
mRequestWait(NO),
mRequestHappen(NO),
mRequestDispose(NO),
mPushing(NO)
{
    TTValue none;
    
    if (arguments.size() >= 1)
        mDate = arguments[0];

    if (arguments.size() == 2)
        mContainer = arguments[1];
    
    addAttribute(Container, kTypeObject);

    addAttribute(Name, kTypeSymbol);
   	addAttributeWithSetter(Date, kTypeUInt32);
    addAttribute(Mute, kTypeBoolean);
    addAttributeWithGetterAndSetter(State, kTypeObject);
    addAttributeWithSetter(Condition, kTypeObject);
    addAttributeWithSetter(Status, kTypeSymbol);
    
    addAttribute(AttachedProcesses, kTypeLocalValue);
    addAttributeProperty(AttachedProcesses, readOnly, YES);
    addAttributeProperty(AttachedProcesses, hidden, YES);
    
    addMessage(Wait);
    addMessage(Happen);
    addMessage(Dispose);
    addMessage(StatusUpdate);
    
    addMessage(StatePush);
    addMessage(StateClear);
    
    addMessageWithArguments(StateAddressGetValue);
    addMessageWithArguments(StateAddressSetValue);
    addMessageWithArguments(StateAddressClear);
    addMessageWithArguments(StateAddresses);
    
    addMessageWithArguments(ProcessAttach);
    addMessageWithArguments(ProcessDetach);
    addMessageWithArguments(ProcessDurationMinReached);
    addMessageWithArguments(ProcessEnded);
    addMessageWithArguments(ProcessDisposed);
    
	// needed to be handled by a TTXmlHandler
	addMessageWithArguments(WriteAsXml);
	addMessageProperty(WriteAsXml, hidden, YES);
	addMessageWithArguments(ReadFromXml);
	addMessageProperty(ReadFromXml, hidden, YES);
    
    // generate a random name
    mName = mName.random();
    
    // set state script as flattened
    mState.set("flattened", TTBoolean(YES));
}

TTTimeEvent::~TTTimeEvent()
{
    ;
}

#if 0
#pragma mark -
#pragma mark Accessors
#endif

TTErr TTTimeEvent::setDate(const TTValue& value)
{
    TT_ASSERT("TTTimeEvent::setDate : value is correct", value.size() == 1 && (value[0].type() == kTypeInt32 || value[0].type() == kTypeUInt32));
    
    TTUInt32 newDate = value[0];
    
    // filter repetitions
    if (newDate != mDate) {
        
        // set the internal date value
        mDate = newDate;
        
        // notify each date attribute observers
        sendNotification(kTTSym_EventDateChanged, TTObject(this));
    }
    
    return kTTErrNone;
}

TTErr TTTimeEvent::setCondition(const TTValue& value)
{
    TT_ASSERT("TTTimeEvent::setCondition : value is correct", value.size() == 1 && value[0].type() == kTypeObject);
    
    TTObject newCondition = value[0];
    
    // filter repetitions
    if (newCondition != mCondition)
    {
        mCondition = newCondition;
        
        // notify each condition attribute observers
        TTValue v(TTObject(this), mCondition);
        sendNotification("EventConditionChanged", v);
    }
    
    return kTTErrNone;
}

TTErr TTTimeEvent::setStatus(const TTValue& value)
{
    if (mContainer.valid())
    {
        TTBoolean running;
        mContainer.get("running", running);
        if (running)
        {
            TTLogError("TTTimeEvent::setStatus %s : couldn't set status using direct accessor when the container is running\n", mName.c_str());
            return kTTErrGeneric;
        }
    }
    
    return applyStatus(value);
}

TTErr TTTimeEvent::setState(const TTValue& value)
{
    mState = value;
  /*
    // check if the state is flattened
    TTBoolean flattened;
    mState.get("flattened", flattened);
    if (!flattened)
        mState.send("Flatten");
   */
}

TTErr TTTimeEvent::getState(TTValue& value)
{
    /*
     // check if the state is flattened
     TTBoolean flattened;
     mState.get("flattened", flattened);
     if (!flattened)
     mState.send("Flatten");
     */
    
    value = mState;
}

#if 0
#pragma mark -
#pragma mark Status Management
#endif

TTErr TTTimeEvent::Wait()
{
    // filter repetitions here because the wait request is sent many times to reset a score
    if (mStatus == kTTSym_eventWaiting)
        return kTTErrNone;
    
    if (mRequestWait)
    {
        // don't loog error in this case because if many processes shared the same end event
        // they can request end event waiting at the same time when start event waits (see in TTTimeProcess::EventStatusChanged)
        return kTTErrGeneric;
    }
    
    mRequestWait = YES;
    
    // if the event have no container, update the status our self
    if (!mContainer.valid())
        return StatusUpdate();
    
    return  kTTErrNone;
}

TTErr TTTimeEvent::Happen()
{
    if (mStatus != kTTSym_eventWaiting && mStatus != kTTSym_eventPending)
    {
        TTLogError("TTTimeEvent::Happen %s : is not waiting or pending (%s)\n", mName.c_str(), mStatus.c_str());
        return kTTErrGeneric;
    }
    
    if (mRequestHappen)
    {
        TTLogError("TTTimeEvent::Happen %s : this resquest is already registered\n", mName.c_str());
        return kTTErrGeneric;
    }
    
    mRequestHappen = YES;
    
    // if the event have no container, update the status our self
    if (!mContainer.valid())
        return StatusUpdate();
    
    return kTTErrNone;
}

TTErr TTTimeEvent::Dispose()
{
    // if the event is already happened or disposed : do nothing
    if (mStatus == kTTSym_eventHappened)
    {
        TTLogError("TTTimeEvent::Dispose %s : is already happened\n", mName.c_str());
        return kTTErrGeneric;
    }
    
    if (mStatus == kTTSym_eventDisposed)
    {
        TTLogError("TTTimeEvent::Dispose %s : is already disposed\n", mName.c_str());
        return kTTErrGeneric;
    }
    
    if (mRequestDispose)
    {
        TTLogError("TTTimeEvent::Dispose %s : this resquest is already registered\n", mName.c_str());
        return kTTErrGeneric;
    }
    
    mRequestDispose = YES;
    
    // if the event have no container, update the status our self
    if (!mContainer.valid())
        return StatusUpdate();
    
    return kTTErrNone;
}

TTErr TTTimeEvent::StatusUpdate()
{
    // if there is a request to make the event to wait
    if (mRequestWait)
    {
        mRequestWait = NO;
        return applyStatus(kTTSym_eventWaiting);
    }
    
    // if there is a request to make the event happen
    if (mRequestHappen)
    {
        mRequestHappen = NO;

        if (StatePush())
            TTLogError("TTTimeEvent::StatusUpdate %s : StatePush error\n", mName.c_str());
        
        return applyStatus(kTTSym_eventHappened);
    }
    
    // if there is a request to dispose the event
    if (mRequestDispose)
    {
        mRequestDispose = NO;
        return applyStatus(kTTSym_eventDisposed);
    }
    
    // any event with attached processes
    if (mAttachedProcesses.size() != 0)
    {
        // a conditioned event becomes pending when all attached processes have reached their minimal duration bound
        if (mCondition.valid() &&
            mStatus == kTTSym_eventWaiting &&
            mMinReachedProcessesCounter == mAttachedProcesses.size())
        {
            return applyStatus(kTTSym_eventPending);
        }
        
        // an event is disposed when all attached processes are disposed
        if (mStatus == kTTSym_eventWaiting &&
            mDisposedProcessesCounter == mAttachedProcesses.size())
        {
            return applyStatus(kTTSym_eventDisposed);
        }
        
        // when all attached processes are ended or disposed
        if (mEndedProcessesCounter + mDisposedProcessesCounter == mAttachedProcesses.size())
        {
            // a conditioned pending event forces its condition to apply its default case
            if (mCondition.valid() &&
                mStatus == kTTSym_eventPending)
            {
                return mCondition.send("Default");
            }
            // a non conditioned waiting event happens
            else if (!mCondition.valid() &&
                     mStatus == kTTSym_eventWaiting)
            {
                if (StatePush())
                    TTLogError("TTTimeEvent::StatusUpdate %s : StatePush error\n", mName.c_str());
                
                return applyStatus(kTTSym_eventHappened);
            }
        }
    }
    
    // waiting event with no attached process
    else if (mStatus == kTTSym_eventWaiting)
    {
        // set conditionned event as pending
        if (mCondition.valid())
        {
            return applyStatus(kTTSym_eventPending);
        }
        // or make none conditioned event to happen at its date
        else if (mContainer.valid())
        {
            TTValue v;
            mContainer.get("date", v);
            TTUInt32 containerDate = v[0];
            
            if (mDate <= containerDate)
            {
                if (StatePush())
                    TTLogError("TTTimeEvent::StatusUpdate %s : StatePush error\n", mName.c_str());
                
                return applyStatus(kTTSym_eventHappened);
            }
        }
    }
    
    return kTTErrGeneric;
}

TTErr TTTimeEvent::applyStatus(const TTValue& value)
{
    TT_ASSERT("TTTimeEvent::applyStatus : value is correct", value.size() == 1 && value[0].type() == kTypeSymbol);
    
    TTSymbol lastStatus = mStatus;
    
    // set status
    mStatus = value[0];
    
    // log error if conflicted request are detected
    if (mRequestWait + mRequestHappen + mRequestDispose > 1)
        TTLogError("TTTimeEvent::applyStatus %s : at %d requests have been received\n", mName.c_str(), mRequestWait + mRequestHappen + mRequestDispose);
    
    // reset requests
    mRequestWait = NO;
    mRequestHappen = NO;
    mRequestDispose = NO;
    
    // reset counts if the event is not pending
    if (mStatus != kTTSym_eventPending)
    {
        mMinReachedProcessesCounter = 0;
        mEndedProcessesCounter = 0;
        mDisposedProcessesCounter = 0;
    }
    
    // filter repetitions
    if (lastStatus == mStatus)
    {
        // log error only for non waiting status repetition
        if (mStatus != kTTSym_eventWaiting)
            TTLogError("TTTimeEvent::applyStatus %s : new status equals last status (%s)\n", mName.c_str(), mStatus.c_str());
        
        return kTTErrGeneric;
    }
#ifdef TTSCORE_DEBUG
    TTLogMessage("TTTimeEvent::applyStatus %s : %s -> %s\n", mName.c_str(), lastStatus.c_str(), mStatus.c_str());
#endif
    // send notification
    TTValue v = TTObject(this);
    v.append(mStatus);
    v.append(lastStatus);
    sendNotification(kTTSym_EventStatusChanged, v);
    
    return kTTErrNone;
}

#if 0
#pragma mark -
#pragma mark State Management
#endif

TTErr TTTimeEvent::StatePush()
{
    if (mMute)
        return kTTErrNone;
    
    if (!mPushing)
    {
        mPushing = YES;
        
        // recall the state
        TTErr err = mState.send(kTTSym_Run);
        
        mPushing = NO;
        
        return err;
    }
    
    return kTTErrGeneric;
}

TTErr TTTimeEvent::StateClear()
{
    TTErr err = mState.send("Clear");
    mState.set("flattened", TTBoolean(YES));
    return err;
}

TTErr TTTimeEvent::StateAddressGetValue(const TTValue& inputValue, TTValue& outputValue)
{
    if (inputValue.size() == 1)
    {
        if (inputValue[0].type() == kTypeSymbol)
        {
            TTValue     v;
            TTAddress   address = inputValue[0];
            
            // check if the state is flattened
            TTBoolean flattened;
            mState.get("flattened", flattened);
            if (!flattened)
                mState.send("Flatten");
            
            // get the lines of the state
            mState.get("flattenedLines", v);
            TTListPtr flattenedLines = TTListPtr(TTPtr(v[0]));
            
            // find the line at address
            TTErr err = flattenedLines->find(&TTScriptFindAddress, (TTPtr)&address, v);
            
            if (err)
                return err;
            
            TTDictionaryBasePtr aLine = TTDictionaryBasePtr((TTPtr)v[0]);
            
            // get the value
            aLine->getValue(outputValue);
            
            return  kTTErrNone;
        }
    }
    
    return kTTErrGeneric;
}

TTErr TTTimeEvent::StateAddressSetValue(const TTValue& inputValue, TTValue& outputValue)
{
    if (inputValue.size() >= 1)
    {
        if (inputValue[0].type() == kTypeSymbol)
        {
            TTValue     v;
            TTAddress   address = inputValue[0];
            
            // check if the state is flattened
            TTBoolean flattened;
            mState.get("flattened", flattened);
            if (!flattened)
                mState.send("Flatten");
            
            // get the lines of the state
            mState.get("flattenedLines", v);
            TTListPtr flattenedLines = TTListPtr(TTPtr(v[0]));
            
            // find the line at address
            TTErr err = flattenedLines->find(&TTScriptFindAddress, (TTPtr)&address, v);
            
            // if the line doesn't exist : append it to the state
            if (err)
            {
                return mState.send("AppendCommand", inputValue);
            }
            else
            {
                TTDictionaryBasePtr aLine = TTDictionaryBasePtr((TTPtr)v[0]);
                TTValue value;
                
                value.copyFrom(inputValue, 1);
                
                // set the value
                aLine->setValue(value);
                
                return  kTTErrNone;
            }
        }
    }
    
    return kTTErrGeneric;
}

TTErr TTTimeEvent::StateAddressClear(const TTValue& inputValue, TTValue& outputValue)
{
    TTValue none;
    
    if (inputValue.size() == 1)
    {
        if (inputValue[0].type() == kTypeSymbol)
        {
            // remove the lines of the state
            return mState.send("RemoveCommand", inputValue);
        }
    }
    
    return kTTErrGeneric;
}

TTErr TTTimeEvent::StateAddresses(const TTValue& inputValue, TTValue& outputValue)
{
    // check if the state is flattened
    TTBoolean flattened;
    mState.get("flattened", flattened);
    if (!flattened)
        mState.send("Flatten");
    
    // get the state lines
    TTValue out;
    mState.get("flattenedLines", out);
    TTListPtr flattenedLines = TTListPtr((TTPtr)out[0]);
    
    if (flattenedLines)
    {
        outputValue.clear();
        
        // edit each line address into a "directory/address value" string
        for (flattenedLines->begin(); flattenedLines->end(); flattenedLines->next())
        {
            TTDictionaryBasePtr aLine = TTDictionaryBasePtr((TTPtr)flattenedLines->current()[0]);
            
            // get the target address
            TTAddress address;
            aLine->lookup(kTTSym_target, out);
            address = out[0];
            outputValue.append(address);
        }
        
        return kTTErrNone;
    }
    
    return kTTErrGeneric;
}

#if 0
#pragma mark -
#pragma mark Process Management
#endif

TTErr TTTimeEvent::ProcessAttach(const TTValue& inputValue, TTValue& outputValue)
{
    if (inputValue.size() == 1)
    {
        if (inputValue[0].type() == kTypeObject)
        {
            TTObject thisObject(this);
            TTObject aTimeProcess = inputValue[0];
            
            if (aTimeProcess.valid())
            {
                // check if the time process is not already attached
                TTValue     newAttachedProcesses;
                TTBoolean   found = false;
                
                for (TTElementIter it = mAttachedProcesses.begin() ; it != mAttachedProcesses.end() ; it++)
                {
                    TTObject attachedProcess = TTElement(*it);
                    if (attachedProcess == aTimeProcess)
                        found = true;
                    
                    newAttachedProcesses.append(attachedProcess);
                }
                
                if (!found)
                {
                    // start process observation
                    aTimeProcess.registerObserverForNotifications(thisObject);
                    
                    // update the attached processes
                    newAttachedProcesses.append(aTimeProcess);
                    mAttachedProcesses = newAttachedProcesses;
                    
                    return kTTErrNone;
                }
            }
        }
    }
    
    return kTTErrGeneric;
}

TTErr TTTimeEvent::ProcessDetach(const TTValue& inputValue, TTValue& outputValue)
{
    if (inputValue.size() == 1)
    {
        if (inputValue[0].type() == kTypeObject)
        {
            TTObject thisObject(this);
            TTObject aTimeProcess = inputValue[0];
            
            if (aTimeProcess.valid())
            {
                // stop process observation
                aTimeProcess.unregisterObserverForNotifications(thisObject);
                
                // update the attached processes
                TTValue newAttachedProcesses;
 
                for (TTElementIter it = mAttachedProcesses.begin() ; it != mAttachedProcesses.end() ; it++)
                {
                    TTObject attachedProcess = TTElement(*it);
                    if (attachedProcess != aTimeProcess)
                        newAttachedProcesses.append(attachedProcess);
                }
                
                mAttachedProcesses = newAttachedProcesses;
                
                return kTTErrNone;
            }
        }
    }
    
    return kTTErrGeneric;
}

#if 0
#pragma mark -
#pragma mark Notifications
#endif

TTErr TTTimeEvent::ProcessDurationMinReached(const TTValue& inputValue, TTValue& outputValue)
{
    TT_ASSERT("TTTimeEvent::ProcessDurationMinReached : inputValue is correct", inputValue.size() == 1 && inputValue[0].type() == kTypeObject);
    
    // update count
    mMinReachedProcessesCounter++;
#ifdef TTSCORE_DEBUG
    TTLogMessage("TTTimeEvent::ProcessDurationMinReached %s : attached = %d, minReached = %d, ended = %d, disposed = %d\n", mName.c_str(), mAttachedProcesses.size(), mMinReachedProcessesCounter, mEndedProcessesCounter, mDisposedProcessesCounter);
#endif
    return kTTErrNone;
}

TTErr TTTimeEvent::ProcessEnded(const TTValue& inputValue, TTValue& outputValue)
{
    TT_ASSERT("TTTimeEvent::ProcessEnded : inputValue is correct", inputValue.size() == 1 && inputValue[0].type() == kTypeObject);
    
    // update count
    mEndedProcessesCounter++;
#ifdef TTSCORE_DEBUG
    TTLogMessage("TTTimeEvent::ProcessEnded %s : attached = %d, minReached = %d, ended = %d, disposed = %d\n", mName.c_str(), mAttachedProcesses.size(), mMinReachedProcessesCounter, mEndedProcessesCounter, mDisposedProcessesCounter);
#endif
    return kTTErrNone;
}

TTErr TTTimeEvent::ProcessDisposed(const TTValue& inputValue, TTValue& outputValue)
{
    TT_ASSERT("TTTimeEvent::ProcessDisposed : inputValue is correct", inputValue.size() == 1 && inputValue[0].type() == kTypeObject);
    
    // update count
    mDisposedProcessesCounter++;
#ifdef TTSCORE_DEBUG
    TTLogMessage("TTTimeEvent::ProcessDisposed %s : attached = %d, minReached = %d, ended = %d, disposed = %d\n", mName.c_str(), mAttachedProcesses.size(), mMinReachedProcessesCounter, mEndedProcessesCounter, mDisposedProcessesCounter);
#endif
    return kTTErrNone;
}

TTErr TTTimeEvent::WriteAsXml(const TTValue& inputValue, TTValue& outputValue)
{
    TTObject o = inputValue[0];
	TTXmlHandlerPtr aXmlHandler = (TTXmlHandlerPtr)o.instance();
    if (!aXmlHandler)
		return kTTErrGeneric;
    
    TTValue     v;
    TTString    s;
    
    // write the name
    xmlTextWriterWriteAttribute((xmlTextWriterPtr)aXmlHandler->mWriter, BAD_CAST "name", BAD_CAST mName.c_str());
    
    // write the date
    v = mDate;
    v.toString();
    s = TTString(v[0]);
    xmlTextWriterWriteAttribute((xmlTextWriterPtr)aXmlHandler->mWriter, BAD_CAST "date", BAD_CAST s.data());
    
    // write the mute
    v = mMute;
    v.toString();
    s = TTString(v[0]);
    xmlTextWriterWriteAttribute((xmlTextWriterPtr)aXmlHandler->mWriter, BAD_CAST "mute", BAD_CAST s.data());
    
    // write the name of the condition object
    if (mCondition.valid()) {
        
        mCondition.get(kTTSym_name, v);
        v.toString();
        s = TTString(v[0]);
        xmlTextWriterWriteAttribute((xmlTextWriterPtr)aXmlHandler->mWriter, BAD_CAST "condition", BAD_CAST s.data());
    }
    
    // write the state
    aXmlHandler->setAttributeValue(kTTSym_object, mState);
    aXmlHandler->sendMessage(kTTSym_Write);
    
	return kTTErrNone;
}

TTErr TTTimeEvent::ReadFromXml(const TTValue& inputValue, TTValue& outputValue)
{
    TTObject o = inputValue[0];
	TTXmlHandlerPtr aXmlHandler = (TTXmlHandlerPtr)o.instance();
    if (!aXmlHandler)
		return kTTErrGeneric;
    
    TTValue v;
	
    // Event node
    if (aXmlHandler->mXmlNodeName == kTTSym_event) {
        
        // get the date
        if (!aXmlHandler->getXmlAttribute(kTTSym_date, v, NO)) {
            
            if (v.size() == 1) {
                
                if (v[0].type() == kTypeUInt32) {
                    
                    this->setDate(v);
                }
            }
        }
        
        // get the mute
        if (!aXmlHandler->getXmlAttribute(kTTSym_mute, v, NO)) {
            
            if (v.size() == 1) {
                
                if (v[0].type() == kTypeInt32) {
                    
                    this->mMute = v[0];
                }
            }
        }
        
        // get the condition object name
        if (!aXmlHandler->getXmlAttribute(kTTSym_condition, v, YES)) {
            
            if (v.size() == 1) {
                
                if (v[0].type() == kTypeSymbol) {
                    
                    // do nothing
                    // the time condition will be registered after so we can't link the time event to an unexisting object
                }
            }
        }
    }
    
    // Command node
    if (aXmlHandler->mXmlNodeName == kTTSym_command) {
        
        // Pass the xml handler to the current state to fill his data structure
        aXmlHandler->setAttributeValue(kTTSym_object, mState);
        return aXmlHandler->sendMessage(kTTSym_Read);
    }
	
	return kTTErrNone;
}

#if 0
#pragma mark -
#pragma mark Some Methods
#endif

TTBoolean TTSCORE_EXPORT TTTimeEventCompareDate(TTValue& v1, TTValue& v2)
{
    TTObject timeEvent1 = v1[0];
    TTObject timeEvent2 = v2[0];
    
    return TTTimeEventPtr(timeEvent1.instance())->mDate < TTTimeEventPtr(timeEvent2.instance())->mDate;
}
