/* 
 * TTBlue 1-Pole Lowpass Filter Object
 * Copyright © 2008, Tim Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTLowpassOnePole.h"


TTLowpassOnePole::TTLowpassOnePole(TTUInt8 newMaxNumChannels)
	: TTAudioObject::TTAudioObject(newMaxNumChannels),
	feedback(NULL)
{
	// register parameters
	registerParameter(TT("frequency"),	kTypeFloat64, &attrFrequency, (TTSetterMethod)&TTLowpassOnePole::setFrequency);

	// register for notifications from the parent class so we can allocate memory as required
	registerMessage(TT("updateMaxNumChannels"), (TTMethod)&TTLowpassOnePole::updateMaxNumChannels);
	// register for notifications from the parent class so we can recalculate coefficients as required
	registerMessage(TT("updateSr"),	(TTMethod)&TTLowpassOnePole::updateSr);
	// make the clear method available to the outside world
	registerMessage(TT("clear"), (TTMethod)&TTLowpassOnePole::clear);

	// Set Defaults...
	setParameterValue(TT("maxNumChannels"),	newMaxNumChannels);			// This parameter is inherited
	setParameterValue(TT("frequency"),		1000.0);
	setProcess((TTProcessMethod)&TTLowpassOnePole::processAudio);
}


TTLowpassOnePole::~TTLowpassOnePole()
{
	free(feedback);
}


TTErr TTLowpassOnePole::updateMaxNumChannels()
{
	if(feedback)
		free(feedback);
	feedback = (TTFloat64*)malloc(sizeof(TTFloat64) * maxNumChannels);
	clear();
	return kTTErrNone;
}


TTErr TTLowpassOnePole::updateSr()
{
	TTValue	v(attrFrequency);
	return setFrequency(v);
}


TTErr TTLowpassOnePole::clear()
{
	for(short i=0; i<maxNumChannels; i++)
		feedback[i] = 0.0;
	return kTTErrNone;
}


TTErr TTLowpassOnePole::setFrequency(const TTValue& newValue)
{	
	TTFloat64	radians;

	attrFrequency = newValue;
	radians = hertzToRadians(attrFrequency);
	coefficient = clip(radians / kTTPi, 0.0, 1.0);
	
	return kTTErrNone;
}


TTErr TTLowpassOnePole::processAudio(TTAudioSignal& in, TTAudioSignal& out)
{
	short			vs;
	TTSampleValue	*inSample,
					*outSample;
	short			numchannels = TTAudioSignal::getMinChannelCount(in, out);
	short			channel;

	// This outside loop works through each channel one at a time
	for(channel=0; channel<numchannels; channel++){
		inSample = in.sampleVectors[channel];
		outSample = out.sampleVectors[channel];
		vs = in.vs;
		
		// This inner loop works through each sample within the channel one at a time
		while(vs--){
			*outSample++ = feedback[channel] = antiDenormal((*inSample++ * coefficient) + (feedback[channel] * (1.0 - coefficient)));
		}
	}
	return kTTErrNone;
}

