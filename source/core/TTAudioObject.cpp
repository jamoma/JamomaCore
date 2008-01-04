/* 
 * TTBlue Audio Object Base Class
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTAudioObject.h"

TTUInt32	TTAudioObject::globalSr = 44100;
TTBoolean	TTAudioObject::initialized = NO;

/****************************************************************************************************/

TTAudioObject::TTAudioObject(TTUInt8 newMaxNumChannels)
{
	if(!initialized){
		registerGlobalParameter("sr", kTypeUInt32, &TTAudioObject::globalSr, NULL, NULL);
		initialized = YES;
	}

	registerParameter(TT("maxNumChannels"), kTypeUInt8, &maxNumChannels);
	registerParameter(TT("sr"),				kTypeUInt32, &sr, (TTGetterMethod)NULL, (TTSetterMethod)&TTAudioObject::setSr);

//	maxNumChannels = newMaxNumChannels;
//	setSr(globalSr);
	setParameterValue(TT("maxNumChannels"), newMaxNumChannels);
	setParameterValue(TT("sr"), globalSr);
	setProcess(&TTAudioObject::bypassProcess);
}


TTAudioObject::~TTAudioObject()
{
	;
}
		

TTErr TTAudioObject::setMaxNumChannels(const TTValue& newValue)
{
	maxNumChannels = newValue;
	return kTTErrNone;
}


TTErr TTAudioObject::setSr(const TTValue& newValue)
{
	sr = newValue;
	srInv = 1.0/sr;
	srMill = sr * 0.0001;
	return kTTErrNone;
}


TTErr TTAudioObject::bypassProcess(TTAudioSignal& in, TTAudioSignal& out)
{
	short			vs;
	TTSampleValue	*inSample,
					*outSample;
	short			numchannels = TTAudioSignal::getMinChannelCount(in, out);
	short			channel;

	for(channel=0; channel<numchannels; channel++){
		inSample = in.sampleVectors[channel];
		outSample = out.sampleVectors[channel];
		vs = in.vs;

		while(vs--)
			*outSample++ = *inSample++;
	}
	return kTTErrNone;
}


TTErr TTAudioObject::setProcess(TTProcessMethod newProcessMethod)
{
	processMethod = newProcessMethod;
	return kTTErrNone;
}


TTErr TTAudioObject::process(TTAudioSignal& in, TTAudioSignal& out)
{
	return (this->*processMethod)(in, out);
}

