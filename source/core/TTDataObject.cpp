/* 
 * TTBlue Data Object Base Class
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTDataObject.h"


/****************************************************************************************************/

TTDataObject::TTDataObject(const char* name, TTUInt16 newMaxNumChannels)
	: TTObject(name)
{
//	registerAttribute(TT("maxNumChannels"), kTypeUInt8,		&maxNumChannels,	(TTSetterMethod)&TTDataObject::setMaxNumChannels);
//	registerAttribute(TT("sr"),				kTypeUInt32,	&sr,				(TTSetterMethod)&TTDataObject::setSr);
//	registerAttribute(TT("bypass"),			kTypeBoolean,	&attrBypass,		(TTSetterMethod)&TTDataObject::setBypass);
//	registerAttribute(TT("processInPlace"), kTypeBoolean,	&attrProcessInPlace);

	// Set Defaults...
//	setAttributeValue(TT("maxNumChannels"),	newMaxNumChannels);
//	setAttributeValue(TT("sr"),				globalSr);
//	setProcess(&TTDataObject::bypassProcess);
//	setAttributeValue(TT("bypass"),			kTTBoolNo);
//	setAttributeValue(TT("processInPlace"), kTTBoolNo);
}


TTDataObject::~TTDataObject()
{
	;
}
		
/*
TTErr TTDataObject::setMaxNumChannels(const TTValue& newValue)
{
	maxNumChannels = newValue;
	sendMessage(TT("updateMaxNumChannels"));
	return kTTErrNone;
}


TTErr TTDataObject::setSr(const TTAttribute&, const TTValue& newValue)
{
	sr = newValue;
	srInv = 1.0/sr;
	srMill = sr * 0.001;
	sendMessage(TT("updateSr"));
	return kTTErrNone;
}


TTErr TTDataObject::bypassProcess(TTAudioSignal& in, TTAudioSignal& out)
{
	short			vs;
	TTSampleValue	*inSample,
					*outSample;
	short			numchannels = TTAudioSignal::getMinChannelCount(in, out);
	short			channel;

	for(channel=0; channel<numchannels; channel++){
		inSample = in.sampleVectors[channel];
		outSample = out.sampleVectors[channel];
		vs = in.getVectorSize();

		while(vs--)
			*outSample++ = *inSample++;
	}
	return kTTErrNone;
}


TTErr TTDataObject::setProcess(TTProcessMethod newProcessMethod)
{
	processMethod = newProcessMethod;
	if(!attrBypass)
		currentProcessMethod = processMethod;
	return kTTErrNone;
}


TTErr TTDataObject::setBypass(const TTValue& value)
{
	attrBypass = value;
	if(attrBypass)
		currentProcessMethod = &TTAudioObject::bypassProcess;
	else
		currentProcessMethod = processMethod;
	return kTTErrNone;
}


TTErr TTDataObject::process(TTAudioSignal& in, TTAudioSignal& out)
{
	return (this->*currentProcessMethod)(in, out);
}


TTErr TTDataObject::process(TTAudioSignal& out)
{
	return (this->*currentProcessMethod)(out, out);
}
*/
