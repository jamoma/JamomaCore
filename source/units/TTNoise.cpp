/* 
 * TTBlue Noise Generator 
 * Copyright © 2003, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTNoise.h"
#define thisTTClass TTNoise


TTNoise::TTNoise(TTUInt16 newMaxNumChannels)
	: TTAudioObject("audio.phasor", newMaxNumChannels), accum(0)
{
	registerAttributeWithSetter(mode, kTypeSymbol);
	b[0] = b[1] = b[2] = b[3] = b[4] = b[5] = 0.0;
	setAttributeValue(TT("mode"), TT("white"));
}


TTNoise::~TTNoise()
{
	;
}


TTErr TTNoise::setmode(const TTValue& newMode)
{
	mode = newMode;
	if(mode == TT("pink"))
		return setProcessMethod(processPinkNoise);
	if(mode == TT("brown"))
		return setProcessMethod(processBrownNoise);
	if(mode == TT("blue"))
		return setProcessMethod(processBlueNoise);
	else
		return setProcessMethod(processWhiteNoise);
}


TTErr TTNoise::processWhiteNoise(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TTAudioSignal&	out = outputs->getSignal(0);
	TTSampleValue	tempSample;
	TTUInt16		numChannels = out.getNumChannels();
	TTUInt16		channel;
	TTUInt16		vs = out.getVectorSize();
	TTUInt16		i = 0;
	
	while(vs--){
		accum = (accum * 3877 + 29573) % 139968;			// Random number generator
		tempSample = 1.0 - (2.0 * float(accum) / 139968);	// Scale to audio range
		for(channel=0; channel<numChannels; channel++)
			out.sampleVectors[channel][i] = tempSample;
		i++;			
	}
	return kTTErrNone;
}


TTErr TTNoise::processPinkNoise(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TTAudioSignal&	out = outputs->getSignal(0);
	TTSampleValue	tempSample;
	TTUInt16		numChannels = out.getNumChannels();
	TTUInt16		channel;
	TTUInt16		vs = out.getVectorSize();
	TTUInt16		i = 0;
	
	while(vs--){
		// Generate White Noise
		accum = (accum * 3877 + 29573) % 139968;			// Random number generator
		tempSample = 1.0 - (2.0 * float(accum) / 139968);	// Scale to audio range
		
		// Apply a Pinking Filter
		b[0] = 0.99886 * b[0] + tempSample * 0.0555179;
		b[1] = 0.99332 * b[1] + tempSample * 0.0750759; 
		b[2] = 0.96900 * b[2] + tempSample * 0.1538520; 
		b[3] = 0.86650 * b[3] + tempSample * 0.3104856; 
		b[4] = 0.55000 * b[4] + tempSample * 0.5329522; 
		b[5] = -0.7616 * b[5] - tempSample * 0.0168980; 
		b[6] = tempSample * 0.115926;
		tempSample = b[0] + b[1] + b[2] + b[3] + b[4] + b[5] + b[6] + tempSample * 0.5362; 		
		
		// Copy the Output to All Channels
		for(channel=0; channel<numChannels; channel++)
			out.sampleVectors[channel][i] = tempSample;
		i++;			
	}
	return kTTErrNone;
}


TTErr TTNoise::processBrownNoise(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TTAudioSignal&	out = outputs->getSignal(0);
	TTSampleValue	tempSample;
	TTUInt16		numChannels = out.getNumChannels();
	TTUInt16		channel;
	TTUInt16		vs = out.getVectorSize();
	TTUInt16		i = 0;
	
	while(vs--){
		// Generate White Noise
		accum = (accum * 3877 + 29573) % 139968;			// Random number generator
		tempSample = 1.0 - (2.0 * float(accum) / 139968);	// Scale to audio range
		
		// Apply a "Browning" Filter
		tempSample *= 0.1;									// scale the white noise			
		tempSample = TTClip(b[0] + tempSample, -1.0, 1.0);	// 6dB per octave lowpass
		b[0] = tempSample;									// store Feedback Sample
		tempSample *= 0.25;									// output	
		
		// Copy the Output to All Channels
		for(channel=0; channel<numChannels; channel++)
			out.sampleVectors[channel][i] = tempSample;
		i++;			
	}
	return kTTErrNone;
}


TTErr TTNoise::processBlueNoise(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TTAudioSignal&	out = outputs->getSignal(0);
	TTSampleValue	tempSample;
	TTUInt16		numChannels = out.getNumChannels();
	TTUInt16		channel;
	TTUInt16		vs = out.getVectorSize();
	TTUInt16		i = 0;
	
	while(vs--){
		// Generate White Noise
		accum = (accum * 3877 + 29573) % 139968;			// Random number generator
		tempSample = 1.0 - (2.0 * float(accum) / 139968);	// Scale to audio range
		
		// Apply a "Blue-ing" Filter
		tempSample -= b[0];									// 6dB per octave highpass (real blue noise = 3dB/oct)
		tempSample = TTClip(tempSample, -1.0, 1.0);			// clip 
		b[0] = tempSample;									// store feedback sample
 		
		// Copy the Output to All Channels
		for(channel=0; channel<numChannels; channel++)
			out.sampleVectors[channel][i] = tempSample;
		i++;			
	}
	return kTTErrNone;
}

