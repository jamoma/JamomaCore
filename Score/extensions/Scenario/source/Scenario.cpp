/** @file
 *
 * @ingroup scoreExtension
 *
 * @brief Scenario time process class is a container class to manage other time processes instances in the time
 *
 * @see TimePluginLib, TTTimeProcess
 *
 * @authors Théo de la Hogue & Clément Bossut
 *
 * @copyright Copyright © 2013, Théo de la Hogue & Clément Bossut @n
 * This code is licensed under the terms of the "CeCILL-C" @n
 * http://www.cecill.info
 */

#include "Scenario.h"

#define thisTTClass                 Scenario
#define thisTTClassName             "Scenario"
#define thisTTClassTags             "time, process, container, scenario"

extern "C" TT_EXTENSION_EXPORT TTErr TTLoadJamomaExtension_Scenario(void)
{
	TTFoundationInit();
	Scenario::registerClass();
	return kTTErrNone;
}

#if 0
#pragma mark -
#pragma mark Constructor/Destructor
#endif

TIME_CONTAINER_PLUGIN_CONSTRUCTOR,
mNamespace(NULL),
mViewZoom(TTValue(1., 1.)),
mViewPosition(TTValue(0, 0)),
mLoading(NO),
mAttributeLoaded(NO),
mFileVersion(kTTSymEmpty)
{
    TIME_PLUGIN_INITIALIZE

    registerAttribute(TTSymbol("timeProcesses"), kTypeLocalValue, NULL, (TTGetterMethod)& Scenario::getTimeProcesses, NULL);
    registerAttribute(TTSymbol("timeEvents"), kTypeLocalValue, NULL, (TTGetterMethod)& Scenario::getTimeEvents, NULL);
    registerAttribute(TTSymbol("timeConditions"), kTypeLocalValue, NULL, (TTGetterMethod)& Scenario::getTimeConditions, NULL);
    
    addAttributeWithSetter(ViewZoom, kTypeLocalValue);
    addAttributeWithSetter(ViewPosition, kTypeLocalValue);
    
    // needed to be notified by scheduler speed change
    addMessageWithArguments(SchedulerSpeedChanged);
    addMessageProperty(SchedulerSpeedChanged, hidden, YES);

    addMessageWithArguments(Next);
    
    
    addMessageWithArguments(TimeEventCreate);
    addMessageProperty(TimeEventCreate, hidden, YES);
    
    addMessageWithArguments(TimeEventRelease);
    addMessageProperty(TimeEventRelease, hidden, YES);
    
    addMessageWithArguments(TimeEventMove);
    addMessageProperty(TimeEventMove, hidden, YES);
    
    addMessageWithArguments(TimeEventReplace);
    addMessageProperty(TimeEventReplace, hidden, YES);
    
    addMessageWithArguments(TimeEventFind);
    addMessageProperty(TimeEventFind, hidden, YES);
    

    addMessageWithArguments(TimeProcessAdd);
    addMessageProperty(TimeProcessAdd, hidden, YES);
    
    addMessageWithArguments(TimeProcessRemove);
    addMessageProperty(TimeProcessRemove, hidden, YES);
    
    addMessageWithArguments(TimeProcessMove);
    addMessageProperty(TimeProcessMove, hidden, YES);
    
    addMessageWithArguments(TimeProcessLimit);
    addMessageProperty(TimeProcessLimit, hidden, YES);
    
    
    addMessageWithArguments(TimeConditionCreate);
    addMessageProperty(TimeConditionCreate, hidden, YES);
    
    addMessageWithArguments(TimeConditionRelease);
    addMessageProperty(TimeConditionRelease, hidden, YES);
    
    addMessage(Compile);

    // it is possible to pass 2 events for the root scenario (which don't need a container by definition)
    if (arguments.size() == 2) {
        
        if (arguments[0].type() == kTypeObject && arguments[1].type() == kTypeObject) {
            
            TTObject start = arguments[0];
            TTObject end = arguments[1];
            
            this->setStartEvent(start);
            this->setEndEvent(end);
        }
    }
    // else create 2 time events with the end at 1 hour (in millisecond)
    else {
        
        TTObject start("TimeEvent");
        TTObject end("TimeEvent", 36000000);
        
        this->setStartEvent(start);
        this->setEndEvent(end);
    }
    
    mScheduler.set("granularity", TTFloat64(1.));
}

Scenario::~Scenario()
{
    if (mNamespace) {
        delete mNamespace;
        mNamespace = NULL;
    }
}

#if 0
#pragma mark -
#pragma mark TimeContainerPlugin Methods
#endif

TTErr Scenario::getParameterNames(TTValue& value)
{
    value.clear();
	//value.append(TTSymbol("aParameterName"));
	
	return kTTErrNone;
}

#if 0
#pragma mark -
#pragma mark TTTimeContainer Methods
#endif

TTErr Scenario::getTimeProcesses(TTValue& value)
{
    value.clear();
    
    if (mTimeProcesses.isEmpty())
        return kTTErrGeneric;
    
    for (mTimeProcesses.begin(); mTimeProcesses.end(); mTimeProcesses.next())
        value.append(mTimeProcesses.current()[0]);
    
    return kTTErrNone;
}

TTErr Scenario::getTimeEvents(TTValue& value)
{
    value.clear();
    
    if (mTimeEvents.isEmpty())
        return kTTErrGeneric;
    
    // if there is no upper container : append the start event too
    if (!mContainer.valid())
        value.append(this->getStartEvent());
    
    for (mTimeEvents.begin(); mTimeEvents.end(); mTimeEvents.next())
        value.append(mTimeEvents.current()[0]);
    
    // if there is no upper container : append the end event too
    if (!mContainer.valid())
        value.append(this->getEndEvent());
    
    return kTTErrNone;
}

TTErr Scenario::getTimeConditions(TTValue& value)
{
    value.clear();
    
    if (mTimeConditions.isEmpty())
        return kTTErrGeneric;
    
    for (mTimeConditions.begin(); mTimeConditions.end(); mTimeConditions.next())
        value.append(mTimeConditions.current()[0]);
    
    return kTTErrNone;
}

#if 0
#pragma mark -
#pragma mark TTTimeProcess Methods
#endif

TTErr Scenario::Compile()
{
    TTValue     v;
    TTUInt32    timeOffset;
    TTBoolean   compiled;
    TTObject    aTimeEvent;
    TTObject    aTimeProcess;
    
    // don't compile empty scenario
    if (mTimeEvents.isEmpty() && mTimeProcesses.isEmpty() && mTimeConditions.isEmpty())
        return kTTErrGeneric;
    
    // get scheduler time offset
    mScheduler.get(kTTSym_offset, v);
    timeOffset = TTFloat64(v[0]);
    
    // compile all time processes if they need to be compiled and propagate the externalTick attribute
    for (mTimeProcesses.begin(); mTimeProcesses.end(); mTimeProcesses.next())
    {
        aTimeProcess = mTimeProcesses.current()[0];
        
        aTimeProcess.get(kTTSym_compiled, v);
        compiled = v[0];
        
        if (!compiled)
            aTimeProcess.send(kTTSym_Compile);
        
        aTimeProcess.set("externalTick", mExternalTick);
    }
    
    mCompiled = YES;
    
    return kTTErrNone;
}

