/** @file
 *
 * @ingroup modularMax
 *
 * @brief Max Clock class
 *
 * @details
 *
 * @authors Théo de la Hogue
 *
 * @copyright ©2013, Théo de la Hogue @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */

#include "Max.h"

#define thisTTClass                 Max
#define thisTTClassName             "max"
#define thisTTClassTags             "clock, max"

#define thisClockVersion		"0.1"
#define thisClockAuthor         "Theo de la Hogue"
#define thisClockStretchable	NO

extern "C" TT_EXTENSION_EXPORT TTErr TTLoadJamomaExtension_Max(void)
{
	TTFoundationInit();
	Max::registerClass();
	return kTTErrNone;
}

TT_CLOCK_CONSTRUCTOR,
mGranularity(20.0)
{	
	TT_CLOCK_INITIALIZE
	
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
        mPosition = 0.;
        mDate = 0.;
        (mCallback)(mBaton, mPosition, mDate);
        
        // notify each observers
        sendNotification(TTSymbol("ClockRunningChanged"), mRunning);
        sendNotification(TTSymbol("ClockTicked"), TTValue(mPosition, mDate));
    }
    else {
        
        // how many grains this time means ?
        numGrains = mDuration / mGranularity;
        stepSize = 1.0 / numGrains;
        
        mRunning = YES;
        mPaused = NO;
        mPosition = 0.;
        mDate = 0.;
        (mCallback)(mBaton, mPosition, mDate);
        
        // notify each observers
        sendNotification(TTSymbol("ClockRunningChanged"), mRunning);
        sendNotification(TTSymbol("ClockTicked"), TTValue(mPosition, mDate));
        
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
    sendNotification(TTSymbol("ClockRunningChanged"), mRunning);
    
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
			mPosition = 1.0;
            mDate = mDuration;
            
            (mCallback)(mBaton, mPosition, mDate);
            
            // notify each observers
            sendNotification(TTSymbol("ClockRunningChanged"), mRunning);
            sendNotification(TTSymbol("ClockTicked"), TTValue(mPosition, mDate));
        }
		else {
            
			mPosition += stepSize;
            mDate = mDuration * mPosition;
            
            (mCallback)(mBaton, mPosition, mDate);
            
            // notify each observers
            sendNotification(TTSymbol("ClockTicked"), TTValue(mPosition, mDate));
            
            // Set the clock to fire again
            setclock_fdelay(NULL, clock, mGranularity);
        }
	}
    
    return kTTErrNone;
}

void MaxClockCallback(Max* aMaxClock)
{
    aMaxClock->Tick();
}
