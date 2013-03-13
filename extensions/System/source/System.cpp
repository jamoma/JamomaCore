/*
 * System Scheduler
 * Copyright © 2013, Théo de la Hogue
 *
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

/*!
 * \class System
 *
 *  System scheduler class
 *
 */

#include "Scheduler.h"
#include "System.h"

#define thisTTClass                 System
#define thisTTClassName             "System"
#define thisTTClassTags             "scheduler, System"

#define thisSchedulerVersion		"0.1"
#define thisSchedulerAuthor         "Theo de la Hogue"
#define thisSchedulerStretchable	YES

extern "C" TT_EXTENSION_EXPORT TTErr TTLoadJamomaExtension_System(void)
{
	TTFoundationInit();
	System::registerClass();
	return kTTErrNone;
}

SCHEDULER_CONSTRUCTOR,
mGranularity(20.0),
mThread(NULL)
{	
	SCHEDULER_INITIALIZE
    
    addAttribute(Granularity, kTypeUInt32);
}

System::~System()
{
    // if a thread is running
    if (mThread) {
        
        // stop thread execution
		mThread->wait();
        delete mThread;
        mThread = NULL;
    }
}

TTErr System::getParameterNames(TTValue& value)
{
	value.clear();
	//value.append(TTSymbol("aParameter"));
	
	return kTTErrNone;
}

TTErr System::Go()
{
    // do we need to ramp at all ?
    if (mDuration <= 0.) {
        
        mRunning = NO;
        mProgression = 0.;
        mRealTime = 0.;
        
        (mCallback)(mBaton, mProgression);
        
        // notify each running attribute observers
        runningAttribute->sendNotification(kTTSym_notify, mRunning);          // we use kTTSym_notify because we know that observers are TTCallback
        
        // notify each progression attribute observers
        progressionAttribute->sendNotification(kTTSym_notify, mProgression);  // we use kTTSym_notify because we know that observers are TTCallback
        
        // notify each elapsed time attribute observers
        realTimeAttribute->sendNotification(kTTSym_notify, mRealTime);  // we use kTTSym_notify because we know that observers are TTCallback
    }
    // if the thread is not running
    else if (mThread == NULL) {
        
        // launch a new thread to run the scheduler execution
        mThread = new TTThread(TTThreadCallbackType(&SystemThreadCallback), (TTPtr)this);
    
    }
    
    return kTTErrNone;
}

TTErr System::Stop()
{
	mRunning = NO;
    
    // if a thread is running
    if (mThread) {
        
        // stop thread execution
		mThread->wait();
        delete mThread;
        mThread = NULL;
    
        // notify each running attribute observers
        runningAttribute->sendNotification(kTTSym_notify, mRunning);          // we use kTTSym_notify because we know that observers are TTCallback
    }
    
    return kTTErrNone;
}

TTErr System::Tick()
{
	if (mRunning) {
        
        TTFloat64 delta = computeDeltaTime();
        
        mProgression += (delta * mSpeed) / mDuration;
        mRealTime += delta;
        
        if (mProgression < 1.) {
            
            (mCallback)(mBaton, mProgression);
            
            // notify each progression attribute observers
            progressionAttribute->sendNotification(kTTSym_notify, mProgression);    // we use kTTSym_notify because we know that observers are TTCallback
        
            // notify each elapsed time attribute observers
            realTimeAttribute->sendNotification(kTTSym_notify, mRealTime);          // we use kTTSym_notify because we know that observers are TTCallback
            
            // launch the next tick
            Tick();
        }
        else {
            
            mRunning = NO;
            
            (mCallback)(mBaton, mProgression);
            
            // notify each progression attribute observers
            progressionAttribute->sendNotification(kTTSym_notify, mProgression);    // we use kTTSym_notify because we know that observers are TTCallback
            
            // notify each elapsed time attribute observers
            realTimeAttribute->sendNotification(kTTSym_notify, mRealTime);          // we use kTTSym_notify because we know that observers are TTCallback
            
            // notify each running attribute observers
            runningAttribute->sendNotification(kTTSym_notify, mRunning);            // we use kTTSym_notify because we know that observers are TTCallback
        }
	}
    
    return kTTErrNone;
}

TTErr System::Pause()
{
    return kTTErrGeneric;
}

TTErr System::Resume()
{
    return kTTErrGeneric;
}

TTFloat64 System::computeDeltaTime()
{
	struct timeval tv;
	struct timezone tz;
    
	TTUInt64 deltaInUs = 0;
    TTUInt64 granularityInUs = mGranularity * 1000;

    // get the current time (in µs)
    gettimeofday(&tv, &tz);
	TTUInt64 currentTime = tv.tv_sec * 1000000L + tv.tv_usec;
    
	if (mLastTime != 0) {
        
		deltaInUs = (currentTime - mLastTime);
        
		if (deltaInUs < granularityInUs) {
            
			usleep(granularityInUs - deltaInUs);
            
			deltaInUs = granularityInUs;
		}
        
		mLastTime += deltaInUs;
	}
    else
		mLastTime = currentTime;
    
    // return the delta in ms
	return TTFloat64(deltaInUs / 1000.);
}

void SystemThreadCallback(void* anSystemScheduler)
{
    SystemPtr aScheduler = SystemPtr(anSystemScheduler);
    
    // reset timing informations
    aScheduler->mRunning = YES;
    aScheduler->mProgression = 0.;
    aScheduler->mRealTime = 0.;
    aScheduler->mLastTime = 0;
    
    // notify each running attribute observers
    aScheduler->runningAttribute->sendNotification(kTTSym_notify, aScheduler->mRunning);          // we use kTTSym_notify because we know that observers are TTCallback
    
    // launch the first tick if the duration is valid
    if (aScheduler->mDuration > 0.)
        aScheduler->Tick();
}
