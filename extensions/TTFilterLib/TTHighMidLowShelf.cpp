/* 
 * TTBlue High-Mid-Low shelf filter 
 * ported by Nils Peters 2009, from the PD external hml_shelf~ by Thomas Musil
 * 
 */

#include "TTHighMidLowShelf.h"

#define thisTTClass			TTHighMidLowShelf 
#define thisTTClassName		"highmidlowshelf"
#define thisTTClassTags		"audio, processor, filter"


TT_AUDIO_CONSTRUCTOR, 
	xm1(NULL), 
	xm2(NULL), 
	xm0(NULL)
{
	// register attributes
	registerAttributeWithSetter(frequencyLm,	kTypeFloat64);
	//addAttributeProperty(frequencyLm,			range,			TTValue(10.0, sr*0.475));
	//addAttributeProperty(frequencyLm,			rangeChecking,	TT("clip"));
    
	registerAttributeWithSetter(frequencyMh,	kTypeFloat64);
	//addAttributeProperty(frequencyMh,			range,			TTValue(10.0, sr*0.475));
	//addAttributeProperty(frequencyMh,			rangeChecking,	TT("clip"));
	
	registerAttributeWithSetter(gainL,			kTypeFloat64);
	//addAttributeProperty(gainL,					range,			TTValue(0.0000001, 16));
	//addAttributeProperty(gainL,					rangeChecking,	TT("clip"));
	
	registerAttributeWithSetter(gainM,			kTypeFloat64);
	//addAttributeProperty(gainM,					range,			TTValue(0.0000001, 16));
	//addAttributeProperty(gainM,					rangeChecking,	TT("clip"));
	
	registerAttributeWithSetter(gainH,			kTypeFloat64);
	//addAttributeProperty(gainH,					range,			TTValue(0.0000001, 16));
	//addAttributeProperty(gainH,					rangeChecking,	TT("clip"));
	
	// register for notifications from the parent class so we can allocate memory as required
	registerMessageWithArgument(updateMaxNumChannels);
	// register for notifications from the parent class so we can recalculate coefficients as required
	registerMessageSimple(updateSr);
	// make the clear method available to the outside world
	registerMessageSimple(clear);

	// Set Defaults...
	setAttributeValue(TT("maxNumChannels"),		arguments);			// This attribute is inherited
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
	delete[] xm1;
	delete[] xm2;
	delete[] xm0;
}


TTErr TTHighMidLowShelf::updateMaxNumChannels(const TTValue& oldMaxNumChannels)
{
	delete[] xm1;
	delete[] xm2;
	delete[] xm0;
	
	xm1 = new TTFloat64[maxNumChannels];
	xm2 = new TTFloat64[maxNumChannels];
	xm0 = new TTFloat64[maxNumChannels];
	
	clear();
	return kTTErrNone;
}


TTErr TTHighMidLowShelf::updateSr()
{ 
	return calculateCoefficients();
}


TTErr TTHighMidLowShelf::clear()
{
	short i;

	for(i=0; i<maxNumChannels; i++){
		xm1[i] = 0.0;
		xm2[i] = 0.0;
		xm0[i] = 0.0;
	}
	return kTTErrNone;
}

TTErr TTHighMidLowShelf::setfrequencyLm(const TTValue& newValue)
{
    if (static_cast<TTFloat64>(newValue) < frequencyMh)
    {   
		frequencyLm = TTClip<TTFloat64>(newValue,10.0, sr*0.475); 
        mf_ = sqrt(frequencyMh) * sqrt(frequencyLm); // mf_ depends on frequencyMh and frequencyLm
	}
	return calculateCoefficients();   
}

TTErr TTHighMidLowShelf::setfrequencyMh(const TTValue& newValue)
{
     if (static_cast<TTFloat64>(newValue)  > frequencyLm)
    {
		frequencyMh = TTClip<TTFloat64>(newValue,10.0, sr*0.475);
		mf_ = sqrt(frequencyMh) * sqrt(frequencyLm); // mf_ depends on frequencyMh and frequencyLm
	}
	return calculateCoefficients(); 
}

