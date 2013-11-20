/* 
 * TTBlue High-Mid-Low shelf filter 
 * ported by Nils Peters 2009, from the PD external hml_shelf~ by Thomas Musil
 * 
 */

#include "TTHighMidLowShelf.h"

#define thisTTClass			TTHighMidLowShelf 
#define thisTTClassName		"highmidlowshelf"
#define thisTTClassTags		"dspFilterLib, audio, processor, threebandfilter"


TT_AUDIO_CONSTRUCTOR
{
	// register attributes
	addAttributeWithSetter(FrequencyLm,			kTypeFloat64);
	addAttributeProperty(FrequencyLm,			range,			TTValue(10.0, sr*0.475));
	addAttributeProperty(FrequencyLm,			rangeChecking,	TT("clip"));
    
	addAttributeWithSetter(FrequencyMh,			kTypeFloat64);
	addAttributeProperty(FrequencyMh,			range,			TTValue(10.0, sr*0.475));
	addAttributeProperty(FrequencyMh,			rangeChecking,	TT("clip"));
	
	addAttributeWithSetter(GainL,				kTypeFloat64);
	addAttributeProperty(GainL,					range,			TTValue(0.0000001, 16));
	addAttributeProperty(GainL,					rangeChecking,	TT("clip"));
	
	addAttributeWithSetter(GainM,				kTypeFloat64);
	addAttributeProperty(GainM,					range,			TTValue(0.0000001, 16));
	addAttributeProperty(GainM,					rangeChecking,	TT("clip"));
	
	addAttributeWithSetter(GainH,				kTypeFloat64);
	addAttributeProperty(GainH,					range,			TTValue(0.0000001, 16));
	addAttributeProperty(GainH,					rangeChecking,	TT("clip"));
	
	// register for notifications from the parent class so we can allocate memory as required
	addUpdates(MaxNumChannels);
	// register for notifications from the parent class so we can recalculate coefficients as required
	addUpdates(SampleRate);
	// make the clear method available to the outside world
	addMessage(clear);

	// Set Defaults...
	setAttributeValue(kTTSym_maxNumChannels,	arguments);			// This attribute is inherited
	setAttributeValue(TT("frequencyMh"),		3000.0);
	setAttributeValue(TT("frequencyLm"),		300.0);
	setAttributeValue(TT("gainL"),				1.0);
	setAttributeValue(TT("gainM"),				1.0);
	setAttributeValue(TT("gainH"),				1.0);
	setCalculateMethod(calculateValue);
	setProcessMethod(processAudio);
}



TTHighMidLowShelf::~TTHighMidLowShelf()
{
	;
}


TTErr TTHighMidLowShelf::updateMaxNumChannels(const TTValue& oldMaxNumChannels, TTValue&)
{

	mX1.resize(mMaxNumChannels);
	mX2.resize(mMaxNumChannels);
	mX0.resize(mMaxNumChannels);
	clear();
	return kTTErrNone;
}


TTErr TTHighMidLowShelf::updateSampleRate(const TTValue& oldSampleRate, TTValue&)
{ 
	return calculateCoefficients();
}


TTErr TTHighMidLowShelf::clear()
{
	mX1.assign(mMaxNumChannels, 0.0);
	mX2.assign(mMaxNumChannels, 0.0);
	mX0.assign(mMaxNumChannels, 0.0);	
	return kTTErrNone;
}

TTErr TTHighMidLowShelf::setFrequencyLm(const TTValue& newValue)
{
    if (static_cast<TTFloat64>(newValue) < mFrequencyMh)
    {   
		mFrequencyLm = newValue; 
        mFmid = sqrt(mFrequencyMh) * sqrt(mFrequencyLm); // mFmid depends on mFrequencyMh and mFrequencyLm
	}
	return calculateCoefficients();   
}

TTErr TTHighMidLowShelf::setFrequencyMh(const TTValue& newValue)
{
     if (static_cast<TTFloat64>(newValue)  > mFrequencyLm)
    {
		mFrequencyMh = newValue;
		mFmid = sqrt(mFrequencyMh) * sqrt(mFrequencyLm); // mFmid depends on mFrequencyMh and mFrequencyLm
	}
	return calculateCoefficients(); 
}

