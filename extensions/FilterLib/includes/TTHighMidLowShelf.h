/* 
 * TTBlue High-Mid-Low shelf filter 
 * portd by Nils Peters 2009, from the PD external hml_shelf~ by Thomas Musil
 * 
 */

#ifndef _TT_HIMIDLOW_H_
#define _TT_HIMIDLOW_H_

#include "TTDSP.h"


/**	High-Mid-Low shelf filter.	*/
class TTHighMidLowShelf : public TTAudioObject {
	TTCLASS_SETUP(TTHighMidLowShelf)

	TTFloat64		mFrequencyLm, mFrequencyMh, mGainL, mGainM, mGainH;///< filter parameter
	TTFloat64		mA0, mA1, mA2, mB1, mB2;		///< filter coefficients
	TTSampleVector		mX1;
	TTSampleVector		mX2;
	TTSampleVector		mX0;
	TTFloat64		mFmid;
	

	/**	Receives notifications when there are changes to the inherited 
		maxNumChannels attribute.  This allocates memory for xm1, xm2, ym1, and ym2 
		so that each channel's previous values are remembered.		*/
	TTErr updateMaxNumChannels(const TTValue& oldMaxNumChannels, TTValue&);

	/** Receives notifications when there are changes to the inherited 
		sr attribute.						*/
	TTErr updateSampleRate(const TTValue& oldSampleRate, TTValue&);
	TTErr clear();
	TTErr calculateCoefficients();

	/**	Standard audio processing method as used by TTBlue objects. */
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);

    /** y = f(x) */
    TTErr calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt channel);
	
	/**	Setter for the filter attribute. */
	TTErr setGainL(const TTValue& value);
	TTErr setGainM(const TTValue& value);
	TTErr setGainH(const TTValue& value);
	TTErr setFrequencyLm(const TTValue& value);
	TTErr setFrequencyMh(const TTValue& value);
	
};

#endif //  _HIMIDLOW_H_
