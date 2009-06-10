/* 
 * TTBlue High-Mid-Low shelf filter 
 * portd by Nils Peters 2009, from the PD external hml_shelf~ by Thomas Musil
 * 
 */

#ifndef _TT_HIMIDLOW_H_
#define _TT_HIMIDLOW_H_

#include "TTAudioObject.h"

class TTHighMidLowShelf : public TTAudioObject {
protected:
	TTFloat64		frequencyLm, frequencyMh, gainL, gainM, gainH;///< filter parameter
	TTFloat64		a0, a1, a2, b1, b2;		///< filter coefficients
	TTFloat64		*xm1;
	TTFloat64		*xm2;
	TTFloat64		*xm0;
	TTFloat64		mf_;//, hf_, lg_, mg_, hg_,lf_;
	//TTFloat64		*ym2;						// previous input and output samples

	/**	Receives notifications when there are changes to the inherited 
		maxNumChannels attribute.  This allocates memory for xm1, xm2, ym1, and ym2 
		so that each channel's previous values are remembered.		*/
	TTErr updateMaxNumChannels(const TTValue& oldMaxNumChannels);

	/** Receives notifications when there are changes to the inherited 
		sr attribute.						*/
	TTErr updateSr();
	
	TTErr calculateCoefficients();

	/**	Standard audio processing method as used by TTBlue objects. */
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);

    /** y = f(x) */
    inline TTErr calculateValue(const TTFloat64& x, TTFloat64& y, TTPtr data);
	
	
public:

	/**	Constructor. */
	TTHighMidLowShelf(TTUInt16 newMaxNumChannels);

	/**	Destructor. */
	virtual ~TTHighMidLowShelf();

	/**	Setter for the filter attribute. */
	TTErr setgainL(const TTValue& value);
	TTErr setgainM(const TTValue& value);
	TTErr setgainH(const TTValue& value);
	TTErr setfrequencyLm(const TTValue& value);
	TTErr setfrequencyMh(const TTValue& value);
	TTErr clear();
};

TTErr TTHighMidLowShelf::calculateValue(const TTFloat64& x, TTFloat64& y, TTPtr data)
{
    TTPtrSizedInt channel = TTPtrSizedInt(data);
    xm0[channel] = x + b1 * xm1[channel] + b2 * xm2[channel]; 
    y = TTAntiDenormal(a0 * xm0[channel] + a1 * xm1[channel] + a2 * xm2[channel]);
    xm2[channel] = xm1[channel];    // update feedback values
    xm1[channel] = xm0[channel];
    return kTTErrNone;
}



#endif //  _HIMIDLOW_H_
