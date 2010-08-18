/* 
 * 9-Pole Halfband filter built up from a 2-path allpass structure
 * Copyright © 2010, Tim Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTHalfband9.h"

#define thisTTClass			TTHalfband9
#define thisTTClassName		"halfband.9"
#define thisTTClassTags		"audio, processor, filter, lowpass, highpass"

#ifdef TT_PLATFORM_WIN
#include <Algorithm>
#endif

TT_AUDIO_CONSTRUCTOR,
	mF0(NULL),
	mF2(NULL),
	mF1(NULL),
	mF3(NULL),
	mDelay(NULL)
{
	TTUInt16	initialMaxNumChannels = arguments;
	TTErr		err;

	addAttributeWithSetter(Mode, kTypeSymbol);		
	addMessage(Clear);
	addMessageWithArgument(updateMaxNumChannels);

	err = TTObjectInstantiate(TT("allpass.1b"), (TTObjectPtr*)&mF0, initialMaxNumChannels);
	err = TTObjectInstantiate(TT("allpass.1b"), (TTObjectPtr*)&mF1, initialMaxNumChannels);
	err = TTObjectInstantiate(TT("allpass.1b"), (TTObjectPtr*)&mF2, initialMaxNumChannels);
	err = TTObjectInstantiate(TT("allpass.1b"), (TTObjectPtr*)&mF3, initialMaxNumChannels);
	err = TTObjectInstantiate(TT("allpass.1a"), (TTObjectPtr*)&mDelay, initialMaxNumChannels);

	setAttributeValue(TT("MaxNumChannels"),	initialMaxNumChannels);
	setAttributeValue(TT("Mode"), TT("lowpass"));
	
	
	// Now we set up the coefficients for the building blocks...
	addAttributeWithSetter(A0, kTypeFloat64);
	addAttributeWithSetter(A1, kTypeFloat64);
	addAttributeWithSetter(A2, kTypeFloat64);
	addAttributeWithSetter(A3, kTypeFloat64);
	
	// for the simple 1-sample delay, we set alpha (the feedback coefficient) to zero
	mDelay->setAttributeValue(TT("Alpha"), 0.0);
	
	// For info on these next two see p16 from chapter 10 of Multirate Signal Processing
	mF0->setAttributeValue(TT("Alpha"), 0.101467517);
	mF2->setAttributeValue(TT("Alpha"), 0.612422841);
	mF1->setAttributeValue(TT("Alpha"), 0.342095596);
	mF3->setAttributeValue(TT("Alpha"), 0.867647439);
}


TTHalfband9::~TTHalfband9()
{
	TTObjectRelease((TTObjectPtr*)&mF0);
	TTObjectRelease((TTObjectPtr*)&mF1);
	TTObjectRelease((TTObjectPtr*)&mF2);
	TTObjectRelease((TTObjectPtr*)&mF3);
	TTObjectRelease((TTObjectPtr*)&mDelay);
}


TTErr TTHalfband9::updateMaxNumChannels(const TTValue& oldMaxNumChannels)
{
	// TODO: update internal filters
	Clear();
	return kTTErrNone;
}


TTErr TTHalfband9::Clear()
{
	// TODO: update internal filters
	return kTTErrNone;
}


TTErr TTHalfband9::setMode(const TTValue& newValue)
{
	TTSymbolPtr newMode = newValue;
	
	if (newMode == TT("highpass")) {
		mMode = TT("highpass");
		setCalculateMethod(calculateHighpass);
		setProcessMethod(processHighpass);
	}
	else { // lowpass
		mMode = TT("lowpass");
		setCalculateMethod(calculateLowpass);
		setProcessMethod(processLowpass);
	}
	return kTTErrNone;
}


TTErr TTHalfband9::setA0(const TTValue& newValue)
{
	return mF0->setAttributeValue(TT("Alpha"), (TTValue&)newValue);
}


TTErr TTHalfband9::setA1(const TTValue& newValue)
{
	return mF1->setAttributeValue(TT("Alpha"), (TTValue&)newValue);
}


TTErr TTHalfband9::setA2(const TTValue& newValue)
{
	return mF2->setAttributeValue(TT("Alpha"), (TTValue&)newValue);
}


TTErr TTHalfband9::setA3(const TTValue& newValue)
{
	return mF3->setAttributeValue(TT("Alpha"), (TTValue&)newValue);
}


inline void TTHalfband9::filterKernel(const TTFloat64& input, TTFloat64& outputPath0, TTFloat64& outputPath1, TTPtrSizedInt channel)
{
	TTFloat64 delayOutput;
	TTFloat64 temp;
	
	mF0->calculateValue(input,			temp,			channel);
	mF2->calculateValue(temp,			outputPath0,	channel);
	
	mDelay->calculateValue(input,		delayOutput,	channel);
	mF1->calculateValue(delayOutput,	temp,			channel);
	mF3->calculateValue(temp,			outputPath1,	channel);
}


TTErr TTHalfband9::calculateLowpass(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt channel)
{
	TTFloat64 outputFromPath0;
	TTFloat64 outputFromPath1;
	
	filterKernel(x, outputFromPath0, outputFromPath1, channel);
	y = (outputFromPath0 + outputFromPath1) * 0.5;
	return kTTErrNone;
}


TTErr TTHalfband9::calculateHighpass(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt channel)
{
	TTFloat64 outputFromPath0;
	TTFloat64 outputFromPath1;
	
	filterKernel(x, outputFromPath0, outputFromPath1, channel);
	y = (outputFromPath0 - outputFromPath1) * 0.5;
	return kTTErrNone;
}


TTErr TTHalfband9::processLowpass(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TT_WRAP_CALCULATE_METHOD(calculateLowpass);
}


TTErr TTHalfband9::processHighpass(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TT_WRAP_CALCULATE_METHOD(calculateHighpass);
}

