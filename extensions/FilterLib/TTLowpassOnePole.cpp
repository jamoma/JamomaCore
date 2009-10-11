/* 
 * TTBlue 1-Pole Lowpass Filter Object
 * Copyright © 2008, Tim Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTLowpassOnePole.h"

#define thisTTClass			TTLowpassOnePole
#define thisTTClassName		"lowpass.1"
#define thisTTClassTags		"audio, processor, filter, lowpass"


TT_AUDIO_CONSTRUCTOR
{
	// register attributes
	registerAttributeWithSetter(frequency,	kTypeFloat64);
	addAttributeProperty(frequency,			range,			TTValue(2.0, sr*0.475));
	addAttributeProperty(frequency,			rangeChecking,	TT("clip"));

	// register for notifications from the parent class so we can allocate memory as required
	registerMessageWithArgument(updateMaxNumChannels);
	// register for notifications from the parent class so we can recalculate coefficients as required
	registerMessageSimple(updateSr);
	// make the clear method available to the outside world
	registerMessageSimple(clear);

	// Set Defaults...
	setAttributeValue(TT("maxNumChannels"),	arguments);			// This attribute is inherited
	setAttributeValue(TT("frequency"),		1000.0);
	setProcessMethod(processAudio);
}


TTLowpassOnePole::~TTLowpassOnePole()
{;}


//TODO: we shouldn't really need to be passed the oldMaxNumChannels if we are using std::vector to manage sizes, right?
TTErr TTLowpassOnePole::updateMaxNumChannels(const TTValue& oldMaxNumChannels)
{
	feedback.resize(maxNumChannels);
	clear();
	return kTTErrNone;
}


TTErr TTLowpassOnePole::updateSr()
{
	TTValue	v(frequency);
	return setfrequency(v);
}


TTErr TTLowpassOnePole::clear()
{
	feedback.assign(maxNumChannels, 0.0);
	return kTTErrNone;
}


TTErr TTLowpassOnePole::setfrequency(const TTValue& newValue)
{	
	TTFloat64	radians;

	frequency = newValue;
	radians = hertzToRadians(frequency);
	coefficient = TTClip(radians / kTTPi, 0.0, 1.0);
	
	return kTTErrNone;
}


TTErr TTLowpassOnePole::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TTAudioSignal&	in = inputs->getSignal(0);
	TTAudioSignal&	out = outputs->getSignal(0);
	TTUInt16		vs;
	TTSampleValue	*inSample,
					*outSample;
	TTUInt16		numchannels = TTAudioSignal::getMinChannelCount(in, out);
	TTUInt16		channel;

	// This outside loop works through each channel one at a time
	for(channel=0; channel<numchannels; channel++){
		inSample = in.sampleVectors[channel];
		outSample = out.sampleVectors[channel];
		vs = in.getVectorSize();
		
		// This inner loop works through each sample within the channel one at a time
		while(vs--){
			*outSample++ = feedback[channel] = TTAntiDenormal((*inSample++ * coefficient) + (feedback[channel] * (1.0 - coefficient)));
		}
	}
	return kTTErrNone;
}

