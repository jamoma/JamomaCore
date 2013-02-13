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
#define thisSchedulerStretchable	YES

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

TTErr Max::getProgression(TTValue& value)
{
    value = mProgression;
    
    return kTTErrNone;
}

TTErr Max::Go(const TTValue& inputValue, TTValue& outputValue)
{
    TTFloat64 time;
    
    if (inputValue.size() == 1) {
        
        time = inputValue[0];
        
        // do we need to ramp at all ?
        if (time <= 0.) {
            
            mRunning = NO;
            mProgression = 0.;
            (mCallback)(mBaton, mProgression);
        }
        else {
            
            // how many grains this time means ?
            numGrains = time / mGranularity;
            stepSize = 1.0 / numGrains;
            
            mRunning = YES;
            mProgression = 0.;
            (mCallback)(mBaton, mProgression);
            
            // schedule first tick
            setclock_fdelay(NULL, clock, mGranularity);
        }
        
        return kTTErrNone;
    }
    
    return kTTErrGeneric;
}

void Max::Stop()
{
	clock_unset(clock);
	mRunning = NO;
}

void Max::Tick()
{
	if (mRunning) {
        
#ifdef TT_SHEDULER_DEBUG
        cout << "Max::Tick -- numGrain = " << numGrains << endl;
#endif
        
		// Go to the the next step
		numGrains--;
		
		// Safety measure at end in case of accumulated numeric errors
		if (numGrains <= 0.) {
            
            mRunning = NO;
			mProgression = 1.0;
            (mCallback)(mBaton, mProgression);
        }
		else {
            
			mProgression += stepSize;
            (mCallback)(mBaton, mProgression);
            
            // Set the clock to fire again
            setclock_fdelay(NULL, clock, mGranularity);
        }
	}
}

void MaxClockCallback(Max* aMaxScheduler)
{
    aMaxScheduler->Tick();
}
