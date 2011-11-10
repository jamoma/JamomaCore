/* 
 * Resample
 * Extension Class for Jamoma DSP
 * Copyright © 2010, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTResample.h"

#define thisTTClass			TTResample
#define thisTTClassName		"resample"
#define thisTTClassTags		"audio, processor, resample"


TT_AUDIO_CONSTRUCTOR,
	mResamplingFilter(NULL),
	mDirection(TT("Down"))
{	
	TTUInt16	initialMaxNumChannels = arguments;
	
	addAttributeWithSetter(Direction, kTypeSymbol);
	addAttributeWithSetter(Mode, kTypeSymbol);
	addUpdates(MaxNumChannels);
	
	setAttributeValue(TT("mode"), TT("staircase"));
	setAttributeValue(TT("direction"), TT("down"));
	setAttributeValue(kTTSym_maxNumChannels,	initialMaxNumChannels);

	setProcessMethod(processAudio);
}


TTResample::~TTResample()
{
	TTObjectRelease((TTObjectPtr*)&mResamplingFilter);
}


TTErr TTResample::setDirection(const TTValue& newDirection)
{
	mDirection = newDirection;
	if (mDirection == TT("up"))
		return mResamplingFilter->setAttributeValue(TT("mode"), TT("upsample"));
	else // mDirection == TT("down")
		return mResamplingFilter->setAttributeValue(TT("mode"), TT("downsample"));
}


TTErr TTResample::setMode(const TTValue& newMode)
{
	TTErr err;
	
	// With the 3rd-order filter, when trying to a 1-2 upsampling, we end up with a result that copies
	// every other sample directly, and filters the other samples, resulting in other samples all being of
	// lesser value than the directly copied samples ???
	// 
	// The sonograph shows spectral mirroring, indicating that high frequencies are not properly filtered.
	//
	// err = TTObjectInstantiate(TT("halfband.3"), (TTObjectPtr*)&mResamplingFilter, initialMaxNumChannels);
	// 
	
	mMode = newMode;
	if (mMode == TT("third"))
		err = TTObjectInstantiate(TT("halfband.3"), (TTObjectPtr*)&mResamplingFilter, maxNumChannels);
	else if (mMode == TT("fifth"))
		err = TTObjectInstantiate(TT("halfband.5"), (TTObjectPtr*)&mResamplingFilter, maxNumChannels);
	else if (mMode == TT("ninth"))
		err = TTObjectInstantiate(TT("halfband.9"), (TTObjectPtr*)&mResamplingFilter, maxNumChannels);
	else // mMode == TT("staircase")
		err = TTObjectInstantiate(TT("staircase"), (TTObjectPtr*)&mResamplingFilter, maxNumChannels);
	
	setAttributeValue(TT("direction"), mDirection);
	
	return err;
}


TTErr TTResample::updateMaxNumChannels(const TTValue& oldMaxNumChannels, TTValue&)
{
	return mResamplingFilter->setAttributeValue(kTTSym_maxNumChannels, maxNumChannels);
}


TTErr TTResample::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	return mResamplingFilter->process(inputs, outputs);
}
