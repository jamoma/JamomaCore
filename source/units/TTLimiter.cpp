/* 
 * TTBlue Limiter Object
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTLimiter.h"


TTLimiter::TTLimiter(TTUInt8 newMaxNumChannels)
	: TTAudioObject("audio.limiter", newMaxNumChannels),
	lookaheadBuffer(NULL), lookaheadBufferIndex(0), gain(NULL), last(0.0), recover(0.0), maxBufferSize(512), attrMode(TT("exponential"))
{
	// register our attributes
	registerAttribute(TT("preamp"),		kTypeFloat64,	NULL,			(TTGetterMethod)&TTLimiter::getPreamp,		(TTSetterMethod)&TTLimiter::setPreamp);
	registerAttribute(TT("postamp"),	kTypeFloat64,	&attrPostamp,	(TTGetterMethod)&TTLimiter::getPostamp,		(TTSetterMethod)&TTLimiter::setPostamp);
	registerAttribute(TT("threshold"),	kTypeFloat64,	&attrThreshold,	(TTGetterMethod)&TTLimiter::getThreshold,	(TTSetterMethod)&TTLimiter::setThreshold);
	registerAttribute(TT("lookahead"),	kTypeUInt32,	&attrLookahead, (TTSetterMethod)&TTLimiter::setLookahead);
	registerAttribute(TT("release"),	kTypeFloat64,	&attrRelease,	(TTSetterMethod)&TTLimiter::setRelease);
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
	setAttributeValue(TT("dcBlocker"),		*kTTBoolYes);
	setAttributeValue(TT("bypass"),			*kTTBoolNo);
	TTValue v;
	clear(*kTTSymEmpty, v);
	setProcess((TTProcessMethod)&TTLimiter::processAudio);
}


TTLimiter::~TTLimiter()
{
	short i;
	
	for(i=0; i<maxNumChannels; i++)
		free(lookaheadBuffer[i]);
	free(gain);
	free(lookaheadBuffer);
	delete dcBlocker;
	delete preamp;
}


// TODO: These message receiver args should be reversed -- this is a change that should be applied throughout TTBlue
TTErr TTLimiter::updateMaxNumChannels(const TTSymbol& s, TTValue& v)
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

	clear(s, v);
	
	dcBlocker->setAttributeValue(TT("maxNumChannels"), maxNumChannels);
	preamp->setAttributeValue(TT("maxNumChannels"), maxNumChannels);
	
	return kTTErrNone;
}


TTErr TTLimiter::updateSr(const TTSymbol&, TTValue&)
{
	setRecover();
	return kTTErrNone;
}


TTErr TTLimiter::setPreamp(const TTAttribute&, const TTValue& newValue)
{
	return preamp->setAttributeValue(TT("gain"), newValue);
}

TTErr TTLimiter::getPreamp(const TTAttribute&, TTValue& value)
{
	return preamp->getAttributeValue(TT("gain"), value);
}


TTErr TTLimiter::setPostamp(const TTAttribute&, const TTValue& newValue)
{
	attrPostamp = dbToLinear(newValue);
	return kTTErrNone;
}

TTErr TTLimiter::getPostamp(const TTAttribute&, TTValue& value)
{
	value = linearToDb(attrPostamp);
	return kTTErrNone;
}


TTErr TTLimiter::setThreshold(const TTAttribute&, const TTValue& newValue)
{
	attrThreshold = dbToLinear(newValue);
	return kTTErrNone;
}

TTErr TTLimiter::getThreshold(const TTAttribute&, TTValue& value)
{
	value = linearToDb(attrThreshold);
	return kTTErrNone;
}


TTErr TTLimiter::setLookahead(const TTAttribute&, TTValue& newValue)
{
	attrLookahead = TTClip(TTUInt32(newValue), TTUInt32(1), maxBufferSize-1);
    lookaheadInv = 1.0 / TTFloat64(attrLookahead);
	return kTTErrNone;
}


TTErr TTLimiter::setRelease(const TTAttribute&, TTValue& newValue)
{
	attrRelease = newValue;
	setRecover();
	return kTTErrNone;
}


TTErr TTLimiter::setMode(const TTAttribute&, TTValue& newValue)
{
	attrMode = newValue;
	if(attrMode == TT("linear"))
		isLinear = true;
	else
		isLinear = false;
	setRecover();
	return kTTErrNone;
}


TTErr TTLimiter::setDCBlocker(const TTAttribute&, TTValue& newValue)
{
	attrDCBlocker = newValue;
	return dcBlocker->setAttributeValue(TT("bypass"), !attrDCBlocker);
}


TTErr TTLimiter::clear(const TTSymbol&, TTValue&)
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
	if(attrMode == TT("linear"))
		recover = recover * 0.5;
	else 
		recover = recover * 0.707;
}


TTErr TTLimiter::processAudio(TTAudioSignal& in, TTAudioSignal& out)
{
	TTUInt16		vs = in.getVectorSize();
	TTUInt16		i, j;
	TTSampleValue	tempSample;
	TTSampleValue	hotSample;
	TTFloat64		maybe,
					curgain,
					newgain,
					inc,
					acc;
	TTInt16			flag,
					lookaheadBufferPlayback,
					ind;
	TTUInt8			numchannels = TTAudioSignal::getMinChannelCount(in, out);
	TTUInt8			channel;

	// Pre-Process the input
	dcBlocker->process(in, out);	// filter out DC-Offsets (unless it is bypassed)
	preamp->process(out, in);		// copy output back to input for the rest of this process

	for(i=0; i<vs; i++){
		hotSample = 0.0;

	
		// Analysis Stage ...
		for(channel=0; channel<numchannels; channel++){
			tempSample = in.sampleVectors[channel][i];
			lookaheadBuffer[channel][lookaheadBufferIndex] = tempSample * attrPostamp;
			tempSample = fabs(tempSample);
			if(tempSample > hotSample)
				hotSample = tempSample;
		}
			
		if(isLinear)
			tempSample = last + recover;
		else{
			if(last > 0.01)
				tempSample = last + recover * last;
			else
				tempSample = last + recover;
		}

		if(tempSample > attrThreshold)
			maybe = attrThreshold;
		else
			maybe = tempSample;
		gain[lookaheadBufferIndex] = maybe;
		
		
		// Process Stage ...
		for(channel=0; channel<numchannels; channel++){
			if(hotSample * maybe > attrThreshold){
				curgain = attrThreshold / hotSample;
				inc = (attrThreshold - curgain);
				acc = 0;
				flag = 0;
				for(j=0; flag==0 && j<attrLookahead; j++){
					ind = lookaheadBufferIndex - j;
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
			
			lookaheadBufferPlayback = lookaheadBufferIndex - attrLookahead;
			if(lookaheadBufferPlayback < 0)
				lookaheadBufferPlayback += attrLookahead;
				
			out.sampleVectors[channel][i] = lookaheadBuffer[channel][lookaheadBufferPlayback] * gain[lookaheadBufferPlayback];
			last = gain[lookaheadBufferIndex];
			lookaheadBufferIndex++;
			if(lookaheadBufferIndex >= attrLookahead)
				lookaheadBufferIndex = 0;
		}
	}
	return kTTErrNone;
}
