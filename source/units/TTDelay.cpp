/*
 * TTBlue Delay Unit
 * Copyright © 2003, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTDelay.h"
#define thisTTClass TTDelay


TTDelay::TTDelay(TTUInt16 newMaxNumChannels)
	: TTAudioObject("filter.dcblock", newMaxNumChannels),
	  buffer(NULL), inPtr(NULL), outPtr(NULL), endPtr(NULL)
{
	// declare attributes
	registerAttributeWithSetter(delay,				kTypeFloat64);
	registerAttributeWithSetter(delayInSamples,		kTypeInt64);
	registerAttributeWithSetter(delayMax,			kTypeFloat64);
	registerAttributeWithSetter(delayMaxInSamples,	kTypeInt64);
	registerAttributeWithSetter(interpolation,		kTypeSymbol);

	// declare messages
	registerMessageSimple(clear);
	
	// notifications from the parent class
	registerMessageSimple(updateSr);
	registerMessageWithArgument(updateMaxNumChannels);

	// Set Defaults...
	setAttributeValue(TT("maxNumChannels"),	newMaxNumChannels);
	setAttributeValue(TT("delayMaxInSamples"), 256);
	setAttributeValue(TT("delayInSamples"), 100);
	setAttributeValue(TT("interpolation"), TT("none"));		// TODO: change this to cubic (or at least to linear), this sets the process method
}


TTDelay::~TTDelay()
{
	if(buffer){
		for(TTUInt16 channel=0; channel<maxNumChannels; channel++)
			delete [] buffer[channel];
		delete [] buffer;
	}
	delete [] inPtr;
	delete [] outPtr;
	delete [] endPtr;
}


// This is called every time that:
//		the sr changes
//		the maxNumChannels changes
//		the maxNumSamples change
TTErr TTDelay::init(TTUInt64 newDelayMaxInSamples)
{
	TTUInt16 channel;

	if(newDelayMaxInSamples){
		delayMaxInSamples = newDelayMaxInSamples;
		delayMax = delayMaxInSamples / srMill;
		
		if(buffer){
			for(channel=0; channel<maxNumChannels; channel++)
				delete [] buffer[channel];
			delete [] buffer;
		}
		delete [] inPtr;
		delete [] outPtr;
		delete [] endPtr;
		
		buffer = new TTSampleVector[maxNumChannels];
		for(channel=0; channel<maxNumChannels; channel++)
			buffer[channel] = new TTSampleValue[delayMaxInSamples];

		inPtr = new TTSampleVector[maxNumChannels];
		outPtr = new TTSampleVector[maxNumChannels];
		endPtr = new TTSampleVector[maxNumChannels];
		
		for(channel=0; channel<maxNumChannels; channel++){
			inPtr[channel] = buffer[channel];
		}

		reset();
	}
	return kTTErrNone;
}


TTErr TTDelay::updateMaxNumChannels(const TTValue& oldMaxNumChannels)
{
	TTUInt16	numChans = oldMaxNumChannels;
	TTUInt16	channel;
	
	if(buffer){
		for(channel=0; channel<numChans; channel++)
			delete [] buffer[channel];
		delete [] buffer;
		buffer = NULL;
	}

	delete [] inPtr;
	delete [] outPtr;
	delete [] endPtr;
	inPtr = NULL;
	outPtr = NULL;
	endPtr = NULL;
	
	return init(delayMaxInSamples);
}


TTErr TTDelay::updateSr()
{
	init(long(srMill * delay));		// allocate a larger delay buffer if neccessary	
	return setdelay(delay);			// hold the delay time in ms constant, despite the change of sr
}


TTErr TTDelay::clear()
{
	TTUInt16		channel;
	TTSampleValue*	i;
	TTUInt32		j;

	for(channel=0; channel<maxNumChannels; channel++){	
		for(i = buffer[channel], j=0; i< endPtr[channel]; i++, j++)
			buffer[channel][j] = 0.0;
	}
	return kTTErrNone;
}


// TODO: Do we really want this function called every time the delay is changed?  Won't it make a terrible sound?
// Reset the pointers
void TTDelay::reset()
{
	for(TTUInt16 channel=0; channel<maxNumChannels; channel++){
		endPtr[channel] = buffer[channel] + delayInSamples;
		outPtr[channel] = inPtr[channel] - delayInSamples;
		if(outPtr[channel] < buffer[channel])
			outPtr[channel] = endPtr[channel] + (outPtr[channel] - buffer[channel]) + 1;
		else if(outPtr[channel] > endPtr[channel])
			outPtr[channel] = buffer[channel] + (outPtr[channel] - endPtr[channel]);
	}
	clear();
}


TTErr TTDelay::setdelay(const TTValue& newValue)
{
	delay = TTClip<TTFloat64>(newValue, 0.0, delayMax);
	delayInSamples = delay * srMill;

// FIXME: NOT YET WORKING	
//	fractionalDelaySamples = attrDelay * srMill;
//	attrDelayInSamples = fractionalDelaySamples;				// (truncation is intentional)
//	fractionalDelay = fractionalDelaySamples - delaySamples;

	reset();
	return kTTErrNone;
}


TTErr TTDelay::setdelayInSamples(const TTValue& newValue)
{
	delayInSamples = TTClip<TTUInt64>(newValue, 0, delayMaxInSamples);
	delay = delayInSamples * 1000.0 * srInv;
	// FIXME: NOT YET WORKING	
	//	fractionalDelaySamples = attrDelayInSamples;
	fractionalDelay = 0;
	
	reset();
	return kTTErrNone;
}


TTErr TTDelay::setdelayMax(const TTValue& newValue)
{
	delayMax = newValue;
	delayMaxInSamples = delayMax * srMill;
	init(delayMaxInSamples);
	return kTTErrNone;
}


TTErr TTDelay::setdelayMaxInSamples(const TTValue& newValue)
{
	delayMaxInSamples = newValue;
	delayMax = delayMaxInSamples * 1000.0 * srInv;
	init(delayMaxInSamples);
	return kTTErrNone;
}


// TODO: Update these when the new interpolation routines are written
TTErr TTDelay::setinterpolation(const TTValue& newValue)
{
	interpolation = newValue;
	
	if(interpolation == TT("none")){
		setProcess((TTProcessMethod)&TTDelay::processAudioNoInterpolation);
	}
	else if(interpolation == TT("linear")){
		setProcess((TTProcessMethod)&TTDelay::processAudioNoInterpolation);
	}
	else if(interpolation == TT("cubic")){
		setProcess((TTProcessMethod)&TTDelay::processAudioNoInterpolation);
	}
	else{
		setProcess((TTProcessMethod)&TTDelay::processAudioNoInterpolation);
		return kTTErrInvalidValue;
	}
	return kTTErrNone;
}


#if 0
#pragma mark -
#pragma mark dsp routines
#endif


TTErr TTDelay::processAudioNoInterpolation(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TTAudioSignal&	in = inputs->getSignal(0);
	TTAudioSignal&	out = outputs->getSignal(0);
	TTUInt16		vs;
	TTUInt16		numchannels = TTAudioSignal::getMinChannelCount(in, out);
	TTUInt16		channel;
	TTSampleValue*	inSample;
	TTSampleValue*	outSample;
	
	for(channel=0; channel<numchannels; channel++){
		inSample = in.sampleVectors[channel];
		outSample = out.sampleVectors[channel];
		vs = in.getVectorSize();
		
		while(vs--){			
			*inPtr[channel]++ = *inSample++;		// write the input into our buffer
			*outSample++ = *outPtr[channel]++;		// fetch the output from our buffer
			
			if(inPtr[channel] > endPtr[channel])			// wrap the pointers in the buffer, if needed
				inPtr[channel] = buffer[channel];
			if(outPtr[channel] > endPtr[channel])
				outPtr[channel] = buffer[channel];				
		}
	}
	return kTTErrNone;
}


TTErr TTDelay::processAudioLinearInterpolation(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
//	TTAudioSignal&	in = inputs->getSignal(0);
//	TTAudioSignal&	out = outputs->getSignal(0);
	/*
	 float temp;
	 tt_sample_value *next;
	 
	 temp_vs = in->vectorsize;
	 while(temp_vs--){
	 *in_ptr = *in->vector++;		// Store Input
	 
	 // MOVE THE RECORD HEAD
	 in_ptr++;
	 if(in_ptr > end_ptr)
	 in_ptr = buffer;
	 
	 // MOVE THE PLAY HEAD
	 out_ptr++;				
	 if(out_ptr > end_ptr)	
	 out_ptr = buffer;
	 
	 // STORE THE VALUE OF THE NEXT SAMPLE IN THE BUFFER FOR INTERPOLATION
	 next = out_ptr + 1;
	 if(next > end_ptr)
	 next = buffer + (next - end_ptr);
	 else if(next < buffer)
	 next = end_ptr + (next - buffer) + 1;
	 temp = *next;
	 
	 
	 // Interpolate between the play head value (from above) and the next play head value
	 *out->vector++ = (temp * (1.0 - fractional_delay)) + (*out_ptr * fractional_delay);
	 }
	 in->reset(); out->reset();
	 */
	return kTTErrNone;
}


