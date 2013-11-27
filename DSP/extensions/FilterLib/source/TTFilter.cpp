/* 
 *	filter≈
 *	Generalized filter wrapper object for Jamoma
 *	Copyright © 2010 by Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTFilter.h"

#define thisTTClass			TTFilter
#define thisTTClassName		"filter"
#define thisTTClassTags		"dspFilterLib, audio, processor"


TT_AUDIO_CONSTRUCTOR,
	mActualFilterObject(NULL),
	mFrequency(0),
	mQ(0)
{
	addAttributeWithSetter(Frequency, kTypeFloat64);
	addAttributeWithSetter(Q, kTypeFloat64);
	addAttributeWithSetter(Type, kTypeSymbol);
	
	addMessageWithArguments(getTypes);
	addMessage(clear);
	addMessageWithArguments(mode);	// some filters have a 'mode' attribute, some don't, so this is a message instead of an attribute 
	
	addUpdates(SampleRate);
	addUpdates(MaxNumChannels);
	
	setAttributeValue(kTTSym_maxNumChannels, arguments);
	setAttributeValue(TT("type"), TT("lowpass.1"));
	setAttributeValue(TT("mode"), TT("lowpass"));
	setAttributeValue(TT("frequency"), 1000.0);
	setAttributeValue(TT("q"), 1.0);
	setProcessMethod(processAudio);
}


// Destructor
TTFilter::~TTFilter()
{
	;
}
