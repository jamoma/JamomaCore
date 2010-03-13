/*
 * TTBlue DC Offset Filter and Blocker 
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTDCBlock.h"

#define thisTTClass			TTDCBlock
#define thisTTClassName		"dcblock"
#define thisTTClassTags		"audio, processor, filter"


TT_AUDIO_CONSTRUCTOR
{
	// make the clear method available to be called:
	addMessage(Clear);
	
	// this next one is called by the parent class so we can allocate memory as required
	addMessageWithArgument(updateMaxNumChannels);

	// Set Defaults...
	setAttributeValue(TT("MaxNumChannels"),	arguments);
	setProcessMethod(processAudio);
	setCalculateMethod(calculateValue);

}


TTDCBlock::~TTDCBlock()
{
	;
}


TTErr TTDCBlock::updateMaxNumChannels(const TTValue& oldMaxNumChannels)
{
	mLastInput.resize(maxNumChannels);
	mLastOutput.resize(maxNumChannels);
	Clear();
	return kTTErrNone;
}


TTErr TTDCBlock::Clear()
{   
	mLastInput.assign(maxNumChannels, 0.0);
	mLastOutput.assign(maxNumChannels, 0.0);
	return kTTErrNone;
}


inline TTErr TTDCBlock::calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt channel)
{
	y = mLastOutput[channel] = TTAntiDenormal(x - mLastInput[channel] + (mLastOutput[channel] * 0.9997));
	mLastInput[channel] = x;
	return kTTErrNone;
}


TTErr TTDCBlock::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TT_WRAP_CALCULATE_METHOD(calculateValue);
}

