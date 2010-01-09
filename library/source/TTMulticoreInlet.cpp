/* 
 * Multicore Audio Graph Layer for Jamoma DSP
 * Creates a wrapper for TTAudioObjects that can be used to build an audio processing graph.
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTMulticoreObject.h"
#include "TTMulticoreInlet.h"

#define thisTTClass			TTMulticoreSource
#define thisTTClassName		"multicore.source"
#define thisTTClassTags		"audio, multicore, source"


TTMulticoreSource::TTMulticoreSource() :
	TTObject(kTTValNONE),
	mSourceObject(NULL),
	mOutletNumber(0)
{
	;
}


TTMulticoreSource::~TTMulticoreSource()
{
	// TODO: inorder to listen for notifications, I have to be a real object!
	mSourceObject->unregisterObserverForNotifications(*this);
}


void TTMulticoreSource::connect(TTMulticoreObjectPtr anObject, TTUInt16 fromOutletNumber)
{
	mSourceObject = anObject;
	mOutletNumber = fromOutletNumber;
	
	// tell the source that is passed in that we want to watch it
	mSourceObject->registerObserverForNotifications(*this);
}	
