/* 
 * TTBlue Allpass Filter Object
 * Copyright © 2003, Tim Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __TT_ALLPASS_H__
#define __TT_ALLPASS_H__

#include "TTAudioObject.h"


/**	An allpass filter. */
class TTEXPORT TTAllpass : public TTAudioObject {
protected:
	TTFloat64		delay;				///< Attribute: delay time in milliseconds
	TTFloat64		delayMax;			///< Maximum delay time in milliseconds (how long is the buffer?)
	TTUInt32		delayInSamples;		///< Delay time in samples (internal)		
	TTUInt32		delayInSamplesMax;	///< size of the delay buffers
	TTFloat64		gain;				///< Attribute: gain in db
	TTFloat64		linearGain;			///< Attribute: linear gain coefficient
	
	TTSampleVector*	feedforward;		///< An array of feedforward sample buffers, one for each channel
	TTSampleVector*	feedback;			///< An array of feedback sample buffers, one for each channel
	
	TTSampleVector*	ffEndPtr;			///< pointer to the last sample in the feedforward buffer (for each channel)
	TTSampleVector*	fbEndPtr;			///< pointer to the last sample in the feedback buffer (for each channel)
	TTSampleVector*	ffInPtr;			///< record pointer into the feedforward delay buffer (for each channel)
	TTSampleVector*	fbInPtr;			///< record pointer into the feedback delay buffer (for each channel)
	TTSampleVector*	ffOutPtr;			///< playback pointer from the feedforward delay buffer (for each channel)
	TTSampleVector*	fbOutPtr;			///< playback pointer from the feedback delay buffer (for each channel)

	// Notifications
	TTErr updateMaxNumChannels(const TTValue& oldMaxNumChannels);
	TTErr updateSr();

	/** Internal initialization of buffers and pointers etc. */
	void init();
	
	/** Internally used to free buffers. */
	void chuck(TTUInt16 numChannels);
	
	/**	Standard audio processing method as used by TTBlue objects. */
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);

public:

	/**	Constructor. */
	TTAllpass(TTUInt16 newMaxNumChannels);

	/**	Destructor. */
	virtual ~TTAllpass();
	
	/** Attribute accessor. */
	TTErr setdelay(const TTValue& newValue);
	
	/** Attribute accessor. */
	TTErr setgain(const TTValue& newValue);
	
	/** Attribute accessor. */
	TTErr setlinearGain(const TTValue& newValue);
	
	/**	This algorithm uses an IIR filter, meaning that it relies on feedback.  If the filter should
	 *	not be producing any signal (such as turning audio off and then back on in a host) or if the
	 *	feedback has become corrupted (such as might happen if a NaN is fed in) then it may be 
	 *	neccesary to clear the filter by calling this method.
	 *	@return Returns a TTErr error code.												*/
	TTErr clear();
};


#endif // __TT_ALLPASS_H__
