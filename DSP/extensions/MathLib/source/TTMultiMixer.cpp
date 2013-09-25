/* 
 * DSP Multi-Signal Mixer Object
 * Copyright © 2009, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTMultiMixer.h"
#ifdef TT_PLATFORM_WIN
#include <algorithm>
#endif

#define thisTTClass			TTMultiMixer
#define thisTTClassName		"multimixer"
#define thisTTClassTags		"audio, mixer, matrix"


TT_AUDIO_CONSTRUCTOR,
	mNumInputs(1),
	mNumOutputs(1),
	mGainMatrix(NULL),
	tempGainMatrix(NULL)
{
	TTObjectBaseInstantiate(kTTSym_matrix, (TTObjectBasePtr*)&mGainMatrix, 0);
	TTObjectBaseInstantiate(kTTSym_matrix, (TTObjectBasePtr*)&tempGainMatrix, 0);

	addAttribute(NumInputs, kTypeUInt16);	
	addAttributeProperty(NumInputs,	readOnly, TTValue(YES));
	addAttribute(NumOutputs, kTypeUInt16);	
	addAttributeProperty(NumOutputs, readOnly, TTValue(YES));
	
	addMessageWithArguments(setGain);
	addMessageWithArguments(setLinearGain);
	addMessageWithArguments(setMidiGain);
	//registerMessageWithArgument(updateMaxNumChannels);
	addMessage(clear);

	//setAttributeValue(TT("MaxNumChannels"), newMaxNumChannels);
	setProcessMethod(processAudio);
	mGainMatrix->setAttributeValue(TT("type"), TT("float64"));
	tempGainMatrix->setAttributeValue(TT("type"), TT("float64"));
	TTValue		v(1, 1); // we need to make the mGainMatrix at least 1x1 otherwise we have problems with adapting to tempGainMatrix
	mGainMatrix->setAttributeValue(TT("dimensions"), v);
	tempGainMatrix->setAttributeValue(TT("dimensions"), v);
	clear();
}


TTMultiMixer::~TTMultiMixer()
{
	TTObjectBaseRelease((TTObjectBasePtr*)&mGainMatrix);
	TTObjectBaseRelease((TTObjectBasePtr*)&tempGainMatrix);
}


// conceptually:
//	columns == inputs
//	rows == outputs


// TODO: the next two methods should never decrease their size

TTErr TTMultiMixer::setNumInputs(const TTUInt16 newValue)
{
	TTUInt16	numInputs = newValue;
	TTValue		v(numInputs, mNumOutputs);
	
	if (newValue != mNumInputs) {
		tempGainMatrix->adaptTo(mGainMatrix); //1. copy mGainMtrix to tempGainMatrix;
		TTMatrix::copy(*mGainMatrix, *tempGainMatrix);
		mNumInputs = numInputs;
		mGainMatrix->setAttributeValue(TT("dimensions"), v);	
		clear();						//2. clear mGainMatrix
		restoreMatrix();				//3. element-wise copy tempGainMatrix content over to mGainMatrix
	}
	return kTTErrNone;
}
	

TTErr TTMultiMixer::setNumOutputs(const TTUInt16 newValue)
{
	TTUInt16	numOutputs = newValue;
	TTValue		v(mNumInputs, numOutputs);
	
	if (newValue != mNumOutputs) {
		tempGainMatrix->adaptTo(mGainMatrix); //1. copy mGainMtrix to tempGainMatrix;
		TTMatrix::copy(*mGainMatrix, *tempGainMatrix);
		mNumOutputs = newValue;
		mGainMatrix->setAttributeValue(TT("dimensions"), v);	
		clear();						//2. clear mGainMatrix
		restoreMatrix();				//3. element-wise copy tempGainMatrix content over to mGainMatrix

	}
	return kTTErrNone;
}

TTErr TTMultiMixer::restoreMatrix()
{
	
	TTValue		v;						
	TTFloat64	tempValue; 	
	TTUInt16	xx, yy;
	tempGainMatrix->getDimensions(v);
	v.get(0,xx);
	v.get(1,yy);
	TTLimit(xx,(TTUInt16) 1, mNumInputs); // in case xx or yy is greater than the current mGainMatrix ...
	TTLimit(yy,(TTUInt16) 1, mNumOutputs);
	for (TTUInt16 y=0; y < yy; y++) {
		for (TTUInt16 x=0; x < xx; x++) {
			tempGainMatrix->get2d(x, y, tempValue);
			mGainMatrix->set2d(x, y, tempValue);
		}
	}
	return kTTErrNone;
}


TTErr TTMultiMixer::clear()
{
	mGainMatrix->clear();
	return kTTErrNone;
}


TTErr TTMultiMixer::setGain(const TTValue& newValue, TTValue&)
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

	mGainMatrix->set2d(x, y, TTDecibelsToLinearGain(gainValue)); 
	return kTTErrNone;
}


TTErr TTMultiMixer::setLinearGain(const TTValue& newValue, TTValue&)
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

	mGainMatrix->set2d(x, y, gainValue); 
	return kTTErrNone;
}


TTErr TTMultiMixer::setMidiGain(const TTValue& newValue, TTValue&e)
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

	mGainMatrix->set2d(x, y, TTMidiToLinearGain(gainValue));
	return kTTErrNone;
}

TTErr TTMultiMixer::checkMatrixSize(TTUInt16 x, TTUInt16 y)
//this function will resize mGainMatrix if necessary while preserving its content 
{	
	if (x > (mNumInputs-1)){
		if (y > (mNumOutputs-1)) 
			mNumOutputs = y+1;
		setNumInputs(x+1); 
	}
	else{ 
		if (y > (mNumOutputs-1)) 
			setNumOutputs(y+1);
	}
	return kTTErrNone;
}

void TTMultiMixer::processOne(TTAudioSignal& in, TTAudioSignal& out, TTFloat64 gain)
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
TTErr TTMultiMixer::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{ //TODO: if mGainMatrix is sparse (i.e. it has a lot of zeros), we can do better than this algorithm which iterates through the entire matrix
#ifdef TT_PLATFORM_WIN
	TTUInt16 minChannelIn = min(mNumInputs,inputs->numAudioSignals);
#else
	TTUInt16 minChannelIn = std::min(mNumInputs,inputs->numAudioSignals);
#endif
	TTFloat64 gain;
	
	for (TTUInt16 y=0; y < outputs->numAudioSignals; y++) {
		TTAudioSignal&	out = outputs->getSignal(y);
		out.clear(); // zeroing output memory
		if (y < (mNumOutputs)){
			for (TTUInt16 x=0; x < minChannelIn; x++) {
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

