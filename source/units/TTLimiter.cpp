/* 
 * TTBlue Limiter Object
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTLimiter.h"


TTLimiter::TTLimiter(TTUInt8 newMaxNumChannels)
	: TTAudioObject(newMaxNumChannels),
	lookaheadBuffer(NULL), gain(NULL), maxBufferSize(256)
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
	setProcess((TTProcessMethod)&TTLimiter::processNormal);
}


TTLimiter::~TTLimiter()
{
	short i;
	
	for(i=0; i<maxNumChannels; i++)
		free(lookaheadBuffer[i]);
	free(gain);
	free(lookaheadBuffer);
	free(gain);
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

	gain = (TTSampleValue*)malloc(sizeof(TTSampleValue) * maxBufferSize);
	lookaheadBuffer = (TTSampleVector*)malloc(sizeof(TTSampleVector) * maxNumChannels);
	for(i=0; i<maxNumChannels; i++)
		lookaheadBuffer[i] = (TTSampleValue*)malloc(sizeof(TTSampleValue) * maxBufferSize);

	clear();
	
	dcBlocker->setAttributeValue(TT("maxNumChannels"), maxNumChannels);
	preamp->setAttributeValue(TT("maxNumChannels"), maxNumChannels);
	
	return kTTErrNone;
}


TTErr TTLimiter::updateSr()
{
	setRecover();
	return kTTErrNone;
}


TTErr TTLimiter::setPreamp(const TTValue& newValue)
{
	return preamp->setAttributeValue(TT("gain"), newValue);
}

TTErr TTLimiter::getPreamp(TTValue& value)
{
	return preamp->getAttributeValue(TT("gain"), value);
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
	attrLookahead = TTClip(TTUInt32(newValue), TTUInt32(1), maxBufferSize-1);
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
	if(attrMode == &TT("linear"))
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
	TTUInt32	i;
	TTUInt32	channel;
	
	for(i=0; i<maxBufferSize; i++){
		for(channel=0; channel < maxNumChannels; channel++)
    		lookaheadBuffer[channel][i] = 0.0;
    	gain[i] = 1.0;		// gain is shared across channels
    }

	lookaheadBufferIndex = 0;	// was bp
	last = 1.0;
	setRecover();

	dcBlocker->sendMessage(TT("clear"));
	return kTTErrNone;
}


// set variables related to the time it takes for the limiter to recover from a peak in the audio
// it is based on the release time attr, which is specified in seconds
void TTLimiter::setRecover()
{
	recover = 1000.0 / (attrRelease * sr);		
	if(attrMode == &TT("linear"))
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
TTErr TTLimiter::processNormal(TTAudioSignal& in, TTAudioSignal& out)
{
	TTUInt32		vs = in.vs;
	TTUInt32		i;
	TTSampleValue	*inSample,
					*outSample;
	TTSampleValue	tempSample;
	TTSampleValue	hotSample = 0.0;
	TTFloat64		maybe,
					curgain,
					newgain,
					inc,
					acc;
	long			flag,
					bpp,
					ind;
	short			numchannels = TTAudioSignal::getMinChannelCount(in, out);
	short			channel;

	// Pre-Process the input
	dcBlocker->process(in, out);	// filter out DC-Offsets (unless it is bypassed)
	preamp->process(out, in);		// copy the output back to the input for the rest of this process.

	// Process Stage
	for(i=0; i<vs; i++){
		for(channel=0; channel<numchannels; channel++){
			inSample = in.sampleVectors[channel];
			outSample = out.sampleVectors[channel];
			tempSample = *inSample++;
			
			lookaheadBuffer[channel][i] = tempSample * attrPostamp;
			tempSample = fabs(tempSample);
			if(tempSample > hotSample)
				hotSample = tempSample;
			
			if(isLinear)
				tempSample = last + recover;
			else
				tempSample = last + recover * ((last > 0.01) ? last : 1.0);
			
			maybe = ((tempSample > attrThreshold) ? attrThreshold : tempSample);
			gain[lookaheadBufferIndex] = maybe;
			
			if(hotSample * (maybe > attrThreshold)){
				curgain = attrThreshold / hotSample;
				inc = (attrThreshold - curgain);
				acc = 0;
				flag = 0;
				for(i=0; flag==0 && i<attrLookahead; i++){
					ind = lookaheadBufferIndex - i;
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
				
			*outSample++ = lookaheadBuffer[channel][bpp] * gain[bpp];
			last = gain[lookaheadBufferIndex];
			lookaheadBufferIndex++;
			if(lookaheadBufferIndex >= maxBufferSize)
				lookaheadBufferIndex = 0;
		}
	}
	return kTTErrNone;
}


TTErr TTLimiter::processNoDCBlocking(TTAudioSignal& in, TTAudioSignal& out)
{
	return kTTErrNone;
}

