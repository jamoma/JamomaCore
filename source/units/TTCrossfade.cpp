/* 
 * TTBlue Signal Crossfader Object
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTCrossfade.h"


TTCrossfade::TTCrossfade(TTUInt8 newMaxNumChannels)
	: TTAudioObject::TTAudioObject(newMaxNumChannels)
{
	registerAttribute(TT("position"),	kTypeFloat32,	&attrPosition);
	registerAttribute(TT("shape"),		kTypeSymbol,	&attrShape,		(TTGetterMethod)NULL, (TTSetterMethod)&TTCrossfade::setShape);
	registerAttribute(TT("mode"),		kTypeSymbol,	&attrMode,		(TTGetterMethod)NULL, (TTSetterMethod)&TTCrossfade::setMode);

	// Set Defaults (the attribute setters will set the process method for us)...
	setAttributeValue(TT("position"),	0.5);
	setAttributeValue(TT("shape"),		TT("equalPower"));
	setAttributeValue(TT("mode"),		TT("lookup"));
}


TTCrossfade::~TTCrossfade()
{
	;
}


TTErr TTCrossfade::setShape(const TTValue& newValue)
{
	attrShape = &(TTSymbol&)newValue;
	return setProcessPointers();
}


TTErr TTCrossfade::setMode(const TTValue& newValue)
{
	attrMode = &(TTSymbol&)newValue;
	return setProcessPointers();
}


TTErr TTCrossfade::setProcessPointers()
{
	if(attrShape == &TT("equalPower") && attrMode == &TT("lookup"))
		return setProcess((TTProcessMethod)&TTCrossfade::processLookup);
	else if(attrShape == &TT("equalPower") && attrMode == &TT("calculate"))
		return setProcess((TTProcessMethod)&TTCrossfade::processCalc);
	else
		return setProcess((TTProcessMethod)&TTCrossfade::processLinear);
}


TTErr TTCrossfade::processLinear(TTAudioSignal& in, TTAudioSignal& out)
{
	short			vs;
	TTSampleValue	*inSampleA,
					*inSampleB,
					*outSample;
	short			numchannels = out.numChannels;
	short			channel;
	
	if(in.numChannels != out.numChannels*2)
		return kTTErrGeneric;

	for(channel=0; channel<numchannels; channel++){
		inSampleA = in.sampleVectors[channel];
		inSampleB = in.sampleVectors[numchannels+channel];
		outSample = out.sampleVectors[channel];
		vs = in.vs;
		
		while(vs--)
			*outSample++ = (*inSampleB++ * attrPosition) + (*inSampleA++ * (1.0 - attrPosition));
	}
	return kTTErrNone;
}


TTErr TTCrossfade::processLookup(TTAudioSignal& in, TTAudioSignal& out)
{
	short			vs;
	TTSampleValue	*inSampleA,
					*inSampleB,
					*outSample;
	short			numchannels = out.numChannels;
	short			channel;
	int				index;
	
	if(in.numChannels != out.numChannels*2)
		return kTTErrGeneric;

	for(channel=0; channel<numchannels; channel++){
		inSampleA = in.sampleVectors[channel];
		inSampleB = in.sampleVectors[numchannels+channel];
		outSample = out.sampleVectors[channel];
		vs = in.vs;
		
		while(vs--){
			index = (int)(attrPosition * 511.0);
			*outSample++ = (*inSampleB++ * kTTLookupEqualPower[511 - index]) + (*inSampleA++ * kTTLookupEqualPower[index]);
		}
	}
	return kTTErrNone;
}


TTErr TTCrossfade::processCalc(TTAudioSignal& in, TTAudioSignal& out)
{
	short			vs;
	TTSampleValue	*inSampleA,
					*inSampleB,
					*outSample;
	short			numchannels = out.numChannels;
	short			channel;
	
	if(in.numChannels != out.numChannels*2)
		return kTTErrGeneric;

	for(channel=0; channel<numchannels; channel++){
		inSampleA = in.sampleVectors[channel];
		inSampleB = in.sampleVectors[numchannels+channel];
		outSample = out.sampleVectors[channel];
		vs = in.vs;
		
		while(vs--)
			*outSample++ = (*inSampleB++ * (sin(attrPosition * 1.5707963))) + (*inSampleA++ * (sin((1 - attrPosition) * 1.5707963)));
	}
	return kTTErrNone;
}