TTErr Scenario::ProcessStart()
{
    // reset all events to waiting status
    for (mTimeEvents.begin(); mTimeEvents.end(); mTimeEvents.next())
    {
        TTObject aTimeEvent = mTimeEvents.current()[0];
        aTimeEvent.set("status", kTTSym_eventWaiting);
    }
    
    // sort events in 2 lists depending of their time process position relative to the time offset
    TTValue v;
    mScheduler.get(kTTSym_offset, v);
    TTUInt32 timeOffset = v[0];
    
    TTList eventsToSetHappened;
    TTList eventsToRequestHappen;
    
    for (mTimeProcesses.begin(); mTimeProcesses.end(); mTimeProcesses.next())
    {
        TTObject aTimeProcess = mTimeProcesses.current()[0];
        
        TTObject startEvent = getTimeProcessStartEvent(aTimeProcess);
        TTObject endEvent = getTimeProcessEndEvent(aTimeProcess);
        
        TTUInt32 startEventDate;
        TTUInt32 endEventDate;
        
        startEvent.get("date", startEventDate);
        endEvent.get("date", endEventDate);
        
        if (startEventDate < timeOffset &&
            endEventDate < timeOffset)
        {
            // if the start event is not already into the other list
            if (eventsToRequestHappen.findEquals(startEvent, v))
                eventsToSetHappened.appendUnique(startEvent);
        }
        else if (startEventDate < timeOffset &&
                 endEventDate > timeOffset)
        {
            eventsToRequestHappen.appendUnique(startEvent);
            eventsToSetHappened.remove(startEvent);
        }
    }
    
    for (eventsToSetHappened.begin(); eventsToSetHappened.end(); eventsToSetHappened.next())
    {
        TTObject event = eventsToSetHappened.current()[0];
        event.set("status", kTTSym_eventHappened);
    }
    
    for (eventsToRequestHappen.begin(); eventsToRequestHappen.end(); eventsToRequestHappen.next())
    {
        TTObject event = eventsToRequestHappen.current()[0];
        event.send(kTTSym_Happen);
    }

    return kTTErrNone;
}

TTErr Scenario::ProcessEnd()
{
    // stop all the time processes
    for (mTimeProcesses.begin(); mTimeProcesses.end(); mTimeProcesses.next())
    {
        TTObject aTimeProcess = mTimeProcesses.current()[0];
        aTimeProcess.send("Stop");
    }
    
    // disable conditions
    for (mTimeConditions.begin(); mTimeConditions.end(); mTimeConditions.next())
    {
        TTObject aTimeCondition = mTimeConditions.current()[0];
        aTimeCondition.set(kTTSym_active, TTBoolean(NO));
    }
    
    // dispose waiting or pending events
    for (mTimeEvents.begin(); mTimeEvents.end(); mTimeEvents.next())
    {
        TTObject aTimeEvent = mTimeEvents.current()[0];
        
        TTSymbol status;
        aTimeEvent.get("status", status);
        
        if (status == kTTSym_eventWaiting || status == kTTSym_eventPending)
            aTimeEvent.set("status", kTTSym_eventDisposed);
    }
    
    // needs to be compiled again
    mCompiled = NO;
   
    return kTTErrNone;
}

TTErr Scenario::Process(const TTValue& inputValue, TTValue& outputValue)
{
    TTBoolean assertion = inputValue.size() == 2 && inputValue[0].type() == kTypeFloat64 && inputValue[1].type() == kTypeFloat64;
    TT_ASSERT("Scenario::Process : inputValue is correct", assertion);
    
    //TTFloat64 position = inputValue[0];
    //TTFloat64 date = inputValue[1];
    
    // enable or disable conditions
    for (mTimeConditions.begin(); mTimeConditions.end(); mTimeConditions.next())
    {
        TTObject aTimeCondition = mTimeConditions.current()[0];
        
        // if a condition is ready we activate it
        TTValue v;
        aTimeCondition.get(kTTSym_ready, v);
        aTimeCondition.set(kTTSym_active, v);
    }
    
    // propagate external tick to all time processes
    if (mExternalTick)
    {
        for (mTimeProcesses.begin(); mTimeProcesses.end(); mTimeProcesses.next())
        {
            TTObject aTimeProcess = mTimeProcesses.current()[0];
            aTimeProcess.send(kTTSym_Tick);
        }
    }
    
    // update each event status and count how many are happened or disposed
    TTUInt32 eventHappenedOrDisposedCount = 0;
    
    for (mTimeEvents.begin(); mTimeEvents.end(); mTimeEvents.next())
    {
        TTObject aTimeEvent = mTimeEvents.current()[0];
        TTSymbol status;
        
        aTimeEvent.send("StatusUpdate");
        aTimeEvent.get("status", status);
        
        if (status == kTTSym_eventHappened ||
            status == kTTSym_eventDisposed)
            eventHappenedOrDisposedCount++;
    }
    
    // if no more event to process : stop our self
    if (eventHappenedOrDisposedCount == mTimeEvents.getSize())
    {
        TTObject thisObject(this);
        return thisObject.send(kTTSym_Stop);
    }
    
    return kTTErrNone;
}

TTErr Scenario::ProcessPaused(const TTValue& inputValue, TTValue& outputValue)
{
    TT_ASSERT("Loop::ProcessPaused : inputValue is correct", inputValue.size() == 1 && inputValue[0].type() == kTypeBoolean);
    
    TTBoolean paused = inputValue[0];

    for (mTimeProcesses.begin(); mTimeProcesses.end(); mTimeProcesses.next())
    {
        TTObject aTimeProcess = mTimeProcesses.current()[0];
        
        if (paused)
            aTimeProcess.send(kTTSym_Pause);
        else
            aTimeProcess.send(kTTSym_Resume);
    }
    
    return kTTErrNone;
}

TTErr Scenario::Goto(const TTValue& inputValue, TTValue& outputValue)
{
    TTObject		aTimeEvent, aTimeProcess, state;
    TTValue         v, none;
    TTUInt32        duration, timeOffset, date;
    TTBoolean       muteRecall = NO;
    
    if (inputValue.size() >= 1)
    {
        if (inputValue[0].type() == kTypeUInt32 || inputValue[0].type() == kTypeInt32)
        {
            this->getAttributeValue(kTTSym_duration, v);
            
            // TODO : TTTimeProcess should extend Scheduler class ?
            duration = v[0];
            mScheduler.set(kTTSym_duration, TTFloat64(duration));
            
            timeOffset = inputValue[0];
            mScheduler.set(kTTSym_offset, TTFloat64(timeOffset));
            
            // is the recall of the state is muted ?
            if (inputValue.size() == 2)
            {
                if (inputValue[1].type() == kTypeBoolean)
                {
                    muteRecall = inputValue[1];
                }
            }
            
            if (!muteRecall && !mMute)
            {
                // create a temporary state to compile all the event states before the time offset
                state = TTObject(kTTSym_Script);
                
                // add the state of the scenario start
                TTScriptMerge(getTimeEventState(getStartEvent()), state);;
                
                // add the state of each event before the time offset (expect those which are muted)
                for (mTimeEvents.begin(); mTimeEvents.end(); mTimeEvents.next())
                {
                    aTimeEvent = mTimeEvents.current()[0];
                    aTimeEvent.get(kTTSym_date, v);
                    date = v[0];
                    
                    aTimeEvent.get(kTTSym_mute, v);
                    TTBoolean mute = v[0];
                    
                    if (!mute) {
                        
                        // merge the event state into the temporary state
                        if (date < timeOffset)
                            TTScriptMerge(getTimeEventState( getStartEvent()), state);
                    }
                }
                
                // run the temporary state
                state.send(kTTSym_Run);
            }

            // prepare the timeOffset of each time process scheduler
            for (mTimeProcesses.begin(); mTimeProcesses.end(); mTimeProcesses.next())
            {
                aTimeProcess = mTimeProcesses.current()[0];
                
                TTObject  startEvent = getTimeProcessStartEvent(aTimeProcess);
                TTObject  endEvent = getTimeProcessEndEvent(aTimeProcess);
                
                // if the date to start is in the middle of a time process
                if (getTimeEventDate(startEvent) < timeOffset && getTimeEventDate(endEvent) > timeOffset)
                {
                    // go to time offset
                    v = timeOffset - getTimeEventDate(startEvent);
                }
                
                else if (getTimeEventDate(startEvent) >= timeOffset)
                    v = TTUInt32(0.);
                
                else if (getTimeEventDate(endEvent) <= timeOffset)
                    v = TTUInt32(1.);
                
                v.append(muteRecall);
                
                aTimeProcess.send(kTTSym_Goto, v);
            }
            
            // needs to be compiled again
            mCompiled = NO;
            
            return kTTErrNone;
        }
    }
    
    return kTTErrGeneric;
}

