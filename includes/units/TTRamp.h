/* 
 * TTBlue Ramp Generator
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __TT_RAMP_H__
#define __TT_RAMP_H__

#include "TTAudioObject.h"

/**	TTRamp is an audio processor that provides a soft saturation
 *	or overdrive effect to "warm" a sound up.
 */ 
class TTRamp : public TTAudioObject {
private:
	enum{
		kUP = 0,
		kDOWN
	};
	
	TTSymbol			attrMode;				///< mode: sample_accurate or vector_accurate
	TTFloat32 			attrRampTime;			///< ramp time in milliseconds
	TTUInt32			rampSamples;			///< ramp time in samples
	TTFloat32			attrCurrentValue;		///< 
	TTFloat32			attrDestinationValue;	///< 
	TTFloat64			step;					///< 
	TTBoolean			direction;				///< 0 = ramp up, 1 = ramp down

	/**	Setter for the mode attribute.  The options are 'sample' and 'vector' which determine 
		the desired accuracy of the ramp that is generated. */
	TTErr setMode(const TTValue& value);

	/** Trigger a ramp with a time set in samples */
	TTErr rampInSamples(const TTValue& newValue);
	/** Trigger a ramp with a time set in milliseconds */
	TTErr setRampTime(const TTValue& newValue);

	/**	Stop the current ramp.			*/
	TTErr stop();

	/** Internal method for setting which process method to use. */
	void setupProcess();

	/**	Internal method called when the ramp is triggered (by setting the rampTime) */
	void setStep();

	/**	Process method -- This method is special!  It only sets the first sample of the vector and does not use it's input!	*/
	TTErr processVectorAccurateDown(TTAudioSignal& in, TTAudioSignal& out);
	/**	Process method -- This method is special!  It only sets the first sample of the vector and does not use it's input!	*/
	TTErr processVectorAccurateUp(TTAudioSignal& in, TTAudioSignal& out);
	/**	Process method 	*/
	TTErr processSampleAccurateDown(TTAudioSignal& in, TTAudioSignal& out);
	/**	Process method 	*/
	TTErr processSampleAccurateUp(TTAudioSignal& in, TTAudioSignal& out);

public:
	/**	Constructor. */
	TTRamp(TTUInt8 maxNumChannels);

	/**	Destructor. */
	~TTRamp();
};


#endif // __TT_RAMP_H__
