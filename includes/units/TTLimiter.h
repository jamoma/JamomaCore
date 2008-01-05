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
	TTSampleValue*		lastInput;
	TTSampleValue*		last_output1;
	TTFloat64			recover;
	TTFloat64			recip;
	TTSampleVector*		buf1
	TTSampleVector*		buf2
	TTSampleVector*		gain;
	TTUInt32			bp;
	TTUInt32			samps;
	TTSampleValue		last;

	TTBoolean			attrDefeatDCBlocker;	///< If toggled to YES, the internal DC Blocker will be turned off.
	TTFloat32			attrThreshold;			///< linear amplitude threshold at which the limiting should kick in (attr setter used dB).
	TTSymbol*			attrMode;				///< may be one of two symbols: "linear" or "exponential".
	TTFloat32			attrRelease;			///< number of milliseconds for the release.
	TTUInt32			attrLookahead;			///< number of samples by which to look forward.
	TTFloat32			attrPreamp;				///< linear gain scaling factor prior to limiting (attr setter used dB).
	TTFloat32			attrPostamp;			///< linear gain scaling factor after the limiting (attr setter used dB).

	/** Constants used internal to this object. */
	enum{
		kMaxSamples = 256
	};
	

	/**	Override the setter for the inherited maxNumChannels parameter.					*/
	TTErr updateMaxNumChannels();

	/**	Setter for the bitdepth attribute. */
	TTErr setDefeatDCBlocker(TTValue& value);

	/**	Setter for the bitdepth attribute. */
	TTErr setDefeatDCBlocker(TTValue& value);

	/**	Setter for the bitdepth attribute. */
	TTErr setThreshold(TTValue& value);

	/**	Setter for the bitdepth attribute. */
	TTErr setPostamp(TTValue& value);



	/** Private utility used by the audio processing routine. */
	void set_recover();

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
