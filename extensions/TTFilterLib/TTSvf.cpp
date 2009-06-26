/* 
 * TTBlue State Variable Filter Object
 * Copyright © 2008, Tim Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTSvf.h"
#define thisTTClass TTSvf


TTSvf::TTSvf(TTValue& arguments)
	: TTAudioObject(TT("svf"), arguments),
	lowpass_output(NULL), highpass_output(NULL), bandpass_output(NULL), notch_output(NULL), peak_output(NULL)
{
	// register attributes
	registerAttributeWithSetter(frequency,	kTypeFloat64);
	addAttributeProperty(frequency,			range,			TTValue(2.0, 20000.0));
	addAttributeProperty(frequency,			rangeChecking,	TT("clip"));

	registerAttributeWithSetter(resonance,	kTypeFloat64);
	registerAttributeWithSetter(mode,		kTypeSymbol);

	// register methods
	registerMessageSimple(clear);
	registerMessageWithArgument(updateMaxNumChannels);
	registerMessageSimple(updateSr);

	// Set Defaults...
	setAttributeValue(TT("maxNumChannels"),	arguments);			// This attribute is inherited
	setAttributeValue(TT("mode"),			TT("lowpass"));
	setAttributeValue(TT("frequency"),		1000.0);
	setAttributeValue(TT("resonance"),		1.0);
}


TTSvf::~TTSvf()
{
	delete[] lowpass_output;
	delete[] highpass_output;
	delete[] bandpass_output;
	delete[] notch_output;
	delete[] peak_output;
}


TTErr TTSvf::updateMaxNumChannels(const TTValue& oldMaxNumChannels)
{
	delete[] lowpass_output;
	delete[] highpass_output;
	delete[] bandpass_output;
	delete[] notch_output;
	delete[] peak_output;

	lowpass_output = new TTFloat64[maxNumChannels];
	highpass_output = new TTFloat64[maxNumChannels];
	bandpass_output = new TTFloat64[maxNumChannels];
	notch_output = new TTFloat64[maxNumChannels];
	peak_output = new TTFloat64[maxNumChannels];

	clear();
	return kTTErrNone;
}


TTErr TTSvf::updateSr()
{
	TTValue	v(frequency);
	return setfrequency(v);
}


TTErr TTSvf::clear()
{
	memset(lowpass_output, 0, sizeof(TTFloat64) * maxNumChannels);
	memset(highpass_output, 0, sizeof(TTFloat64) * maxNumChannels);
	memset(bandpass_output, 0, sizeof(TTFloat64) * maxNumChannels);
	memset(notch_output, 0, sizeof(TTFloat64) * maxNumChannels);
	memset(peak_output, 0, sizeof(TTFloat64) * maxNumChannels);
	return kTTErrNone;
}


TTErr TTSvf::setmode(const TTValue& newValue)
{
	TTSymbolPtr newMode = newValue;
	
	if(newMode == TT("lowpass"))
		setProcessMethod(processLowpass);
	else if(newMode == TT("highpass"))
		setProcessMethod(processHighpass);
	else if(newMode == TT("bandpass"))
		setProcessMethod(processBandpass);
	else if(newMode == TT("notch"))
		setProcessMethod(processNotch);
	else if(newMode == TT("peak"))
		setProcessMethod(processPeak);
	else{
		logError("bad mode specified for TTSvf: %s", newMode->getCString());
		return kTTErrInvalidValue;
	}
	
	mode = newMode;
	return kTTErrNone;
}


TTErr TTSvf::setfrequency(const TTValue& newValue)
{	

	frequency = newValue;
	freq = 2.0 * sin(kTTPi * frequency / double(sr * 2)); 
	if(freq > 0.25)
		freq = 0.25;
	calculateCoefficients();
	return kTTErrNone;
}


TTErr TTSvf::setresonance(const TTValue& newValue)
{
	resonance = TTClip(TTFloat64(newValue), 0.001, 100.0);
	res = resonance * 0.1;
	calculateCoefficients();
	return kTTErrNone;
}


void TTSvf::calculateCoefficients()
{
	TTFloat64 temp1 = TTLimitMax(2.0 / freq - freq * 0.5, 2.0);
	TTFloat64 temp2 = 2.0 * (1.0 - pow(res, 0.25));
	
	if(temp1 < temp2)
		damp = temp1;
	else
		damp = temp2;
}


void TTSvf::tick(TTSampleValue value, TTUInt16 channel)
{
	// UNROLLED (oversampling) FOR LOOP FOR SPEED
	notch_output[channel]		= TTAntiDenormal(value - damp * bandpass_output[channel]);
	lowpass_output[channel]		+= TTAntiDenormal(freq * bandpass_output[channel]);
	highpass_output[channel]	= TTAntiDenormal(notch_output[channel] - lowpass_output[channel]);
	bandpass_output[channel]	= TTAntiDenormal(freq * highpass_output[channel] + bandpass_output[channel]);
	
	notch_output[channel]		= TTAntiDenormal(value - damp * bandpass_output[channel]);
	lowpass_output[channel]		+= TTAntiDenormal(freq * bandpass_output[channel]);
	highpass_output[channel]	= TTAntiDenormal(notch_output[channel] - lowpass_output[channel]);
	bandpass_output[channel]	= TTAntiDenormal(freq * highpass_output[channel] + bandpass_output[channel]);	
}


TTErr TTSvf::processLowpass(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TTAudioSignal&	in = inputs->getSignal(0);		// we only work with a single input
	TTAudioSignal&	out = outputs->getSignal(0);	// we only work with a single output
	TTUInt16		vs;
	TTSampleValue*	inSample;
	TTSampleValue*	outSample;
	TTUInt16		numchannels = TTAudioSignal::getMinChannelCount(in, out);
	TTUInt16		channel;
	
	// This outside loop works through each channel one at a time
	for(channel=0; channel<numchannels; channel++){
		inSample = in.sampleVectors[channel];
		outSample = out.sampleVectors[channel];
		vs = in.getVectorSize();
		
		// This inner loop works through each sample within the channel one at a time
		while(vs--){
			tick(*inSample++, channel);			
			*outSample++ = 0.5 * lowpass_output[channel];
		}
	}
	return kTTErrNone;
	
}


TTErr TTSvf::processHighpass(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TTAudioSignal&	in = inputs->getSignal(0);		// we only work with a single input
	TTAudioSignal&	out = outputs->getSignal(0);	// we only work with a single output
	TTUInt16		vs;
	TTSampleValue*	inSample;
	TTSampleValue*	outSample;
	TTUInt16		numchannels = TTAudioSignal::getMinChannelCount(in, out);
	TTUInt16		channel;
	
	// This outside loop works through each channel one at a time
	for(channel=0; channel<numchannels; channel++){
		inSample = in.sampleVectors[channel];
		outSample = out.sampleVectors[channel];
		vs = in.getVectorSize();
		
		// This inner loop works through each sample within the channel one at a time
		while(vs--){
			tick(*inSample++, channel);			
			*outSample++ = 0.5 * highpass_output[channel];
		}
	}
	return kTTErrNone;
	
}


TTErr TTSvf::processBandpass(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TTAudioSignal&	in = inputs->getSignal(0);		// we only work with a single input
	TTAudioSignal&	out = outputs->getSignal(0);	// we only work with a single output
	TTUInt16		vs;
	TTSampleValue*	inSample;
	TTSampleValue*	outSample;
	TTUInt16		numchannels = TTAudioSignal::getMinChannelCount(in, out);
	TTUInt16		channel;
	
	// This outside loop works through each channel one at a time
	for(channel=0; channel<numchannels; channel++){
		inSample = in.sampleVectors[channel];
		outSample = out.sampleVectors[channel];
		vs = in.getVectorSize();
		
		// This inner loop works through each sample within the channel one at a time
		while(vs--){
			tick(*inSample++, channel);			
			*outSample++ = 0.5 * bandpass_output[channel];
		}
	}
	return kTTErrNone;
	
}


TTErr TTSvf::processNotch(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TTAudioSignal&	in = inputs->getSignal(0);		// we only work with a single input
	TTAudioSignal&	out = outputs->getSignal(0);	// we only work with a single output
	TTUInt16		vs;
	TTSampleValue*	inSample;
	TTSampleValue*	outSample;
	TTUInt16		numchannels = TTAudioSignal::getMinChannelCount(in, out);
	TTUInt16		channel;
	
	// This outside loop works through each channel one at a time
	for(channel=0; channel<numchannels; channel++){
		inSample = in.sampleVectors[channel];
		outSample = out.sampleVectors[channel];
		vs = in.getVectorSize();
		
		// This inner loop works through each sample within the channel one at a time
		while(vs--){
			tick(*inSample++, channel);			
			*outSample++ = 0.5 * notch_output[channel];
		}
	}
	return kTTErrNone;
	
}


TTErr TTSvf::processPeak(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TTAudioSignal&	in = inputs->getSignal(0);		// we only work with a single input
	TTAudioSignal&	out = outputs->getSignal(0);	// we only work with a single output
	TTUInt16		vs;
	TTSampleValue*	inSample;
	TTSampleValue*	outSample;
	TTUInt16		numchannels = TTAudioSignal::getMinChannelCount(in, out);
	TTUInt16		channel;
	
	// This outside loop works through each channel one at a time
	for(channel=0; channel<numchannels; channel++){
		inSample = in.sampleVectors[channel];
		outSample = out.sampleVectors[channel];
		vs = in.getVectorSize();
		
		// This inner loop works through each sample within the channel one at a time
		while(vs--){
			tick(*inSample++, channel);			
			*outSample++ = 0.5 * (lowpass_output[channel] - highpass_output[channel]);
		}
	}
	return kTTErrNone;
	
}


