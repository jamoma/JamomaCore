/* 
 * TTBlue Limiter Object
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTLimiter.h"


TTLimiter::TTLimiter(TTUInt8 newMaxNumChannels)
	: TTAudioObject::TTAudioObject(newMaxNumChannels),
	maxBufferSize(256), lookaheadBuffer(NULL), gain(NULL), lastInput(NULL), lastOutput(NULL)
{
	// register our attributes
	registerAttribute(TT("preamp"),		kTypeFloat32,	&attrPreamp,	(TTGetterMethod)&TTLimiter::getPreamp,		(TTSetterMethod)&TTLimiter::setPreamp);
	registerAttribute(TT("postamp"),	kTypeFloat32,	&attrPostamp,	(TTGetterMethod)&TTLimiter::getPostamp,		(TTSetterMethod)&TTLimiter::setPostamp);
	registerAttribute(TT("threshold"),	kTypeFloat32,	&attrThreshold,	(TTGetterMethod)&TTLimiter::getThreshold,	(TTSetterMethod)&TTLimiter::setThreshold);
	registerAttribute(TT("lookahead"),	kTypeUInt32,	&attrLookahead, (TTSetterMethod)&TTLimiter::setLookahead);
	registerAttribute(TT("release"),	kTypeFloat32,	&attrRelease,	(TTSetterMethod)&TTLimiter::setRelease);
	registerAttribute(TT("mode"),		kTypeSymbol,	&attrMode,		(TTSetterMethod)&TTLimiter::setMode);
	registerAttribute(TT("dcBlocker"),	kTypeBoolean,	&attrDCBlocker,	(TTSetterMethod)&TTLimiter::setDCBlocker);

	// register for notifications from the parent class so we can allocate memory as required
	registerMessage(TT("updateMaxNumChannels"), (TTMethod)&TTLimiter::updateMaxNumChannels);
	// register for notifications from the parent class so we can update the release/recover values
	registerMessage(TT("updateSr"), (TTMethod)&TTLimiter::updateSr);
	// clear the history
	registerMessage(TT("clear"), (TTMethod)&TTLimiter::clear);

	dcBlocker = new TTDCBlock(maxNumChannels);
	preamp = new TTGain(maxNumChannels);

	// Set Defaults...
	setAttributeValue(TT("maxNumChannels"),	newMaxNumChannels);
	setAttributeValue(TT("threshold"),		0.0);
	setAttributeValue(TT("preamp"),			0.0);
	setAttributeValue(TT("postamp"),		0.0);
	setAttributeValue(TT("lookahead"),		100);
	setAttributeValue(TT("mode"),			TT("exponential"));
	setAttributeValue(TT("release"),		1000.0);
	setAttributeValue(TT("dcBlocker"),		kTTBoolYes);
	setAttributeValue(TT("bypass"),			kTTBoolNo);
	clear();
}


TTLimiter::~TTLimiter()
{
	short i;
	
	for(i=0; i<maxNumChannels; i++)
		free(lookaheadBuffer[i]);
	free(gain);
	free(lookaheadBuffer);
	free(gain);
	free(lastInput);
	free(lastOutput);
	delete dcBlocker;
	delete preamp;
}


TTErr TTLimiter::updateMaxNumChannels()
{
	short i;

	if(lookaheadBuffer){
		for(i=0; i<maxNumChannels; i++)
			free(lookaheadBuffer[i]);
		free(lookaheadBuffer);
	}
	if(gain)
		free(gain);
	if(lastInput)
		free(lastInput);
	if(lastOutput)
		free(lastOutput);

	gain 			= (TTSampleValue*)malloc(sizeof(TTSampleValue) * maxBufferSize);
	lastInput 		= (TTSampleValue*)malloc(sizeof(TTSampleValue) * maxNumChannels);
	lastOutput 		= (TTSampleValue*)malloc(sizeof(TTSampleValue) * maxNumChannels);
	lookaheadBuffer = (TTSampleVector*)malloc(sizeof(TTSampleVector) * maxNumChannels);
	for(i=0; i<maxNumChannels; i++)
		lookaheadBuffer[i] = (TTSampleValue*)malloc(sizeof(TTSampleValue) * maxBufferSize);

	clear();
	
	dcBlocker->setAttributeValue(TT("maxNumChannels"), maxNumChannels);
	copy->setAttributeValue(TT("maxNumChannels"), maxNumChannels);
	
	return kTTErrNone;
}


TTErr TTLimiter::setPreamp(const TTValue& newValue)
{
	return preamp->setAttributeValue(TT("gain"), newValue);
}

TTErr TTLimiter::getPreamp(TTValue& value)
{
	return preamp->setAttributeValue(TT("gain"), newValue);
}


TTErr TTLimiter::setPostamp(const TTValue& newValue)
{
	attrPostamp = dbToLinear(newValue);
	return kTTErrNone;
}

TTErr TTLimiter::getPostamp(TTValue& value)
{
	value = linearToDb(attrPostamp);
	return kTTErrNone;
}


TTErr TTLimiter::setThreshold(const TTValue& newValue)
{
	attrThreshold = dbToLinear(newValue);
	return kTTErrNone;
}

TTErr TTLimiter::getThreshold(TTValue& value)
{
	value = linearToDb(attrThreshold);
	return kTTErrNone;
}


TTErr TTLimiter::setLookahead(TTValue& newValue)
{
	attrLookahead = clip(newValue, 1, maxBufferSize-1);
    lookaheadInv = 1.0 / TTFloat64(attrLookahead);
	return kTTErrNone;
}


TTErr TTLimiter::setRelease(TTValue& newValue)
{
	attrRelease = newValue;
	setRecover();
	return kTTErrNone;
}


TTErr TTLimiter::setMode(TTValue& newValue)
{
	attrMode = &(TTSymbol&)newValue;
	if(attrMode == TT("linear"))
		isLinear = true;
	else
		isLinear = false;
	setRecover();
	return kTTErrNone;
}


TTErr TTLimiter::setDCBlocker(TTValue& newValue)
{
	attrDCBlocker = newValue;
	return dcBlocker->setAttributeValue(TT("bypass"), !attrDCBlocker);
}


TTErr TTLimiter::clear()
{
	short i;
	short channel;
	
	for(i=0; i<maxBufferSize; i++){
		for(channel=0; channel < maxNumChannels; channel++)
    		lookaheadBuffer[channel][i] = 0.0;
    	gain[i] = 1.0;		// gain is shared across channels
    }

	lookaheadBufferIndex = 0;	// was bp
	last = 1.;
	setRecover();

	for(channel=0; channel < maxNumChannels; channel++){
		lastInput[channel] = 0.0;
		lastOutput[channel] = 0.0;
	}
	
	dcBlocker->sendMessage(TT("clear"));
	return kTTErrNone;
}


// set variables related to the time it takes for the limiter to recover from a peak in the audio
// it is based on the release time attr, which is specified in seconds
void TTLimiter::setRecover()
{
	recover = 1000.0 / (attrRelease * sr);		
	if(attrMode == TT("linear"))
		recover = recover * 0.5;
	else 
		recover = recover * 0.707;
}


/*	How is this supposed to work?
	
	First, we work on a buffer of samples.  The size of this buffer is determined by the lookahead attribute.
	
	1. Apply preamp
	2. DC Block
?	3. Output the last calculated sample * postamp
	
	4. go through each channel and find the hottest sample (fabs())
	5. apply weird linear thing?
	6. figure out gain to apply
	7. 
*/
TTErr TTLimiter::processAudio(TTAudioSignal& in, TTAudioSignal& out)
{
	short			vs = in.vs;
	short			i;
	TTSampleValue	*inSample,
					*outSample;
	TTSampleValue	tempSample;
	TTSampleValue	hotSample = 0.0;
	short			numchannels = TTAudioSignal::getMinChannelCount(in, out);
	short			channel;

/*
	I think we need to re-write this in two stages:
	0. preprocess stage (DCBlocker + Preamp)
	1. analysis stage
	2. process stage
	
*/
	dcBlocker->process(in, out);	// filter out DC-Offsets (unless it is bypassed)
	preamp->process(out, in);			// copy the output back to the input for the rest of this process.



	for(i=0; i<vs; i++){
		for(channel=0; channel<numchannels; channel++){
			inSample = in.sampleVectors[channel];
			outSample = out.sampleVectors[channel];

			// Integrated DC Blocker, with preamp applied
			tempSample = *inSample++ * attrPreamp;
			lastOutput[channel] = antiDenormal((tempSample * preamp) - lastInput[channel] + (lastOutput[channel] * 0.9997));
			lastInput[channel] = tempSample;
			tempSample = lastOutput[channel];
			
			// Now the actual limiter
			lookaheadBuffer[channel][i] = tempSample * postamp;
			tempSample = fabs(tempSample);
			if(tempSample > hotSample)
				hotSample = tempSample;
			
			if(isLinear)
				tempSample = last + recover;
			else
				tempSample = last + recover * ((last > 0.01) ? last : 1.0);
			
			maybe = ((tempSample > attrThreshold) ? Threshold : tempSample);
			gain[lookaheadBufferIndex] = gain;
			
			if(hotSample * maybe > attrThreshold)){
				curgain = attrThreshold / hotSample;
				inc = (attrThreshold - curgain);
				acc = 0;
				flag = 0;
				for(i=0; flag==0 && i<attrLookahead; i++){
					ind = bp - i;
					if(ind<0)
						ind += maxBufferSize;
						
					if(isLinear)
						newgain = curgain + inc * acc;
					else
						newgain = curgain + inc * (acc * acc);
						
					if(newgain < gain[ind])
						gain[ind] = newgain;
					else
						flag = 1;
					acc = acc + lookaheadInv;
				}
			}
			
			bpp = lookaheadBufferIndex - attrLookahead;
			if(bpp<0)
				bpp += maxBufferSize;
				
			*outSample++ = lookaheadBuffer[bpp] * gain[bpp];
			last = gain[lookaheadBufferIndex];
			lookaheadBufferIndex++;
			if(lookaheadBufferIndex >= maxBufferSize)
				lookaheadBufferIndex = 0;
			
		}
	}
	


/*
	for(channel=0; channel<numchannels; channel++){
		inSample = in.sampleVectors[channel];
		outSample = out.sampleVectors[channel];
		vs = in.vs;
		
		while(vs--){
			// SampeRate Reduction
			accumulator += attrSrRatio;
			if(accumulator >= 1.0){
				output[channel] = *inSample++;
				accumulator -= 1.0;
			}
		
			// BitDepth Reduction
			l = (long)(output[channel] * BIG_INT);			// change float to long int
			l >>= bitShift;									// shift away the least-significant bits
			l <<= bitShift;									// shift back to the correct registers
			*outSample++ = (float) l * ONE_OVER_BIG_INT;	// back to float
		}
	}
*/
	return kTTErrNone;
}


TTErr TTLimiter::processNoDCBlocking(TTAudioSignal& in, TTAudioSignal& out)
{
	return kTTErrNone;
}

