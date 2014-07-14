/** @file
 *
 * @ingroup dspFilterLib
 *
 * @brief #TTHilbertLinear33 is a 33rd-order Hilbert Transform filter built up from a 2-path allpass structure with linear phase relationship to the input signal.
 *
 * @details See notes on TTHilbert9 for information about the structure of this filter. @n
 *  @n
 *  See notes on TTHalfband33 for information regarding coefficient calculations, remembering that we need to flip signs to perform the Hilbert Transform. Note however, that we flip signs for the Z^(-2) terms because i^2 = -1. The caveat is that in this filter we also have Z^(-4) terms in the second-order allpass filters, and i^4 = 1, meaning we don't flip those signs. This may seem obvious after reading this, however it is easy to miss, especially as the general rule is stated as "flip all of the signs".
 *
 * @authors Timothy Place, Trond Lossius
 *
 * @copyright Copyright © 2010, Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#include "TTHilbertLinear33.h"

#define thisTTClass			TTHilbertLinear33
#define thisTTClassName		"hilbert.linear.33"
#define thisTTClassTags		"dspFilterLib, audio, processor, hilbert"
// no "filter" tag because this is a special case that produces two outputs for one input and doesn't fit the general filter schema

#ifdef TT_PLATFORM_WIN
#include <Algorithm>
#endif

TT_AUDIO_CONSTRUCTOR,
	mP0Delay("delay"),
	mP1Delay("allpass.1a"),
	mF0("allpass.1b"),
	mF1("allpass.1b"),
	mF2("allpass.2b"),
	mF3("allpass.2b"),
	mF4("allpass.2b")
{
	TTChannelCount	initialMaxNumChannels = arguments;
	
	addMessage(clear);
	addUpdates(MaxNumChannels);
	
	setAttributeValue(kTTSym_maxNumChannels,	initialMaxNumChannels);
		
	mP0Delay.set(TT("delayMaxInSamples"), 16);
	mP0Delay.set(TT("delayInSamples"), 16);
	
	mP1Delay.set(TT("alpha"), 0.0);
	mF0.set(TT("alpha"), -0.8323021656083688);
	mF1.set(TT("alpha"), 0.4212854250030528);
	mF2.set(TT("c1"), -0.6763427968689864);
	mF2.set(TT("c2"), 0.2319808172827758);
	mF3.set(TT("c1"), -0.003589671833320152);
	mF3.set(TT("c2"), 0.1916472793306732);
	mF4.set(TT("c1"), 0.59696896155334);
	mF4.set(TT("c2"), 0.1802094400534031);
	
	setProcessMethod(processAudio);
}


TTHilbertLinear33::~TTHilbertLinear33()
{
}


TTErr TTHilbertLinear33::updateMaxNumChannels(const TTValue& oldMaxNumChannels, TTValue&)
{
	mF0.set(kTTSym_maxNumChannels, mMaxNumChannels);
	mF1.set(kTTSym_maxNumChannels, mMaxNumChannels);
	mF2.set(kTTSym_maxNumChannels, mMaxNumChannels);
	mF3.set(kTTSym_maxNumChannels, mMaxNumChannels);
	mF4.set(kTTSym_maxNumChannels, mMaxNumChannels);
	mP0Delay.set(kTTSym_maxNumChannels, mMaxNumChannels);
	mP1Delay.set(kTTSym_maxNumChannels, mMaxNumChannels);
	
	clear();
	return kTTErrNone;
}


TTErr TTHilbertLinear33::clear()
{
	mF0.send(kTTSym_clear);
	mF1.send(kTTSym_clear);
	mF2.send(kTTSym_clear);
	mF3.send(kTTSym_clear);
	mF4.send(kTTSym_clear);
	mP0Delay.send(kTTSym_clear);
	mP1Delay.send(kTTSym_clear);
	return kTTErrNone;
}


inline void TTHilbertLinear33::filterKernel(const TTFloat64& input, TTFloat64& outputPath0, TTFloat64& outputPath1, TTPtrSizedInt channel)
{
	TTFloat64 temp1, temp2;
	
	TTBASE(mP0Delay, TTDelay)->calculateNoInterpolation(input, outputPath0, channel);
	
	TTBASE(mP1Delay, TTAllpass1a)->calculateValue(input,		temp2,			channel);
	TTBASE(mF0, TTAllpass1b)->calculateValue(temp2,			temp1,			channel);
	TTBASE(mF1, TTAllpass1b)->calculateValue(temp1,			temp2,			channel);
	TTBASE(mF2, TTAllpass2b)->calculateValue(temp2,			temp1,			channel);
	TTBASE(mF3, TTAllpass2b)->calculateValue(temp1,			temp2,			channel);
	TTBASE(mF4, TTAllpass2b)->calculateValue(temp2,			outputPath1,	channel);
}


TTErr TTHilbertLinear33::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TTAudioSignal&	in = inputs->getSignal(0);
	TTAudioSignal&	outReal = outputs->getSignal(0);
	TTAudioSignal&	outImaginary = outputs->getSignal(1);
	TTSampleValue*	inSample;
	TTSampleValue*	outRealSample;
	TTSampleValue*	outImaginarySample;
	TTChannelCount	numChannels = TTAudioSignal::getMinChannelCount(in, outReal, outImaginary);
	TTPtrSizedInt	channel;
	TTUInt16		n;
		
	for (channel=0; channel<numChannels; channel++) {
		n = in.getVectorSizeAsInt();
		
		inSample = in.mSampleVectors[channel];
		outRealSample = outReal.mSampleVectors[channel];
		outImaginarySample = outImaginary.mSampleVectors[channel];
		
		while (n--) {
			filterKernel(*inSample++, *outRealSample++, *outImaginarySample++, channel);
		}
	}
	return kTTErrNone;
}

