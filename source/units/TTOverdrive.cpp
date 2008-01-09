/* 
 * TTBlue Overdrive Object
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTOverdrive.h"


TTOverdrive::TTOverdrive(TTUInt8 newMaxNumChannels)
	: TTAudioObject::TTAudioObject(newMaxNumChannels)
{
	// register attributes
	registerAttribute(TT("bypass"),		kTypeInt32,		&attrBypass,	(TTGetterMethod)NULL, (TTSetterMethod)&TTDegrade::setBypass);
	registerAttribute(TT("bitdepth"),	kTypeInt32,		&attrBitdepth,	(TTGetterMethod)NULL, (TTSetterMethod)&TTDegrade::setBitdepth);
	registerAttribute(TT("srRatio"),	kTypeFloat32,	&attrSrRatio);

	// register for notifications from the parent class so we can allocate memory as required
	registerMessage(TT("updateMaxNumChannels"), (TTMethod)&TTDCBlock::updateMaxNumChannels);

	setAttributeValue(TT("maxNumChannels"),	newMaxNumChannels);
	setAttributeValue(TT("bypass"),			kTTBoolNo);
	setAttributeValue(TT("bitdepth"),		24);
	setAttributeValue(TT("srRatio"),		1.0);
		setProcess((TTProcessMethod)&TTDCBlock::processAudio);

}


TTOverdrive::~TTOverdrive()
{
	free(output);
}


TTErr TTOverdrive::updateMaxNumChannels()
{
	short i;
	
	output = (TTSampleValue*)malloc(sizeof(TTSampleValue) * maxNumChannels);
	for(i=0; i<maxNumChannels; i++)
		output[i] = 0.0;				// clear the values
	return kTTErrNone;
}


TTErr TTOverdrive::setBypass(TTValue& newValue)
{
	attrBypass = newValue;
	if(attrBypass)
		return setProcess((TTProcessMethod)&TTAudioObject::bypassProcess);
	else
		return setProcess((TTProcessMethod)&TTDegrade::processAudio);
}


TTErr TTOverdrive::setBitdepth(TTValue& newValue)
{
	attrBitdepth = clip((int)newValue, 1, 24);
	bitShift = 24 - attrBitdepth;
	return kTTErrNone;
}


TTErr TTOverdrive::processAudio(TTAudioSignal& in, TTAudioSignal& out)
{
	short			vs;
	TTSampleValue	*inSample,
					*outSample;
	short			numchannels = TTAudioSignal::getMinChannelCount(in, out);
	short			channel;
	long			l;

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
	return kTTErrNone;
}