TTErr Scenario::WriteAsXml(const TTValue& inputValue, TTValue& outputValue)
{
    TTObject o = inputValue[0];
	TTXmlHandlerPtr aXmlHandler = (TTXmlHandlerPtr)o.instance();
    if (!aXmlHandler)
		return kTTErrGeneric;
    
    TTObject aTimeProcess;
    TTObject aTimeEvent;
    TTObject aTimeCondition;
    
    // if the scenario is not handled by a upper scenario
    if (!mContainer.valid()) {
        
        TTValue     v;
        TTString    s;
        TTObject    thisObject(this);
        
        // Start a Scenario node
        xmlTextWriterStartElement((xmlTextWriterPtr)aXmlHandler->mWriter, BAD_CAST "Scenario");
        
        writeTimeProcessAsXml(aXmlHandler, thisObject);
        
        // Write Score version
        xmlTextWriterWriteAttribute((xmlTextWriterPtr)aXmlHandler->mWriter, BAD_CAST "version", BAD_CAST TTSCORE_VERSION_STRING);
        
        // Write the view zoom
        v = mViewZoom;
        v.toString();
        s = TTString(v[0]);
        xmlTextWriterWriteAttribute((xmlTextWriterPtr)aXmlHandler->mWriter, BAD_CAST "viewZoom", BAD_CAST s.data());
        
        // Write the view position
        v = mViewPosition;
        v.toString();
        s = TTString(v[0]);
        xmlTextWriterWriteAttribute((xmlTextWriterPtr)aXmlHandler->mWriter, BAD_CAST "viewPosition", BAD_CAST s.data());
        
        // Write the start event
        {
            xmlTextWriterStartElement((xmlTextWriterPtr)aXmlHandler->mWriter, BAD_CAST "startEvent");
            
            // Force the name
            getStartEvent().set("name", kTTSym_start);
 
            // Pass the xml handler to the event to fill his attribute
            aXmlHandler->setAttributeValue(kTTSym_object, getStartEvent());
            aXmlHandler->sendMessage(kTTSym_Write);
            
            // Close the event node
            xmlTextWriterEndElement((xmlTextWriterPtr)aXmlHandler->mWriter);
        }
        
        // Write the end event
        {
            xmlTextWriterStartElement((xmlTextWriterPtr)aXmlHandler->mWriter, BAD_CAST "endEvent");
            
            // Force the name
            getEndEvent().set("name", kTTSym_end);
            
            // Pass the xml handler to the event to fill his attribute
            aXmlHandler->setAttributeValue(kTTSym_object, getEndEvent());
            aXmlHandler->sendMessage(kTTSym_Write);
            
            // Close the event node
            xmlTextWriterEndElement((xmlTextWriterPtr)aXmlHandler->mWriter);
        }
    }
    
    // Write all the time events
    for (mTimeEvents.begin(); mTimeEvents.end(); mTimeEvents.next()) {
        
        aTimeEvent = mTimeEvents.current()[0];
        
        writeTimeEventAsXml(aXmlHandler, aTimeEvent);
    }
    
    // Write all the time processes
    for (mTimeProcesses.begin(); mTimeProcesses.end(); mTimeProcesses.next()) {
        
        aTimeProcess = mTimeProcesses.current()[0];
        
        writeTimeProcessAsXml(aXmlHandler, aTimeProcess);
    }
    
    // Write all the time conditions
    for (mTimeConditions.begin(); mTimeConditions.end(); mTimeConditions.next()) {
        
        aTimeCondition = mTimeConditions.current()[0];
        
        writeTimeConditionAsXml(aXmlHandler, aTimeCondition);
    }
    
    // if the scenario is not handled by a upper scenario
    if (!mContainer.valid()) {
        
        // Close the event node
        xmlTextWriterEndElement((xmlTextWriterPtr)aXmlHandler->mWriter);
    }
	
	return kTTErrNone;
}

