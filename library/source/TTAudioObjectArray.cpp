/* 
 * A wrapper for an array of audio objects
 * Copyright © 2011, Timothy Place and Nils Peters
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTDSP.h"
#include "TTAudioObjectArray.h"


#define thisTTClass			TTAudioObjectArray
#define thisTTClassName		"array"
#define thisTTClassTags		"audio, array"


TT_AUDIO_CONSTRUCTOR,
	mClass(NULL),
	mSize(0),
	mInputChannelSignal(NULL),
	mOutputChannelSignal(NULL)
{
	TTObjectInstantiate(kTTSym_audiosignal, &mInputChannelSignal, 1);
	TTObjectInstantiate(kTTSym_audiosignal, &mOutputChannelSignal, 1);
	
	addAttributeWithSetter(Size,	kTypeUInt16);
	addAttributeWithSetter(Class,	kTypeSymbol);
	
	setProcessMethod(processAudio);
}


TTAudioObjectArray::~TTAudioObjectArray()
{
	TTObjectRelease(&mInputChannelSignal);
	TTObjectRelease(&mOutputChannelSignal);
}


TTErr TTAudioObjectArray::setSize(const TTValueRef newSize)
{
	// TODO: implement
	return kTTErrNone;
}


TTErr TTAudioObjectArray::setClass(const TTValueRef newClass)
{
	TTSymbolPtr theClassName = newClass;
	int			err = 0;
	
	// TODO: find out if the specified class name is a legitimate class before proceeding
	
	for (int i=0; i<mSize; i++)
		err |= TTObjectInstantiate(newClass, &mInstances[i], 1);

	if (!err)
		mClass = theClassName;
	return (TTErr)err;
}


TTErr TTAudioObjectArray::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TTAudioSignal&	in = inputs->getSignal(0);
	TTAudioSignal&	out = outputs->getSignal(0);
	TTUInt16		channelCount = TTAudioSignal::getMinChannelCount(in, out);
	TTUInt16		vs = in.getVectorSizeAsInt();
	
	for (TTUInt16 channel=0; channel<channelCount; channel++) {
		mInputChannelSignal->setVector(0, vs, in.mSampleVectors[channel]);
		mOutputChannelSignal->setVector(0, vs, out.mSampleVectors[channel]);
		mInstances[channel]->process(mInputChannelSignal, mOutputChannelSignal);
	}
	return kTTErrNone;
}


TTErr TTAudioObjectArray::test(TTValue& returnedTestInfo)
{
	// TODO: write unit tests	
	return TTObject::test(returnedTestInfo);
}

