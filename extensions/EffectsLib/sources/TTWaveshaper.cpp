/* 
 * simple waveshaper
 * Copyright © 2011, Nils Peters
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTWaveshaper.h"

#define thisTTClass			TTWaveshaper
#define thisTTClassName		"waveshaper"
#define thisTTClassTags		"audio, processor, distortion"


TT_AUDIO_CONSTRUCTOR,
mStrength(1),
mSigmoidGainCorrection(1),
mPoly1GainCorrection(1),
mShape(NULL)
{
	addAttributeWithSetter(Strength,			kTypeFloat64);
		addAttributeProperty(strength,			range,			TTValue(0.000000000001, 100000));
		addAttributeProperty(strength,			rangeChecking,	TT("clip"));
	addAttributeWithSetter(Shape,	kTypeSymbol);
	setProcessMethod(processAudioSin);
	setAttributeValue(TT("strength"), 0.000000000001);
	setAttributeValue(TT("shape"), TT("sin"));
}


TTWaveshaper::~TTWaveshaper()
{
	;
}

TTErr TTWaveshaper::setStrength(const TTValue& newValue)
{
	mStrength = newValue;
	mInvStrength = 1.0/mStrength;
	mSigmoidGainCorrection = 1.0 / (2.0/(1.0+exp(-5. * mStrength))-1.0);
	mPoly1GainCorrection = 1.0 /(mStrength + mStrength*mStrength*mStrength);
	return kTTErrNone; 	
}


TTErr TTWaveshaper::setShape(const TTValue& newValue)
{
	mShape = newValue;
	if (mShape == TT("atan"))
		setProcessMethod(processAudioAtan);
	else if (mShape == TT("sin"))
		setProcessMethod(processAudioSin);
	else if (mShape == TT("sigmoid"))
		setProcessMethod(processAudioSigmoid);
	else
		setProcessMethod(processAudioPoly1);
		
	//TODO: we could use the entire function lib to drive the waveshaping based on a lookup table.
	return kTTErrNone; 	
}

TTErr TTWaveshaper::processAudioSin(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TTAudioSignal&	in = inputs->getSignal(0);
	TTAudioSignal&	out = outputs->getSignal(0);
	TTUInt16		vs;
	TTSampleValue	*inSample, *outSample;
	TTUInt16		numchannels = TTAudioSignal::getMinChannelCount(in, out);
	TTUInt16		channel;
	
	for (channel=0; channel<numchannels; channel++) {
		inSample = in.mSampleVectors[channel];
		outSample = out.mSampleVectors[channel];
		vs = in.getVectorSizeAsInt();
		while (vs--)
			*outSample++ = sin((*inSample++) * mStrength)* mInvStrength;
	}
	return kTTErrNone;	
}

TTErr TTWaveshaper::processAudioSigmoid(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TTAudioSignal&	in = inputs->getSignal(0);
	TTAudioSignal&	out = outputs->getSignal(0);
	TTUInt16		vs;
	TTSampleValue	*inSample, *outSample;
	TTUInt16		numchannels = TTAudioSignal::getMinChannelCount(in, out);
	TTUInt16		channel;
	
	for (channel=0; channel<numchannels; channel++) {
		inSample = in.mSampleVectors[channel];
		outSample = out.mSampleVectors[channel];
		vs = in.getVectorSizeAsInt();
		while (vs--)
			*outSample++ = (2.0/(1.0+exp(-5. * mStrength * *inSample++))-1.0) * mSigmoidGainCorrection;
	}
	return kTTErrNone;	
}



TTErr TTWaveshaper::processAudioAtan(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TTAudioSignal&	in = inputs->getSignal(0);
	TTAudioSignal&	out = outputs->getSignal(0);
	TTUInt16		vs;
	TTSampleValue	*inSample, *outSample;
	TTUInt16		numchannels = TTAudioSignal::getMinChannelCount(in, out);
	TTUInt16		channel;
	
	for (channel=0; channel<numchannels; channel++) {
		inSample = in.mSampleVectors[channel];
		outSample = out.mSampleVectors[channel];
		vs = in.getVectorSizeAsInt();
		while (vs--)
			*outSample++ = atan((*inSample++) * mStrength) * mInvStrength;
	}
	return kTTErrNone;	
}

TTErr TTWaveshaper::processAudioPoly1(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{ 
	// wawveshaping examle by http://www.music.mcgill.ca/~gary/307/week12/node2.html
	
	TTAudioSignal&	in = inputs->getSignal(0);
	TTAudioSignal&	out = outputs->getSignal(0);
	TTUInt16		vs;
	TTSampleValue	*inSample, *outSample;
	TTUInt16		numchannels = TTAudioSignal::getMinChannelCount(in, out);
	TTUInt16		channel;
	TTSampleValue   x;

	for (channel=0; channel<numchannels; channel++) {
		inSample = in.mSampleVectors[channel];
		outSample = out.mSampleVectors[channel];
		vs = in.getVectorSizeAsInt();
		
		while (vs--){
			x = (*inSample++) * mStrength;			
			*outSample++ = (x + x*x*x) * mPoly1GainCorrection;
		}
	}
	return kTTErrNone;	
}