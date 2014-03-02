/** @file
 *
 * @ingroup dspFilterLib
 *
 * @brief #TTHalfband3 is a 3rd-order up/down-sampling filter built up from a 2-path allpass structure
 *
 * @details
 *
 * @authors Timothy Place, Trond Lossius
 *
 * @copyright Copyright © 2010, Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#ifndef __TT_RESAMPLE3_H__
#define __TT_RESAMPLE3_H__

#include "TTDSP.h"
#include "TTAllpass1a.h"
#include "TTAllpass1b.h"


/**	A 1st-order up/down-sampling filter built-up from allpass building blocks.
	Based on Multirate Signal Processing for Communication Systems, Chapter 10.
 */
class TTHalfband3 : TTAudioObjectBase {
	TTCLASS_SETUP(TTHalfband3)

protected:

	TTAudioObject	mF0;		///< path0 (used by lowpass/highpass modes)
	TTAudioObject	mDelay;		///< pure delay (used by lowpass/highpass modes)
	TTAudioObject	mR0;		///< path 0 (used by resampling modes)
	TTSampleVector	mX1;		///< previous input sample (for each channel)	
	TTSymbol		mMode;		///< Attribute: upsample or downsample
	
	// Notifications
	TTErr updateMaxNumChannels(const TTValue& oldMaxNumChannels, TTValue&);

	// attribute accessor
	TTErr setMode(const TTValue& newValue);

	// Do the processing
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


#endif // __TT_RESAMPLE1_H__
