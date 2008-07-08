/* 
 * TTBlue Cycling Ramp Generator
 * Copyright © 2003, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __TT_PHASOR_H__
#define __TT_PHASOR_H__

#include "TTAudioObject.h"

/**	TTRamp is an audio processor that provides a soft saturation
 *	or overdrive effect to "warm" a sound up.
 */ 
class TTEXPORT TTPhasor : public TTAudioObject {
private:	
	TTFloat64 			attrFrequency;			///< ramp time in milliseconds
	TTFloat64			attrGain;				///< gain in dB
	TTSampleValue		attrPhase;				///< current location in the ramp
	
	TTFloat64			rampMilliseconds;		///< ramp time in milliseconds
	TTUInt32			rampSamples;			///< ramp time in samples
	TTFloat64			step;					///< step size
	TTFloat64			linearGain;				///< actual gain coefficient derived from attrGain

	/** Receives notifications when there are changes to the inherited 
		sr attribute.						*/
	TTErr updateSr();

	/**	Internal method called when the ramp is triggered (by setting the rampTime) */
	void setStep();

	/**	Process method -- This method is special!  It does not use it's input!	*/
	TTErr processAudio(TTAudioSignal& in, TTAudioSignal& out);

public:
	/**	Constructor. */
	TTPhasor(TTUInt16 maxNumChannels);

	/**	Destructor. */
	~TTPhasor();
	
	/**	Setter for the frequency attribute in Hertz.   */
	TTErr setFrequency(const TTValue& newValue);
	
	/**	Setter the gain attribute in dB.   */
	TTErr setGain(const TTValue& newValue);
	
	/**	Getter for the gain attribute.		*/
	TTErr getGain(TTValue& value);
};


#endif // __TT_PHASOR_H__
