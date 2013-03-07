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
mRunning(NO),
mProgression(0.),
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

	addAttribute(Stretchable, kTypeBoolean);
	addAttributeProperty(Stretchable, readOnly, YES);
	
	addAttribute(Running, kTypeBoolean);
    addAttributeProperty(Running, readOnly, YES);
    
    addAttributeWithGetter(Progression, kTypeFloat64);
    addAttributeProperty(Progression, readOnly, YES);

	addMessageWithArguments(Go);
	addMessage(Stop);
	addMessage(Tick);
}

Scheduler::~Scheduler()
{
	// delete callback and baton
	
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
            attributeName == TTSymbol("running")) 
			continue;
		
		value.append(attributeName);
	}
	
	return kTTErrNone;
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

	TTLogError("Jamoma SchedulerLib : Invalid Scheduler ( %s ) specified", SchedulerName.c_str());
	return kTTErrValueNotFound;
}

void SchedulerLib::getSchedulerNames(TTValue& SchedulerNames)
{
	SchedulerNames.clear();
	SchedulerNames.append(TTSymbol("Max"));
	/*
	SchedulerNames.append(TTSymbol("Score"));
	 */
}

