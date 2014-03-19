/** @file
 *
 * @ingroup dspFilterLib
 *
 * @brief #TTHalfband9 is a 9-Pole Halfband filter built up from a 2-path allpass structure.
 *
 * @details
 *
 * @authors Timothy Place, Trond Lossius
 *
 * @copyright Copyright © 2010, Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#ifndef __TT_HALFBAND9_H__
#define __TT_HALFBAND9_H__

#include "TTDSP.h"
#include "TTAllpass1a.h"
#include "TTAllpass1b.h"


/**	A 9-pole halfband lowpass/highpass filter built-up from allpass building blocks.
	Based on Multirate Signal Processing for Communication Systems, Chapter 10, Page 18.
 
	Passband edge (i.e. Fc or -3db) at Fs/4
 */
class TTHalfband9 : TTAudioObjectBase {
	TTCLASS_SETUP(TTHalfband9)

protected:

	TTAudioObject	mF0;		///< path0
	TTAudioObject	mF2;		///< path0
	TTAudioObject	mR0;		///< path0, resampling
	TTAudioObject	mR2;		///< path0, resampling
	
	TTAudioObject	mF1;		///< path1
	TTAudioObject	mF3;		///< path1
	TTAudioObject	mR1;		///< path1, resampling
	TTAudioObject	mR3;		///< path1, resampling
	TTAudioObject	mDelay;		///< path1

	TTSampleVector	mRSwitch;	///< resampling switch (so we know which path to calculate)
	TTSampleVector	mY0;		///< resampling path0 output (for each channel)
	TTSampleVector	mY1;		///< resampling path1 output (for each channel)	
	
	TTSymbol		mMode;		///< Attribute: lowpass or highpass
		
	// Notifications
	TTErr updateMaxNumChannels(const TTValue& oldMaxNumChannels, TTValue&);

	// Zero filter history
	TTErr clear();
	
	// attribute accessor
	TTErr setMode(const TTValue& newValue);

	// Do the processing
	inline void filterKernel(const TTFloat64& input, TTFloat64& outputPath0, TTFloat64& outputPath1, TTPtrSizedInt channel);
	
	TTErr processLowpass	(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
	TTErr processHighpass	(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
	TTErr processDownsample	(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
	TTErr processUpsample	(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
	
	
	/**	Unit Tests
	 @param	returnedTestInfo		Used to return test information
	 @return						#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	virtual TTErr test(TTValue& returnedTestInfo);
	
public:

	TTErr calculateLowpass		(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt channel=0);
	TTErr calculateHighpass		(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt channel=0);
	TTErr calculateDownsample	(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt channel=0);
	TTErr calculateUpsample		(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt channel=0);

};


#endif // __TT_HALFBAND9_H__
