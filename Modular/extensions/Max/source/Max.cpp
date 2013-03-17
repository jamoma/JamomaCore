/*
 * Max Scheduler
 * Copyright © 2013, Théo de la Hogue
 *
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

/*!
 * \class Max
 *
 *  Max scheduler class
 *
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
        mProgression = 0.;
        (mCallback)(mBaton, mProgression);
        
        // notify each running attribute observers
        runningAttribute->sendNotification(kTTSym_notify, mRunning);          // we use kTTSym_notify because we know that observers are TTCallback
        
        // notify each progression attribute observers
        progressionAttribute->sendNotification(kTTSym_notify, mProgression);  // we use kTTSym_notify because we know that observers are TTCallback
    }
    else {
        
        // how many grains this time means ?
        numGrains = mDuration / mGranularity;
        stepSize = 1.0 / numGrains;
        
        mRunning = YES;
        mProgression = 0.;
        (mCallback)(mBaton, mProgression);
        
        // notify each running attribute observers
        runningAttribute->sendNotification(kTTSym_notify, mRunning);          // we use kTTSym_notify because we know that observers are TTCallback
        
        // notify each progression attribute observers
        progressionAttribute->sendNotification(kTTSym_notify, mProgression);  // we use kTTSym_notify because we know that observers are TTCallback
        
        // schedule first tick
        setclock_fdelay(NULL, clock, mGranularity);
    }
    
    return kTTErrNone;
}

TTErr Max::Stop()
{
	clock_unset(clock);
	mRunning = NO;
    
    // notify each running attribute observers
    runningAttribute->sendNotification(kTTSym_notify, mRunning);          // we use kTTSym_notify because we know that observers are TTCallback
    
    return kTTErrNone;
}

TTErr Max::Pause()
{
    return kTTErrGeneric;
}

TTErr Max::Resume()
{
    return kTTErrGeneric;
}

TTErr Max::Tick()
{
	if (mRunning) {
        
#ifdef SHEDULER_DEBUG
        cout << "Max::Tick -- numGrain = " << numGrains << endl;
#endif
        
		// Go to the the next step
		numGrains--;
		
		// Safety measure at end in case of accumulated numeric errors
		if (numGrains <= 0.) {
            
            mRunning = NO;
			mProgression = 1.0;
            mRealTime = mDuration;
            
            (mCallback)(mBaton, mProgression);
            
            // notify each running attribute observers
            runningAttribute->sendNotification(kTTSym_notify, mRunning);          // we use kTTSym_notify because we know that observers are TTCallback
            
            // notify each progression attribute observers
            progressionAttribute->sendNotification(kTTSym_notify, mProgression);  // we use kTTSym_notify because we know that observers are TTCallback
            
            // notify each elapsed time attribute observers
            realTimeAttribute->sendNotification(kTTSym_notify, mRealTime);        // we use kTTSym_notify because we know that observers are TTCallback
        }
		else {
            
			mProgression += stepSize;
            mRealTime = mDuration * mProgression;
            
            (mCallback)(mBaton, mProgression);
            
            // notify each progression attribute observers
            progressionAttribute->sendNotification(kTTSym_notify, mProgression);  // we use kTTSym_notify because we know that observers are TTCallback
            
            // notify each elapsed time attribute observers
            realTimeAttribute->sendNotification(kTTSym_notify, mRealTime);        // we use kTTSym_notify because we know that observers are TTCallback
            
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
