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
mExternalTick(NO),
mInfinite(NO),
mRunning(NO),
mPaused(NO),
mPosition(0.),
mDate(0.),
mCallback(NULL),
mBaton(NULL)
{
    mCallback = SchedulerPositionCallback((TTPtr)arguments[0]);
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
    addAttribute(ExternalTick, kTypeBoolean);
    addAttribute(Infinite, kTypeBoolean);

	addAttribute(Stretchable, kTypeBoolean);
	addAttributeProperty(Stretchable, readOnly, YES);
	
	addAttribute(Running, kTypeBoolean);
    addAttributeProperty(Running, readOnly, YES);
    
    addAttribute(Paused, kTypeBoolean);
    addAttributeProperty(Paused, readOnly, YES);
    
    addAttribute(Position, kTypeFloat64);
    addAttributeProperty(Position, readOnly, YES);
    
    addAttribute(Date, kTypeFloat64);
    addAttributeProperty(Date, readOnly, YES);

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
            
            mPosition = mOffset / mDuration;
            mDate = mOffset;
            
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
            mPosition = mOffset / mDuration;
            mDate = mOffset;
            
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
            
            TTFloat64 newSpeed = value[0];
            
            if (newSpeed != mSpeed) {
            
                mSpeed = value[0];
            
                sendNotification(TTSymbol("SchedulerSpeedChanged"), mSpeed);
            }
            
            return kTTErrNone;
        }
    }
    
    return kTTErrGeneric;
}

/***************************************************************************
 
	SchedulerLib
 
 ***************************************************************************/

void SchedulerLib::getSchedulerNames(TTValue& SchedulerNames)
{
	SchedulerNames.clear();
	SchedulerNames.append(TTSymbol("max"));
	SchedulerNames.append(TTSymbol("system"));
}

TTErr SchedulerLib::isSchedulerNameAvailable(TTSymbol aSchedulerName)
{
    if (aSchedulerName == TTSymbol("max") || aSchedulerName == TTSymbol("system"))
        return kTTErrNone;
    else
        return kTTErrValueNotFound;
}