TTErr Scenario::ReadFromXml(const TTValue& inputValue, TTValue& outputValue)
{
    TTObject o = inputValue[0];
	TTXmlHandlerPtr aXmlHandler = (TTXmlHandlerPtr)o.instance();
    if (!aXmlHandler)
		return kTTErrGeneric;

    TTValue                 v;
    
    // Filtering Score plugin
    // théo : this is ugly but it is due to the bad design of XmlHandler
    if (aXmlHandler->mXmlNodeName != TTSymbol("xmlHandlerReadingStarts") &&
        aXmlHandler->mXmlNodeName != TTSymbol("xmlHandlerReadingEnds") &&
        aXmlHandler->mXmlNodeName != TTSymbol("Scenario") &&
        aXmlHandler->mXmlNodeName != TTSymbol("Automation") &&
        aXmlHandler->mXmlNodeName != TTSymbol("indexedCurves") &&
        aXmlHandler->mXmlNodeName != TTSymbol("curve") &&
        aXmlHandler->mXmlNodeName != TTSymbol("Loop") &&
        aXmlHandler->mXmlNodeName != TTSymbol("Interval") &&
        aXmlHandler->mXmlNodeName != TTSymbol("event") &&
        aXmlHandler->mXmlNodeName != TTSymbol("command") &&
        aXmlHandler->mXmlNodeName != TTSymbol("startEvent") &&
        aXmlHandler->mXmlNodeName != TTSymbol("endEvent") &&
        aXmlHandler->mXmlNodeName != TTSymbol("condition")&&
        aXmlHandler->mXmlNodeName != TTSymbol("case"))
    {
        return kTTErrNone;
    }
#ifdef TTSCORE_DEBUG
     TTLogMessage("Scenario::ReadFromXml %s : reading %s\n", mName.c_str(), aXmlHandler->mXmlNodeName.c_str());
#endif
    // When reading a sub scenario
    if (mCurrentScenario.valid()) {
        
        // Scenario node :
        if (aXmlHandler->mXmlNodeName == TTSymbol("Scenario")) {
            
            TTSymbol subName;
            
            // get sub scenario name
            if (!aXmlHandler->getXmlAttribute(kTTSym_name, v, YES)) {
                
                if (v.size() == 1) {
                    
                    if (v[0].type() == kTypeSymbol) {
                        
                        subName = v[0];
                    }
                }
            }
            
            TTSymbol currentSubName;
            mCurrentScenario.get("name", currentSubName);
            
            if (subName == currentSubName)
            {
                // if this is the end of a scenario node : forget the sub scenario
                if (!aXmlHandler->mXmlNodeStart)
                {
#ifdef TTSCORE_DEBUG
                    TTLogMessage("Scenario::ReadFromXml %s : forgets %s sub scenario (end node)\n", mName.c_str(), currentSubName.c_str());
#endif
                    mCurrentScenario = TTObject();
                    mCurrentTimeProcess = TTObject();
                    return kTTErrNone;
                }
                
                // if this is an empty scenario node : read the node and then forget the sub scenario
                if (aXmlHandler->mXmlNodeIsEmpty)
                {
                    mCurrentScenario.send("ReadFromXml", inputValue);
#ifdef TTSCORE_DEBUG
                    TTLogMessage("Scenario::ReadFromXml %s : forgets %s sub scenario (empty node)\n", mName.c_str(), currentSubName.c_str());
#endif
                    mCurrentScenario = TTObject();
                    mCurrentTimeProcess = TTObject();
                    return kTTErrNone;
                }
            }
        }

        // any other case
        return mCurrentScenario.send("ReadFromXml", inputValue);
    }
    
    // When reading a loop
    if (mCurrentLoop.valid())
    {
        // Loop node :
        if (aXmlHandler->mXmlNodeName == TTSymbol("Loop"))
        {
            TTSymbol loopName;
            
            // get sub scenario name
            if (!aXmlHandler->getXmlAttribute(kTTSym_name, v, YES))
            {
                if (v.size() == 1)
                {
                    if (v[0].type() == kTypeSymbol)
                    {
                        loopName = v[0];
                    }
                }
            }
            
            TTSymbol currentLoopName;
            mCurrentLoop.get("name", currentLoopName);
            
            if (loopName == currentLoopName)
            {
                // if this is the end of a scenario node : forget the sub scenario
                if (!aXmlHandler->mXmlNodeStart)
                {
#ifdef TTSCORE_DEBUG
                    TTLogMessage("Scenario::ReadFromXml %s : forgets %s loop (end node)\n", mName.c_str(), currentLoopName.c_str());
#endif
                    mCurrentLoop= TTObject();
                    mCurrentTimeProcess = TTObject();
                    return kTTErrNone;
                }
                
                // if this is an empty loop node : read the node and then forget the loop
                if (aXmlHandler->mXmlNodeIsEmpty)
                {
                    mCurrentLoop.send("ReadFromXml", inputValue);
                    
#ifdef TTSCORE_DEBUG
                    TTLogMessage("Scenario::ReadFromXml %s : forgets %s loop (empty node)\n", mName.c_str(), currentLoopName.c_str());
#endif
                    mCurrentLoop = TTObject();
                    mCurrentTimeProcess = TTObject();
                    return kTTErrNone;
                }
            }
        }
        
        // any other case
        return mCurrentLoop.send("ReadFromXml", inputValue);
    }
	
	// Switch on the name of the XML node
	
    // Starts scenario reading
    if (aXmlHandler->mXmlNodeName == kTTSym_xmlHandlerReadingStarts) {
        
        mLoading = YES;
        mAttributeLoaded = NO;
        mFileVersion = kTTSymEmpty;
        
        mCurrentTimeEvent = TTObject();

        mCurrentTimeProcess = TTObject();
        mCurrentTimeCondition = TTObject();
        
        // clear all data structures
        mTimeEvents.clear();
        mTimeProcesses.clear();

        return kTTErrNone;
    }
    
    // Ends scenario reading
    if (aXmlHandler->mXmlNodeName == kTTSym_xmlHandlerReadingEnds) {
        
        mLoading = NO;
        mCompiled = NO;
        
        // for backward compatibility between version 0.2 and 0.3
        if (mFileVersion == TTSymbol("0.2") &&
            TTSymbol(TTSCORE_VERSION_STRING) == TTSymbol("0.3"))
        {
            
            for (mTimeProcesses.begin(); mTimeProcesses.end(); mTimeProcesses.next())
            {
                TTObject aTimeProcess = mTimeProcesses.current()[0];
                TTObject endEvent = getTimeProcessEndEvent(aTimeProcess);
                
                TTUInt32 duration, durationMin, durationMax;
                aTimeProcess.get("duration", duration);
                aTimeProcess.get("durationMin", durationMin);
                aTimeProcess.get("durationMax", durationMax);
                
                TTObject endCondition;
                endEvent.get("condition", endCondition);
                
                if (!endCondition.valid() && durationMin == 0 && durationMax == 0)
                {
                    aTimeProcess.set("durationMin", duration);
                    aTimeProcess.set("durationMax", duration);
                }
            }
        }
        
        // ask all event's state addresses to flatten it because they are managed by a TTScript class
        // TODO : don't use TTScript anymore !
        for (mTimeEvents.begin(); mTimeEvents.end(); mTimeEvents.next())
        {
            TTObject event = mTimeEvents.current()[0];
            TTValue none;
            event.send("StateAddresses", none);
        }
        
        return kTTErrNone;
    }
    
    // Scenario node : read attribute only for upper scenario
    if (aXmlHandler->mXmlNodeName == TTSymbol("Scenario") && !mAttributeLoaded) {
        
        // Get the scenario name
        if (!aXmlHandler->getXmlAttribute(kTTSym_name, v, YES)) {
            
            if (v.size() == 1) {
                
                if (v[0].type() == kTypeSymbol) {
                    
                    mName = v[0];
                }
            }
        }
        
        // Get the score version
        if (!aXmlHandler->getXmlAttribute("version", v, YES)) {
            
            if (v.size() == 1) {
                
                if (v[0].type() == kTypeSymbol) {
                    
                    mFileVersion = v[0];
                }
            }
        }
        
        // Get the scenario color
        if (!aXmlHandler->getXmlAttribute(kTTSym_color, v, NO)) {
            
            if (v.size() == 3) {
                
                if (v[0].type() == kTypeInt32 && v[1].type() == kTypeInt32 && v[2].type() == kTypeInt32) {
                    
                    mColor = v;
                }
            }
        }
        
        // Get the scenario viewZoom
        if (!aXmlHandler->getXmlAttribute(kTTSym_viewZoom, v, NO)) {
            
            if (v.size() == 2) {
                
                if (v[0].type() == kTypeFloat64 && v[1].type() == kTypeFloat64) {
                    
                    mViewZoom = v;
                }
            }
        }
        
        // Get the scenario viewPosition
        if (!aXmlHandler->getXmlAttribute(kTTSym_viewPosition, v, NO)) {
            
            if (v.size() == 2) {
                
                if (v[0].type() == kTypeFloat64 && v[1].type() == kTypeFloat64) {
                    
                    mViewPosition = v;
                }
            }
        }
        
        mAttributeLoaded = YES;
        return kTTErrNone;
    }
    
    // Start Event node (root Scenario only)
    if (aXmlHandler->mXmlNodeName == TTSymbol("startEvent")) {
        
        if (aXmlHandler->mXmlNodeStart) {
            
            // Get the date
            if (!aXmlHandler->getXmlAttribute(kTTSym_date, v, NO))
                getStartEvent().set(kTTSym_date, v);
            
            // Get the name
            if (!aXmlHandler->getXmlAttribute(kTTSym_name, v, YES))
                getStartEvent().set(kTTSym_name, v);
            
            if (!aXmlHandler->mXmlNodeIsEmpty)
                mCurrentTimeEvent = getStartEvent();
            
        }
        else
            mCurrentTimeEvent = NULL;
    }
    
    // End Event node (root Scenario only)
    if (aXmlHandler->mXmlNodeName == TTSymbol("endEvent")) {
        
        if (aXmlHandler->mXmlNodeStart) {
            
            // Get the date
            if (!aXmlHandler->getXmlAttribute(kTTSym_date, v, NO))
                getEndEvent().set(kTTSym_date, v);
            
            // Get the name
            if (!aXmlHandler->getXmlAttribute(kTTSym_name, v, YES))
                getEndEvent().set(kTTSym_name, v);
            
            if (!aXmlHandler->mXmlNodeIsEmpty)
                mCurrentTimeEvent = getEndEvent();
            
        }
        else
            mCurrentTimeEvent = NULL;
    }
    
    // Event node
    if (aXmlHandler->mXmlNodeName == kTTSym_event) {
        
        if (aXmlHandler->mXmlNodeStart) {
            
            readTimeEventFromXml(aXmlHandler, mCurrentTimeEvent);
            
            if (aXmlHandler->mXmlNodeIsEmpty)
                mCurrentTimeEvent = TTObject();
        }
        else
            
            mCurrentTimeEvent = TTObject();
        
        return kTTErrNone;
    }
    
    // If there is a current time event
    if (mCurrentTimeEvent.valid()) {
        
        // Pass the xml handler to the current condition to fill his data structure
        aXmlHandler->setAttributeValue(kTTSym_object, mCurrentTimeEvent);
        return aXmlHandler->sendMessage(kTTSym_Read);
    }
    
    // Condition node
    if (aXmlHandler->mXmlNodeName == kTTSym_condition) {
        
        if (aXmlHandler->mXmlNodeStart) {
            
            readTimeConditionFromXml(aXmlHandler, mCurrentTimeCondition);
        
            if (aXmlHandler->mXmlNodeIsEmpty)
                mCurrentTimeCondition = TTObject();
        }
        else
            
            mCurrentTimeCondition = TTObject();
        
        return kTTErrNone;
    }
    
    // If there is a current time condition
    if (mCurrentTimeCondition.valid()) {
        
        // Pass the xml handler to the current condition to fill his data structure
        aXmlHandler->setAttributeValue(kTTSym_object, mCurrentTimeCondition);
        return aXmlHandler->sendMessage(kTTSym_Read);
    }
    
    // Process node : the name of the node is the name of the process type
    if (!mCurrentTimeProcess.valid()) {
        
        if (aXmlHandler->mXmlNodeStart) {

            readTimeProcessFromXml(aXmlHandler, mCurrentTimeProcess);
            
            if (aXmlHandler->mXmlNodeIsEmpty)
                mCurrentTimeProcess = TTObject();
        }
    }
    else if (mCurrentTimeProcess.name() == aXmlHandler->mXmlNodeName)
    {
        if (!aXmlHandler->mXmlNodeStart)
            mCurrentTimeProcess = TTObject();
    }
    
    // If there is a current time process
    if (mCurrentTimeProcess.valid())
    {
        // if the current time process is a sub scenario : don't forget it
        if (mCurrentTimeProcess.name() == TTSymbol("Scenario") &&
            !aXmlHandler->mXmlNodeIsEmpty)
        {
            mCurrentScenario = mCurrentTimeProcess;
            
#ifdef TTSCORE_DEBUG
            TTLogMessage("Scenario::ReadFromXml %s : set %s as sub scenario \n", mName.c_str(), ScenarioPtr(mCurrentScenario.instance())->mName.c_str());
#endif
        }
        // if the current time process is a loop : don't forget it
        else if (mCurrentTimeProcess.name() == TTSymbol("Loop") &&
                !aXmlHandler->mXmlNodeIsEmpty)
        {
            mCurrentLoop = mCurrentTimeProcess;
#ifdef TTSCORE_DEBUG
            TTSymbol loopName;
            mCurrentLoop.get("name", loopName);
            TTLogMessage("Scenario::ReadFromXml %s : set %s as loop \n", mName.c_str(), loopName.c_str());
#endif
        }
        
        // Pass the xml handler to the current process to fill his data structure
        aXmlHandler->setAttributeValue(kTTSym_object, mCurrentTimeProcess);
        return aXmlHandler->sendMessage(kTTSym_Read);
    }

    return kTTErrNone;
}

