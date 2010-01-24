/* 
 * Generalized Window Function Wrapper for Jamoma DSP
 * Copyright © 2010 by Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "WindowFunction.h"

#define thisTTClass			WindowFunction
#define thisTTClassName		"WindowFunction"
#define thisTTClassTags		"audio, processor, function, window"


TT_AUDIO_CONSTRUCTOR,
	mFunctionObject(NULL)
{
	addAttributeWithSetter(Function, kTypeSymbol);
	
	setAttributeValue(TT("Function"), TT("rectangular"));
	setProcessMethod(processAudio);
	setCalculateMethod(calculateValue);
}


WindowFunction::~WindowFunction()
{
	delete mFunctionObject;
}


TTErr WindowFunction::setFunction(const TTValue& function)
{
	mFunction = function;
	return TTObjectInstantiate(mFunction, &mFunctionObject, maxNumChannels);
}


TTErr WindowFunction::calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data)
{
	return mFunctionObject->calculate(x, y);
}


TTErr WindowFunction::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	return mFunctionObject->process(inputs, outputs);
}

