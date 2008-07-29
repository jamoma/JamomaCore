/* 
 * TTBlue Allpass Filter Object
 * Copyright © 2003, Tim Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */
#include "TTAllpass.h"
#define thisTTClass TTAllpass

TTAllpass::TTAllpass(TTUInt16 newMaxNumChannels)
: TTAudioObject("allpass", newMaxNumChannels)
{;}

TTAllpass::~TTAllpass()
{;}


/*
TTAllpass::TTAllpass(TTUInt16 newMaxNumChannels)
	: TTAudioObject("filter.allpass", newMaxNumChannels),
	delayMax(0), delayInSamples(0), delayInSamplesMax(0),
	feedforward(NULL), feedback(NULL),
	ffEndPtr(NULL),	fbEndPtr(NULL),	
	ffInPtr(NULL), fbInPtr(NULL),
	ffOutPtr(NULL), fbOutPtr(NULL)
{
	// register attributes
	registerAttributeWithSetter(delay,		kTypeFloat64);
	registerAttributeWithSetter(gain,		kTypeFloat64);
	registerAttributeWithSetter(linearGain,	kTypeFloat64);

	// register methods
	registerMessageSimple(clear);

	// register for notifications
	registerMessageWithArgument(updateMaxNumChannels);
	registerMessageSimple(updateSr);

	// Set Defaults...
	setAttributeValue(TT("maxNumChannels"),	newMaxNumChannels);			// This attribute is inherited
	setAttributeValue(TT("linearGain"),	1.0);
	setAttributeValue(TT("delay"),		0.0);
	setProcessMethod(processAudio);
	
//	 init(milliseconds);
//	 set_attr(k_delay_ms, 0.0);
//	 set_attr(k_gain, 0.0);	 
}


TTAllpass::~TTAllpass()
{
	chuck(maxNumChannels);
}


void TTAllpass::init()
{
	delayMax = milliseconds;
	delayInSamplesMax = long(delayMax * (sr / 1000.0));

	feedforward = new TTSampleVector[maxNumChannels];
	feedback = new TTSampleVector[maxNumChannels];
	
	for(TTUInt16 channel=0; channel<maxNumChannels; channel++){
		feedforward[channel] = new TTSampleValue[delayInSamplesMax];
		feedback[channel] = new TTSampleValue[delayInSamplesMax];
	}

	ffEndPtr = new TTSampleVector[maxNumChannels];
	fbEndPtr = new TTSampleVector[maxNumChannels];
	ffInPtr = new TTSampleVector[maxNumChannels];
	fbInPtr = new TTSampleVector[maxNumChannels];
	ffOutPtr = new TTSampleVector[maxNumChannels];
	fbOutPtr = new TTSampleVector[maxNumChannels];
	
	
	clear();
}


void TTAllpass::chuck(TTUInt16 numChannels)
{
	for(TTUInt16 channel=0; channel<numChannels; channel++){
		delete[] feedforward[channel];
		delete[] feedback[channel];
	}
	delete[] feedforward;
	delete[] feedback;
	
	delete[] ffEndPtr;
	delete[] fbEndPtr;
	delete[] ffInPtr;
	delete[] fbInPtr;
	delete[] ffOutPtr;
	delete[] fbOutPtr;
}


TTErr TTAllpass::updateMaxNumChannels(const TTValue& oldMaxNumChannels)
{
	chuck(oldMaxNumChannels);
	init();

	clear();
	return kTTErrNone;
}


TTErr TTAllpass::updateSr()
{
	init(delayMax);					// re-alloc memory
	return setAttributeValue(TT("delay"), delay);
}


TTErr TTAllpass::clear()
{
	for(TTUInt16 channel=0; channel<maxNumChannels; channel++){
		memset(feedforward[channel], 0, sizeof(TTSampleValue) * delayInSamplesMax);
		memset(feedback[channel],    0, sizeof(TTSampleValue) * delayInSamplesMax);
	}
	
	ffInPtr = feedforward;
	ffEndPtr = feedforward + delayInSamples;
	ffOutPtr = ffInPtr - delayInSamples;
	if(ffOutPtr < feedforward)
		ffOutPtr = ffEndPtr + (ffOutPtr - feedforward) + 1;
	
	fbInPtr = feedback;
	fbEndPtr = feedback + delayInSamples;
	fbOutPtr = fbInPtr - delayInSamples;
	if(fbOutPtr < feedback)
		fbOutPtr = fbEndPtr + (fbOutPtr - feedback) + 1;

	return kTTErrNone;
}


TTErr TTAllpass::setgain(const TTValue& newValue)
{	
	gain = newValue;
	linearGain = dbToLinear(gain);
	return kTTErrNone;
}


TTErr TTAllpass::setlinearGain(const TTValue& newValue)
{	
	linearGain = newValue;
	gain = linearToDb(linearGain);
	return kTTErrNone;
}


TTErr TTAllpass::setdelay(const TTValue& newValue)
{
	delay = TTClip<TTFloat64>(newValue, 0.0, delayMax);
	delayInSamples = long(delay * (sr / 1000.0));
	for(TTUInt16 channel=0; channel<maxNumChannels; channel++){
		ffEndPtr[channel] = feedforward[channel] + delayInSamples;
		fbEndPtr[channel] = feedback[channel] + delayInSamples;	
	}
	return kTTErrNone;
}


TTErr TTAllpass::processAudio(TTAudioSignal& in, TTAudioSignal& out)
{
	TTUInt16		vs;
	TTSampleValue*	inSample;
	TTSampleValue*	outSample;
	TTSampleValue	tempSample;
	TTUInt16		numchannels = TTAudioSignal::getMinChannelCount(in, out);
	TTUInt16		channel;

	// This outside loop works through each channel one at a time
	for(channel=0; channel<numchannels; channel++){
		inSample = in.sampleVectors[channel];
		outSample = out.sampleVectors[channel];
		vs = in.getVectorSize();
		
		// This inner loop works through each sample within the channel one at a time
		while(vs--){
			tempSample = *inSample++;
			tempSample = antiDenormal((feedback1[channel] * coefficientA) - (feedback2[channel] * coefficientB) + (tempSample * coefficientC));
			*outSample++ = tempSample;
			feedback2[channel] = feedback1[channel];
			feedback1[channel] = tempSample;
		}
	}
	return kTTErrNone;
}


// DSP LOOP
TT_INLINE void tt_allpass::dsp_vector_calc(tt_audio_signal *in, tt_audio_signal *out)
{
	tt_sample_value temp;
	temp_vs = in->vectorsize;
	
	while(temp_vs--){
		temp = anti_denormal(*in->vector++);	// Input	
		*ff_in_ptr = temp;		// Store the input in the feedforward buffer
		
		// Apply the filter
		temp = anti_denormal((*ff_out_ptr) + (temp * (-gain)) + (*fb_out_ptr * gain));	
		
		*fb_in_ptr = temp;		// Store the output in the feedback buffer
		*out->vector++ = temp;	// Output
		
		// Move the heads
		ff_in_ptr++;
		ff_out_ptr++;
		fb_in_ptr++;
		fb_out_ptr++;
		
		// Wrap the heads
		if(ff_in_ptr > ff_end_ptr)
			ff_in_ptr = ff_buffer;
		if(ff_out_ptr > ff_end_ptr)
			ff_out_ptr = ff_buffer;	
		if(fb_in_ptr > fb_end_ptr)
			fb_in_ptr = fb_buffer;
		if(fb_out_ptr > fb_end_ptr)
			fb_out_ptr = fb_buffer;	
	}
	in->reset(); out->reset();
}
*/
