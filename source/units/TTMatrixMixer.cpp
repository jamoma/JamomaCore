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


TT_AUDIO_CONSTRUCTOR
, numInputs(2), numOutputs(2), gainMatrix(NULL)
{
	registerAttributeWithSetter(numInputs, kTypeUInt16);
	registerAttributeWithSetter(numOutputs, kTypeUInt16);
	
	registerMessageWithArgument(setGain);
	registerMessageWithArgument(setLinearGain);
	registerMessageWithArgument(setMidiGain);
	//registerMessageWithArgument(updateMaxNumChannels);
	registerMessageSimple(clear);	

	//setAttributeValue(kTTSym_maxNumChannels, newMaxNumChannels);
	//setAttributeValue(kTTSym_maxNumChannels, newMaxNumChannels);
	allocGainMatrix();
	setProcessMethod(processAudio);
}


TTMatrixMixer::~TTMatrixMixer()
{
	freeGainMatrix();
}


TTErr TTMatrixMixer::allocGainMatrix()
{
	gainMatrix = new TTFloat64*[numOutputs];
	for(TTUInt16 x=0; x<numInputs; x++)
		gainMatrix[x] = new TTFloat64[numOutputs];
	clear();
	return kTTErrNone;
}


TTErr TTMatrixMixer::freeGainMatrix()
{
	if(gainMatrix){
		for(TTUInt16 x=0; x<numOutputs; x++)
			delete [] gainMatrix[x];
		delete [] gainMatrix;
		gainMatrix = NULL;
	}
	return kTTErrNone;
}


TTErr TTMatrixMixer::setnumInputs(const TTValue& newValue)
{
	freeGainMatrix();
	numInputs = newValue;
	return allocGainMatrix();
}


TTErr TTMatrixMixer::setnumOutputs(const TTValue& newValue)
{
	freeGainMatrix();
	numOutputs = newValue;
	return allocGainMatrix();
}




TTErr TTMatrixMixer::clear()
{
	for(TTUInt16 x=0; x<numInputs; x++){
		for(TTUInt16 y=0; y<numOutputs; y++)
			gainMatrix[x][y] = 0.0;
	}
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
	gainMatrix[x][y] = dbToLinear(gainValue);
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
	gainMatrix[x][y] = gainValue;
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
	gainMatrix[x][y] = midiToLinearGain(gainValue);
	return kTTErrNone;
}


void TTMatrixMixer::processOne(TTAudioSignal& in, TTAudioSignal& out, TTFloat64 gain)
{
	TTUInt16		vs;
	TTSampleValue*	inSample;
	TTSampleValue*	outSample;
	TTUInt16		numchannels = TTAudioSignal::getMinChannelCount(in, out);
	TTUInt16		channel;
	
	for(channel=0; channel<numchannels; channel++){
		inSample = in.sampleVectors[channel];
		outSample = out.sampleVectors[channel];
		vs = in.getVectorSize();
		
		while(vs--)
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
//	for(TTUInt16 y=0; y < outputs->numAudioSignals; y++){
	for(TTUInt16 y=0; y < numOutputs; y++){
		TTAudioSignal&	out = outputs->getSignal(y);
		
		out.clear();
//		for(TTUInt16 x=0; x < inputs->numAudioSignals; x++){
		for(TTUInt16 x=0; x < numInputs; x++){
			TTAudioSignal&	in = inputs->getSignal(x);
			
			processOne(in, out, gainMatrix[x][y]);
		}
	}
	return kTTErrNone;
}

