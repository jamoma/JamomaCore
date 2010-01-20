/* 
 * TTMatrixMixer Object
 * Copyright © 2009, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTMatrixMixer.h"

#define thisTTClass			TTMatrixMixer
#define thisTTClassName		"matrixmixer"
#define thisTTClassTags		"audio, mixing, matrix"


TT_AUDIO_CONSTRUCTOR,
	mNumInputs(0),
	mNumOutputs(0)
{
	addAttribute(NumInputs, kTypeUInt16);	// TODO: set readonly property for this attribute
	addAttribute(NumOutputs, kTypeUInt16);	// TODO: set readonly property for this attribute
	
	addMessageWithArgument(setGain);
	addMessageWithArgument(setLinearGain);
	addMessageWithArgument(setMidiGain);
	//registerMessageWithArgument(updateMaxNumChannels);
	addMessage(clear);	

	//setAttributeValue(kTTSym_maxNumChannels, newMaxNumChannels);
	setProcessMethod(processAudio);
}


TTMatrixMixer::~TTMatrixMixer()
{
	;
}


// conceptually:
//	columns == inputs
//	rows == outputs


TTErr TTMatrixMixer::setNumInputs(const TTUInt16 newValue)
{
	if (newValue != mNumInputs) {
		mNumInputs = newValue;
		mGainMatrix.resize(mNumInputs);
		for_each(mGainMatrix.begin(), mGainMatrix.end(), bind2nd(mem_fun_ref(&TTSampleMatrix::value_type::resize), mNumOutputs));
	}
	return kTTErrNone;
}


TTErr TTMatrixMixer::setNumOutputs(const TTUInt16 newValue)
{
	if (newValue != mNumOutputs) {
		mNumOutputs = newValue;
		for_each(mGainMatrix.begin(), mGainMatrix.end(), bind2nd(mem_fun_ref(&TTSampleMatrix::value_type::resize), mNumOutputs));
	}
	return kTTErrNone;
}


TTErr TTMatrixMixer::clear()
{
	for (TTSampleMatrixIter column = mGainMatrix.begin(); column != mGainMatrix.end(); column++)
		column->assign(mNumOutputs, 0.0);
	return kTTErrNone;
}


TTErr TTMatrixMixer::setGain(const TTValue& newValue)
{
	TTUInt16	x;
	TTUInt16	y;
	TTFloat64	gainValue;
	
	if (newValue.getSize() != 3)
		return kTTErrWrongNumValues;
	
	newValue.get(0, x);
	newValue.get(1, y);
	newValue.get(2, gainValue);
	mGainMatrix[x][y] = dbToLinear(gainValue);
	return kTTErrNone;
}


TTErr TTMatrixMixer::setLinearGain(const TTValue& newValue)
{
	TTUInt16	x;
	TTUInt16	y;
	TTFloat64	gainValue;
	
	if (newValue.getSize() != 3)
		return kTTErrWrongNumValues;
	
	newValue.get(0, x);
	newValue.get(1, y);
	newValue.get(2, gainValue);
	mGainMatrix[x][y] = gainValue;
	return kTTErrNone;
}


TTErr TTMatrixMixer::setMidiGain(const TTValue& newValue)
{
	TTUInt16	x;
	TTUInt16	y;
	TTFloat64	gainValue;
	
	if (newValue.getSize() != 3)
		return kTTErrWrongNumValues;
	
	newValue.get(0, x);
	newValue.get(1, y);
	newValue.get(2, gainValue);
	mGainMatrix[x][y] = midiToLinearGain(gainValue);
	return kTTErrNone;
}


void TTMatrixMixer::processOne(TTAudioSignal& in, TTAudioSignal& out, TTFloat64 gain)
{
	TTUInt16		vs;
	TTSampleValue*	inSample;
	TTSampleValue*	outSample;
	TTUInt16		numchannels = TTAudioSignal::getMinChannelCount(in, out);
	TTUInt16		channel;
	
	for (channel=0; channel<numchannels; channel++) {
		inSample = in.sampleVectors[channel];
		outSample = out.sampleVectors[channel];
		vs = in.getVectorSize();
		
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
{
	setNumInputs(inputs->numAudioSignals);
	setNumOutputs(outputs->numAudioSignals);
	
	for (TTUInt16 y=0; y < mNumOutputs; y++) {
		TTAudioSignal&	out = outputs->getSignal(y);
		
		out.clear();
		for (TTUInt16 x=0; x < mNumInputs; x++) {
			TTAudioSignal&	in = inputs->getSignal(x);
			
			processOne(in, out, mGainMatrix[x][y]);
		}
	}
	return kTTErrNone;
}

