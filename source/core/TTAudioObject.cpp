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
	setProcess(bypassProcess);
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
	TTSampleValue	temp;

	for(channel=0; channel<numchannels; channel++){
		inSample = in->vectors[channel];
		outSample = out->vectors[channel];
		vs = in->vs;

		while(vs--)
			*outSample++ = *inSample++;
	}
	return TT_ERR_NONE;
}


TTErr TTAudioObject::setProcess(TTProcessMethod processMethod)
{
	process = processMethod;
}
