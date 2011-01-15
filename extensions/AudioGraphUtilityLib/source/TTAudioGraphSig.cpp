/* 
 * TTAudioGraphSig Object
 * Copyright © 2010, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTAudioGraphSig.h"

#define thisTTClass			TTAudioGraphSig
#define thisTTClassName		"audio.sig"
#define thisTTClassTags		"audio, graph"


TT_AUDIO_CONSTRUCTOR,
	mValue(0)
{
	addAttribute(Value, kTypeFloat64);
	addMessage(dictionary);
	
	setAttributeValue(TT("maxNumChannels"), arguments);		
	setProcessMethod(processAudio);
}


// Destructor
TTAudioGraphSig::~TTAudioGraphSig()
{
	;
}


TTErr TTAudioGraphSig::dictionary(TTValue& input)
{
	TTDictionaryPtr	d = NULL;
	TTValue			v;
	TTErr			err;
	
	input.get(0, (TTPtr*)(&d));
	err = d->getValue(v);
	if (!err)
		mValue = v;
	
	return err;
}