TTErr TTHighMidLowShelf::setgainL(const TTValue& newValue)
{   
	gainL = TTClip<TTFloat64>(newValue,0.0000001, 16);
    return calculateCoefficients();
}



TTErr TTHighMidLowShelf::setgainM(const TTValue& newValue)
{   
	gainM = TTClip<TTFloat64>(newValue,0.0000001, 16);
	return calculateCoefficients();
}

TTErr TTHighMidLowShelf::setgainH(const TTValue& newValue)
{   gainH = TTClip<TTFloat64>(newValue,0.0000001, 16);
	return calculateCoefficients();
}


TTErr TTHighMidLowShelf::calculateCoefficients()
{   
    double f = mf_ * (kTTPi / sr);  //kTTPi / sr could be calculated outside
    //double rf = sqrt(frequencyMh) / sqrt(frequencyLm); //could be improved
    double rf = pow((frequencyMh / frequencyLm), 0.5); //could be improved
    double l = cos(f) / sin(f);
    double invHg = 1.0 / gainH;
    double invLg = 1.0 / gainL;
    double invMg = 1.0 / gainM;
    double k1 = rf * l;
    double k2 = l / rf;
    double k3 = l * l;
    double k4 = k3 * gainH;
    double k5 = k3 * invHg;
    double k6 = invLg + k5;
    double k7 = invMg * k1 +  k2 * invLg * invHg * gainM;
    double k8 = gainL + k4;
    double k9 = (gainM * k1) + (k2 * gainL * gainH * invMg);
    double k10 = 1.0 / (k6 + k7);
	
    /*
	double tempb2 = k10 * (k7 - k6);
    double tempb1 = k10 * 2.0 * (k5 - invLg);
    double tempa2 = k10 * (k8 - k9);
    double tempa1 = k10 * 2.0 * (gainL - k4);
    double tempa0 = k10 * (k8 + k9);
	
	
    // stability check //
	
    double discriminant = tempb1 * tempb1 + 4.0 * tempb2;
	TTClip<double>(tempb1, -1.9999996, 1.9999996);
	TTClip<double>(tempb2, -0.9999998, 0.9999998);
   	
    if(discriminant >= 0.0)
    {
        if(0.9999998 - tempb1 - tempb2 < 0.0)
            tempb2 = 0.9999998 - tempb1;
        if(0.9999998 + tempb1 - tempb2 < 0.0)
            tempb2 = 0.9999998 + tempb1;
    }
	//TTClip<double>(tempb2, 0.9999998 - tempb1, 0.9999998 + tempb1);  //[NP] is that what the loop above means ?
    a0 = tempa0;
    a1 = tempa1;
    a2 = tempa2;
    b1 = tempb1;
    b2 = tempb2; 
	*/
	
	
	b2 = k10 * (k7 - k6);
	b1 = k10 * 2.0 * (k5 - invLg);
	a2 = k10 * (k8 - k9);
    a1 = k10 * 2.0 * (gainL - k4);
	a0 = k10 * (k8 + k9);
	
	// stability check //
	double discriminant = b1 * b1 + 4.0 * b2;
	TTClip<double>(b1, -1.9999996, 1.9999996);
	TTClip<double>(b2, -0.9999998, 0.9999998);
   	
    if(discriminant >= 0.0)
    {
        if(0.9999998 - b1 - b2 < 0.0)
            b2 = 0.9999998 - b1;
        if(0.9999998 + b1 - b2 < 0.0)
            b2 = 0.9999998 + b1;
    }
	
	return kTTErrNone;
}



TTErr TTHighMidLowShelf::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TT_WRAP_CALCULATE_METHOD(calculateValue);
}


inline TTErr TTHighMidLowShelf::calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt channel)
{
    xm0[channel] = TTAntiDenormal(x + b1 * xm1[channel] + b2 * xm2[channel]);     // put TTAntiDenormal here for superstition  
    y = TTAntiDenormal(a0 * xm0[channel] + a1 * xm1[channel] + a2 * xm2[channel]);
    xm2[channel] = xm1[channel];    // update feedback values
    xm1[channel] = xm0[channel];
    return kTTErrNone;
}

