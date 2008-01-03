/* 
 * TTBlue Degrade Object
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTDegrade.h"

#define BIG_INT	0x00800000
#define ONE_OVER_BIG_INT 1.1920928955E-7


TTDegrade::TTDegrade()
{
	registerParameter(TT("bypass"),		kTypeInt32, &attrBypass, (TTGetterMethod)NULL, (TTSetterMethod)&TTDegrade::setBypass);
	registerParameter(TT("bitdepth"),	kTypeInt32, &attrBitdepth, (TTGetterMethod)NULL, (TTSetterMethod)&TTDegrade::setBitdepth);
	registerParameter(TT("srRatio"),	kTypeInt32, &attrSrRatio);

	setBypass(kTTBoolNo);			// set default (bypass=no) and the process method
	setBitdepth(24);
}


TTDegrade::~TTDegrade()
{
	;
}


TTErr TTDegrade::setBypass(TTValue& newValue)
{
	attrBypass = newValue;
	if(attrBypass)
		return setProcess((TTProcessMethod)&TTAudioObject::bypassProcess);
	else
		return setProcess((TTProcessMethod)&TTDegrade::processAudio);
}


TTErr TTDegrade::setBitdepth(TTValue& newValue)
{
	attrBitdepth = clip(newValue, 1, 24);
	bitShift = 24 - attrBitdepth;
	return kTTErrNone;
}


// DSP LOOP
TTErr TTDegrade::processAudio(TTAudioSignal& in, TTAudioSignal& out)
{
	short			vs;
	TTSampleValue	*inSample,
					*outSample;
	short			numchannels = TTAudioSignal::getMinChannelCount(in, out);
	short			channel;
	TTSampleValue	temp;

	for(channel=0; channel<numchannels; channel++){
		inSample = in.sampleVectors[channel];
		outSample = out.sampleVectors[channel];
		vs = in.vs;
		
		while(vs--){
			// SampeRate Reduction
			accumulator += srRatioAttribute;
			if(accumulator >= 1.0){
				output[channel] = *inSample++;
				accumulator -= 1.0;
			}
		
			// BitDepth Reduction
			l = (long)(output[channel] * BIG_INT);					// change float to long int
			l >>= bit_shift;								// shift away the least-significant bits
			l <<= bit_shift;								// shift back to the correct registers
			*outSample++ = (float) l * ONE_OVER_BIG_INT;	// back to float
		}
	}
	return kTTErrNone;
}

