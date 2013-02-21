/* 
 * Ramp Class
 * Copyright © 2008, Tim Place, Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the "New BSD License"
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
    TTAudioObjectBasePtr    mFunctionUnit;		///< The actual function unit object defined by mFunction
    
private:
    
    TTSymbol                mScheduler;			///< ATTRIBUTE : The name of the scheduler to drive the ramp
    TTSymbol                mFunction;			///< ATTRIBUTE : The name of the function unit
    
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
    TTErr   setFunction(const TTValue& functionName);
    TTErr   setNumValues(const TTValue& inputValue);

    /** Message */
    TTErr   Set(const TTValue& inputValue, TTValue& outputValue);
    
    TTErr   Target(const TTValue& inputValue, TTValue& outputValue);
    
    TTErr   Go(const TTValue& inputValue, TTValue& outputValue);
    
    TTErr   Slide(const TTValue& inputValue, TTValue& outputValue);
    
    TTErr   Stop();

public: ///< It is public in order to be able to extend scheduler or function unit parameters as attributes of another object

    TTErr   getFunctionParameterNames(TTValue& names);
    TTErr   setFunctionParameterValue(TTSymbol ParameterName, TTValue& newValue);
    TTErr   getFunctionParameterValue(TTSymbol ParameterName, TTValue& value);
    
    friend void TTMODULAR_EXPORT TTRampSchedulerCallback(TTPtr object, TTFloat64 progression);
};
typedef TTRamp* TTRampPtr;

/**
 @param	baton						..
 @param	data						..
 @return							an error code */
void TTMODULAR_EXPORT TTRampSchedulerCallback(TTPtr object, TTFloat64 progression);

#endif // __TT_RAMP_H__
