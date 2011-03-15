/* 
 * TTBlue Ramp Generator
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_RAMP_H__
#define __TT_RAMP_H__

#include "TTDSP.h"


/**	TTRamp is an audio processor that provides a soft saturation or overdrive effect to "warm" a sound up. */ 
class TTRamp : TTAudioObject {
	TTCLASS_SETUP(TTRamp)

	enum rampDirection {
		kUP = 0,
		kDOWN
	};
	
	TTSymbol*			attrMode;				///< mode: sample_accurate or vector_accurate
	TTFloat64 			attrRampTime;			///< ramp time in milliseconds
	TTUInt32			rampSamples;			///< ramp time in samples
	TTFloat64			attrCurrentValue;		///< 
	TTFloat64			attrDestinationValue;	///< 
	TTFloat64			step;					///< 
	TTBoolean			direction;				///< 0 = ramp up, 1 = ramp down

	/** Internal method for setting which process method to use. */
	void setupProcess();

	/**	Internal method called when the ramp is triggered (by setting the rampTime) */
	void setStep();

	/**	Process method -- This method is special!  It only sets the first sample of the vector and does not use it's input!	*/
	TTErr processVectorAccurateDown(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
	/**	Process method -- This method is special!  It only sets the first sample of the vector and does not use it's input!	*/
	TTErr processVectorAccurateUp(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
	/**	Process method 	*/
	TTErr processSampleAccurateDown(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
	/**	Process method 	*/
	TTErr processSampleAccurateUp(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
	
	/**	Setter for the mode attribute.  The options are 'sample' and 'vector' which determine 
	 the desired accuracy of the ramp that is generated. */
	TTErr setMode(const TTValue& value);
	
	/** Trigger a ramp with a time set in samples */
	TTErr RampTimeInSamples(const TTValue& newValue);
	/** Trigger a ramp with a time set in milliseconds */
	TTErr setRampTime(const TTValue& newValue);
	
	/**	Stop the current ramp.			*/
	TTErr Stop();
	
	/**	Unit Tests	*/
	virtual TTErr test(TTValue& returnedTestInfo);	
	
};


#endif // __TT_RAMP_H__