TTErr TTDelay::processAudioCubicInterpolation(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
//	TTAudioSignal&	in = inputs->getSignal(0);
//	TTAudioSignal&	out = outputs->getSignal(0);
	// see http://crca.ucsd.edu/~msp/techniques/latest/book-html/node114.html
	// see http://crca.ucsd.edu/~msp/techniques/latest/book-html/node31.html#tab02.1
	
	return kTTErrNone;
}



// Process with a delay time set by a signal
//TTErr TTDelay::processAudioNoInterpolationWithDelaySignal(TTAudioSignal& in, TTAudioSignal& delayIn, TTAudioSignal& out, TTAudioSignal&)
//{
	/*	temp_vs = in->vectorsize;
	 
	 // CALCULATE THE DELAY TIME
	 delay_ms = *in2->vector;		// Because this is the Lo-Fi loop, just do this at the vector...
	 fdelay_samples = delay_ms * m_sr;
	 delay_samples = (tt_attribute_value_discrete)fdelay_samples;
	 fractional_delay = fdelay_samples - delay_samples;
	 
	 while(temp_vs--){
	 *in_ptr++ = *in->vector++;		// Store Input
	 *out->vector++ = *out_ptr++;	// Find Output
	 
	 if(in_ptr > end_ptr)	// Buffer Managment...
	 in_ptr = buffer;
	 if(out_ptr > end_ptr)
	 out_ptr = buffer;	
	 }
	 in->reset(); in2->reset(); out->reset();
	 */
