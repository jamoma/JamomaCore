/** @file
 *
 * @ingroup dspGeneratorLib
 *
 * @brief GeneratorLib: Noise Generator
 *
 * @details
 *
 * @authors Tim Place, Nils Peters, Trond Lossius
 *
 * @copyright Copyright © 2003 by Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#include "TTNoise.h"

#define thisTTClass			TTNoise
#define thisTTClassName		"noise"
#define thisTTClassTags		"dspGeneratorLib, audio, generator, noise"


TT_AUDIO_CONSTRUCTOR,
#ifndef USE_MERSENNE_TWISTER_ALGORITHM
accum(0),
#endif
mNumChannels(0)
{
	addAttributeWithSetter(Mode,			kTypeSymbol); 
	addAttributeWithGetterAndSetter(Gain,	kTypeFloat64);	
	setAttributeValue(TT("mode"), TT("white"));    
	setAttributeValue(TT("gain"), 0.0);			// 0 dB 
#ifdef USE_MERSENNE_TWISTER_ALGORITHM	
	addAttribute(Mean,						kTypeFloat64); 
	addAttribute(Std,						kTypeFloat64); 
	addAttributeProperty(Std,			range,			TTValue(0.0, 1.0));
	addAttributeProperty(Std,			rangeChecking,	TT("low"));	
	setAttributeValue(TT("mean"), 0.0);	
	setAttributeValue(TT("std"), 1.0);	
#endif	
}


TTNoise::~TTNoise()
{
	;
}


TTErr TTNoise::setNumChannels(const TTUInt16 newNumChannels)
{  
	mNumChannels = newNumChannels;
	mb0.resize(mNumChannels);
	mb1.resize(mNumChannels);
	mb2.resize(mNumChannels);
	mb3.resize(mNumChannels);
	mb4.resize(mNumChannels);
	mb5.resize(mNumChannels);
	mb6.resize(mNumChannels);
	Clear();
	return kTTErrNone;
}


TTErr TTNoise::Clear()
{
	mb0.assign(mNumChannels, 0.0);
	mb1.assign(mNumChannels, 0.0);
	mb2.assign(mNumChannels, 0.0);
	mb3.assign(mNumChannels, 0.0);
	mb4.assign(mNumChannels, 0.0);
	mb5.assign(mNumChannels, 0.0);
	mb6.assign(mNumChannels, 0.0);
	return kTTErrNone;
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
	if (mMode == TT("gauss"))
		return setProcessMethod(processGauss);
	else
		return setProcessMethod(processWhiteNoise);
}


TTErr TTNoise::setGain(const TTValue& newValue)
{
	mGain = TTDecibelsToLinearGain(newValue);
	return kTTErrNone;	
}


TTErr TTNoise::getGain(TTValue& returnedValue)
{
	returnedValue = TTLinearGainToDecibels(mGain);
	return kTTErrNone;
}


TTErr TTNoise::processWhiteNoise(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TTAudioSignal&	out = outputs->getSignal(0);
	TTSampleValue	tempSample;
	TTSampleValuePtr	outSample;
	TTUInt16		numChannels = out.getNumChannelsAsInt();
	TTUInt16		channel;
	TTUInt16		vs = out.getVectorSizeAsInt();
	
	if (numChannels != mNumChannels)
		setNumChannels(numChannels);

	for (channel=0; channel<numChannels; channel++) {
		outSample = out.mSampleVectors[channel];
		for (TTUInt16 n=0; n<vs; n++) {
#ifdef USE_MERSENNE_TWISTER_ALGORITHM
			tempSample = mTwister.rand(2.0);
			tempSample -= 1.0;
#else
			accum = (accum * 3877 + 29573) % 139968;			// Random number generator
			tempSample = (1.0 - (2.0 * float(accum) / 139968));	// Scale to audio range
#endif
			*outSample++ = tempSample * mGain;
		}
	}
	return kTTErrNone;
}


TTErr TTNoise::processPinkNoise(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TTAudioSignal&	out = outputs->getSignal(0);
	TTSampleValue	tempSample;
	TTSampleValuePtr	outSample;
	TTUInt16		numChannels = out.getNumChannelsAsInt();
	TTUInt16		channel;
	TTUInt16		vs = out.getVectorSizeAsInt();

	if (numChannels != mNumChannels)
		setNumChannels(numChannels);

	for (channel=0; channel<numChannels; channel++) {
		outSample = out.mSampleVectors[channel];
		for (TTUInt16 n=0; n<vs; n++) {
			// Generate White Noise
#ifdef USE_MERSENNE_TWISTER_ALGORITHM
			tempSample = mTwister.rand(2.0);
			tempSample -= 1.0;
#else
			accum = (accum * 3877 + 29573) % 139968;			// Random number generator
			tempSample = 1.0 - (2.0 * float(accum) / 139968);	// Scale to audio range
#endif
			// Apply a Pinking Filter
			mb0[channel] = 0.99886 * mb0[channel] + tempSample * 0.0555179;
			mb1[channel] = 0.99332 * mb1[channel] + tempSample * 0.0750759;
			mb2[channel] = 0.96900 * mb2[channel] + tempSample * 0.1538520;
			mb3[channel] = 0.86650 * mb3[channel] + tempSample * 0.3104856;
			mb4[channel] = 0.55000 * mb4[channel] + tempSample * 0.5329522;
			mb5[channel] = -0.7616 * mb5[channel] - tempSample * 0.0168980;
			mb6[channel] = tempSample * 0.115926;
			tempSample = (mb0[channel] + mb1[channel] + mb2[channel] + mb3[channel] + mb4[channel] + mb5[channel] + mb6[channel] + tempSample * 0.5362) * mGain;

			// Copy the Output to All Channels
			*outSample++ = tempSample;
		}
	}
	return kTTErrNone;
}


TTErr TTNoise::processBrownNoise(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TTAudioSignal&	out = outputs->getSignal(0);
	TTSampleValue	tempSample;
	TTSampleValuePtr	outSample;
	TTUInt16		numChannels = out.getNumChannelsAsInt();
	TTUInt16		channel;
	TTUInt16		vs = out.getVectorSizeAsInt();
	
	if (numChannels != mNumChannels)
		setNumChannels(numChannels);

	for (channel=0; channel<numChannels; channel++) {
		outSample = out.mSampleVectors[channel];
		for (TTUInt16 n=0; n<vs; n++) {
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
			tempSample = mb0[channel] + tempSample;    					// 6dB per octave lowpass
			TTLimit(tempSample, -1.0, 1.0);	
			mb0[channel] = tempSample;									// store Feedback Sample
			tempSample *= 0.25 * mGain;							// output

			// Copy the Output to All Channels
			*outSample++ = tempSample;
		}
	}
	return kTTErrNone;
}


TTErr TTNoise::processBlueNoise(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TTAudioSignal&	out = outputs->getSignal(0);
	TTSampleValue	tempSample;
	TTSampleValuePtr	outSample;
	TTUInt16		numChannels = out.getNumChannelsAsInt();
	TTUInt16		channel;
	TTUInt16		vs = out.getVectorSizeAsInt();
	
	if (numChannels != mNumChannels)
		setNumChannels(numChannels);

	for (channel=0; channel<numChannels; channel++) {
		outSample = out.mSampleVectors[channel];
		for (TTUInt16 n=0; n<vs; n++) {
			// Generate White Noise
#ifdef USE_MERSENNE_TWISTER_ALGORITHM
			tempSample = mTwister.rand(2.0);
			tempSample -= 1.0;
#else
			accum = (accum * 3877 + 29573) % 139968;			// Random number generator
			tempSample = 1.0 - (2.0 * float(accum) / 139968);	// Scale to audio range
#endif
			// Apply a "Blue-ing" Filter
			tempSample -= mb0[channel];									// 6dB per octave highpass (real blue noise = 3dB/oct)
			TTLimit(tempSample, -1.0, 1.0);								// clip
			mb0[channel] = tempSample;									// store feedback sample
			tempSample *= mGain;
			
			// Copy the Output to All Channels
			*outSample++ = tempSample;
		}
	}
	return kTTErrNone;
}

#ifdef USE_MERSENNE_TWISTER_ALGORITHM
TTErr TTNoise::processGauss(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TTAudioSignal&	out = outputs->getSignal(0);
	TTSampleValuePtr	outSample;
	TTUInt16		numChannels = out.getNumChannelsAsInt();
	TTUInt16		channel;
	TTUInt16		vs = out.getVectorSizeAsInt();
	
	if (numChannels != mNumChannels)
		setNumChannels(numChannels);
	
	for (channel=0; channel<numChannels; channel++) {
		outSample = out.mSampleVectors[channel];
		for (TTUInt16 n=0; n<vs; n++) {
			*outSample++ = mTwister.randNorm(mMean,mStd);
		}
	}
	return kTTErrNone;
}
#endif

