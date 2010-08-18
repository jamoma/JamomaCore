/* 
 * Generalized Allpass Filter Wrapper for Jamoma DSP
 * Copyright © 2010, Tim Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTAllpass.h"

#define thisTTClass			TTAllpass
#define thisTTClassName		"allpass"
#define thisTTClassTags		"audio, processor, filter, allpass"

#ifdef TT_PLATFORM_WIN
#include <Algorithm>
#endif

TT_AUDIO_CONSTRUCTOR,
	mFilterObject(NULL)
{
	addAttributeWithSetter(Filter,	kTypeSymbol);
	
	addMessage(Clear);
	addMessage(updateSr);
	addMessageWithArgument(updateMaxNumChannels);
	
	addMessageWithArgument(SetCoefficients);
	
	setAttributeValue(TT("MaxNumChannels"), arguments);
	setAttributeValue(TT("Filter"), TT("allpass.1a"));
	setProcessMethod(processAudio);
}


TTAllpass::~TTAllpass()
{
	delete mFilterObject;
}


TTErr TTAllpass::setFilter(const TTValue& filter)
{
	TTErr err;
	
	mFilter = filter;
	err = TTObjectInstantiate(mFilter, &mFilterObject, maxNumChannels);
	return err;
}


TTErr TTAllpass::updateMaxNumChannels(const TTValue& oldMaxNumChannels)
{
	if (mFilterObject)
		return mFilterObject->setAttributeValue(TT("MaxNumChannels"), maxNumChannels);
	else
		return kTTErrNone;
}


TTErr TTAllpass::SetCoefficients(const TTValue& coefficients)
{
	TTErr err = kTTErrGeneric;
	
	if (mFilter == TT("allpass.1a") || mFilter == TT("allpass.1b")) {
		if (coefficients.getSize() == 1) {
			TTFloat64 alpha;
			
			coefficients.get(0, alpha);
			err = mFilterObject->setAttributeValue(TT("Alpha"), maxNumChannels);
		}
	}
	else if (mFilter == TT("allpass.2a") || mFilter == TT("allpass.2b")) {

		mFilterObject->setAttributeValue(TT("MaxNumChannels"), maxNumChannels);
		if (coefficients.getSize() == 2) {
			TTFloat64 c1, c2;
			
			coefficients.get(0, c1);
			coefficients.get(1, c2);
			err = mFilterObject->setAttributeValue(TT("C1"), c1);
			err = mFilterObject->setAttributeValue(TT("C2"), c2);
		}
	}
	
	return err;
}


TTErr TTAllpass::updateSr()
{
	return mFilterObject->setAttributeValue(kTTSym_SampleRate, sr);
}


TTErr TTAllpass::Clear()
{
	return mFilterObject->sendMessage(TT("Clear"));
}


#if 0
#pragma mark -
#pragma mark dsp routines
#endif


inline TTErr TTAllpass::calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data)
{	
	return mFilterObject->calculate(x, y);
}


TTErr TTAllpass::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	return mFilterObject->process(inputs, outputs);
}