#if 0
#pragma mark -
#pragma mark Notifications
#endif

TTErr Scenario::EventDateChanged(const TTValue& inputValue, TTValue& outputValue)
{
    TT_ASSERT("Scenario::EventDateChanged : inputValue is correct", inputValue.size() == 1 && inputValue[0].type() == kTypeObject);
    
    TTObject aTimeEvent = inputValue[0];
    
    if (aTimeEvent == this->getStartEvent())
    {
        // if needed, the compile method should be called again now
        mCompiled = NO;
        
        return kTTErrNone;
    }
    else if (aTimeEvent == this->getEndEvent())
    {
        // if needed, the compile method should be called again now
        mCompiled = NO;
        
        return kTTErrNone;
    }
    
    TTLogError("Scenario::EventDateChanged %s : wrong event\n", mName.c_str());
    return kTTErrGeneric;
}

TTErr Scenario::EventConditionChanged(const TTValue& inputValue, TTValue& outputValue)
{
    TTBoolean assertion = inputValue.size() == 2 && inputValue[0].type() == kTypeObject && inputValue[1].type() == kTypeObject;
    TT_ASSERT("Scenario::EventConditionChanged : inputValue is correct", assertion);
    
    TTObject    aTimeEvent = inputValue[0];
    TTObject    aTimeCondition = inputValue[1];
    
    // no rule
    
    return kTTErrNone;
}

TTErr Scenario::SchedulerSpeedChanged(const TTValue& inputValue, TTValue& outputValue)
{
    TT_ASSERT("TTTimeContainer::SchedulerSpeedChanged : inputValue is correct", inputValue.size() == 1 && inputValue[0].type() == kTypeFloat64);
    
    // for each time process of the scenario
    for (mTimeProcesses.begin(); mTimeProcesses.end(); mTimeProcesses.next())
    {
        TTObject aTimeProcess = mTimeProcesses.current()[0];
        
        // get the actual time process scheduler
        TTObject aScheduler;
        aTimeProcess.get("scheduler", aScheduler);
        
        // set the time process scheduler speed value with the container scheduler speed value
        aScheduler.set(kTTSym_speed, inputValue);
    }
    
    return kTTErrNone;
}

#if 0
#pragma mark -
#pragma mark Specific Scenario Methods
#endif

TTErr Scenario::setViewZoom(const TTValue& value)
{
    mViewZoom = value;
    
    return kTTErrNone;
}

TTErr Scenario::setViewPosition(const TTValue& value)
{
    mViewPosition = value;
    
    return kTTErrNone;
}

TTErr Scenario::Next(const TTValue& inputValue, TTValue& outputValue)
{
    TTObject    aTimeEvent;
    TTList      eventsToHappen;
    TTUInt32    found = 0;
    
    if (!mRunning)
        return kTTErrGeneric;
    
    if (mMute)
        return kTTErrGeneric;
    
    // trigger the first pending time event of the list (as there are sorted by date)
    for (mTimeEvents.begin(); mTimeEvents.end(); mTimeEvents.next()) {
        
        aTimeEvent = mTimeEvents.current()[0];
        
        if (getTimeEventStatus(aTimeEvent) == kTTSym_eventPending) {
            
            // if no argument : trigger the first pending event
            if (inputValue.size() == 0) {
                
                found = 1;
                eventsToHappen.append(aTimeEvent);
                break;
            }
            // else : is this event part of the events to trigger ?
            else {
                
                found++;
                
                for (TTUInt32 i = 0; i < inputValue.size(); i++) {
                    
                    TTUInt32 id = inputValue[i];
                    
                    if (id == found) {
                        
                        eventsToHappen.append(aTimeEvent);
                        break;
                    }
                }
            }
        }
    }
    
    if (eventsToHappen.isEmpty())
        return kTTErrGeneric;
    
    for (eventsToHappen.begin(); eventsToHappen.end(); eventsToHappen.next()) {
        
        aTimeEvent = eventsToHappen.current()[0];
        
        outputValue.append(aTimeEvent);
        aTimeEvent.send(kTTSym_Happen);
    }
    
    return kTTErrNone;
}

TTErr Scenario::TimeEventCreate(const TTValue& inputValue, TTValue& outputValue)
{
    TTObject    aTimeEvent, thisObject(this);
    TTValue     args, aCacheElement, scenarioDuration;
    
    if (inputValue.size() == 1) {
        
        if (inputValue[0].type() == kTypeUInt32) {
            
            // an event cannot be created beyond the duration of its container
            thisObject.get(kTTSym_duration, scenarioDuration);
            
            if (TTUInt32(inputValue[0]) > TTUInt32(scenarioDuration[0])) {
                
                TTLogError("Scenario::TimeEventCreate : event created beyond the duration of its container\n");
                return kTTErrGeneric;
            }
            
            // prepare argument (date, container)
            args = TTValue(inputValue[0], thisObject);
            
            aTimeEvent = TTObject(kTTSym_TimeEvent, args);
            
            // create all observers
            makeTimeEventCacheElement(aTimeEvent, aCacheElement);
            
            // store time event object and observers
            mTimeEvents.append(aCacheElement);
            mTimeEvents.sort(&TTTimeEventCompareDate);

            // return the time event
            outputValue = aTimeEvent;
            
            // needs to be compiled again
            mCompiled = NO;
            
            return kTTErrNone;
        }
    }
    
    return kTTErrGeneric;
}

