/* 
 * Overdrive / Soft Saturation Effect 
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTOverdrive.h"
#include "TTEnvironment.h"

#define thisTTClass			TTOverdrive
#define thisTTClassName		"overdrive"
#define thisTTClassTags		"dspEffectsLib, audio, processor, distortion"


TT_AUDIO_CONSTRUCTOR,
	dcBlockerUnit(kTTSym_dcblock)
{
	TTUInt16	initialMaxNumChannels = arguments;
	
	// Register Attributes
	addAttributeWithSetter(Drive,				kTypeFloat64);
		addAttributeProperty(Drive,				range,			TTValue(1.0, 10.0));
		addAttributeProperty(Drive,				rangeChecking,	TT("clip")); // options are "clip" "cliphigh" "cliplow"
	addAttributeWithSetter(DcBlocker,			kTypeBoolean);
	addAttributeWithSetter(Mode,				kTypeBoolean);// IMPORTANT: if we have more modes, the datatype need to change here
	addAttributeWithGetterAndSetter(Preamp,		kTypeFloat64);
	
	// Register Messages
	addMessage(clear);
	addUpdates(MaxNumChannels);
	
	// Set Defaults
	setAttributeValue(kTTSym_maxNumChannels,	initialMaxNumChannels);
	setAttributeValue("mode",		1);
	setAttributeValue("preamp",		0.0);
	setAttributeValue("drive",		3.0);
	setAttributeValue("dcBlocker",	YES);
}


TTOverdrive::~TTOverdrive()
{
	;
}


TTErr TTOverdrive::updateMaxNumChannels(const TTValue& oldMaxNumChannels, TTValue&)
{	
	return dcBlockerUnit.set(kTTSym_maxNumChannels, mMaxNumChannels);
}


TTErr TTOverdrive::setDrive(const TTValue& newValue)
{
	TTFloat64 	f;
	int			i;	
	
	mDrive = newValue;
	// These calculations really only apply to mode 1...
	f = (mDrive - 0.999) * 0.111;	// range is roughly [0.001 to 0.999]
	
	z = kTTPi * f;
	s = 1.0 / sin(z);
	b = 1.0 / f;
    TTLimit(b, 0.0, 1.0);
	nb = b * -1.0;
	i = int(f);
	if ((f-(TTFloat64)i) > 0.5) 
		scale = sin(z); // sin(f * kTTPi);
	else 
		scale = 1.0;

	return kTTErrNone;
}


TTErr TTOverdrive::setDcBlocker(const TTValue& newValue)
{
	mDcBlocker = newValue;
	TTBoolean bypass = !mDcBlocker;
	
	return dcBlockerUnit.set("bypass", bypass);
}


TTErr TTOverdrive::setMode(const TTValue& newValue)
{
	mMode = newValue;
	if (mMode == 0)
		setProcessMethod(processMode0);
	else
		setProcessMethod(processMode1);	// sine
	return kTTErrNone;
}


TTErr TTOverdrive::getPreamp(TTValue& value)
{
	value = TTLinearGainToDecibels(mPreamp);
	return kTTErrNone;
}

TTErr TTOverdrive::setPreamp(const TTValue& newValue)
{
	mPreamp = TTDecibelsToLinearGain(newValue);
	return kTTErrNone;
}


TTErr TTOverdrive::clear()
{
	return dcBlockerUnit.send("clear");
}


TTErr TTOverdrive::processMode0(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TTAudioSignal&	in = inputs->getSignal(0);
	TTAudioSignal&	out = outputs->getSignal(0);
	TTUInt16		vs;
	TTSampleValue	*inSample,
					*outSample;
	TTUInt16		numchannels = TTAudioSignal::getMinChannelCount(in, out);
	TTUInt16		channel;
	TTSampleValue	temp,
					sign;

	dcBlockerUnit.process(in, out);

	for (channel=0; channel<numchannels; channel++) {
		inSample = in.mSampleVectors[channel];
		outSample = out.mSampleVectors[channel];
		vs = in.getVectorSizeAsInt();
		
		while (vs--) {
			temp = *inSample++ * mPreamp;
			
			// the equation only works in the positive quadrant...
			// so we strip off the sign, apply the equation, and reapply the sign
			if (temp < 0.0) {
				temp = -temp;
				sign = -1.0;
			}
			else
				sign = 1.0;

			if (temp > 1.0)		// clip signal if it's out of range
				*outSample++ = TTClip(temp * sign, TTSampleValue(-1.0), TTSampleValue(1.0));
			else
				*outSample++ = sign * (1.0 - exp(mDrive * log(1.0 - temp)));
		}
	}
	return kTTErrNone;
}


TTErr TTOverdrive::processMode1(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TTAudioSignal&	in = inputs->getSignal(0);
	TTAudioSignal&	out = outputs->getSignal(0);
	short			vs;
	TTSampleValue	*inSample,
					*outSample;
	TTUInt16		numchannels = TTAudioSignal::getMinChannelCount(in, out);
	TTUInt16		channel;
	TTSampleValue	temp;
#ifdef TT_PLATFORM_WIN
	TTSampleValue	sign;
#endif
	
	dcBlockerUnit.process(in, out);

	for (channel=0; channel<numchannels; channel++) {
		inSample = in.mSampleVectors[channel];
		outSample = out.mSampleVectors[channel];
		vs = in.getVectorSizeAsInt();
		
		while (vs--) {
			temp = *inSample++ * mPreamp;			
			if (temp > b) 
				temp = 1.0;
			else if (temp < nb) 
				temp = -1.0;
	#ifdef TT_PLATFORM_WIN
			else {
				// http://redmine.jamoma.org/issues/show/54
				// It is insane, but on Windows sin() returns bad values 
				// if the argument is negative, so we have to do this crazy workaround.
				if (temp < 0.0) {
					temp = -temp;
					sign = -1.0;
				}
				else
					sign = 1.0;
				temp = sign * sin(z * temp) * s;
				// instead of using this more simple solution:
				//temp = (z * temp) * s;
			}
	#else
			else 
				temp = sin(z * temp) * s;
	#endif		
			*outSample++ = temp * scale;				
		}
	}
	return kTTErrNone;
}

