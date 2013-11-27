/** @file
 *
 * @ingroup modularSystem
 *
 * @brief System scheduler class is based on the time of the system
 *
 * @details
 *
 * @authors Théo de la Hogue
 *
 * @copyright © 2013, Théo de la Hogue @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#ifndef __SYSTEM_H__
#define __SYSTEM_H__

#include "Scheduler.h"
#ifdef TT_PLATFORM_WIN
	#include "../Minuit/includes/Time2.hpp"
#else
	#include <sys/time.h>
#endif

class System : public Scheduler {
	
	TTCLASS_SETUP(System)
    
private:
    
    TTFloat64                  mGranularity;           ///< ATTRIBUTE : the minimun time between each tick (in ms)
    TTThreadPtr                mThread;                ///< ATTRIBUTE : a thread to launch the scheduler execution
    TTUInt64                   mLastTime;              ///< a time reference used to compute delta time between each tick (in µs)
    
	/** Get specific parameters names needed by this scheduler
     @return        an error code if the scheduler fails to give his specific parameters */
	TTErr getParameterNames(TTValue& value);
	
	/** Start the scheduler
     @return        an error code if the scheduler fails to start */
    TTErr Go();
    
    /** Halt the sheduler
     @return        an error code if the scheduler fails to stop */
    TTErr Stop();
    
    /** Pause the sheduler progression
     @return        an error code if the scheduler fails to pause */
    TTErr Pause();
    
    /** Resume the sheduler progression
     @return        an error code if the scheduler fails to resume */
    TTErr Resume();
    
    /** Called every time a new step should be processed
     @return        an error code if the scheduler step fails  */
    TTErr Tick();
    
    /** Internal method to compute the amount of time spent since the last call */
    TTFloat64 computeDeltaTime();
    
    friend void TT_EXTENSION_EXPORT SystemThreadCallback(void* anSystemScheduler);
    
};
typedef System* SystemPtr;

/** Called by the System queue
 @param	baton						..
 @param	data						..
 @return							an error code */
void TT_EXTENSION_EXPORT SystemThreadCallback(void* aSystemScheduler);

#endif // __SYSTEM_H__
