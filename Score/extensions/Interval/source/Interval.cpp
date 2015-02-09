/*
 * Interval time process
 * Copyright © 2013, Théo de la Hogue, Clément Bossut
 *
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "Interval.h"
#include <libxml/encoding.h>
#include <libxml/xmlwriter.h>
#include <libxml/xmlreader.h>

#define thisTTClass         Interval
#define thisTTClassName     "Interval"
#define thisTTClassTags     "time, process, interval"

extern "C" TT_EXTENSION_EXPORT TTErr TTLoadJamomaExtension_Interval(void)
{
	TTFoundationInit();
	Interval::registerClass();
	return kTTErrNone;
}

#if 0
#pragma mark -
#pragma mark Constructor/Destructor
#endif

TIME_PROCESS_PLUGIN_CONSTRUCTOR
{
    TIME_PLUGIN_INITIALIZE
}

Interval::~Interval()
{
    ;
}

#if 0
#pragma mark -
#pragma mark TimeProcessPlugin Methods
#endif

TTErr Interval::getParameterNames(TTValue& value)
{
    value.clear();
	//value.append(TTSymbol("aParameterName"));
	
	return kTTErrNone;
}

#if 0
#pragma mark -
#pragma mark TTTimeProcess Methods
#endif

TTErr Interval::Compile()
{
    mCompiled = YES;
    return kTTErrNone;
}

TTErr Interval::ProcessStart()
{
    return kTTErrNone;
}

TTErr Interval::ProcessEnd()
{
    return kTTErrNone;
}

TTErr Interval::Process(const TTValue& inputValue, TTValue& outputValue)
{
    return kTTErrNone;
}

TTErr Interval::ProcessPaused(const TTValue& inputValue, TTValue& outputValue)
{
    return kTTErrNone;
}

TTErr Interval::Goto(const TTValue& inputValue, TTValue& outputValue)
{
    TTValue     v;
    TTUInt32    duration, timeOffset;
    
    if (inputValue.size() >= 1) {
        
        if (inputValue[0].type() == kTypeUInt32 || inputValue[0].type() == kTypeInt32) {
            
            this->getAttributeValue(kTTSym_duration, v);
            
            // TODO : TTTimeProcess should extend Scheduler class
            duration = v[0];
            mScheduler.set(kTTSym_duration, TTFloat64(duration));
            
            timeOffset = inputValue[0];
            mScheduler.set(kTTSym_offset, TTFloat64(timeOffset));
            
            return kTTErrNone;
        }
    }
    
    return kTTErrGeneric;
}

TTErr Interval::WriteAsXml(const TTValue& inputValue, TTValue& outputValue)
{
    // nothing to write	
	return kTTErrNone;
}

TTErr Interval::ReadFromXml(const TTValue& inputValue, TTValue& outputValue)
{
    // nothing to read
	return kTTErrNone;
}

TTErr Interval::WriteAsText(const TTValue& inputValue, TTValue& outputValue)
{
    TTObject o = inputValue[0];
	TTTextHandlerPtr aTextHandler = (TTTextHandlerPtr)o.instance();
    if (!aTextHandler)
		return kTTErrGeneric;
	
	// TODO : write the time box attributes, the cue start and end content, start and end receiver, ...
	
	return kTTErrGeneric;
}

TTErr Interval::ReadFromText(const TTValue& inputValue, TTValue& outputValue)
{
    TTObject o = inputValue[0];
	TTTextHandlerPtr aTextHandler = (TTTextHandlerPtr)o.instance();
    if (!aTextHandler)
		return kTTErrGeneric;
	
    // TODO : parse the time box attributes, the cue start and end content, start and end receiver, ...
	
	return kTTErrGeneric;
}

#if 0
#pragma mark -
#pragma mark Notifications
#endif

TTErr Interval::EventDateChanged(const TTValue& inputValue, TTValue& outputValue)
{
    TT_ASSERT("Interval::EventDateChanged : inputValue is correct", inputValue.size() == 1 && inputValue[0].type() == kTypeObject);
    
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
    
    TTLogError("Interval::EventDateChanged %s : wrong event\n", mName.c_str());
    return kTTErrGeneric;
}

TTErr Interval::EventConditionChanged(const TTValue& inputValue, TTValue& outputValue)
{
    TT_ASSERT("Interval::EventConditionChanged : inputValue is correct", inputValue.size() == 2 && inputValue[0].type() == kTypeObject && inputValue[1].type() == kTypeObject);
    
    TTObject    aTimeEvent = inputValue[0];
    TTObject    aTimeCondition = inputValue[1];
    
    // no rule
    
    return kTTErrNone;
}