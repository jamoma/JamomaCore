/*
 * TTBlue Delay Unit
 * Copyright © 2003, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTDelay.h"


TTDelay::TTDelay(TTUInt16 newMaxNumChannels)
	: TTAudioObject("filter.dcblock", newMaxNumChannels),
	  buffer(NULL), inPtr(NULL), outPtr(NULL), endPtr(NULL)
{
	// declare attributes
	registerAttribute(TT("delay"),			kTypeFloat64,	&attrDelay,				(TTSetterMethod)&TTDelay::setDelay);
	registerAttribute(TT("samples"),		kTypeInt64,		&attrDelayInSamples,	(TTSetterMethod)&TTDelay::setDelayInSamples);
//	registerAttribute(TT("maxDelay"),		kTypeFloat64,	&attrDelayMax,			(TTSetterMethod)&TTDelay::setDelayMax);
//	registerAttribute(TT("maxSamples"),		kTypeInt64,		&attrDelayMaxInSamples,	(TTSetterMethod)&TTDelay::setDelayMaxInSamples);
	registerAttribute(TT("interpolation"),	kTypeSymbol,	&attrInterpolation,		(TTSetterMethod)&TTDelay::setInterpolation);

	// declare messages
	registerMessage(TT("clear"),				(TTMethod)&TTDelay::clear,					kTTMessagePassNone);
	
	// notifications from the parent class
	registerMessage(TT("updateSr"),				(TTMethod)&TTDelay::updateSr,				kTTMessagePassNone);
	registerMessage(TT("updateMaxNumChannels"),	(TTMethod)&TTDelay::updateMaxNumChannels);

	// Set Defaults...
	setAttributeValue(TT("maxNumChannels"),	newMaxNumChannels);
	setAttributeValue(TT("delay"), 0.0);
	setAttributeValue(TT("interpolation"), TT("none"));		// TODO: change this to cubic (or at least to linear), this sets the process method
}

/*
 // OBJECT LIFE					
 TT_INLINE tt_delay::tt_delay(long max)						// Constructor - INT ARGUMENT: SPECIFY IN SAMPLES
 {
 init(max);
 }
 
 TT_INLINE tt_delay::tt_delay(float max_ms)					// Constructor - FLOAT ARGUMENT: SPECIFY IN MS
 {
 long max = long(max_ms * m_sr);
 init(max);
 }
 
 // Internal method which is called by the constructors
 */

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


// TODO: this is clumsy and stupid -- we should be doing this stuff when the MaxDelayTime attr is set
// Howevr, this needs to be called every time that:
//		the sr changes
//		the maxNumChannels changes
//		the maxNumSamples change
TTErr TTDelay::init(TTUInt64 newDelayMaxInSamples)
{
	TTUInt16 channel;

	attrDelayMaxInSamples = newDelayMaxInSamples;
	attrDelayMax = attrDelayMaxInSamples / srMill;
	
	// FIXME: There is a big problem here -- we don't know the old maxNumChannels, so we could be freeing something bogus?
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
		buffer[channel] = new TTSampleValue[attrDelayMaxInSamples];

	inPtr = new TTSampleVector[maxNumChannels];
	outPtr = new TTSampleVector[maxNumChannels];
	endPtr = new TTSampleVector[maxNumChannels];
	
	for(channel=0; channel<maxNumChannels; channel++){
		inPtr[channel] = buffer[channel];
	}

	reset();
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
	
	return init(attrDelayMaxInSamples);
}


TTErr TTDelay::updateSr()
{
	init(long(srMill * attrDelay));		// allocate a larger delay buffer if neccessary	
	return setDelay(attrDelay);			// hold the delay time in ms constant, despite the change of sr
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
	endPtr = buffer + attrDelayInSamples;
	outPtr = inPtr - attrDelayInSamples;
	if(outPtr < buffer)
		outPtr = endPtr + (outPtr - buffer) + 1;
	else if(outPtr > endPtr)
		outPtr = buffer + (outPtr - endPtr);

	clear();
}


TTErr TTDelay::setDelay(const TTValue& newValue)
{
	attrDelay = TTClip<TTFloat64>(newValue, 0.0, attrDelayMax);

// FIXME: NOT YET WORKING	
//	fractionalDelaySamples = attrDelay * srMill;
//	attrDelayInSamples = fractionalDelaySamples;				// (truncation is intentional)
//	fractionalDelay = fractionalDelaySamples - delaySamples;

	reset();
	return kTTErrNone;
}


TTErr TTDelay::setDelayInSamples(const TTValue& newValue)
{
	attrDelayInSamples = TTClip<TTUInt64>(newValue, 0, attrDelayMaxInSamples);
	attrDelay = attrDelayInSamples * 1000.0 * srInv;
// FIXME: NOT YET WORKING	
//	fractionalDelaySamples = attrDelayInSamples;
	fractionalDelay = 0;
	
	reset();
	return kTTErrNone;
}


// TODO: Update these when the new interpolation routines are written
TTErr TTDelay::setInterpolation(const TTValue& newValue)
{
	attrInterpolation = newValue;
	
	if(attrInterpolation == TT("none")){
		setProcess((TTProcessMethod)&TTDelay::processAudioNoInterpolation);
		setProcessWithSidechain((TTProcessWithSidechainMethod)&TTDelay::processAudioNoInterpolationWithDelaySignal);		
	}
	else if(attrInterpolation == TT("linear")){
		setProcess((TTProcessMethod)&TTDelay::processAudioNoInterpolation);
		setProcessWithSidechain((TTProcessWithSidechainMethod)&TTDelay::processAudioNoInterpolationWithDelaySignal);		
	}
	else if(attrInterpolation == TT("cubic")){
		setProcess((TTProcessMethod)&TTDelay::processAudioNoInterpolation);
		setProcessWithSidechain((TTProcessWithSidechainMethod)&TTDelay::processAudioNoInterpolationWithDelaySignal);		
	}
	else{
		setProcess((TTProcessMethod)&TTDelay::processAudioNoInterpolation);
		setProcessWithSidechain((TTProcessWithSidechainMethod)&TTDelay::processAudioNoInterpolationWithDelaySignal);		
		return kTTErrGeneric;
	}
	return kTTErrNone;
}


#if 0
#pragma mark -
#pragma mark dsp routines
#endif


TTErr TTDelay::processAudioNoInterpolation(TTAudioSignal& in, TTAudioSignal& out)
{
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


TTErr TTDelay::processAudioLinearInterpolation(TTAudioSignal& in, TTAudioSignal& out)
{
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


TTErr TTDelay::processAudioCubicInterpolation(TTAudioSignal& in, TTAudioSignal& out)
{
	// see http://crca.ucsd.edu/~msp/techniques/latest/book-html/node114.html
	// see http://crca.ucsd.edu/~msp/techniques/latest/book-html/node31.html#tab02.1
	
	return kTTErrNone;
}



// Process with a delay time set by a signal
TTErr TTDelay::processAudioNoInterpolationWithDelaySignal(TTAudioSignal& in, TTAudioSignal& delayIn, TTAudioSignal& out, TTAudioSignal&)
{
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
	return kTTErrNone;
}


TTErr TTDelay::processAudioLinearInterpolationWithDelaySignal(TTAudioSignal& in, TTAudioSignal& delayIn, TTAudioSignal& out, TTAudioSignal&)
{
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
	return kTTErrNone;
}


TTErr TTDelay::processAudioCubicInterpolationWithDelaySignal(TTAudioSignal& in, TTAudioSignal& delayIn, TTAudioSignal& out, TTAudioSignal&)
{
	return kTTErrNone;
}



