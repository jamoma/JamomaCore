/* 
 * LowpassFunction Unit for TTBlue
 * Originally written for the Jamoma FunctionLib
 * Copyright © 2007 by Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "LowpassFunction.h"
#define thisTTClass LowpassFunction


LowpassFunction::LowpassFunction(TTUInt16 newMaxNumChannels)
	: TTAudioObject("lowpass", newMaxNumChannels), feedback(NULL)
{
	registerAttributeWithSetter(coefficient, kTypeFloat64);
	registerMessageSimple(clear);
	registerMessageWithArgument(updateMaxNumChannels);
	
	// Set Defaults...
	setAttributeValue(TT("maxNumChannels"),	newMaxNumChannels);			// This attribute is inherited
	setAttributeValue(TT("coefficient"), 0.75);
	sendMessage(TT("clear"));
	
	setProcessMethod(processAudio);
	setCalculateMethod(calculateValue);
}

LowpassFunction::~LowpassFunction()
{
	delete[] feedback;
}


TTErr LowpassFunction::updateMaxNumChannels(const TTValue& oldMaxNumChannels)
{
	delete[] feedback;
	feedback = new TTFloat64[maxNumChannels];
	return clear();
}


TTErr LowpassFunction::clear()
{
	for (TTUInt16 channel=0; channel<maxNumChannels; channel++)
		feedback[channel] = 0.0;
	return kTTErrNone;
}


TTErr LowpassFunction::setcoefficient(const TTValue& newValue)
{
	coefficient = newValue;
	one_minus_coefficient = 1.0 - coefficient;
	return kTTErrNone;
}



inline TTErr LowpassFunction::calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt channel)
{
	y = feedback[channel] = TTAntiDenormal((feedback[channel] * coefficient) + (x * one_minus_coefficient));
	return kTTErrNone;
}


TTErr LowpassFunction::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TT_WRAP_CALCULATE_METHOD(calculateValue);
}


