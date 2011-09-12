/* 
 * TTMatrixMixer Object
 * Copyright © 2009, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTMatrixMixer.h"
#ifdef TT_PLATFORM_WIN
#include <algorithm>
#endif

#define thisTTClass			TTMatrixMixer
#define thisTTClassName		"matrixmixer"
#define thisTTClassTags		"audio, mixing, matrix"


TT_AUDIO_CONSTRUCTOR,
	mNumInputs(0),
	mNumOutputs(0)
{
	TTObjectInstantiate(kTTSym_matrix, (TTObjectPtr*)&mGainMatrix, NULL);

	addAttribute(NumInputs, kTypeUInt16);	
	addAttributeProperty(NumInputs,	readOnly, kTTBoolYes);
	addAttribute(NumOutputs, kTypeUInt16);	
	addAttributeProperty(NumOutputs, readOnly, kTTBoolYes);
	
	addMessageWithArgument(setGain);
	addMessageWithArgument(setLinearGain);
	addMessageWithArgument(setMidiGain);
	//registerMessageWithArgument(updateMaxNumChannels);
	addMessage(clear);

	//setAttributeValue(TT("MaxNumChannels"), newMaxNumChannels);
	setProcessMethod(processAudio);
}


TTMatrixMixer::~TTMatrixMixer()
{
	TTObjectRelease((TTObjectPtr*)&mGainMatrix);
}


// conceptually:
//	columns == inputs
//	rows == outputs


// TODO: the next two methods should never decrease their size

TTErr TTMatrixMixer::setNumInputs(const TTUInt16 newValue)
{
	TTUInt16	numInputs = newValue;
	TTValue		v(numInputs, mNumOutputs);
	
	if (newValue != mNumInputs) {
		mNumInputs = numInputs;
//		mGainMatrix.resize(mNumInputs);
//		for_each(mGainMatrix.begin(), mGainMatrix.end(), bind2nd(mem_fun_ref(&TTSampleMatrix::value_type::resize), mNumOutputs));
		mGainMatrix->setAttributeValue(TT("dimensions"), v);
	}
	return kTTErrNone;
}


TTErr TTMatrixMixer::setNumOutputs(const TTUInt16 newValue)
{
	TTUInt16	numOutputs = newValue;
	TTValue		v(mNumInputs, numOutputs);
	
	if (newValue != mNumOutputs) {
		mNumOutputs = newValue;
//		for_each(mGainMatrix.begin(), mGainMatrix.end(), bind2nd(mem_fun_ref(&TTSampleMatrix::value_type::resize), mNumOutputs));
		mGainMatrix->setAttributeValue(TT("dimensions"), v);
	}
	return kTTErrNone;
}


TTErr TTMatrixMixer::clear()
{
//	for (TTSampleMatrixIter column = mGainMatrix.begin(); column != mGainMatrix.end(); column++)
//		column->assign(mNumOutputs, 0.0);
	mGainMatrix->clear();
	return kTTErrNone;
}


TTErr TTMatrixMixer::setGain(TTValue& newValue)
{
	TTUInt16	x;
	TTUInt16	y;
	TTFloat64	gainValue;
	
	if (newValue.getSize() != 3)
		return kTTErrWrongNumValues;
	
	newValue.get(0, x);
	newValue.get(1, y);
	newValue.get(2, gainValue);
	checkMatrixSize(x,y);	
	newValue.clear();
//	mGainMatrix[x][y] = dbToLinear(gainValue);
	mGainMatrix->set2d(x, y, dbToLinear(gainValue));
	return kTTErrNone;
}


TTErr TTMatrixMixer::setLinearGain(TTValue& newValue)
{
	TTUInt16	x;
	TTUInt16	y;
	TTFloat64	gainValue;
	
	if (newValue.getSize() != 3)
		return kTTErrWrongNumValues;
	
	
	newValue.get(0, x);
	newValue.get(1, y);
	newValue.get(2, gainValue);
	checkMatrixSize(x,y);
	newValue.clear();
//	mGainMatrix[x][y] = gainValue;
	mGainMatrix->set2d(x, y, gainValue);
	return kTTErrNone;
}


TTErr TTMatrixMixer::setMidiGain(TTValue& newValue)
{
	TTUInt16	x;
	TTUInt16	y;
	TTFloat64	gainValue;
	
	if (newValue.getSize() != 3)
		return kTTErrWrongNumValues;
	
	newValue.get(0, x);
	newValue.get(1, y);
	newValue.get(2, gainValue);
	checkMatrixSize(x,y);	
	newValue.clear();
//	mGainMatrix[x][y] = midiToLinearGain(gainValue);
	mGainMatrix->set2d(x, y, midiToLinearGain(gainValue));
	return kTTErrNone;
}

TTErr TTMatrixMixer::checkMatrixSize(TTUInt16 x, TTUInt16 y)
//this function will resize mGainMatrix if necessary
{	
	if (x > (mNumInputs-1)){
		if (y > (mNumOutputs-1)) mNumOutputs = y+1;
		setNumInputs(x+1); 
	}
		else if (y > (mNumOutputs-1)) setNumOutputs(y+1);
		
	return kTTErrNone;
}

void TTMatrixMixer::processOne(TTAudioSignal& in, TTAudioSignal& out, TTFloat64 gain)
{
	TTUInt16			vs, channel;
	TTSampleValuePtr	inSample, outSample;
	TTUInt16			numchannels = TTAudioSignal::getMinChannelCount(in, out);
	
	for (channel=0; channel<numchannels; channel++) {
		inSample = in.mSampleVectors[channel];
		outSample = out.mSampleVectors[channel];
		vs = in.getVectorSizeAsInt();
		
		while (vs--)
			*outSample++ += (*inSample++) * gain;
	}
}


/*	We are trying to calculate audio output from multiple audio inputs.
	So for each audio output:
		1. Start with a zero signal
		2. Then += each input signal, multiplied by its gain
	
	We may need to speed up this operation by iterating through the signals using direct access of the structs.
*/
TTErr TTMatrixMixer::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{ //TODO: if mGainMatrix is sparse (i.e. it has a lot of zeros), we can do better than this algorithm which iterates through the entire matrix
	
	TTUInt16 minChannelIn = min(mNumInputs,inputs->numAudioSignals);
	TTFloat64 gain;
	
	for (TTUInt16 y=0; y < outputs->numAudioSignals; y++) {
		TTAudioSignal&	out = outputs->getSignal(y);
		out.clear(); //FIXME: do we have to do a clear() all the time ??
		if (y < (mNumOutputs)){
			for (TTUInt16 x=0; x < minChannelIn; x++) {
//				gain = mGainMatrix[x][y];
				mGainMatrix->get2d(x, y, gain);
				if (gain){ //if the gain value is zero, just pass processOne 
					TTAudioSignal&	in = inputs->getSignal(x);
					processOne(in, out, gain);
				}
			}
		}
	}
	return kTTErrNone;
}

