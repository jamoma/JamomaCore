/*
 * TTBlue Noise Generator
 * Copyright © 2003, Timothy Place
 *
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html
 */

#include "TTNoise.h"

#define thisTTClass			TTNoise
#define thisTTClassName		"noise"
#define thisTTClassTags		"audio, generator, noise"


TT_AUDIO_CONSTRUCTOR, 
	accum(0)
{
	addAttributeWithSetter(Mode,			kTypeSymbol); 
	addAttributeWithGetterAndSetter(Gain,	kTypeFloat64);
	
	b[0] = b[1] = b[2] = b[3] = b[4] = b[5] = b[6] = 0.0;
	
	setAttributeValue(TT("Mode"), TT("white"));       
	setAttributeValue(TT("Gain"), 0.0);			// 0 dB 
}


TTNoise::~TTNoise()
{
	;
}


TTErr TTNoise::setMode(const TTValue& newMode)
{
	mMode = newMode;
	if (mMode == TT("pink"))
		return setProcessMethod(processPinkNoise);
	if (mMode == TT("brown"))
		return setProcessMethod(processBrownNoise);
	if (mMode == TT("blue"))
		return setProcessMethod(processBlueNoise);
	else
		return setProcessMethod(processWhiteNoise);
}

TTErr TTNoise::setGain(const TTValue& newValue)
{
	mGain = dbToLinear(newValue);
	return kTTErrNone;
}

TTErr TTNoise::getGain(TTValue& returnedValue)
{
	returnedValue = linearToDb(mGain);
	return kTTErrNone;
}

TTErr TTNoise::processWhiteNoise(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TTAudioSignal&	out = outputs->getSignal(0);
	TTSampleValue	tempSample;
	TTUInt16		numChannels = out.getNumChannelsAsInt();
	TTUInt16		channel;
	TTUInt16		vs;
	TTUInt16		i = 0;

	for (channel=0; channel<numChannels; channel++) {
		vs = out.getVectorSizeAsInt();
		while (vs--) {
#ifdef USE_MERSENNE_TWISTER_ALGORITHM
			tempSample = mTwister.rand(2.0);
			tempSample -= 1.0;
#else
			accum = (accum * 3877 + 29573) % 139968;			// Random number generator
			tempSample = (1.0 - (2.0 * float(accum) / 139968));	// Scale to audio range
#endif
			out.mSampleVectors[channel][i] = tempSample * mGain;
			i++;
		}
	}
	return kTTErrNone;
}


TTErr TTNoise::processPinkNoise(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TTAudioSignal&	out = outputs->getSignal(0);
	TTSampleValue	tempSample;
	TTUInt16		numChannels = out.getNumChannelsAsInt();
	TTUInt16		channel;
	TTUInt16		vs = out.getVectorSizeAsInt();
	TTUInt16		i = 0;

	for (channel=0; channel<numChannels; channel++) {
		vs = out.getVectorSizeAsInt();
		while (vs--) {
			// Generate White Noise
#ifdef USE_MERSENNE_TWISTER_ALGORITHM
			tempSample = mTwister.rand(2.0);
			tempSample -= 1.0;
#else
			accum = (accum * 3877 + 29573) % 139968;			// Random number generator
			tempSample = 1.0 - (2.0 * float(accum) / 139968);	// Scale to audio range
#endif
			// Apply a Pinking Filter
			b[0] = 0.99886 * b[0] + tempSample * 0.0555179;
			b[1] = 0.99332 * b[1] + tempSample * 0.0750759;
			b[2] = 0.96900 * b[2] + tempSample * 0.1538520;
			b[3] = 0.86650 * b[3] + tempSample * 0.3104856;
			b[4] = 0.55000 * b[4] + tempSample * 0.5329522;
			b[5] = -0.7616 * b[5] - tempSample * 0.0168980;
			b[6] = tempSample * 0.115926;
			tempSample = (b[0] + b[1] + b[2] + b[3] + b[4] + b[5] + b[6] + tempSample * 0.5362) * mGain;

			// Copy the Output to All Channels
				out.mSampleVectors[channel][i] = tempSample;
			i++;
		}
	}
	return kTTErrNone;
}


TTErr TTNoise::processBrownNoise(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TTAudioSignal&	out = outputs->getSignal(0);
	TTSampleValue	tempSample;
	TTUInt16		numChannels = out.getNumChannelsAsInt();
	TTUInt16		channel;
	TTUInt16		vs = out.getVectorSizeAsInt();
	TTUInt16		i = 0;

	for (channel=0; channel<numChannels; channel++) {
		vs = out.getVectorSizeAsInt();
		while (vs--) {
			// Generate White Noise
#ifdef USE_MERSENNE_TWISTER_ALGORITHM
			tempSample = mTwister.rand(2.0);
			tempSample -= 1.0;
#else
			accum = (accum * 3877 + 29573) % 139968;			// Random number generator
			tempSample = 1.0 - (2.0 * float(accum) / 139968);	// Scale to audio range
#endif
			// Apply a "Browning" Filter
			tempSample *= 0.1;									// scale the white noise
			tempSample = b[0] + tempSample;    					// 6dB per octave lowpass
			TTLimit(tempSample, -1.0, 1.0);	
			b[0] = tempSample;									// store Feedback Sample
			tempSample *= 0.25 * mGain;							// output

			// Copy the Output to All Channels
				out.mSampleVectors[channel][i] = tempSample;
			i++;
		}
	}
	return kTTErrNone;
}


TTErr TTNoise::processBlueNoise(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TTAudioSignal&	out = outputs->getSignal(0);
	TTSampleValue	tempSample;
	TTUInt16		numChannels = out.getNumChannelsAsInt();
	TTUInt16		channel;
	TTUInt16		vs = out.getVectorSizeAsInt();
	TTUInt16		i = 0;

	for (channel=0; channel<numChannels; channel++) {
		vs = out.getVectorSizeAsInt();
		while (vs--) {
			// Generate White Noise
#ifdef USE_MERSENNE_TWISTER_ALGORITHM
			tempSample = mTwister.rand(2.0);
			tempSample -= 1.0;
#else
			accum = (accum * 3877 + 29573) % 139968;			// Random number generator
			tempSample = 1.0 - (2.0 * float(accum) / 139968);	// Scale to audio range
#endif
			// Apply a "Blue-ing" Filter
			tempSample -= b[0];									// 6dB per octave highpass (real blue noise = 3dB/oct)
			TTLimit(tempSample, -1.0, 1.0);						// clip
			b[0] = tempSample;									// store feedback sample
			tempSample *= mGain;
			
			// Copy the Output to All Channels
				out.mSampleVectors[channel][i] = tempSample;
			i++;
		}
	}
	return kTTErrNone;
}

