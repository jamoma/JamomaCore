/* 
 * TTBlue High-Mid-Low shelf filter 
 * ported by Nils Peters 2009, from the PD external hml_shelf~ by Thomas Musil
 * 
 */

#include "TTHighMidLowShelf.h"
#define thisTTClass TTHighMidLowShelf // TODO: what is that 


TTHighMidLowShelf::TTHighMidLowShelf(TTUInt16 newMaxNumChannels)
	: TTAudioObject("filter.highmidlowshelf", newMaxNumChannels), 
	xm1(NULL), xm2(NULL), xm0(NULL)
{
	// register attributes
	registerAttributeWithSetter(frequencyLm,	kTypeFloat64);
	addAttributeProperty(frequencyLm,			range,			TTValue(10.0, sr*0.475));
	addAttributeProperty(frequencyLm,			rangeChecking,	TT("clip"));
    
	registerAttributeWithSetter(frequencyMh,	kTypeFloat64);
	addAttributeProperty(frequencyMh,			range,			TTValue(10.0, sr*0.475));
	addAttributeProperty(frequencyMh,			rangeChecking,	TT("clip"));
	
	registerAttributeWithSetter(gainL,			kTypeFloat64);
	addAttributeProperty(gainL,					range,			TTValue(0.0, 1.0));
	addAttributeProperty(gainL,					rangeChecking,	TT("clip"));
	
	registerAttributeWithSetter(gainM,			kTypeFloat64);
	addAttributeProperty(gainM,					range,			TTValue(0.0, 1.0));
	addAttributeProperty(gainM,					rangeChecking,	TT("clip"));
	
	registerAttributeWithSetter(gainH,			kTypeFloat64);
	addAttributeProperty(gainH,					range,			TTValue(0.0, 1.0));
	addAttributeProperty(gainH,					rangeChecking,	TT("clip"));
	
	// register for notifications from the parent class so we can allocate memory as required
	registerMessageWithArgument(updateMaxNumChannels);
	// register for notifications from the parent class so we can recalculate coefficients as required
	registerMessageSimple(updateSr);
	// make the clear method available to the outside world
	registerMessageSimple(clear);

	// Set Defaults...
	setAttributeValue(TT("maxNumChannels"),		newMaxNumChannels);			// This attribute is inherited
	setAttributeValue(TT("frequencyLm"),		100.0);
	setAttributeValue(TT("frequencyMh"),		3000.0);
	setAttributeValue(TT("gainL"),				1.0);
	setAttributeValue(TT("gainM"),				1.0);
	setAttributeValue(TT("gainH"),				1.0);
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
	init();
	return kTTErrNone;
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
    if (static_cast<TTFloat64>(newValue) < hf_)
    {   
		lf_ = newValue;
        mf_ = sqrt(hf_) * sqrt(lf_); // mf_ depends on hf_ and lf_
        //init();
	}
	return init();   
}

TTErr TTHighMidLowShelf::setfrequencyMh(const TTValue& newValue)
{
     if (static_cast<TTFloat64>(newValue)  > lf_)
    {
		hf_ = newValue;
		mf_ = sqrt(hf_) * sqrt(lf_); // mf_ depends on hf_ and lf_
		//init();
	}
	return init(); 
}

TTErr TTHighMidLowShelf::setgainL(const TTValue& newValue)
{   
    //if (lg_ != static_cast<TTFloat64>(newValue))
    //{
        lg_ = newValue;
        //init();
    //}
	return init();
}



TTErr TTHighMidLowShelf::setgainM(const TTValue& newValue)
{   
	//if (mg_ != static_cast<TTFloat64>(newValue))
    //{
        mg_ = newValue;
        //init();
    //}
	return init();
}

TTErr TTHighMidLowShelf::setgainH(const TTValue& newValue)
{   
	//if (hg_ != static_cast<TTFloat64>(newValue))
    //{
        hg_ = newValue;
        //init();
    //}
	return init();
}





TTErr TTHighMidLowShelf::init()
{   
    double f = mf_ * (kTTPi/ sr);  
    double rf = sqrt(hf_) / sqrt(lf_); 
    double l = cos(f) / sin(f);
    double invHg = 1.0 / hg_;
    double invLg = 1.0 / lg_;
    double invMg = 1.0 / mg_;
    double k1 = rf * l;
    double k2 = l / rf;
    double k3 = l * l;
    double k4 = k3 * hg_;
    double k5 = k3 * invHg;
    double k6 = invLg + k5;
    double k7 = invMg * k1 +  k2 * invLg * invHg * mg_;
    double k8 = lg_ + k4;
    double k9 = (mg_ * k1) + (k2 * lg_ * hg_ * invMg);
    double k10 = 1.0 / (k6 + k7);
	
    double tempb2 = k10 * (k7 - k6);
    double tempb1 = k10 * 2.0 * (k5 - invLg);
    double tempa2 = k10 * (k8 - k9);
    double tempa1 = k10 * 2.0 * (lg_ - k4);
    double tempa0 = k10 * (k8 + k9);
	
    /* stability check */
	
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
	
	return kTTErrNone;
}



TTErr TTHighMidLowShelf::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TTAudioSignal&	in = inputs->getSignal(0);
	TTAudioSignal&	out = outputs->getSignal(0);
	TTUInt16		vs;
	TTSampleValue	*inSample,
					*outSample;
	TTFloat64		tempx,
					tempy;
	TTUInt16		numchannels = TTAudioSignal::getMinChannelCount(in, out);
	TTUInt16		channel;

	// This outside loop works through each channel one at a time
	for(channel=0; channel<numchannels; channel++){
		inSample = in.sampleVectors[channel];
		outSample = out.sampleVectors[channel];
		vs = in.getVectorSize();
		
		// This inner loop works through each sample within the channel one at a time
		while(vs--){
			tempx = *inSample++;
			xm0[channel] = tempx + b1 * xm1[channel] + b2 * xm2[channel]; //TODO: not sure if we need TTAntiDenormal here
			tempy        = TTAntiDenormal(a0 * xm0[channel] + a1 * xm1[channel] + a2 * xm2[channel]);
			xm2[channel] = xm1[channel];
			xm1[channel] = xm0[channel];
			*outSample++ = tempy;
		}
	}
	return kTTErrNone;
}
