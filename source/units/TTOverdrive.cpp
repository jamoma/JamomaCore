/* 
 * TTBlue Overdrive / Soft Saturation Effect 
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTOverdrive.h"
#define thisTTClass TTOverdrive


TTOverdrive::TTOverdrive(TTUInt16 newMaxNumChannels)
	: TTAudioObject("audio.overdrive", newMaxNumChannels)
{
	// Register Attributes
	registerAttributeWithSetter(drive,				kTypeFloat64);
	registerAttributeWithSetter(dcBlocker,			kTypeBoolean);
	registerAttributeWithSetter(mode,				kTypeUInt8);
	registerAttributeWithSetterAndGetter(preamp,	kTypeFloat64);
	
	// Register Messages
	registerMessageSimple(clear);
	registerMessageWithArgument(updateMaxNumChannels);
	
	// Additional Initialization
	dcBlockerUnit = new TTDCBlock(maxNumChannels);

	// Set Defaults
	setAttributeValue(TT("maxNumChannels"),	newMaxNumChannels);
	setAttributeValue(TT("mode"), 1);
	setAttributeValue(TT("preamp"), 0.0);
	setAttributeValue(TT("drive"), 3.0);
	setAttributeValue(TT("dcBlocker"), *kTTBoolYes);
}


TTOverdrive::~TTOverdrive()
{
	delete dcBlockerUnit;
}


TTErr TTOverdrive::updateMaxNumChannels(const TTValue& oldMaxNumChannels)
{	
	return dcBlockerUnit->setAttributeValue(TT("maxNumChannels"), maxNumChannels);
}


TTErr TTOverdrive::setdrive(const TTValue& newValue)
{
	TTFloat64 	f;
	int			i;
		
	drive = TTClip(TTFloat32(newValue), TTFloat32(1.0), TTFloat32(10.0));

	// These calculations really only apply to mode 1...
	f = (drive - 0.999) * 0.111;	// range is roughly [0.001 to 0.999]
	z = kTTPi * f;
	s = 1.0 / sin(z);
	b = 1.0 / f;
	b = TTClip(b, 0.0, 1.0);
	nb = b * -1;
	i = int(f);
	if(f-i > 0.5) 
		scale = sin(f * kTTPi);
	else 
		scale = 1.0;

	return kTTErrNone;
}


TTErr TTOverdrive::setdcBlocker(const TTValue& newValue)
{
	dcBlocker = newValue;
	return dcBlockerUnit->setAttributeValue(TT("bypass"), !dcBlocker);
}


TTErr TTOverdrive::setmode(const TTValue& newValue)
{
	mode = newValue;
	if(mode == 0)
		setProcess((TTProcessMethod)&TTOverdrive::processMode0);
	else
		setProcess((TTProcessMethod)&TTOverdrive::processMode1);	// sine
	return kTTErrNone;
}


TTErr TTOverdrive::getpreamp(TTValue& value)
{
	value = linearToDb(preamp);
	return kTTErrNone;
}

TTErr TTOverdrive::setpreamp(const TTValue& newValue)
{
	preamp = dbToLinear(newValue);
	return kTTErrNone;
}


TTErr TTOverdrive::clear()
{
	return dcBlockerUnit->sendMessage(TT("clear"));
}


TTErr TTOverdrive::processMode0(TTAudioSignal& in, TTAudioSignal& out)
{
	TTUInt16		vs;
	TTSampleValue	*inSample,
					*outSample;
	TTUInt16		numchannels = TTAudioSignal::getMinChannelCount(in, out);
	TTUInt16		channel;
	TTSampleValue	temp,
					sign;

	dcBlockerUnit->process(in, out);

	for(channel=0; channel<numchannels; channel++){
		inSample = in.sampleVectors[channel];
		outSample = out.sampleVectors[channel];
		vs = in.getVectorSize();
		
		while(vs--){
			temp = *inSample++ * preamp;
			
			// the equation only works in the positive quadrant...
			// so we strip off the sign, apply the equation, and reapply the sign
			if(temp < 0.0){
				temp = -temp;
				sign = -1.0;
			}
			else
				sign = 1.0;

			if(temp > 1.0)		// clip signal if it's out of range
				*outSample++ = TTClip(temp * sign, TTSampleValue(-1.0), TTSampleValue(1.0));
			else
				*outSample++ = sign * (1.0 - exp(drive * log(1.0 - temp)));
		}
	}
	return kTTErrNone;
}


TTErr TTOverdrive::processMode1(TTAudioSignal& in, TTAudioSignal& out)
{
	short			vs;
	TTSampleValue	*inSample,
					*outSample;
	TTUInt16		numchannels = TTAudioSignal::getMinChannelCount(in, out);
	TTUInt16		channel;
	TTSampleValue	temp;

	dcBlockerUnit->process(in, out);

	for(channel=0; channel<numchannels; channel++){
		inSample = in.sampleVectors[channel];
		outSample = out.sampleVectors[channel];
		vs = in.getVectorSize();
		
		while(vs--){
			temp = *inSample++ * preamp;			
			if(temp > b) 
				temp = 1.0;
			else if(temp < nb) 
				temp = -1.0;
			else 
				temp = sin(z * temp) * s;
			*outSample++ = temp * scale;				
		}
	}
	return kTTErrNone;
}

