/* 
 * TTBlue Audio Object Base Class
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTAudioObject.h"
#include "TTEnvironment.h"


// This coeff is used in GainDataspace mapping MIDI to and from linear gain 
// so that MIDI=100 equals 0 dB and MIDI = 127 equals +10 dB
static const double kGainMidiPower = log(pow(10.,10./20.))/log(127./100.);
static const double kGainMidiPowerInv = 1./kGainMidiPower;


/****************************************************************************************************/

TTAudioObject::TTAudioObject(const char* name, TTUInt16 newMaxNumChannels)
	: TTObject(name), attrMute(0)
{
	registerAttribute(TT("maxNumChannels"), kTypeUInt8,		&maxNumChannels,	(TTSetterMethod)&TTAudioObject::setMaxNumChannels);
	registerAttribute(TT("sr"),				kTypeUInt32,	&sr,				(TTSetterMethod)&TTAudioObject::setSr);
	registerAttribute(TT("bypass"),			kTypeBoolean,	&attrBypass,		(TTSetterMethod)&TTAudioObject::setBypass);
	registerAttribute(TT("mute"),			kTypeBoolean,	&attrMute,			(TTSetterMethod)&TTAudioObject::setMute);
	registerAttribute(TT("processInPlace"), kTypeBoolean,	&attrProcessInPlace);

	// Set Defaults...
	setAttributeValue(TT("maxNumChannels"),	newMaxNumChannels);
	setAttributeValue(TT("sr"),				ttEnvironment->sr);
	setProcess(&TTAudioObject::bypassProcess);
	setProcessWithSidechain(&TTAudioObject::bypassWithSidechainProcess);
	setAttributeValue(TT("bypass"),			*kTTBoolNo);
	setAttributeValue(TT("processInPlace"), *kTTBoolNo);
}


TTAudioObject::~TTAudioObject()
{
	;
}
		

TTErr TTAudioObject::setMaxNumChannels(const TTValue& newValue)
{
	TTValue	oldMaxNumChannels = maxNumChannels;
	
	maxNumChannels = newValue;
	sendMessage(TT("updateMaxNumChannels"), oldMaxNumChannels);
	return kTTErrNone;
}


TTErr TTAudioObject::setSr(const TTValue& newValue)
{
	sr = newValue;
	srInv = 1.0/sr;
	srMill = sr * 0.001;
	sendMessage(TT("updateSr"));
	return kTTErrNone;
}


TTErr TTAudioObject::bypassProcess(TTAudioSignal& in, TTAudioSignal& out)
{
	return TTAudioSignal::copy(in, out);
/*	
	short			vs;
	TTSampleValue	*inSample,
	*outSample;
	short			numchannels = TTAudioSignal::getMinChannelCount(in, out);
	short			channel;
	
	for(channel=0; channel<numchannels; channel++){
		inSample = in.sampleVectors[channel];
		outSample = out.sampleVectors[channel];
		vs = in.getVectorSize();
		while(vs--)
			*outSample++ = *inSample++;
	}
	return kTTErrNone;
 */
}


TTErr TTAudioObject::bypassCalculate(const TTFloat64& x, TTFloat64& y)
{
	y = x;
	return kTTErrNone;
}


TTErr TTAudioObject::bypassWithSidechainProcess(TTAudioSignal& in1, TTAudioSignal& in2, TTAudioSignal& out1, TTAudioSignal& out2)
{
//	TTUInt16		vs;
//	TTSampleValue	*inSample,
//	*outSample;
//	TTUInt16		numChannelsMain = TTAudioSignal::getMinChannelCount(in1, out1);
//	TTUInt16		numChannelsSidechain = TTAudioSignal::getMinChannelCount(in2, out2);
//	TTUInt16		channel;
	
	TTAudioSignal::copy(in2, out2);
	return TTAudioSignal::copy(in1, out1);
/*
	for(channel=0; channel<numChannelsMain; channel++){
		inSample = in1.sampleVectors[channel];
		outSample = out1.sampleVectors[channel];
		vs = in1.getVectorSize();
		while(vs--)
			*outSample++ = *inSample++;
	}
	for(channel=0; channel<numChannelsSidechain; channel++){
		inSample = in2.sampleVectors[channel];
		outSample = out2.sampleVectors[channel];
		vs = in2.getVectorSize();
		while(vs--)
			*outSample++ = *inSample++;
	}
	return kTTErrNone;
 */
}


TTErr TTAudioObject::muteProcess(TTAudioSignal& in, TTAudioSignal& out)
{
	short			vs;
	TTSampleValue*	outSample;
	short			numchannels = TTAudioSignal::getMinChannelCount(in, out);
	short			channel;
	
	for(channel=0; channel<numchannels; channel++){
		outSample = out.sampleVectors[channel];
		vs = out.getVectorSize();
		while(vs--)
			*outSample++ = 0.0;
	}
	return kTTErrNone;
}


