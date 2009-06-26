/* 
 * TTBlue State Variable Filter Object
 * Copyright © 2008, Tim Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __TT_SVF_H__
#define __TT_SVF_H__


#include "TTAudioObject.h"

/**	A State Variable Filter object.
	One of the features of a state variable filter is that it can provide all 4 filter types 
	simultaneously from the same algorithm.
	
	This implementation takes a different approach which requires the selection of one of the types.
	At some point in the future we could add a mode to get all 4 signals out of the output...
 */
class TTSvf : public TTAudioObject {
protected:
	TTFloat64		frequency;			///< filter cutoff frequency
	TTFloat64		resonance;			///< filter resonance -- range is best between 1.0 and 16.0
	TTSymbolPtr		mode;				///< lowpass, highpass, bandpass, notch, or peak
	TTFloat64		freq, res, damp;	// coefficients
	TTFloat64*		lowpass_output;		// feedback storage...
	TTFloat64* 		highpass_output;
	TTFloat64*		bandpass_output;
	TTFloat64* 		notch_output;
	TTFloat64*		peak_output;
	
	// Notifications
	TTErr updateMaxNumChannels(const TTValue& oldMaxNumChannels);
	TTErr updateSr();

	void calculateCoefficients();
	
	/**	Audio processing methods. */
	TTErr processLowpass(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
	TTErr processHighpass(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
	TTErr processBandpass(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
	TTErr processNotch(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
	TTErr processPeak(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);

public:

	/**	Constructor. */
	TTSvf(TTValue& arguments);

	/**	Destructor. */
	virtual ~TTSvf();

	// Attributes
	TTErr setmode(const TTValue& newValue);
	TTErr setfrequency(const TTValue& newValue);
	TTErr setresonance(const TTValue& newValue);

	/**	This algorithm uses an IIR filter, meaning that it relies on feedback.  If the filter should
	 *	not be producing any signal (such as turning audio off and then back on in a host) or if the
	 *	feedback has become corrupted (such as might happen if a NaN is fed in) then it may be 
	 *	neccesary to clear the filter by calling this method.
	 *	@return Returns a TTErr error code.												*/
	TTErr clear();	
	
	/**	Performs the actual SVF calculations. */
	void tick(TTSampleValue value, TTUInt16 channel);
};


#endif // __TT_SVF_H__
