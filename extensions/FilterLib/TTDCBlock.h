/* 
 * TTBlue DC Offset Filter and Blocker 
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __TT_DCBLOCK_H__
#define __TT_DCBLOCK_H__

#include "TTDSP.h"


/**	TTDCBlock in an audio processor that filters out DC Offsets from an input.
 *	This class is a good example of a very simple audio filter that can process any 
 *	number of parallel audio channels.  It has a couple of simple messages, but 
 *	defines no attributes beyond those that are inherited by all TTAudioObjects.
 *
 *	The algorithm is based on one that frequently used in Max:
 *	"biquad~ 1.0 -1.0 -0.9997 0.0"
 */
 
class TTDCBlock : public TTAudioObject {
	TTCLASS_SETUP(TTDCBlock)

	TTSampleVector		mLastInput;		///< Feedback values used for the audio filter			
	TTSampleVector		mLastOutput;		///< Feedback values used for the audio filter

	/**	This method gets called when the inherited maxNumChannels attribute is changed. */
	TTErr updateMaxNumChannels(const TTValue& oldMaxNumChannels);

	/**	Standard single value calculate method as used by DSP objects. */
	inline TTErr calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt channel);
	
	/**	Standard audio processing method as used by DSP objects. */
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);

	/**	Resets the DC-Blocking filter.
	 *	This algorithm uses an IIR filter, meaning that it relies on feedback.  If the filter should
	 *	not be producing any signal (such as turning audio off and then back on in a host) or if the
	 *	feedback has become corrupted (such as might happen if a NaN is fed in) then it may be 
	 *	neccesary to clear the filter by calling this method.
	 *	@return Returns a TTErr error code.																*/
	TTErr Clear();
};


#endif // __TT_DCBLOCK_H__
