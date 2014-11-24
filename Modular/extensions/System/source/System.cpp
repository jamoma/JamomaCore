/** @file
 *
 * @ingroup modularSystem
 *
 * @brief System scheduler class
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
#include "System.h"

#define thisTTClass                 System
#define thisTTClassName             "system"
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
mGranularity(20.0)
{
	SCHEDULER_INITIALIZE

    addAttribute(Granularity, kTypeFloat64);
}

System::~System()
{
	stopThread();
}

TTErr System::getParameterNames(TTValue& value)
{
	value.clear();
	value.append(TTSymbol("granularity"));
    value.append(TTSymbol("offset"));
    value.append(TTSymbol("speed"));

	return kTTErrNone;
}

TTErr System::Go()
{
	TTLogError("** System::Go() CALLED **\r\n");
    // do we need to ramp at all ?
    if (mDuration <= mOffset) {
        stopThread();
        mRunning = false;
        mPaused = NO;
        mPosition = 0.;
        mDate = 0.;

        (mCallback)(mBaton, mPosition, mDate);

        // notify each observers
        sendNotification(TTSymbol("SchedulerRunningChanged"), mRunning);
        sendNotification(TTSymbol("SchedulerTicked"), TTValue(mPosition, mDate));
    }
    else if (mExternalTick) {

        // reset timing informations
        mRunning = true;
        mPaused = NO;
        mLastTime = 0.;

        // notify each observers
        sendNotification(TTSymbol("SchedulerRunningChanged"), mRunning);

        // launch a first tick if the duration is valid
        if (mDuration > 0.)
            Tick();
    }
    // if the thread is not running
    else if (!mRunning) {
        if(mThread.joinable())
			mThread.join();

        // launch a new thread to run the scheduler execution
        mThread = std::thread(&System::SystemThreadCallback, this);

    }

    return kTTErrNone;
}

TTErr System::Stop()
{
	TTLogError("** System::Stop() CALLED **\r\n");

	mPaused = NO;

	// stop thread execution
	stopThread();

	// notify each observers
    sendNotification(TTSymbol("SchedulerRunningChanged"), mRunning);


	// reset all time info
	mOffset = 0.;
    mPosition = 0.;
    mDate = 0.;

    return kTTErrNone;
}

TTErr System::Tick()
{
    TTFloat64 delta = computeDeltaTime() * mSpeed;

    // test paused and running status after the computeDeltatTime because there is a sleep inside
    if (mPaused || !mRunning)
        return kTTErrNone;

	mPosition += delta / mDuration;
    mDate += delta;

    if (mPosition < 1. || mInfinite)
    {
        // notify the owner
        (mCallback)(mBaton, mPosition, mDate);

        // notify each observers
        sendNotification(TTSymbol("SchedulerTicked"), TTValue(mPosition, mDate));
    }
    else
    {
        // forcing position to 1. to allow filtering
        mPosition = 1.;

        // notify the owner
        (mCallback)(mBaton, mPosition, mDate);

        // notify each observers
        sendNotification(TTSymbol("SchedulerTicked"), TTValue(mPosition, mDate));

        // if the scheduler is still running : stop it
        // note : because it is possible that another thread stops the scheduler before
        if (mRunning)
            Stop();
    }

    return kTTErrNone;
}

TTErr System::Pause()
{
    mPaused = YES;

    return kTTErrNone;
}

TTErr System::Resume()
{
    mPaused = NO;

    return kTTErrNone;
}

TTFloat64 System::computeDeltaTime()
{
	TTUInt64 deltaInUs = 0;
    TTUInt64 granularityInUs = mGranularity * 1000;

	struct timeval tv;

	// get the current time (in µs)
	#ifdef TT_PLATFORM_WIN
		Time2 time2;
		time2.gettimeofday(&tv, NULL);
	#else
		struct timezone tz;
		gettimeofday(&tv, &tz);
	#endif

	TTUInt64 currentTime = tv.tv_sec * 1000000L + tv.tv_usec;

	if (mLastTime != 0) {

        // it seems the currentTime is lower than the lastTime sometimes ...
        if (currentTime < mLastTime) {

            TTLogMessage("System::computeDeltaTime() : currentTime (%Lu) is lower than lastTime (%Lu)\n", currentTime, mLastTime);
            deltaInUs = 0;
        }
        else
            deltaInUs = (currentTime - mLastTime);

		if (deltaInUs < granularityInUs) {

            std::this_thread::sleep_for(std::chrono::microseconds(granularityInUs - deltaInUs));

			deltaInUs = granularityInUs;
		}

		mLastTime += deltaInUs;
	}
    else
		mLastTime = currentTime;

    // return the delta in ms
	return TTFloat64(deltaInUs / 1000.);
}

void System::SystemThreadCallback()
{
	TTLogError("** System::SystemThreadCallback() STARTED **\r\n");
    // reset timing informations
    mRunning = true;
    mPaused = NO;
    mLastTime = 0.;

    // notify each observers
    sendNotification(TTSymbol("SchedulerRunningChanged"), mRunning);

    // launch the tick if the duration is valid and while it have to run
    if (mDuration > 0.)
        while(mRunning)
			Tick();

	TTLogError("** System::SystemThreadCallback() ENDED **\r\n");
}

void System::stopThread()
{
    if(mRunning)
	{
        mRunning = false;
		while(!mThread.joinable())
			std::this_thread::sleep_for(std::chrono::milliseconds(500));

		try{
		mThread.join();
		}
		catch(std::system_error& e)
		{
			TTLogError(e.what());
			TTLogError("\n");
		}
	}
}
