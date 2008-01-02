/* 
 * TTBlue Audio Object Base Class
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTAudioObject.h"


/****************************************************************************************************/

TTAudioObject::TTAudioObject()
{
	setProcess(&TTAudioObject::bypassProcess);
}


TTAudioObject::~TTAudioObject()
{
	;
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

