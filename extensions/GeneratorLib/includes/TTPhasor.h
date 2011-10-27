/* 
 * TTBlue Cycling Ramp Generator
 * Copyright © 2003, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_PHASOR_H__
#define __TT_PHASOR_H__

#include "TTDSP.h"


/**	TTRamp is an audio processor that provides a soft saturation or overdrive effect to "warm" a sound up. */ 
class TTPhasor : TTAudioObject {
	TTCLASS_SETUP(TTPhasor)

	TTFloat64 			mFrequency;				///< ramp time in milliseconds
	TTSampleValue		mPhase, phaseInternal;	///< current location in the ramp
	TTFloat64			mOffset;				///< offset value (adding DC) 
	
	TTFloat64			rampMilliseconds;		///< ramp time in milliseconds
	TTUInt32			rampSamples;			///< ramp time in samples
	TTFloat64			step;					///< step size
	TTFloat64			linearGain;				///< actual gain coefficient derived from attrGain

	/** Receives notifications when there are changes to the inherited 
		sr attribute.						*/
	TTErr updateSampleRate(const TTValue&, TTValue&);

	/**	Internal method called when the ramp is triggered (by setting the rampTime) */
	void setStep();

	/**	Process method -- This method is special!  It does not use it's input!	*/
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
	
	/**	Setter for the frequency attribute in Hertz.   */
	TTErr setFrequency(const TTValue& newValue);
	/**	Setter for the frequency attribute in Hertz.   */
	TTErr setPhase(const TTValue& newValue);
	
	/**	Setter the gain attribute in dB.   */
	TTErr setGain(const TTValue& newValue);
	
	/**	Getter for the gain attribute.		*/
	TTErr getGain(TTValue& value);
	
	/**	Unit Tests	*/
	virtual TTErr test(TTValue& returnedTestInfo);	
};


#endif // __TT_PHASOR_H__
