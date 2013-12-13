/** @file
 *
 * @ingroup modularMax
 *
 * @brief Max scheduler class
 *
 * @details
 *
 * @authors Théo de la Hogue
 *
 * @copyright ©2013, Théo de la Hogue @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#include "Scheduler.h"
#include "Max.h"

#define thisTTClass                 Max
#define thisTTClassName             "Max"
#define thisTTClassTags             "scheduler, max"

#define thisSchedulerVersion		"0.1"
#define thisSchedulerAuthor         "Theo de la Hogue"
#define thisSchedulerStretchable	NO

extern "C" TT_EXTENSION_EXPORT TTErr TTLoadJamomaExtension_Max(void)
{
	TTFoundationInit();
	Max::registerClass();
	return kTTErrNone;
}

SCHEDULER_CONSTRUCTOR,
mGranularity(20.0)
{	
	SCHEDULER_INITIALIZE
	
    clock = clock_new(this, (method)&MaxClockCallback);	// install the max timer
        
    addAttribute(Granularity, kTypeFloat32);
}

Max::~Max()
{
    clock_unset(clock);
	object_free((t_object*)clock);
}

TTErr Max::getParameterNames(TTValue& value)
{
	value.clear();
	value.append(TTSymbol("granularity"));
	
	return kTTErrNone;
}

TTErr Max::Go()
{
    // do we need to ramp at all ?
    if (mDuration <= 0.) {
        
        mRunning = NO;
        mPaused = NO;
        mProgression = 0.;
        mRealTime = 0.;
        (mCallback)(mBaton, mProgression, mRealTime);
        
        // notify each observers
        sendNotification(TTSymbol("SchedulerRunningChanged"), mRunning);
        sendNotification(TTSymbol("SchedulerTicked"), TTValue(mProgression, mRealTime));
    }
    else {
        
        // how many grains this time means ?
        numGrains = mDuration / mGranularity;
        stepSize = 1.0 / numGrains;
        
        mRunning = YES;
        mPaused = NO;
        mProgression = 0.;
        mRealTime = 0.;
        (mCallback)(mBaton, mProgression, mRealTime);
        
        // notify each observers
        sendNotification(TTSymbol("SchedulerRunningChanged"), mRunning);
        sendNotification(TTSymbol("SchedulerTicked"), TTValue(mProgression, mRealTime));
        
        // schedule first tick
        setclock_fdelay(NULL, clock, mGranularity);
    }
    
    return kTTErrNone;
}

TTErr Max::Stop()
{
	clock_unset(clock);
	mRunning = NO;
    mPaused = NO;
    
    // notify each observers
    sendNotification(TTSymbol("SchedulerRunningChanged"), mRunning);
    
    return kTTErrNone;
}

TTErr Max::Pause()
{
    mPaused = YES;
    
    return kTTErrNone;
}

TTErr Max::Resume()
{
    mPaused = NO;
    
    return kTTErrNone;
}

TTErr Max::Tick()
{
	if (mRunning || !mPaused) {
        
#ifdef SHEDULER_DEBUG
        cout << "Max::Tick -- numGrain = " << numGrains << endl;
#endif
        
		// Go to the the next step
		numGrains--;
		
		// Safety measure at end in case of accumulated numeric errors
		if (numGrains <= 0.) {
            
            mRunning = NO;
            mPaused = NO;
			mProgression = 1.0;
            mRealTime = mDuration;
            
            (mCallback)(mBaton, mProgression, mRealTime);
            
            // notify each observers
            sendNotification(TTSymbol("SchedulerRunningChanged"), mRunning);
            sendNotification(TTSymbol("SchedulerTicked"), TTValue(mProgression, mRealTime));
        }
		else {
            
			mProgression += stepSize;
            mRealTime = mDuration * mProgression;
            
            (mCallback)(mBaton, mProgression, mRealTime);
            
            // notify each observers
            sendNotification(TTSymbol("SchedulerTicked"), TTValue(mProgression, mRealTime));
            
            // Set the clock to fire again
            setclock_fdelay(NULL, clock, mGranularity);
        }
	}
    
    return kTTErrNone;
}

void MaxClockCallback(Max* aMaxScheduler)
{
    aMaxScheduler->Tick();
}
