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

#ifndef __MAX_H__
#define __MAX_H__

#include "Scheduler.h"

#include "ext.h"					// Max Header
#include "ext_proto.h"
#include "ext_obex.h"

#include "ext_common.h"
#include "z_dsp.h"
#include "commonsyms.h" // Common symbols used by the Max 4.5 API

class Max : public Scheduler {
	
	TTCLASS_SETUP(Max)
    
private:
    
    TTFloat64           mGranularity;        ///< ATTRIBUTE : The granularity or time intervals between successive values in ms
    
    TTFloat64			numGrains;			///< The number of steps left to take.
                                            ///< We use float value to cope with time shorter than the duration of mGranularity
    
    TTFloat64           stepSize;           ///< The size of the steps we need to take in the normalized range
    
    TTPtr               clock;				///< Pointer to a Max clock instance
    
	/** Get parameters names needed by this scheduler */
	TTErr getParameterNames(TTValue& value);
    
    /** Start the scheduler */
    TTErr Go();
    
    /** Halt the sheduler */
    void Stop();
    
    /** Called every time a new step should be processed */
    void Tick();
    
    friend void TT_EXTENSION_EXPORT MaxClockCallback(Max* aMaxScheduler);
    
};
typedef Max* MaxPtr;

/** Called by the Max queue, and provided to the qelem -- needs to have a C interface
 @param	baton						..
 @param	data						..
 @return							an error code */
void TT_EXTENSION_EXPORT MaxClockCallback(Max* aMaxScheduler);

#endif // __MAX_H__
