/* 
 * 5-Pole Halfband filter built up from a 2-path allpass structure
 * Copyright © 2010, Tim Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTHalfband5.h"

#define thisTTClass			TTHalfband5
#define thisTTClassName		"halfband.5"
#define thisTTClassTags		"audio, processor, filter, lowpass, highpass"

#ifdef TT_PLATFORM_WIN
#include <Algorithm>
#endif

TT_AUDIO_CONSTRUCTOR,
	mF0(NULL),
	mF1(NULL),
	mDelay(NULL)
{
	TTUInt16	initialMaxNumChannels = arguments;
	TTErr		err;

	addAttributeWithSetter(Mode, kTypeSymbol);		
	addMessage(Clear);
	addMessageWithArgument(updateMaxNumChannels);

	err = TTObjectInstantiate(TT("allpass.1b"), (TTObjectPtr*)&mF0, initialMaxNumChannels);
	err = TTObjectInstantiate(TT("allpass.1b"), (TTObjectPtr*)&mF1, initialMaxNumChannels);
	err = TTObjectInstantiate(TT("allpass.1b"), (TTObjectPtr*)&mDelay, initialMaxNumChannels);

	setAttributeValue(TT("MaxNumChannels"),	initialMaxNumChannels);
	setAttributeValue(TT("Mode"), TT("lowpass"));
	
	
	// Now we set up the coefficients for the building blocks...
	addAttributeWithSetter(A0, kTypeFloat64);
	addAttributeWithSetter(A1, kTypeFloat64);
	
	// for the simple 1-sample delay, we set alpha (the feedback coefficient) to zero
	mDelay->setAttributeValue(TT("Alpha"), 0.0);
	
	// For info on these next two see p16 from chapter 10 of Multirate Signal Processing
	mF0->setAttributeValue(TT("Alpha"), 0.1413486);
	mF1->setAttributeValue(TT("Alpha"), 0.5899948);
}


TTHalfband5::~TTHalfband5()
{
	TTObjectRelease((TTObjectPtr*)&mF0);
	TTObjectRelease((TTObjectPtr*)&mF1);
	TTObjectRelease((TTObjectPtr*)&mDelay);
}


TTErr TTHalfband5::updateMaxNumChannels(const TTValue& oldMaxNumChannels)
{
	// TODO: update internal filters
	Clear();
	return kTTErrNone;
}


TTErr TTHalfband5::Clear()
{
	// TODO: update internal filters
	return kTTErrNone;
}


TTErr TTHalfband5::setMode(const TTValue& newValue)
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


TTErr TTHalfband5::setA0(const TTValue& newValue)
{
	return mF0->setAttributeValue(TT("Alpha"), (TTValue&)newValue);
}


TTErr TTHalfband5::setA1(const TTValue& newValue)
{
	return mF1->setAttributeValue(TT("Alpha"), (TTValue&)newValue);
}


TTErr TTHalfband5::calculateLowpass(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt channel)
{
	TTFloat64 outputFromTopPath;
	TTFloat64 outputFromBottomPathDelay;
	TTFloat64 outputFromBottomPath;
	
	mF0->calculateValue(x, outputFromTopPath, channel);
	
	mDelay->calculateValue(x, outputFromBottomPathDelay, channel);
	mF1->calculateValue(outputFromBottomPathDelay, outputFromBottomPath, channel);

	y = (outputFromTopPath + outputFromBottomPath) * 0.5;
	return kTTErrNone;
}


TTErr TTHalfband5::calculateHighpass(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt channel)
{
	TTFloat64 outputFromTopPath;
	TTFloat64 outputFromBottomPathDelay;
	TTFloat64 outputFromBottomPath;
	
	mF0->calculateValue(x, outputFromTopPath, channel);
	
	mDelay->calculateValue(x, outputFromBottomPathDelay, channel);
	mF1->calculateValue(outputFromBottomPathDelay, outputFromBottomPath, channel);
	
	// the only difference between the lowpass and highpass is the sign of the bottom path in this calculation
	y = (outputFromTopPath - outputFromBottomPath) * 0.5;
	return kTTErrNone;
}


TTErr TTHalfband5::processLowpass(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TT_WRAP_CALCULATE_METHOD(calculateLowpass);
}


TTErr TTHalfband5::processHighpass(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TT_WRAP_CALCULATE_METHOD(calculateHighpass);
}

