/** @file
 *
 * @ingroup modularLibrary
 *
 * @brief Ramp Class
 *
 * @details
 *
 * @authors Tim Place, Théo de la Hogue
 *
 * @copyright © 2008, Tim Place, Théo de la Hogue @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#ifndef __TT_RAMP_H__
#define __TT_RAMP_H__

#include "TTModular.h"
#include "Scheduler.h"

typedef void (*TTRampCallback)(void *, TTUInt32, TTFloat64 *);

/****************************************************************************************************/
// Class Specification


// Specification of our base class
class TTMODULAR_EXPORT TTRamp : public TTDataObjectBase {
    
    TTCLASS_SETUP(TTRamp)
  	
public: ///< It is public in order to be able to extend scheduler or function unit parameters as attributes of another object
    
    TTObjectBasePtr         mSchedulerUnit;     ///< The actual scheduler unit object defined by mScheduler
#ifndef TT_NO_DSP
    TTAudioObjectBasePtr    mFunctionUnit;		///< The actual function unit object defined by mFunction
#endif
    
private:
    
    TTSymbol                mScheduler;			///< ATTRIBUTE : The name of the scheduler to drive the ramp
#ifndef TT_NO_DSP
    TTSymbol                mFunction;			///< ATTRIBUTE : The name of the function unit
#endif
    TTFloat64               mRampTime;          ///< ATTRIBUTE : The time of ramp in millisecond
    TTUInt32                mNumValues;
    
    TTRampCallback          mCallback;			///<
    TTPtr                   mBaton;				///<
    
    TTFloat64               *startValue;
    TTFloat64               *targetValue;
    TTFloat64               *currentValue;
    
    /** Attribute getter */
    TTErr   getRunning(TTValue& value);
    
    /** Attribute setter */
    TTErr   setScheduler(const TTValue& schedulerName);
    TTErr   getSchedulerLibrary(TTValue& value);
    TTErr   getSchedulerParameters(TTValue& value);
    TTErr   getSchedulerParameterValue(TTValue& value);
    TTErr   setSchedulerParameterValue(const TTValue& value);
    
#ifndef TT_NO_DSP    
    TTErr   setFunction(const TTValue& functionName);
    TTErr   getFunctionLibrary(TTValue& value);
    TTErr   getFunctionParameters(TTValue& value);
    TTErr   getFunctionParameterValue(TTValue& value);
    TTErr   setFunctionParameterValue(const TTValue& value);
#endif
    TTErr   setNumValues(const TTValue& inputValue);

    /** Message */
    TTErr   Set(const TTValue& inputValue, TTValue& outputValue);
    
    TTErr   Target(const TTValue& inputValue, TTValue& outputValue);
    
    TTErr   Go(const TTValue& inputValue, TTValue& outputValue);
    
    TTErr   Slide(const TTValue& inputValue, TTValue& outputValue);
    
    TTErr   Tick();
    
    TTErr   Stop();

public: ///< It is public in order to be able to extend scheduler or function unit parameters as attributes of another object
    

    
#ifndef TT_NO_DSP

#endif
    friend void TTMODULAR_EXPORT TTRampSchedulerCallback(TTPtr object, TTFloat64 progression, TTFloat64 realTime);
};
typedef TTRamp* TTRampPtr;

/**
 @param	baton						..
 @param	data						..
 @return							an error code */
void TTMODULAR_EXPORT TTRampSchedulerCallback(TTPtr object, TTFloat64 progression, TTFloat64 realTime);

#endif // __TT_RAMP_H__
