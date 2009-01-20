/* 
 * TTMatrixMixer Object
 * Copyright © 2009, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTMatrixMixer.h"
#define thisTTClass TTMatrixMixer


TTMatrixMixer::TTMatrixMixer(TTUInt16 newMaxNumChannels)
	: TTAudioObject("matrixmixer", newMaxNumChannels), 
	  gainMatrix(NULL)
{
	registerMessageWithArgument(setGain);
	registerMessageWithArgument(setLinearGain);
	registerMessageWithArgument(setMidiGain);
	registerMessageWithArgument(updateMaxNumChannels);
	registerMessageSimple(clear);	

	setAttributeValue(kTTSym_maxNumChannels, newMaxNumChannels);
	setProcessMethod(processAudio);
}


TTMatrixMixer::~TTMatrixMixer()
{
	if(gainMatrix){
		for(TTUInt16 i=0; i<maxNumChannels; i++)
			delete [] gainMatrix[i];
		delete [] gainMatrix;
		gainMatrix = NULL;
	}
}


TTErr TTMatrixMixer::updateMaxNumChannels(const TTValue& oldMaxNumChannels)
{
	TTUInt16 old = oldMaxNumChannels;
	
	if(gainMatrix){
		for(TTUInt16 i=0; i<old; i++)
			delete [] gainMatrix[i];
		delete [] gainMatrix;
		gainMatrix = NULL;
	}

	gainMatrix = new TTFloat64*[maxNumChannels];
	for(TTUInt16 i=0; i<maxNumChannels; i++)
		gainMatrix[i] = new TTFloat64[maxNumChannels];

	clear();
	return kTTErrNone;
}


TTErr TTMatrixMixer::clear()
{
	for(TTUInt16 x=0; x<maxNumChannels; x++){
		for(TTUInt16 y=0; y<maxNumChannels; y++)
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
	for(TTUInt16 y=0; y < outputs->numAudioSignals; y++){
		TTAudioSignal&	out = outputs->getSignal(y);
		
		out.clear();
		for(TTUInt16 x=0; x < inputs->numAudioSignals; x++){
			TTAudioSignal&	in = inputs->getSignal(x);
			
			processOne(in, out, gainMatrix[x][y]);
		}
	}
	return kTTErrNone;
}