TTErr TTHighMidLowShelf::setGainL(const TTValue& newValue)
{   
	mGainL = newValue;
    return calculateCoefficients();
}


TTErr TTHighMidLowShelf::setGainM(const TTValue& newValue)
{   
	mGainM = newValue;
	return calculateCoefficients();
}

TTErr TTHighMidLowShelf::setGainH(const TTValue& newValue)
{   
	mGainH = newValue;
	return calculateCoefficients();
}


TTErr TTHighMidLowShelf::calculateCoefficients()
{   
    double f = mFmid * (kTTPi / sr);  //kTTPi / sr could be calculated outside
    //double rf = sqrt(mFrequencyMh) / sqrt(mFrequencyLm); //could be improved
    double rf = pow((mFrequencyMh / mFrequencyLm), 0.5); //could be improved
    double l = cos(f) / sin(f);
    double invHg = 1.0 / mGainH;
    double invLg = 1.0 / mGainL;
    double invMg = 1.0 / mGainM;
    double k1 = rf * l;
    double k2 = l / rf;
    double k3 = l * l;
    double k4 = k3 * mGainH;
    double k5 = k3 * invHg;
    double k6 = invLg + k5;
    double k7 = invMg * k1 +  k2 * invLg * invHg * mGainM;
    double k8 = mGainL + k4;
    double k9 = (mGainM * k1) + (k2 * mGainL * mGainH * invMg);
    double k10 = 1.0 / (k6 + k7);
	
    /*
	double tempb2 = k10 * (k7 - k6);
    double tempb1 = k10 * 2.0 * (k5 - invLg);
    double tempa2 = k10 * (k8 - k9);
    double tempa1 = k10 * 2.0 * (mGainL - k4);
    double tempa0 = k10 * (k8 + k9);
	
	
    // stability check //
	
    double discriminant = tempb1 * tempb1 + 4.0 * tempb2;
	TTClip<double>(tempb1, -1.9999996, 1.9999996);
	TTClip<double>(tempb2, -0.9999998, 0.9999998);
   	
    if (discriminant >= 0.0)
    {
        if (0.9999998 - tempb1 - tempb2 < 0.0)
            tempb2 = 0.9999998 - tempb1;
        if (0.9999998 + tempb1 - tempb2 < 0.0)
            tempb2 = 0.9999998 + tempb1;
    }
	//TTClip<double>(tempb2, 0.9999998 - tempb1, 0.9999998 + tempb1);  //[NP] is that what the loop above means ?
    a0 = tempa0;
    a1 = tempa1;
    a2 = tempa2;
    b1 = tempb1;
    b2 = tempb2; 
	*/
	
	
	mB2 = k10 * (k7 - k6);
	mB1 = k10 * 2.0 * (k5 - invLg);
	mA2 = k10 * (k8 - k9);
    mA1 = k10 * 2.0 * (mGainL - k4);
	mA0 = k10 * (k8 + k9);
	
	// stability check //
	double discriminant = mB1 * mB1 + 4.0 * mB2;
	TTClip<double>(mB1, -1.9999996, 1.9999996);
	TTClip<double>(mB2, -0.9999998, 0.9999998);
   	
    if (discriminant >= 0.0)
    {
        if (0.9999998 - mB1 - mB2 < 0.0)
            mB2 = 0.9999998 - mB1;
        if (0.9999998 + mB1 - mB2 < 0.0)
            mB2 = 0.9999998 + mB1;
    }
	
	return kTTErrNone;
}



TTErr TTHighMidLowShelf::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TT_WRAP_CALCULATE_METHOD(calculateValue);
}


inline TTErr TTHighMidLowShelf::calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt channel)
{
    mX0[channel] = x + mB1 * mX1[channel] + mB2 * mX2[channel];      
	TTZeroDenormal(mX0[channel]); // put TTZeroDenormal here for superstition
    y = mA0 * mX0[channel] + mA1 * mX1[channel] + mA2 * mX2[channel];
	TTZeroDenormal(y);
    mX2[channel] = mX1[channel];    // update feedback values
    mX1[channel] = mX0[channel];
    return kTTErrNone;
}

