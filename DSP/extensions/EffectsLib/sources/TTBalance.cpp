/* 
 * TTBlue Balance Signal Amplitude
 * Copyright � 2008, Trond Lossius
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTBalance.h"

#define thisTTClass			TTBalance
#define thisTTClassName		"balance"
#define thisTTClassTags		"dspEffectsLib, audio, processor, dynamics"


TT_AUDIO_CONSTRUCTOR
{
	TTUInt16	initialMaxNumChannels = arguments;
	
	// register attributes
	addAttributeWithSetter(Frequency, kTypeFloat64);

	// register for notifications from the parent class so we can allocate memory as required
	addUpdates(MaxNumChannels);
	// register for notifications from the parent class so we can recalculate coefficients as required
	addUpdates(SampleRate);
	// make the clear method available to the outside world
	addMessage(clear);

	// Set Defaults...
	setAttributeValue(kTTSym_maxNumChannels,	initialMaxNumChannels);		// This attribute is inherited
	setAttributeValue(TT("frequency"),		10.0);						// Default frequency is 10 Hz
	setProcessMethod(processAudio);
}


TTBalance::~TTBalance()
{;}


TTErr TTBalance::updateMaxNumChannels(const TTValue& oldMaxNumChannels, TTValue&)
{
	xm1A.resize(mMaxNumChannels);
	xm2A.resize(mMaxNumChannels);
	ym1A.resize(mMaxNumChannels);
	ym2A.resize(mMaxNumChannels);
	xm1B.resize(mMaxNumChannels);
	xm2B.resize(mMaxNumChannels);
	ym1B.resize(mMaxNumChannels);
	ym2B.resize(mMaxNumChannels);
	return clear();
}


TTErr TTBalance::updateSampleRate(const TTValue& oldSampleRate, TTValue&)
{
	TTValue	v(mFrequency);
	return setFrequency(v);
}


TTErr TTBalance::clear()
{
	xm1A.assign(mMaxNumChannels, 0.0);
	xm2A.assign(mMaxNumChannels, 0.0);
	ym1A.assign(mMaxNumChannels, 0.0);
	ym2A.assign(mMaxNumChannels, 0.0);
	xm1B.assign(mMaxNumChannels, 0.0);
	xm2B.assign(mMaxNumChannels, 0.0);
	ym1B.assign(mMaxNumChannels, 0.0);
	ym2B.assign(mMaxNumChannels, 0.0);
	return kTTErrNone;
}


TTErr TTBalance::setFrequency(const TTValue& newValue)
{
	mFrequency = (double)newValue;
	TTLimit(mFrequency, 1., (sr*0.45));

	c = 1 / ( tan( kTTPi*(mFrequency/sr) ) );
	a0 = 1 / (1 + kTTSqrt2*c + c*c);
	a1 = 2*a0;
	a2 = a0;
	b1 = 2*a0*( 1 - c*c );
	b2 = a0 * (1 - kTTSqrt2*c + c*c);
	return kTTErrNone;
}


TTErr TTBalance::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TTAudioSignal&	in = inputs->getSignal(0);
	TTAudioSignal&	out = outputs->getSignal(0);
	TTUInt16		vs;
	TTSampleValue	*inSampleA,
					*inSampleB,
					*outSample;
	TTFloat64		tempxA,
					absTempxA,
					tempxB,
					absTempxB,
					tempyA,
					tempyB;											
	TTUInt16		channel;
	TTUInt16		numChannels;

	// Twice as many input channels are expected as output channels
	numChannels = TTAudioSignal::getNumChannels(in) / 2;
	if (TTAudioSignal::getNumChannels(out) < numChannels)
		numChannels = TTAudioSignal::getNumChannels(out);

	// This outside loop works through each channel one at a time
	for (channel=0; channel<numChannels; channel++) {
		// We first expect all channels of inputSignalA, then all channels of inputSignalB
		inSampleA = in.mSampleVectors[channel];
		inSampleB = in.mSampleVectors[channel+numChannels];
		outSample = out.mSampleVectors[channel];
		vs = in.getVectorSizeAsInt();
		
		// This inner loop works through each sample within the channel one at a time
		while (vs--) {
			tempxA = *inSampleA++;
			absTempxA = fabs(tempxA);
			tempxB = *inSampleB++;
			absTempxB = fabs(tempxB);
			// Lopass filter left and right signals
			tempyA = a0*absTempxA + a1*xm1A[channel] + a2*xm2A[channel] - b1*ym1A[channel] - b2*ym2A[channel];
			TTZeroDenormal(tempyA);
			tempyB = a0*absTempxB + a1*xm1B[channel] + a2*xm2B[channel] - b1*ym1B[channel] - b2*ym2B[channel];		
			TTZeroDenormal(tempyB); 
			// Scale left input to produce output, avoid dividing by zero
			if (tempyA)
				*outSample++ = tempxA * (tempyB/tempyA);
			else
				*outSample++ = 0.;
			// Update filter values
			xm2A[channel] = xm1A[channel];
			xm1A[channel] = absTempxA;
			ym2A[channel] = ym1A[channel];
			ym1A[channel] = tempyA;
			xm2B[channel] = xm1B[channel];
			xm1B[channel] = absTempxB;
			ym2B[channel] = ym1B[channel];
			ym1B[channel] = tempyB;
		}
	}
	return kTTErrNone;
}
