/*
 * A Scheduler interface
 * Copyright © 2013, Théo de la Hogue
 *
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "Scheduler.h"

#define thisTTClass		Scheduler

/****************************************************************************************************/

Scheduler::Scheduler(TTValue& arguments) :
TTObjectBase(arguments),
mDuration(0.),
mSpeed(1.),
mRunning(NO),
mProgression(0.),
mRealTime(0.),
mCallback(NULL),
mBaton(NULL)
{
    mCallback = SchedulerProgressionCallback((TTPtr)arguments[0]);
    mBaton = arguments[1];
	
	addAttribute(Name, kTypeSymbol);
	addAttributeProperty(Name, readOnly, YES);

	addAttribute(Version, kTypeSymbol);
	addAttributeProperty(Version, readOnly, YES);

	addAttribute(Author, kTypeSymbol);
	addAttributeProperty(Author, readOnly, YES);
    
    addAttributeWithSetter(Duration, kTypeFloat64);
    
    addAttributeWithSetter(Speed, kTypeFloat64);

	addAttribute(Stretchable, kTypeBoolean);
	addAttributeProperty(Stretchable, readOnly, YES);
	
	addAttribute(Running, kTypeBoolean);
    addAttributeProperty(Running, readOnly, YES);
    
    addAttribute(Progression, kTypeFloat64);
    addAttributeProperty(Progression, readOnly, YES);
    
    addAttribute(RealTime, kTypeFloat64);
    addAttributeProperty(RealTime, readOnly, YES);

	addMessage(Go);
	addMessage(Stop);
    addMessage(Pause);
    addMessage(Resume);
	addMessage(Tick);
    
    // Cache some attributes for high speed notification feedbacks
    this->findAttribute(TTSymbol("duration"), &durationAttribute);
    this->findAttribute(TTSymbol("speed"), &speedAttribute);
    
    this->findAttribute(TTSymbol("running"), &runningAttribute);
    this->findAttribute(TTSymbol("progression"), &progressionAttribute);
    this->findAttribute(TTSymbol("realTime"), &realTimeAttribute);
}

Scheduler::~Scheduler()
{
    ;
}

TTErr Scheduler::getParameterNames(TTValue& value)
{
	TTValue		attributeNames;
	TTSymbol	attributeName;
	
	// filter all default attributes (Name, Version, Author, Stretchable, Running, ...)
	this->getAttributeNames(attributeNames);
	
	value.clear();
	for (TTUInt8 i = 0; i < attributeNames.size(); i++) {
		attributeName = attributeNames[0];
		
		if (attributeName == TTSymbol("name")           ||
			attributeName == TTSymbol("version")        ||
			attributeName == TTSymbol("author")         ||
			attributeName == TTSymbol("stretchable")    ||
            attributeName == TTSymbol("duration")       ||
            attributeName == TTSymbol("speed")          ||
            attributeName == TTSymbol("running")        ||
            attributeName == TTSymbol("progression")    ||
            attributeName == TTSymbol("realTime"))
			continue;
		
		value.append(attributeName);
	}
	
	return kTTErrNone;
}

TTErr Scheduler::setDuration(const TTValue& value)
{
    if (value.size() == 1) {
        
        if (value[0].type() == kTypeFloat64) {
            
            Stop();
            
            mDuration = value[0];
            
            durationAttribute->sendNotification(kTTSym_notify, mDuration);             // we use kTTSym_notify because we know that observers are TTCallback
            
            return kTTErrNone;
        }
    }
    
    return kTTErrGeneric;
}

TTErr Scheduler::setSpeed(const TTValue& value)
{
    if (value.size() == 1) {
        
        if (value[0].type() == kTypeFloat64) {
            
            mSpeed = value[0];
            
            speedAttribute->sendNotification(kTTSym_notify, mSpeed);             // we use kTTSym_notify because we know that observers are TTCallback
            
            return kTTErrNone;
        }
    }
    
    return kTTErrGeneric;
}

/***************************************************************************
 
	SchedulerLib
 
 ***************************************************************************/

TTErr SchedulerLib::createScheduler(const TTSymbol SchedulerName, SchedulerPtr *returnedScheduler, SchedulerProgressionCallback aCallback, TTPtr aBaton)
{
	TTValue args;
	
    // prepare arguments
	args.append((TTPtr)aCallback);
    args.append(aBaton);
	
	// These should be alphabetized
	if (SchedulerName == TTSymbol("Max"))
		return TTObjectBaseInstantiate(TTSymbol("Max"), (TTObjectBasePtr*)returnedScheduler, args);
    else if (SchedulerName == TTSymbol("System"))
		return TTObjectBaseInstantiate(TTSymbol("System"), (TTObjectBasePtr*)returnedScheduler, args);
    
	TTLogError("Jamoma SchedulerLib : Invalid Scheduler ( %s ) specified", SchedulerName.c_str());
	return kTTErrValueNotFound;
}

void SchedulerLib::getSchedulerNames(TTValue& SchedulerNames)
{
	SchedulerNames.clear();
	SchedulerNames.append(TTSymbol("Max"));
	SchedulerNames.append(TTSymbol("System"));
}

