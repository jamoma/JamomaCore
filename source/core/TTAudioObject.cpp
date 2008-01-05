/* 
 * TTBlue Audio Object Base Class
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTAudioObject.h"

TTUInt32	TTAudioObject::globalSr = 44100;


/****************************************************************************************************/

TTAudioObject::TTAudioObject(TTUInt8 newMaxNumChannels)
{
	registerParameter(TT("maxNumChannels"), kTypeUInt8,		&maxNumChannels,	(TTSetterMethod)&TTAudioObject::setMaxNumChannels);
	registerParameter(TT("sr"),				kTypeUInt32,	&sr,				(TTSetterMethod)&TTAudioObject::setSr);
	registerParameter(TT("bypass"),			kTypeBoolean,	&attrBypass,		(TTSetterMethod)&TTAudioObject::setBypass);

	// Set Defaults...
	setParameterValue(TT("maxNumChannels"),	newMaxNumChannels);
	setParameterValue(TT("sr"),				globalSr);
	setProcess(&TTAudioObject::bypassProcess);
	setParameterValue(TT("bypass"),			kTTBoolNo);
}


TTAudioObject::~TTAudioObject()
{
	;
}
		

TTErr TTAudioObject::setMaxNumChannels(const TTValue& newValue)
{
	maxNumChannels = newValue;
	sendMessage(TT("updateMaxNumChannels"));
	return kTTErrNone;
}


TTErr TTAudioObject::setSr(const TTValue& newValue)
{
	sr = newValue;
	srInv = 1.0/sr;
	srMill = sr * 0.0001;
	sendMessage(TT("updateSr"));
	return kTTErrNone;
}


TTErr TTAudioObject::bypassProcess(TTAudioSignal& in, TTAudioSignal& out)
{
	short			vs;
	TTSampleValue	*inSample,
					*outSample;
	short			numchannels = TTAudioSignal::getMinChannelCount(in, out);
	short			channel;

	for(channel=0; channel<numchannels; channel++){
		inSample = in.sampleVectors[channel];
		outSample = out.sampleVectors[channel];
		vs = in.vs;

		while(vs--)
			*outSample++ = *inSample++;
	}
	return kTTErrNone;
}


TTErr TTAudioObject::setProcess(TTProcessMethod newProcessMethod)
{
	processMethod = newProcessMethod;
	if(!attrBypass)
		currentProcessMethod = processMethod;
	return kTTErrNone;
}


TTErr TTAudioObject::setBypass(const TTValue& value)
{
	attrBypass = value;
	if(attrBypass)
		currentProcessMethod = &TTAudioObject::bypassProcess;
	else
		currentProcessMethod = processMethod;
	return kTTErrNone;
}


TTErr TTAudioObject::process(TTAudioSignal& in, TTAudioSignal& out)
{
	return (this->*currentProcessMethod)(in, out);
}


#pragma mark -
#pragma mark Utilities

// RADIANS CONVERSIONS: cannot make static because of access to a member data element
// hz-to-radians conversion
TTFloat64 TTAudioObject::hertzToRadians(const TTFloat64 hz)			// NOTE: Be sure to set the sr before calling this function
{
	return(hz * (pi / (sr * 0.5)));
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
TTFloat32 TTAudioObject::decayToFeedback(const TTFloat32 decay_time, TTFloat32 delay)
{
	TTFloat32 	fb;
		
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
TTFloat32 TTAudioObject::feedbackToDecay(const TTFloat32 feedback, const TTFloat32 delay)
{
	float 	decay_time;
	
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
TTFloat32 TTAudioObject::linearToDb(const TTFloat32 value)
{
	if(value >= 0) 
		return(20. * (log10(value)));
	else
	 	return 0;
}

// Decibels to amplitude
TTFloat32 TTAudioObject::dbToLinear(TTFloat32 value)
{
	return(pow(10., (value / 20.)));
}


// Deviate
TTFloat32 TTAudioObject::deviate(TTFloat32 value)
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

