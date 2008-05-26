/* 
 * TTBlue Overdrive / Soft Saturation Effect 
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTOverdrive.h"


TTOverdrive::TTOverdrive(TTUInt8 newMaxNumChannels)
	: TTAudioObject("audio.overdrive", newMaxNumChannels)
{
	registerAttribute(TT("drive"),		kTypeFloat64,	&attrDrive,		(TTSetterMethod)&TTOverdrive::setDrive);
	registerAttribute(TT("dcBlocker"),	kTypeBoolean,	&attrDCBlocker, (TTSetterMethod)&TTOverdrive::setDCBlocker);
	registerAttribute(TT("mode"),		kTypeUInt8,		&attrMode,		(TTSetterMethod)&TTOverdrive::setMode);
	registerAttribute(TT("preamp"),		kTypeFloat64,	&attrPreamp,	(TTGetterMethod)&TTOverdrive::getPreamp, (TTSetterMethod)&TTOverdrive::setPreamp);
	
	// make the clear method available to be called:
	registerMessage(TT("clear"), (TTMethod)&TTOverdrive::clear, kTTMessagePassNone);	
	// this next one is called by the parent class so we can allocate memory as required
	registerMessage(TT("updateMaxNumChannels"), (TTMethod)&TTOverdrive::updateMaxNumChannels, kTTMessagePassNone);

	dcBlocker = new TTDCBlock(maxNumChannels);

	// Set Defaults...
	setAttributeValue(TT("maxNumChannels"),	newMaxNumChannels);
	setAttributeValue(TT("mode"), 1);
	setAttributeValue(TT("preamp"), 0.0);
	setAttributeValue(TT("drive"), 3.0);
	setAttributeValue(TT("dcBlocker"), *kTTBoolYes);
}


TTOverdrive::~TTOverdrive()
{
	delete dcBlocker;
}


TTErr TTOverdrive::updateMaxNumChannels()
{	
	return dcBlocker->setAttributeValue(TT("maxNumChannels"), maxNumChannels);
}


TTErr TTOverdrive::setDrive(const TTAttribute&, const TTValue& newValue)
{
	TTFloat64 	f;
	int			i;
		
	attrDrive = TTClip(TTFloat32(newValue), TTFloat32(1.0), TTFloat32(10.0));

	// These calculations really only apply to mode 1...
	f = (attrDrive - 0.999) * 0.111;	// range is roughly [0.001 to 0.999]
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


TTErr TTOverdrive::setDCBlocker(const TTAttribute&, const TTValue& newValue)
{
	attrDCBlocker = newValue;
	return dcBlocker->setAttributeValue(TT("bypass"), !attrDCBlocker);
}


TTErr TTOverdrive::setMode(const TTAttribute&, const TTValue& newValue)
{
	attrMode = newValue;
	if(attrMode == 0)
		setProcess((TTProcessMethod)&TTOverdrive::processMode0);
	else
		setProcess((TTProcessMethod)&TTOverdrive::processMode1);	// sine
	return kTTErrNone;
}


TTErr TTOverdrive::getPreamp(const TTAttribute&, TTValue& value)
{
	value = linearToDb(attrPreamp);
	return kTTErrNone;
}

TTErr TTOverdrive::setPreamp(const TTAttribute&, const TTValue& newValue)
{
	attrPreamp = dbToLinear(newValue);
	return kTTErrNone;
}


TTErr TTOverdrive::clear()
{
	return dcBlocker->sendMessage(TT("clear"));
}


TTErr TTOverdrive::processMode0(TTAudioSignal& in, TTAudioSignal& out)
{
	short			vs;
	TTSampleValue	*inSample,
					*outSample;
	short			numchannels = TTAudioSignal::getMinChannelCount(in, out);
	short			channel;
	TTSampleValue	temp,
					sign;

	dcBlocker->process(in, out);

	for(channel=0; channel<numchannels; channel++){
		inSample = in.sampleVectors[channel];
		outSample = out.sampleVectors[channel];
		vs = in.getVectorSize();
		
		while(vs--){
			temp = *inSample++ * attrPreamp;
			
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
				*outSample++ = sign * (1.0 - exp(attrDrive * log(1.0 - temp)));
		}
	}
	return kTTErrNone;
}


TTErr TTOverdrive::processMode1(TTAudioSignal& in, TTAudioSignal& out)
{
	short			vs;
	TTSampleValue	*inSample,
					*outSample;
	short			numchannels = TTAudioSignal::getMinChannelCount(in, out);
	short			channel;
	TTSampleValue	temp;

	dcBlocker->process(in, out);

	for(channel=0; channel<numchannels; channel++){
		inSample = in.sampleVectors[channel];
		outSample = out.sampleVectors[channel];
		vs = in.getVectorSize();
		
		while(vs--){
			temp = *inSample++ * attrPreamp;			
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

