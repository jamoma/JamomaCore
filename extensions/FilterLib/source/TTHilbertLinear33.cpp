/* 
 * 33rd-order Hilbert Transform filter built up from a 2-path allpass structure
 * with linear phase relationship to the input signal.
 * Copyright © 2010, Tim Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTHilbertLinear33.h"

#define thisTTClass			TTHilbertLinear33
#define thisTTClassName		"hilbert.linear.33"
#define thisTTClassTags		"audio, processor, hilbert"
// no "filter" tag because this is a special case that produces two outputs for one input and doesn't fit the general filter schema

#ifdef TT_PLATFORM_WIN
#include <Algorithm>
#endif

TT_AUDIO_CONSTRUCTOR,
	mP0Delay(NULL),
	mP1Delay(NULL),
	mF0(NULL),
	mF1(NULL),
	mF2(NULL),
	mF3(NULL),
	mF4(NULL)
{
	TTUInt16	initialMaxNumChannels = arguments;
	TTErr		err;
	
	addMessage(clear);
	addUpdates(MaxNumChannels);

	err = TTObjectInstantiate(TT("delay"), (TTObjectPtr*)&mP0Delay, initialMaxNumChannels);
	
	err = TTObjectInstantiate(TT("allpass.1a"), (TTObjectPtr*)&mP1Delay, initialMaxNumChannels);
	err = TTObjectInstantiate(TT("allpass.1b"), (TTObjectPtr*)&mF0, initialMaxNumChannels);
	err = TTObjectInstantiate(TT("allpass.1b"), (TTObjectPtr*)&mF1, initialMaxNumChannels);
	err = TTObjectInstantiate(TT("allpass.2b"), (TTObjectPtr*)&mF2, initialMaxNumChannels);
	err = TTObjectInstantiate(TT("allpass.2b"), (TTObjectPtr*)&mF3, initialMaxNumChannels);
	err = TTObjectInstantiate(TT("allpass.2b"), (TTObjectPtr*)&mF4, initialMaxNumChannels);
	
	setAttributeValue(kTTSym_maxNumChannels,	initialMaxNumChannels);
		
	mP0Delay->setAttributeValue(TT("delayMaxInSamples"), 16);
	mP0Delay->setAttributeValue(TT("delayInSamples"), 16);
	
	mP1Delay->setAttributeValue(TT("alpha"), 0.0);
	mF0->setAttributeValue(TT("alpha"), -0.8323021656083688);
	mF1->setAttributeValue(TT("alpha"), 0.4212854250030528);
	mF2->setAttributeValue(TT("c1"), -0.6763427968689864);
	mF2->setAttributeValue(TT("c2"), 0.2319808172827758);
	mF3->setAttributeValue(TT("c1"), -0.003589671833320152);
	mF3->setAttributeValue(TT("c2"), 0.1916472793306732);
	mF4->setAttributeValue(TT("c1"), 0.59696896155334);
	mF4->setAttributeValue(TT("c2"), 0.1802094400534031);
	
	setProcessMethod(processAudio);
}


TTHilbertLinear33::~TTHilbertLinear33()
{
	TTObjectRelease((TTObjectPtr*)&mP0Delay);
	
	TTObjectRelease((TTObjectPtr*)&mP1Delay);
	TTObjectRelease((TTObjectPtr*)&mF0);
	TTObjectRelease((TTObjectPtr*)&mF1);
	TTObjectRelease((TTObjectPtr*)&mF2);
	TTObjectRelease((TTObjectPtr*)&mF3);
	TTObjectRelease((TTObjectPtr*)&mF4);
}


TTErr TTHilbertLinear33::updateMaxNumChannels(const TTValue& oldMaxNumChannels, TTValue&)
{
	mF0->setAttributeValue(kTTSym_maxNumChannels, maxNumChannels);
	mF1->setAttributeValue(kTTSym_maxNumChannels, maxNumChannels);
	mF2->setAttributeValue(kTTSym_maxNumChannels, maxNumChannels);
	mF3->setAttributeValue(kTTSym_maxNumChannels, maxNumChannels);
	mF4->setAttributeValue(kTTSym_maxNumChannels, maxNumChannels);
	mP0Delay->setAttributeValue(kTTSym_maxNumChannels, maxNumChannels);
	mP1Delay->setAttributeValue(kTTSym_maxNumChannels, maxNumChannels);
	
	clear();
	return kTTErrNone;
}


TTErr TTHilbertLinear33::clear()
{
	mF0->sendMessage(kTTSym_clear);
	mF1->sendMessage(kTTSym_clear);
	mF2->sendMessage(kTTSym_clear);
	mF3->sendMessage(kTTSym_clear);
	mF4->sendMessage(kTTSym_clear);
	mP0Delay->sendMessage(kTTSym_clear);
	mP1Delay->sendMessage(kTTSym_clear);
	return kTTErrNone;
}


inline void TTHilbertLinear33::filterKernel(const TTFloat64& input, TTFloat64& outputPath0, TTFloat64& outputPath1, TTPtrSizedInt channel)
{
	TTFloat64 temp1, temp2;
	
	mP0Delay->calculateNoInterpolation(input, outputPath0, channel);
	
	mP1Delay->calculateValue(input,		temp2,			channel);
	mF0->calculateValue(temp2,			temp1,			channel);
	mF1->calculateValue(temp1,			temp2,			channel);
	mF2->calculateValue(temp2,			temp1,			channel);
	mF3->calculateValue(temp1,			temp2,			channel);
	mF4->calculateValue(temp2,			outputPath1,	channel);
}


TTErr TTHilbertLinear33::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TTAudioSignal&	in = inputs->getSignal(0);
	TTAudioSignal&	outReal = outputs->getSignal(0);
	TTAudioSignal&	outImaginary = outputs->getSignal(1);
	TTSampleValue*	inSample;
	TTSampleValue*	outRealSample;
	TTSampleValue*	outImaginarySample;
	TTUInt16		numChannels = TTAudioSignal::getMinChannelCount(in, outReal, outImaginary);
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

