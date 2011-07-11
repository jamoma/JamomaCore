/* 
 * TTAudioMatrix Object
 * Copyright © 2010, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTAudioMatrix.h"
#ifdef TT_PLATFORM_WIN
#include <algorithm>
#endif

#define thisTTClass			TTAudioMatrix
#define thisTTClassName		"audiomatrix"
#define thisTTClassTags		"audio, matrix"


TT_AUDIO_CONSTRUCTOR,
	mNumInputs(0),
	mNumOutputs(0)
{
	addAttributeWithSetter(NumInputs, kTypeUInt16);
	addAttributeWithSetter(NumOutputs, kTypeUInt16);
	
	addMessageWithArgument(setGain);
	addMessageWithArgument(setLinearGain);
	addMessageWithArgument(setMidiGain);
	//registerMessageWithArgument(updateMaxNumChannels);
	addMessage(clear);	

	setProcessMethod(processAudio);
}


TTAudioMatrix::~TTAudioMatrix()
{
	;
}


// conceptually:
//	columns == inputs
//	rows == outputs


TTErr TTAudioMatrix::setNumInputs(const TTValue& newValue)
{
	TTUInt16 numInputs = newValue;
	
	if (numInputs != mNumInputs) {
		mNumInputs = numInputs;
		mGainMatrix.resize(mNumInputs);
		for_each(mGainMatrix.begin(), mGainMatrix.end(), bind2nd(mem_fun_ref(&TTSampleMatrix::value_type::resize), mNumOutputs));
	}
	return kTTErrNone;
}


TTErr TTAudioMatrix::setNumOutputs(const TTValue& newValue)
{
	TTUInt16 numOutputs = newValue;
	
	if (numOutputs != mNumOutputs) {
		mNumOutputs = numOutputs;
		for_each(mGainMatrix.begin(), mGainMatrix.end(), bind2nd(mem_fun_ref(&TTSampleMatrix::value_type::resize), mNumOutputs));
	}
	return kTTErrNone;
}


TTErr TTAudioMatrix::clear()
{
	for (TTSampleMatrixIter column = mGainMatrix.begin(); column != mGainMatrix.end(); column++)
		column->assign(mNumOutputs, 0.0);
	return kTTErrNone;
}


TTErr TTAudioMatrix::setGain(TTValue& newValue)
{
	TTUInt16	x;
	TTUInt16	y;
	TTFloat64	gainValue;
	
	if (newValue.getSize() != 3)
		return kTTErrWrongNumValues;
	
	newValue.get(0, x);
	newValue.get(1, y);
	newValue.get(2, gainValue);
	newValue.clear();

	if ((x < mNumInputs) && (y < mNumOutputs)) {  
		mGainMatrix[x][y] = dbToLinear(gainValue);
		return kTTErrNone;}
	else 
		return kTTErrInvalidValue;
}


TTErr TTAudioMatrix::setLinearGain(TTValue& newValue)
{
	TTUInt16	x;
	TTUInt16	y;
	TTFloat64	gainValue;
	
	if (newValue.getSize() != 3)
		return kTTErrWrongNumValues;
	
	newValue.get(0, x);
	newValue.get(1, y);
	newValue.get(2, gainValue);	
	newValue.clear();
	
	if ((x < mNumInputs) && (y < mNumOutputs)) { 
		mGainMatrix[x][y] = gainValue;
		return kTTErrNone;
	}
	else 
		return kTTErrInvalidValue;
}


TTErr TTAudioMatrix::setMidiGain(TTValue& newValue)
{
	TTUInt16	x;
	TTUInt16	y;
	TTFloat64	gainValue;
	
	if (newValue.getSize() != 3)
		return kTTErrWrongNumValues;
	
	newValue.get(0, x);
	newValue.get(1, y);
	newValue.get(2, gainValue);
	newValue.clear();

	if ((x < mNumInputs) && (y < mNumOutputs)) {
		mGainMatrix[x][y] = midiToLinearGain(gainValue);
		return kTTErrNone;}
	else 
		return kTTErrInvalidValue;

}


// Here we are mixing channels within a signal rather than between multiple signals
TTErr TTAudioMatrix::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	
	TTAudioSignal&		in = inputs->getSignal(0);
	TTAudioSignal&		out = outputs->getSignal(0);
	TTUInt16			vs = in.getVectorSizeAsInt();
	TTSampleValuePtr	inSample;
	TTSampleValuePtr	outSample;
	TTUInt16			numInputChannels = in.getNumChannelsAsInt();
	TTUInt16			numOutputChannels = out.getNumChannelsAsInt();
	TTUInt16			outChannel;
	TTUInt16			inChannel;
    TTFloat64           gainValue;
	if (numInputChannels != mNumInputs) {
		setNumInputs(numInputChannels);
	}
	if (numOutputChannels != mNumOutputs) {
		TTValue v = mNumOutputs;

		out.setMaxNumChannels(v);
		out.setNumChannels(v);
		numOutputChannels = mNumOutputs;
	}
	
	out.clear();
	
	// TODO: this multiply-nested for-loop has got to be horrendously slow, there should be a much faster way to do this?
	
		for (outChannel=0; outChannel<numOutputChannels; outChannel++) {
			for (inChannel=0; inChannel<numInputChannels; inChannel++) {
				if (mGainMatrix[inChannel][outChannel] != 0.0){
					gainValue = mGainMatrix[inChannel][outChannel];
					inSample = in.mSampleVectors[inChannel];
					outSample = out.mSampleVectors[outChannel];
				for (int i=0; i<vs; i++) {				
				outSample[i] += inSample[i] * gainValue;
				}
			}
		}
	}		
	return kTTErrNone;
}

