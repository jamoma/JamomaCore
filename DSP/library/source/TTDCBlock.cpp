/** @file
 *
 * @ingroup dspLibrary
 *
 * @brief DC Offset Filter and Blocker
 *
 * @details TODO: put more info here
 *
 * @authors Tim Place
 *
 * @copyright Copyright © 2008 by Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#include "TTDCBlock.h"

#define thisTTClass			TTDCBlock
#define thisTTClassName		"dcblock"
#define thisTTClassTags		"dspLibrary, audio, processor, filter"


TT_AUDIO_CONSTRUCTOR
{
	// make the clear method available to be called:
	addMessage(clear);
	
	// this next one is called by the parent class so we can allocate memory as required
	addUpdates(MaxNumChannels);

	// Set Defaults...
	setAttributeValue(kTTSym_maxNumChannels,	arguments);
	setProcessMethod(processAudio);
	setCalculateMethod(calculateValue);

}


TTDCBlock::~TTDCBlock()
{
	;
}


TTErr TTDCBlock::updateMaxNumChannels(const TTValue& oldMaxNumChannels, TTValue&)
{
	mLastInput.resize(mMaxNumChannels);
	mLastOutput.resize(mMaxNumChannels);
	clear();
	return kTTErrNone;
}


TTErr TTDCBlock::clear()
{   
	mLastInput.assign(mMaxNumChannels, 0.0);
	mLastOutput.assign(mMaxNumChannels, 0.0);
	return kTTErrNone;
}


inline TTErr TTDCBlock::calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt channel)
{
	y = x - mLastInput[channel] + (mLastOutput[channel] * 0.9997);
	TTZeroDenormal(y);
	mLastOutput[channel] = y;
	mLastInput[channel]  = x;
	return kTTErrNone;
}


TTErr TTDCBlock::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TT_WRAP_CALCULATE_METHOD(calculateValue);
}