TTErr TTAudioObject::muteWithSidechainProcess(TTAudioSignal& in1, TTAudioSignal& in2, TTAudioSignal& out1, TTAudioSignal& out2)
{
	TTUInt16		vs;
	TTSampleValue*	outSample;
	TTUInt16		numChannelsMain = TTAudioSignal::getMinChannelCount(in1, out1);
	TTUInt16		numChannelsSidechain = TTAudioSignal::getMinChannelCount(in2, out2);
	TTUInt16		channel;
	
	for(channel=0; channel<numChannelsMain; channel++){
		outSample = out1.sampleVectors[channel];
		vs = out1.getVectorSize();
		while(vs--)
			*outSample++ = 0.0;
	}
	for(channel=0; channel<numChannelsSidechain; channel++){
		outSample = out2.sampleVectors[channel];
		vs = out2.getVectorSize();
		while(vs--)
			*outSample++ = 0.0;
	}
	return kTTErrNone;
}


TTErr TTAudioObject::defaultCalculateMethod(const TTFloat64& x, TTFloat64& y)
{
	TTAudioSignal	in(1);
	TTAudioSignal	out(1);
	TTErr			err;
	
	in.setvectorSize(1);
	out.setvectorSize(1);
	
	in.sampleVectors[0][0] = x;
	err = process(in, out);
	y = out.sampleVectors[0][0];

	return err;
}


TTErr TTAudioObject::setProcess(TTProcessMethod newProcessMethod)
{
	processMethod = newProcessMethod;
	if(!calculateMethod)
		calculateMethod = &TTAudioObject::defaultCalculateMethod;
	
	if(!attrBypass){
		currentProcessMethod = processMethod;
		currentCalculateMethod = calculateMethod;
	}
	return kTTErrNone;
}


TTErr TTAudioObject::setProcessWithSidechain(TTProcessWithSidechainMethod newProcessMethod)
{
	processWithSidechainMethod = newProcessMethod;
	if(!attrBypass)
		currentProcessWithSidechainMethod = processWithSidechainMethod;
	return kTTErrNone;
}


TTErr TTAudioObject::setCalculate(TTCalculateMethod newCalculateMethod)
{
	calculateMethod = newCalculateMethod;
	if(!attrBypass)
		currentCalculateMethod = calculateMethod;
	return kTTErrNone;
}


TTErr TTAudioObject::setBypass(const TTValue& value)
{
	attrBypass = value;
	if(attrBypass){
		currentProcessMethod = &TTAudioObject::bypassProcess;
		currentProcessWithSidechainMethod = &TTAudioObject::bypassWithSidechainProcess;
		currentCalculateMethod = &TTAudioObject::bypassCalculate;
	}
	else if(attrMute){
		currentProcessMethod = &TTAudioObject::muteProcess;
		currentProcessWithSidechainMethod = &TTAudioObject::muteWithSidechainProcess;
	}
	else{
		currentProcessMethod = processMethod;
		currentProcessWithSidechainMethod = processWithSidechainMethod;
		if(calculateMethod)
			currentCalculateMethod = calculateMethod;
		else
			currentCalculateMethod = &TTAudioObject::defaultCalculateMethod;
	}
	return kTTErrNone;
}


TTErr TTAudioObject::setMute(const TTValue& value)
{
	attrMute = value;
	if(attrBypass){
		currentProcessMethod = &TTAudioObject::bypassProcess;
		currentProcessWithSidechainMethod = &TTAudioObject::bypassWithSidechainProcess;
	}
	else if(attrMute){
		currentProcessMethod = &TTAudioObject::muteProcess;
		currentProcessWithSidechainMethod = &TTAudioObject::muteWithSidechainProcess;
	}
	else{
		currentProcessMethod = processMethod;
		currentProcessWithSidechainMethod = processWithSidechainMethod;
	}
	return kTTErrNone;
}


TTErr TTAudioObject::calculate(const TTFloat64& x, TTFloat64& y)
{
	TTErr	err;
	
	lock();
	err = (this->*currentCalculateMethod)(x, y);
	unlock();
	return err;
}


TTErr TTAudioObject::process(TTAudioSignal& in, TTAudioSignal& out)
{
	TTErr	err;
	
	lock();
	err = (this->*currentProcessMethod)(in, out);
	unlock();
	return err;
}


TTErr TTAudioObject::process(TTAudioSignal& out)
{
	TTErr	err;
	
	lock();
	err = (this->*currentProcessMethod)(out, out);
	unlock();
	return err;
}


