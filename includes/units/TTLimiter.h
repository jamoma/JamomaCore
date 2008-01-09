/* 
 * TTBlue Limiter Object
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __TT_LIMITER_H__
#define __TT_LIMITER_H__


#include "TTAudioObject.h"

/**	TTLimiter implements a lookahead limiter processor for controlling the dynamics of an input. */
class TTLimiter : public TTAudioObject {
private:
	TTSampleValue*		lastInput;				///< keep the last input for each channel
	TTSampleValue*		lastOutput;				///< keep the last output for each channel
	TTFloat64			recover;				///< 
	TTFloat64			lookaheadInv;			///< reciprocal (inverse) of the lookahead attribute
	TTUInt32			lookaheadBufferIndex;
	TTSampleVector*		lookaheadBuffer;		///< keep a lookahead buffer for each channel
	TTSampleVector*		gain;
	TTUInt32			samps;
	TTSampleValue		last;
	TTUInt32			maxBufferSize;			///< TODO: make this settable
	TTBoolean			isLinear;				///< is attrMode set to linear?
	TTDCBlock			*dcBlocker;				///< DCBlocker object
	TTGain				*preamp;				///< Gain object to apply preamp

	TTBoolean			attrDCBlocker;			///< If toggled to NO, the internal DC Blocker will be turned off.
	TTSymbol*			attrMode;				///< may be one of two symbols: "linear" or "exponential".
	TTFloat32			attrRelease;			///< number of seconds for the release to recover after a peak in the audio signal.
	TTUInt32			attrLookahead;			///< number of samples by which to look forward.
	TTFloat32			attrThreshold;			///< linear amplitude threshold at which the limiting should kick in (attr setter used dB).
	TTFloat32			attrPreamp;				///< linear gain scaling factor prior to limiting (attr setter used dB).
	TTFloat32			attrPostamp;			///< linear gain scaling factor after the limiting (attr setter used dB).

	/**	Override the setter for the inherited maxNumChannels attribute.					*/
	TTErr updateMaxNumChannels();

	/** Receives notifications when there are changes to the inherited sr attribute.	*/
	TTErr updateSr();

	/**	Setter for the mode attribute. */
	TTErr setMode(const TTValue& value);

	/**	Setter for the release attribute. */
	TTErr setRelease(const TTValue& value);

	/**	Setter for the dcblocker attribute. */
	TTErr setDCBlocker(const TTValue& value);

	/**	Setter for the threshold attribute. */
	TTErr setPreamp(const TTValue& value);
	/**	Getter for the threshold attribute. */
	TTErr getPreamp(TTValue& value);

	/**	Setter for the threshold attribute. */
	TTErr setPostamp(const TTValue& value);
	/**	Getter for the threshold attribute. */
	TTErr getPostamp(TTValue& value);

	/**	Setter for the threshold attribute. */
	TTErr setThreshold(const TTValue& value);
	/**	Getter for the threshold attribute. */
	TTErr getThreshold(TTValue& value);
	

	/** Private utility used by the audio processing routine. */
	void setRecover();

	/**	Standard audio processing method as used by TTBlue objects.	 */
	TTErr processNormal(TTAudioSignal& in, TTAudioSignal& out);
	
	/**	This audio processing method is used when there is no internal DC Blocking .	 */
	TTErr processNoDCBlocking(TTAudioSignal& in, TTAudioSignal& out);

public:

	/**	Constructor. */
	TTLimiter(TTUInt8 newMaxNumChannels);

	/**	Destructor. */
	~TTLimiter();
};


#endif // __TT_LIMITER_H__