TTErr Scenario::TimeEventRelease(const TTValue& inputValue, TTValue& outputValue)
{
    TTObject                aTimeEvent;
    TTValue                 v, aCacheElement;
    
    if (inputValue.size() == 1) {
        
        if (inputValue[0].type() == kTypeObject) {
            
            aTimeEvent = inputValue[0];
            
            // try to find the time event
            mTimeEvents.find(&TTTimeContainerFindTimeEvent, (TTPtr)aTimeEvent.instance(), aCacheElement);
            
            // couldn't find the same time event in the scenario
            if (aCacheElement.size() == 0)
                return kTTErrValueNotFound;
            
            else {
                
                // if the time event is used by a time process it can't be released
                mTimeProcesses.find(&TTTimeContainerFindTimeProcessWithTimeEvent, (TTPtr)aTimeEvent.instance(), v);
                
                if (v.size() == 0) {
                    
                    // remove time event object and observers
                    mTimeEvents.remove(aCacheElement);
                    
                    // delete all observers
                    deleteTimeEventCacheElement(aCacheElement);
                    
                    // remove the time event from its time condition
                    TTObject aTimeCondition;
                    aTimeEvent.get("condition", aTimeCondition);
                    if (aTimeCondition.valid())
                    {
                        aTimeCondition.send("EventRemove", aTimeEvent);
                    }
                    
                    // needs to be compiled again
                    mCompiled = NO;
                    
                    return kTTErrNone;
                }
            }
        }
    }
    
    return kTTErrGeneric;
}

TTErr Scenario::TimeEventMove(const TTValue& inputValue, TTValue& outputValue)
{
    TTObject                aTimeEvent, thisObject(this);
    TTValue                 scenarioDuration;
    
    // can't move an event during a load
    if (mLoading)
        return kTTErrGeneric;
    
    if (inputValue.size() == 2) {
        
        if (inputValue[0].type() == kTypeObject && inputValue[1].type() == kTypeUInt32 ) {
            
            aTimeEvent = inputValue[0];
            
            // an event cannot be moved beyond the duration of its container
            thisObject.get(kTTSym_duration, scenarioDuration);
            
            if (TTUInt32(inputValue[1]) > TTUInt32(scenarioDuration[0])) {
                
                TTLogError("Scenario::TimeEventMove : event moved beyond the duration of its container\n");
                return kTTErrGeneric;
            }
        }
    }
    
    return kTTErrGeneric;
}

TTErr Scenario::TimeEventFind(const TTValue& inputValue, TTValue& outputValue)
{
    TTValue aCacheElement;
    
    // Find the process using his name inside the container
    mTimeEvents.find(&TTTimeContainerFindTimeEventWithName, (TTPtr)&inputValue, outputValue);
    
    if (outputValue.size() == 0)
        return kTTErrValueNotFound;
    
    return kTTErrNone;
}

TTErr Scenario::TimeEventReplace(const TTValue& inputValue, TTValue& outputValue)
{
    TTObject    aFormerTimeEvent, aNewTimeEvent;
    TTObject    aTimeProcess;
    TTValue     v, aCacheElement;

    if (inputValue.size() == 2) {
        
        if (inputValue[0].type() == kTypeObject && inputValue[1].type() == kTypeObject) {
            
            aFormerTimeEvent = inputValue[0];
            aNewTimeEvent = inputValue[1];
            
            // try to find the former time event
            mTimeEvents.find(&TTTimeContainerFindTimeEvent, (TTPtr)aFormerTimeEvent.instance(), aCacheElement);
            
            // couldn't find the former time event in the scenario
            if (aCacheElement.size() == 0)
                return kTTErrValueNotFound;
            
            else {
                
                // remove the former time event object and observers
                mTimeEvents.remove(aCacheElement);
                
                // delete all observers on the former time event
                deleteTimeEventCacheElement(aCacheElement);
                
                // create all observers on the new time event
                makeTimeEventCacheElement(aNewTimeEvent, aCacheElement);
                
                // store the new time event object and observers
                mTimeEvents.append(aCacheElement);
                mTimeEvents.sort(&TTTimeEventCompareDate);
            }
            
            // replace the former time event in all time process which binds on it
            for (mTimeProcesses.begin(); mTimeProcesses.end(); mTimeProcesses.next()) {
                
                aTimeProcess = mTimeProcesses.current()[0];
                
                if (getTimeProcessStartEvent(aTimeProcess) == aFormerTimeEvent) {
                    
                    setTimeProcessStartEvent(aTimeProcess, aNewTimeEvent);
                    continue;
                }
                
                if (getTimeProcessEndEvent(aTimeProcess) == aFormerTimeEvent) {
                    
                    setTimeProcessEndEvent(aTimeProcess, aNewTimeEvent);
                    
                    // a time process with a conditioned end event cannot be rigid
                    v = TTBoolean(!getTimeEventCondition(aNewTimeEvent).valid());
                    aTimeProcess.set(kTTSym_rigid, v);
                }
            }

            // needs to be compiled again
            mCompiled = NO;
            
            return kTTErrNone;
        }
    }
    
    return kTTErrGeneric;
}

void Scenario::writeTimeEventAsXml(TTXmlHandlerPtr aXmlHandler, TTObject& aTimeEvent)
{
    // Start an event node
    xmlTextWriterStartElement((xmlTextWriterPtr)aXmlHandler->mWriter, BAD_CAST "event");
    
    // Pass the xml handler to the event to fill his attribute
    aXmlHandler->setAttributeValue(kTTSym_object, aTimeEvent);
    aXmlHandler->sendMessage(kTTSym_Write);
    
    // Close the event node
    xmlTextWriterEndElement((xmlTextWriterPtr)aXmlHandler->mWriter);
}

TTErr Scenario::readTimeEventFromXml(TTXmlHandlerPtr aXmlHandler, TTObject& aNewTimeEvent)
{
    TTValue v, out;
    TTErr   err = kTTErrGeneric;
    
    if (aXmlHandler->mXmlNodeStart) {
        
        // Get the date
        if (!aXmlHandler->getXmlAttribute(kTTSym_date, v, NO)) {
            
            if (v.size() == 1) {
                
                if (v[0].type() == kTypeUInt32) {
                    
                    // an event cannot be created after the end event of its container
                    if (TTUInt32(v[0]) > getTimeEventDate(getEndEvent())) {
                        
                        TTLogError("Scenario::readTimeEventFromXml %s : event created after the end event of its container\n", mName.c_str());
                        return kTTErrGeneric;
                    }
                    
                    // Create the time event
                    err = this->TimeEventCreate(v, out);
                    
                    if (!err) {
                        
                        aNewTimeEvent = out[0];
                        
                        // Get the name
                        if (!aXmlHandler->getXmlAttribute(kTTSym_name, v, YES)) {
                            
                            if (v.size() == 1) {
                                
                                if (v[0].type() == kTypeSymbol) {
                                    
                                    aNewTimeEvent.set(kTTSym_name, v);
                                }
                            }
                        }
                        
                        // Pass the xml handler to the new event to fill his attribute
                        aXmlHandler->setAttributeValue(kTTSym_object, out);
                        return aXmlHandler->sendMessage(kTTSym_Read);
                    }
                }
            }
        }
    }
    
    return err;
}

TTErr Scenario::TimeProcessAdd(const TTValue& inputValue, TTValue& outputValue)
{
    TTObject    startEvent, endEvent;
    TTObject    aTimeProcess;
    TTValue     args, aCacheElement;
    TTValue     duration, scenarioDuration;

    if (inputValue.size() == 3) {
        
        if (inputValue[1].type() == kTypeObject && inputValue[2].type() == kTypeObject) {
            
            // prepare argument (container)
            args = TTObject(this);
            
            // depending on the type of the first element
            if (inputValue[0].type() == kTypeSymbol)
            {
                // create a time process of the given type
                aTimeProcess = TTObject(inputValue[0], args);
            }
            else if (inputValue[0].type() == kTypeObject)
            {
                // use an existing time process
                aTimeProcess = inputValue[0];
            }
            
            if (!aTimeProcess.valid())
                return kTTErrGeneric;
            
            // check start and end events are differents
            startEvent = inputValue[1];
            endEvent = inputValue[2];
            
            if (startEvent == endEvent)
                return kTTErrGeneric;
            
            // set the start and end events
            setTimeProcessStartEvent(aTimeProcess, startEvent);
            setTimeProcessEndEvent(aTimeProcess, endEvent);
            
            // check time process duration
            if (!aTimeProcess.get(kTTSym_duration, duration)) {
                
                // create all observers
                makeTimeProcessCacheElement(aTimeProcess, aCacheElement);
                
                // store time process object and observers
                mTimeProcesses.append(aCacheElement);

                // return the time process
                outputValue = aTimeProcess;
                
                // needs to be compiled again
                mCompiled = NO;
                
                return kTTErrNone;
            }
        }
    }
    
    return kTTErrGeneric;
}

