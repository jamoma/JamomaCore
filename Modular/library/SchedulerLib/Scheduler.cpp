/** @file
 *
 * @ingroup modularLibrary
 *
 * @brief A Scheduler interface
 *
 * @details
 *
 * @authors Théo de la Hogue
 *
 * @copyright © 2013, Théo de la Hogue @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#include "Scheduler.h"

#define thisTTClass		Scheduler

/****************************************************************************************************/

Scheduler::Scheduler(const TTValue& arguments) :
TTObjectBase(arguments),
mDuration(0.),
mOffset(0.),
mSpeed(1.),
mRunning(NO),
mPaused(NO),
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
    addAttributeWithSetter(Offset, kTypeFloat64);
    addAttributeWithSetter(Speed, kTypeFloat64);

	addAttribute(Stretchable, kTypeBoolean);
	addAttributeProperty(Stretchable, readOnly, YES);
	
	addAttribute(Running, kTypeBoolean);
    addAttributeProperty(Running, readOnly, YES);
    
    addAttribute(Paused, kTypeBoolean);
    addAttributeProperty(Paused, readOnly, YES);
    
    addAttribute(Progression, kTypeFloat64);
    addAttributeProperty(Progression, readOnly, YES);
    
    addAttribute(RealTime, kTypeFloat64);
    addAttributeProperty(RealTime, readOnly, YES);

	addMessage(Go);
	addMessage(Stop);
    addMessage(Pause);
    addMessage(Resume);
	addMessage(Tick);
}

Scheduler::~Scheduler()
{
    ;
}

TTErr Scheduler::setDuration(const TTValue& value)
{
    if (value.size() == 1) {
        
        if (value[0].type() == kTypeFloat64) {
            
            mDuration = value[0];
            
            // update offset
            if (mDuration < mOffset) {
                
                mOffset = mDuration;
                
                sendNotification(TTSymbol("SchedulerOffsetChanged"), mOffset);
            }
            
            mProgression = mOffset / mDuration;
            mRealTime = mOffset;
            
            sendNotification(TTSymbol("SchedulerDurationChanged"), mDuration);
            
            return kTTErrNone;
        }
    }
    
    return kTTErrGeneric;
}

TTErr Scheduler::setOffset(const TTValue& value)
{
    if (value.size() == 1) {
        
        if (value[0].type() == kTypeFloat64) {
            
            mOffset = value[0];
            mProgression = mOffset / mDuration;
            mRealTime = mOffset;
            
            sendNotification(TTSymbol("SchedulerOffsetChanged"), mOffset);
            
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
            
            sendNotification(TTSymbol("SchedulerSpeedChanged"), mSpeed);
            
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