TTErr TTAudioObject::process(TTAudioSignal& in1, TTAudioSignal& in2, TTAudioSignal& out1, TTAudioSignal& out2)
{
	TTErr	err;
	
	lock();
	err = (this->*currentProcessWithSidechainMethod)(in1, in2, out1, out2);
	unlock();
	return err;
}


TTErr TTAudioObject::process(TTAudioSignal& in1, TTAudioSignal& in2, TTAudioSignal& out)
{
	TTErr	err;
	
	lock();
	err = (this->*currentProcessWithSidechainMethod)(in1, in2, out, out);
	unlock();
	return err;
}


#if 0
#pragma mark -
#pragma mark Utilities
#endif

// RADIANS CONVERSIONS: cannot make static because of access to a member data element
// hz-to-radians conversion
TTFloat64 TTAudioObject::hertzToRadians(const TTFloat64 hz)			// NOTE: Be sure to set the sr before calling this function
{
	return(hz * (kTTPi / (sr * 0.5)));
}

// radians-to-hz conversion
TTFloat64 TTAudioObject::radiansToHertz(const TTFloat64 radians)	// NOTE: Be sure to set the sr before calling this function
{
	return((radians * sr) / kTTTwoPi);
}

// degrees-to-radians conversion
TTFloat64 TTAudioObject::degreesToRadians(const TTFloat64 degrees)
{
	return((degrees * kTTPi) / 180.);
}

// radians-to-degrees conversion
TTFloat64 TTAudioObject::radiansToDegrees(const TTFloat64 radians)
{
	return((radians * 180.) / kTTPi);	
}


// Decay Time (seconds) to feedback coefficient conversion
TTFloat64 TTAudioObject::decayToFeedback(const TTFloat64 decay_time, TTFloat64 delay)
{
	TTFloat64 	fb;
		
	delay = delay * 0.001;			// convert delay from milliseconds to seconds
	if(decay_time < 0){
		fb = delay / -decay_time;
		fb = fb * -60.;		
		fb = pow(10., (fb / 20.));	
		fb *= -1.;
	}
	else{
		fb = delay / decay_time;
		fb = fb * -60.;				
		fb = pow(10., (fb / 20.));		
	}		
	return(fb);			
}

// return the decay time based on the feedback coefficient
TTFloat64 TTAudioObject::feedbackToDecay(const TTFloat64 feedback, const TTFloat64 delay)
{
	TTFloat64 	decay_time;
	
	if(feedback > 0){
		decay_time = 20. * (log10(feedback));		
		decay_time = -60.0 / decay_time;		
		decay_time = decay_time * (delay);		
	}
	else if(feedback < 0){
		decay_time = 20. * (log10(fabs(feedback)));		
		decay_time = -60.0 / decay_time;		
		decay_time = decay_time * (-delay);		
	}
	else
		decay_time = 0;

	return(decay_time);
}


// ************* DECIBEL CONVERSIONS **************

// Amplitude to decibels
TTFloat64 TTAudioObject::linearToDb(const TTFloat64 value)
{
	if(value >= 0) 
		return(20. * (log10(value)));
	else
	 	return 0;
}

// Decibels to amplitude
TTFloat64 TTAudioObject::dbToLinear(TTFloat64 value)
{
	return(pow(10., (value / 20.)));
}


TTFloat64 TTAudioObject::midiToLinearGain(TTFloat64 value)
{
	return pow(value * 0.01, kGainMidiPower);
}

TTFloat64 TTAudioObject::linearGainToMidi(TTFloat64 value)
{
	return 100.0 * pow(value, kGainMidiPowerInv);
}


// Deviate
TTFloat64 TTAudioObject::deviate(TTFloat64 value)
{
	value += (2.0 * (TTFloat32(rand()) / TTFloat32(RAND_MAX))) - 1.0;	// randomize input with +1 to -1 ms
	value = value * 0.001 * sr;											// convert from ms to samples
	value = (TTFloat32)prime(TTUInt32(value));							// find the nearest prime number (in samples)
	value = (value / sr) * 1000.0;										// convert back to ms
	
	return value;
}

// Prime
TTUInt32 TTAudioObject::prime(TTUInt32 value)
{
	long	candidate, last, i, isPrime;

   	if(value < 2)
  		candidate = 2;
	else if(value == 2)
		candidate = 3;
	else{
		candidate = value;
		if (candidate % 2 == 0)								// Test only odd numbers
			candidate--;
		do{
			isPrime = true;									// Assume glorious success
			candidate += 2;									// Bump to the next number to test
			last = TTUInt32(sqrt((TTFloat32)candidate));  	// We'll check to see if candidate has any factors, from 2 to last
			for (i=3; (i <= last) && isPrime; i+=2){		// Loop through odd numbers only
				if((candidate % i) == 0)
				isPrime = false;
			}
		} 
		while (!isPrime);
	}
	return candidate;
}

