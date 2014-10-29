/** @file
 *
 * @ingroup dspFilterLib
 *
 * @brief #TTAllpass is a generalized allpass filter wrapper
 *
 * @details
 *
 * @authors Timothy Place, Trond Lossius
 *
 * @copyright Copyright © 2010, Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#include "TTAllpass.h"

#define thisTTClass			TTAllpass
#define thisTTClassName		"allpass"
#define thisTTClassTags		"dspFilterLib, audio, processor"

#ifdef TT_PLATFORM_WIN
#include <Algorithm>
#endif

TT_AUDIO_CONSTRUCTOR,
	mFilterObject(NULL)
{
	addAttributeWithSetter(Filter,	kTypeSymbol);
	
	addMessage(clear);
	addUpdates(SampleRate);
	addUpdates(MaxNumChannels);
	addMessageWithArguments(getFilters);
	addMessageWithArguments(setCoefficients);
	
	setAttributeValue(kTTSym_maxNumChannels, arguments);
	setAttributeValue(TT("filter"), TT("allpass.1a"));
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
	err = TTObjectBaseInstantiate(mFilter, &mFilterObject, mMaxNumChannels);
	return err;
}


TTErr TTAllpass::updateMaxNumChannels(const TTValue& oldMaxNumChannels, TTValue&)
{
	if (mFilterObject)
		return mFilterObject->setAttributeValue(kTTSym_maxNumChannels, mMaxNumChannels);
	else
		return kTTErrNone;
}


TTErr TTAllpass::setCoefficients(const TTValue& coefficients, TTValue&)
{
	TTErr err = kTTErrGeneric;
	
	if (mFilter == TT("allpass.1a") || mFilter == TT("allpass.1b") || mFilter == TT("allpass.1c")) {
		mFilterObject->setAttributeValue(kTTSym_maxNumChannels, mMaxNumChannels);		
		if (coefficients.size() >= 1) {
			TTFloat64 alpha;
			
			alpha = coefficients[0];
			err = mFilterObject->setAttributeValue(TT("alpha"), alpha);
		}
	}
	else if (mFilter == TT("allpass.2a") || mFilter == TT("allpass.2b")) {
		mFilterObject->setAttributeValue(kTTSym_maxNumChannels, mMaxNumChannels);
		if (coefficients.size() >= 2) {
			TTFloat64 c1, c2;
			
			c1 = coefficients[0];
			c2 = coefficients[1];
			err = mFilterObject->setAttributeValue(TT("c1"), c1);
			err = mFilterObject->setAttributeValue(TT("c2"), c2);
		}
	}
	else if (mFilter == TT("allpass.2c")) {
		mFilterObject->setAttributeValue(kTTSym_maxNumChannels, mMaxNumChannels);
		if (coefficients.size() >= 2) {
			TTFloat64 e1, e2;
			
			e1 = coefficients[0];
			e2 = coefficients[1];
			err = mFilterObject->setAttributeValue(TT("e1"), e1);
			err = mFilterObject->setAttributeValue(TT("e2"), e2);
		}
	}
	else if (mFilter == TT("allpass.4a")) {
		mFilterObject->setAttributeValue(kTTSym_maxNumChannels, mMaxNumChannels);
		if (coefficients.size() >= 4) {
			TTFloat64 d1, d2, d3, d4;
			
			d1 = coefficients[0];
			d2 = coefficients[1];
			d3 = coefficients[2];
			d4 = coefficients[3];
			err = mFilterObject->setAttributeValue(TT("d1"), d1);
			err = mFilterObject->setAttributeValue(TT("d2"), d2);
			err = mFilterObject->setAttributeValue(TT("d3"), d3);
			err = mFilterObject->setAttributeValue(TT("d4"), d4);
		}
	}
	
	return err;
}


TTErr TTAllpass::updateSampleRate(const TTValue& oldSampleRate, TTValue&)
{
	return mFilterObject->setAttributeValue(kTTSym_sampleRate, sr);
}


TTErr TTAllpass::clear()
{
	return mFilterObject->sendMessage(TT("clear"));
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

