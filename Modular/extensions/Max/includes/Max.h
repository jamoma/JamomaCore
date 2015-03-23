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


#ifndef __MAX_H__
#define __MAX_H__

#include "TTClock.h"

#include "ext.h"					// Max Header
#include "ext_proto.h"
#include "ext_obex.h"

#include "ext_common.h"
#include "z_dsp.h"
#include "commonsyms.h" // Common symbols used by the Max 4.5 API

class Max : public TTClock {
	
	TTCLASS_SETUP(Max)
    
private:
    
    TTFloat64           mGranularity;           ///< ATTRIBUTE : The granularity or time intervals between successive values in ms
    
    TTFloat64			numGrains;              ///< The number of steps left to take.
                                                ///< We use float value to cope with time shorter than the duration of mGranularity
    
    TTFloat64           stepSize;               ///< The size of the steps we need to take in the normalized range
    
    TTPtr               clock;                  ///< Pointer to a Max clock instance
    
	/** Get specific parameters names needed by this Clock
     @return        an error code if the Clock fails to give his specific parameters */
	TTErr getParameterNames(TTValue& value);
	
	/** Start the Clock
     @return        an error code if the Clock fails to start */
    TTErr Go();
    
    /** Halt the sheduler
     @return        an error code if the Clock fails to stop */
    TTErr Stop();
    
    /** Pause the sheduler progression
     @return        an error code if the Clock fails to pause */
    TTErr Pause();
    
    /** Resume the sheduler progression
     @return        an error code if the Clock fails to resume */
    TTErr Resume();
    
    /** Called every time a new step should be processed
     @return        an error code if the Clock step fails  */
    TTErr Tick();
    
    friend void TT_EXTENSION_EXPORT MaxClockCallback(Max* aMaxClock);
    
};
typedef Max* MaxPtr;

/** Called by the Max queue, and provided to the qelem -- needs to have a C interface
 @param	baton						..
 @param	data						..
 @return							an error code */
void TT_EXTENSION_EXPORT MaxClockCallback(Max* aMaxClock);

#endif // __MAX_H__