TTErr Scenario::TimeProcessRemove(const TTValue& inputValue, TTValue& outputValue)
{
    TTObject    aTimeProcess;
    TTValue     aCacheElement;

    if (inputValue.size() == 1) {
        
        if (inputValue[0].type() == kTypeObject) {
            
            aTimeProcess = inputValue[0];
            
            // try to find the time process
            mTimeProcesses.find(&TTTimeContainerFindTimeProcess, (TTPtr)aTimeProcess.instance(), aCacheElement);
            
            // couldn't find the same time process in the scenario :
            if (aCacheElement.size() == 0)
                return kTTErrValueNotFound;
            
            else {
                
                // remove time process object and observers
                mTimeProcesses.remove(aCacheElement);
                
                // delete all observers
                deleteTimeProcessCacheElement(aCacheElement);

                // fill outputValue with start and event
                outputValue.resize(2);
                outputValue[0] = getTimeProcessStartEvent(aTimeProcess);
                outputValue[1] = getTimeProcessEndEvent(aTimeProcess);
                
                // remove its events to be detached from them
                TTObject empty;
                setTimeProcessStartEvent(aTimeProcess, empty);
                setTimeProcessEndEvent(aTimeProcess, empty);
                
                // needs to be compiled again
                mCompiled = NO;
                
                return kTTErrNone;
            }
        }
    }
    
    return kTTErrGeneric;
}

TTErr Scenario::TimeProcessMove(const TTValue& inputValue, TTValue& outputValue)
{
    TTObject    aTimeProcess, thisObject(this);
    TTValue     v;
    TTValue     duration, scenarioDuration;
    TTSymbol    timeProcessType;

    // can't move a process during a load
    if (mLoading)
        return kTTErrGeneric;
    
    if (inputValue.size() == 3) {
        
        if (inputValue[0].type() == kTypeObject && inputValue[1].type() == kTypeUInt32 && inputValue[2].type() == kTypeUInt32) {
            
            aTimeProcess = inputValue[0];
            
            // get time process duration
            aTimeProcess.get(kTTSym_duration, duration);
            
            // get scenario duration
            thisObject.get(kTTSym_duration, scenarioDuration);
            
            // a process cannot be moved beyond the duration of its container
            if (TTUInt32(inputValue[1]) > TTUInt32(scenarioDuration[0]) || TTUInt32(inputValue[2]) > TTUInt32(scenarioDuration[0])) {
                
                TTLogError("Scenario::TimeProcessMove : process moved beyond the duration of its container\n");
                return kTTErrGeneric;
            }

            return kTTErrNone;
        }
    }
    
    return kTTErrGeneric;
}

TTErr Scenario::TimeProcessLimit(const TTValue& inputValue, TTValue& outputValue)
{
    TTObject    aTimeProcess;
    TTValue     durationMin, durationMax;
    TTSymbol    timeProcessType;

    if (inputValue.size() == 3) {
        
        if (inputValue[0].type() == kTypeObject && inputValue[1].type() == kTypeUInt32 && inputValue[2].type() == kTypeUInt32) {
            
            aTimeProcess = inputValue[0];

            return kTTErrNone;
        }
    }
    
    return kTTErrGeneric;
}

void Scenario::writeTimeProcessAsXml(TTXmlHandlerPtr aXmlHandler, TTObject& aTimeProcess)
{
    TTObject    timeProcessContainer;
    TTValue     v;
    TTString    s;
    
    aTimeProcess.get("container", timeProcessContainer);
    
    // If the process is handled by a upper scenario
    if (timeProcessContainer.valid())
    {
        // Start a node with the type of the process
        xmlTextWriterStartElement((xmlTextWriterPtr)aXmlHandler->mWriter, BAD_CAST aTimeProcess.name().c_str());
    }
    
    // Write the name
    TTSymbol name;
    aTimeProcess.get("name", name);
    xmlTextWriterWriteAttribute((xmlTextWriterPtr)aXmlHandler->mWriter, BAD_CAST "name", BAD_CAST name.c_str());
    
    // If the process is handled by a upper scenario
    if (timeProcessContainer.valid())
    {
        // Write the start event name
        getTimeProcessStartEvent(aTimeProcess).get("name", v);
        v.toString();
        s = TTString(v[0]);
        xmlTextWriterWriteAttribute((xmlTextWriterPtr)aXmlHandler->mWriter, BAD_CAST "start", BAD_CAST s.data());
        
        // Write the end event name
        getTimeProcessEndEvent(aTimeProcess).get("name", v);
        v.toString();
        s = TTString(v[0]);
        xmlTextWriterWriteAttribute((xmlTextWriterPtr)aXmlHandler->mWriter, BAD_CAST "end", BAD_CAST s.data());
    }
    
    // Write the duration min
    aTimeProcess.get("durationMin", v);
    v.toString();
    s = TTString(v[0]);
    xmlTextWriterWriteAttribute((xmlTextWriterPtr)aXmlHandler->mWriter, BAD_CAST "durationMin", BAD_CAST s.data());
        
    // Write the duration max
    aTimeProcess.get("durationMax", v);
    v.toString();
    s = TTString(v[0]);
    xmlTextWriterWriteAttribute((xmlTextWriterPtr)aXmlHandler->mWriter, BAD_CAST "durationMax", BAD_CAST s.data());
    
    // Write the mute
    aTimeProcess.get("mute", v);
    v.toString();
    s = TTString(v[0]);
    xmlTextWriterWriteAttribute((xmlTextWriterPtr)aXmlHandler->mWriter, BAD_CAST "mute", BAD_CAST s.data());
    
    // Write the color
    aTimeProcess.get("color", v);
    v.toString();
    s = TTString(v[0]);
    xmlTextWriterWriteAttribute((xmlTextWriterPtr)aXmlHandler->mWriter, BAD_CAST "color", BAD_CAST s.data());
    
    // If the process is handled by a upper scenario
    if (timeProcessContainer.valid())
    {
        // Write the vertical position
         aTimeProcess.get("verticalPosition", v);
        v.toString();
        s = TTString(v[0]);
        xmlTextWriterWriteAttribute((xmlTextWriterPtr)aXmlHandler->mWriter, BAD_CAST "verticalPosition", BAD_CAST s.data());
        
        // Write the vertical size
         aTimeProcess.get("verticalSize", v);
        v.toString();
        s = TTString(v[0]);
        xmlTextWriterWriteAttribute((xmlTextWriterPtr)aXmlHandler->mWriter, BAD_CAST "verticalSize", BAD_CAST s.data());
        
        // Pass the xml handler to the process to fill his attribute
        aXmlHandler->setAttributeValue(kTTSym_object, aTimeProcess);
        aXmlHandler->sendMessage(kTTSym_Write);
        
        // Close the process node
        xmlTextWriterEndElement((xmlTextWriterPtr)aXmlHandler->mWriter);
    }
}

