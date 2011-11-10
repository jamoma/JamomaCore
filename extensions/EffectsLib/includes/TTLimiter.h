/* 
 * TTBlue Limiter Object
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_LIMITER_H__
#define __TT_LIMITER_H__

#include "TTDSP.h"


/**	TTLimiter implements a lookahead limiter processor for controlling the dynamics of an input. 
	
	The way this works is by buffering the input, and delaying it by N samples.
	That way we are able to see what the output will be some amount of time prior to actually outputting it,
	and adjust the gain accordingly.
	
	After some preprocessing to adjust gain and filter DC offsets on the input, we have an analysis stage.
	The analysis stage looks at the sample value for each channel at the input,
	and then uses the hottest sample to calculate the gain adjust that needs to be applied.
	
	The release attribute (specified in seconds) determines how long it takes for a gain reduction to "wear off"
	once the amplitude level of the input has been reduced.
*/
class TTLimiter : public TTAudioObject {
	TTCLASS_SETUP(TTLimiter)

	TTFloat64			recover;				///< 
	TTFloat64			lookaheadInv;			///< reciprocal (inverse) of the lookahead attribute
	TTUInt32			lookaheadBufferIndex;
	TTSampleValue**		lookaheadBuffer;		///< keep a lookahead buffer for each channel
	TTSampleValue*		gain;
	TTSampleValue		last;
	TTBoolean			isLinear;				///< is attrMode set to linear?

	TTAudioObjectPtr	dcBlocker;				///< TTDCBlock object
	TTAudioObjectPtr	preamp;					///< TTGain object to apply preamp

	TTUInt32			maxBufferSize;			///< TODO: make this settable
	TTBoolean			attrDCBlocker;			///< If toggled to NO, the internal DC Blocker will be turned off.
	TTSymbol*			attrMode;				///< may be one of two symbols: "linear" or "exponential".
	TTFloat64			attrRelease;			///< number of seconds for the release to recover after a peak in the audio signal.
	TTUInt32			attrLookahead;			///< number of samples by which to look forward.
	TTFloat64			attrThreshold;			///< linear amplitude threshold at which the limiting should kick in (attr setter used dB).
	//TTFloat64			attrPreamp;				///< linear gain scaling factor prior to limiting (attr setter used dB).
	TTFloat64			attrPostamp;			///< linear gain scaling factor after the limiting (attr setter used dB).

	/**	Override the setter for the inherited maxNumChannels attribute.					*/
	TTErr updateMaxNumChannels(const TTValue& oldMaxNumChannels, TTValue&);
	
	/** Receives notifications when there are changes to the inherited sr attribute.	*/
	TTErr updateSampleRate(const TTValue& oldSampleRate, TTValue&);

	/** Private utility used by the audio processing routine. */
	void setRecover();

	/**	Standard audio processing method as used by TTBlue objects.	 */
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
	
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
	
	/** Setter for the lookahead attribute, value is in samples. */
	TTErr setLookahead(TTValue& newValue);
	
	/**	Setter for the mode attribute. */
	TTErr setMode(TTValue& newValue);
	
	/**	Setter for the release attribute. */
	TTErr setRelease(TTValue& newValue);
	
	/**	Setter for the dcblocker attribute. */
	TTErr setDCBlocker(TTValue& newValue);
	
	/** Clear the history: reset the limiter. */
	TTErr clear();	
};


#endif // __TT_LIMITER_H__