//	return kTTErrNone;
//}


//TTErr TTDelay::processAudioLinearInterpolationWithDelaySignal(TTAudioSignal& in, TTAudioSignal& delayIn, TTAudioSignal& out, TTAudioSignal&)
//{
/*
 tt_sample_value	temp;
 tt_sample_value	*next;
 
 if(buffer == NULL)
 return;
 
 temp_vs = in1->vectorsize;
 while(temp_vs--){
 *in_ptr = *in1->vector++;		// Store the audio input @ the record head
 delay_ms = *in2->vector++;		// Store the delay time input
 //		delay_ms = clip(*in2->vector++, 0.f, delay_ms_max);		// Store the delay time input
 
 // CALCULATE THE DELAY TIME
 // delay_samples = clip(long(delay_ms * m_sr), long(0), delay_samples_max);
 //		delay_samples = delay_ms * m_sr;
 fdelay_samples = delay_ms * m_sr;
 delay_samples = (tt_attribute_value_discrete)fdelay_samples;
 fractional_delay = fdelay_samples - delay_samples;
 
 //		end_ptr = buffer + delay_samples;					// set pointer to the end of the buffer
 
 // MOVE THE RECORD HEAD
 in_ptr++;
 if(in_ptr > end_ptr)
 in_ptr = buffer;
 //		*in_ptr = *in1->vector++;		// Store the audio input @ the record head
 
 // MOVE THE PLAY HEAD
 out_ptr = in_ptr - delay_samples;
 if(out_ptr > end_ptr)
 out_ptr = buffer + (out_ptr - end_ptr);
 else if(out_ptr < buffer)
 out_ptr = end_ptr + (out_ptr - buffer) + 1;
 
 // STORE THE VALUE OF THE NEXT SAMPLE IN THE BUFFER FOR INTERPOLATION
 next = out_ptr + 1;
 if(next > end_ptr)
 next = buffer + (next - end_ptr);
 else if(next < buffer)
 next = end_ptr + (next - buffer) + 1;
 temp = *next;
 
 // Interpolate between the play head value (from above) and the next value in the buffer
 *out->vector++ = (temp * (1.0 - fractional_delay)) + (*out_ptr * fractional_delay);
 }
 in1->reset(); in2->reset(); out->reset();
 //log_post("delay_signal_ms: %f, samples: %f (%i)", delay_ms, fdelay_samples, delay_samples);
 */
//	return kTTErrNone;
//}


//TTErr TTDelay::processAudioCubicInterpolationWithDelaySignal(TTAudioSignal& in, TTAudioSignal& delayIn, TTAudioSignal& out, TTAudioSignal&)
//{
//	return kTTErrNone;
//}