TTErr Scenario::readTimeProcessFromXml(TTXmlHandlerPtr aXmlHandler, TTObject& aNewTimeProcess)
{
    TTObject    start;
    TTObject    end;
    TTValue     v, out, aCacheElement;
    TTErr       err;
    
    // Get the name of the start event
    if (!aXmlHandler->getXmlAttribute(kTTSym_start, v, YES))
    {
        if (v.size() == 1)
        {
            if (v[0].type() == kTypeSymbol)
            {
                // Find the start event using his name inside the container
                mTimeEvents.find(&TTTimeContainerFindTimeEventWithName, (TTPtr)&v, aCacheElement);
                
                if (aCacheElement.size() == 0)
                {
                    TTLogError("Scenario::readTimeProcessFromXml %s : can't find start event\n", mName.c_str());
                    return kTTErrGeneric;
                }
                
                start = aCacheElement[0];
            }
        }
    }
    
    // Get the name of the end event
    if (!aXmlHandler->getXmlAttribute(kTTSym_end, v, YES))
    {
        if (v.size() == 1)
        {
            if (v[0].type() == kTypeSymbol)
            {
                // Find the end event using his name inside the container
                mTimeEvents.find(&TTTimeContainerFindTimeEventWithName, (TTPtr)&v, aCacheElement);
                
                if (aCacheElement.size() == 0)
                {
                    TTLogError("Scenario::readTimeProcessFromXml %s : can't find end event\n", mName.c_str());
                    return kTTErrGeneric;
                }
                
                end = aCacheElement[0];
            }
        }
    }
    
    if (!start.valid() || !end.valid())
        return kTTErrGeneric;
    
    // check start and end events are different
    if (start == end)
        return kTTErrGeneric;
    
    // Create the time process
    v = TTValue(aXmlHandler->mXmlNodeName, start, end);
    err = this->TimeProcessAdd(v, out);
    
    if (!err) {
        
        aNewTimeProcess = out[0];
        
        // Get all generic time process atttributes
        
        // Get the time process name
        if (!aXmlHandler->getXmlAttribute(kTTSym_name, v, YES))
        {
            if (v.size() == 1)
            {
                if (v[0].type() == kTypeSymbol)
                {
                    aNewTimeProcess.set(kTTSym_name, v);
                }
            }
        }
        
        // Get the durationMin
        if (!aXmlHandler->getXmlAttribute(kTTSym_durationMin, v, NO))
        {
            if (v.size() == 1)
            {
                if (v[0].type() == kTypeUInt32)
                {
                    aNewTimeProcess.set(kTTSym_durationMin, v);
                }
            }
        }
        
        // Get the durationMax
        if (!aXmlHandler->getXmlAttribute(kTTSym_durationMax, v, NO))
        {
            if (v.size() == 1)
            {
                if (v[0].type() == kTypeUInt32)
                {
                    aNewTimeProcess.set(kTTSym_durationMax, v);
                }
            }
        }
        
        // Get the mute
        if (!aXmlHandler->getXmlAttribute(kTTSym_mute, v, NO))
        {
            if (v.size() == 1)
            {
                if (v[0].type() == kTypeInt32)
                {
                    aNewTimeProcess.set(kTTSym_mute, v);
                }
            }
        }
        
        // Get the color
        if (!aXmlHandler->getXmlAttribute(kTTSym_color, v, NO))
        {
            if (v.size() == 3)
            {
                if (v[0].type() == kTypeInt32 && v[1].type() == kTypeInt32 && v[2].type() == kTypeInt32)
                {
                    aNewTimeProcess.set(kTTSym_color, v);
                }
            }
        }
        
        // Get the vertical position
        if (!aXmlHandler->getXmlAttribute(kTTSym_verticalPosition, v, NO))
        {
            if (v.size() == 1)
            {
                if (v[0].type() == kTypeUInt32)
                {
                    aNewTimeProcess.set(kTTSym_verticalPosition, v);
                }
            }
        }
        
        // Get the vertical size
        if (!aXmlHandler->getXmlAttribute(kTTSym_verticalSize, v, NO))
        {
            if (v.size() == 1)
            {
                if (v[0].type() == kTypeUInt32)
                {
                    aNewTimeProcess.set(kTTSym_verticalSize, v);
                }
            }
        }
    }
    
    return err;
}

TTErr Scenario::TimeConditionCreate(const TTValue& inputValue, TTValue& outputValue)
{
    TTObject    aTimeCondition;
    TTValue     args, aCacheElement;
    
    // prepare argument (container)
    args = TTObject(this);
    
    // create the time condition
    aTimeCondition = TTObject("TimeCondition", args);
    if (!aTimeCondition.valid())
        return kTTErrGeneric;
    
    // create all observers
    makeTimeConditionCacheElement(aTimeCondition, aCacheElement);
    
    // store time condition object and observers
    mTimeConditions.append(aCacheElement);
    
    // add a first case if
    
    // TODO : how conditions are constrained by the Solver ?
    
    // return the time condition
    outputValue = aTimeCondition;
    
    // needs to be compiled again
    mCompiled = NO;
    
    return kTTErrNone;
}

TTErr Scenario::TimeConditionRelease(const TTValue& inputValue, TTValue& outputValue)
{
    TTObject    aTimeCondition;
    TTValue     aCacheElement;
    
    if (inputValue.size() == 1) {
        
        if (inputValue[0].type() == kTypeObject) {
            
            aTimeCondition = inputValue[0];
            
            // try to find the time condition
            mTimeConditions.find(&TTTimeContainerFindTimeCondition, (TTPtr)aTimeCondition.instance(), aCacheElement);
            
            // couldn't find the same time condition in the scenario
            if (aCacheElement.size() == 0)
                return kTTErrValueNotFound;
            
            else {
                
                // remove time condition object and observers
                mTimeConditions.remove(aCacheElement);
                
                // delete all observers
                deleteTimeConditionCacheElement(aCacheElement);
                
                // get all events
                aTimeCondition.get("events", outputValue);
                
                // clear the condition
                aTimeCondition.send("Clear");
                
                // needs to be compiled again
                mCompiled = NO;
                
                return kTTErrNone;
            }
        }
    }
    
    return kTTErrGeneric;
}

void Scenario::writeTimeConditionAsXml(TTXmlHandlerPtr aXmlHandler, TTObject& aTimeCondition)
{
    // Start a condition node
    xmlTextWriterStartElement((xmlTextWriterPtr)aXmlHandler->mWriter, BAD_CAST "condition");
    
    // Pass the xml handler to the condition to fill his attribute
    aXmlHandler->setAttributeValue(kTTSym_object, aTimeCondition);
    aXmlHandler->sendMessage(kTTSym_Write);
    
    // Close the condition node
    xmlTextWriterEndElement((xmlTextWriterPtr)aXmlHandler->mWriter);
}

TTErr Scenario::readTimeConditionFromXml(TTXmlHandlerPtr aXmlHandler, TTObject& aNewTimeCondition)
{
    TTValue v, out;
    TTErr   err = kTTErrGeneric;
    
    if (aXmlHandler->mXmlNodeStart) {
        
        // Create the time condition
        err = this->TimeConditionCreate(v, out);
        
        if (!err) {
            
            aNewTimeCondition = out[0];
            
            // Pass the xml handler to the new condition to fill his attribute
            aXmlHandler->setAttributeValue(kTTSym_object, out);
            return aXmlHandler->sendMessage(kTTSym_Read);
        }
    }
    
    return err;
}

void Scenario::makeTimeProcessCacheElement(TTObject& aTimeProcess, TTValue& newCacheElement)
{
    newCacheElement.clear();
    
	// 0 : cache time process object
	newCacheElement.append(aTimeProcess);
}

void Scenario::deleteTimeProcessCacheElement(const TTValue& oldCacheElement)
{
    ;
}

void Scenario::makeTimeEventCacheElement(TTObject& aTimeEvent, TTValue& newCacheElement)
{
    newCacheElement.clear();
    
	// 0 : cache time event object
	newCacheElement.append(aTimeEvent);
}

void Scenario::deleteTimeEventCacheElement(const TTValue& oldCacheElement)
{
    ;
}

void Scenario::makeTimeConditionCacheElement(TTObject& aTimeCondition, TTValue& newCacheElement)
{
    newCacheElement.clear();
    
	// 0 : cache time condition object
	newCacheElement.append(aTimeCondition);
}

void Scenario::deleteTimeConditionCacheElement(const TTValue& oldCacheElement)
{
    ;
}
