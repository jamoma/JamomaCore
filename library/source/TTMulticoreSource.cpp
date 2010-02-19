/* 
 * Multicore Audio Graph Layer for Jamoma DSP
 * Creates a wrapper for TTAudioObjects that can be used to build an audio processing graph.
 * Copyright © 2010, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTMulticoreObject.h"
#include "TTMulticoreInlet.h"
#include "TTCallback.h"


// C Callback from any Multicore Source objects we are observing
void TTMulticoreSourceObserverCallback(TTMulticoreSourcePtr self, TTValue& arg)
{
	// at the moment we only receive one callback, which is for the object being deleted
	self->mSourceObject = NULL;
	self->mOutletNumber = 0;
	self->mOwner->drop(*self);
}


// Implementation for Multicore Source class

TTMulticoreSource::TTMulticoreSource() :
	mSourceObject(NULL),
	mOutletNumber(0),
	mCallbackHandler(NULL),
	mOwner(NULL)
{
	create();
}


TTMulticoreSource::~TTMulticoreSource()
{
	if (mSourceObject)
		mSourceObject->unregisterObserverForNotifications(*mCallbackHandler);

	TTObjectRelease(&mCallbackHandler);
	
	mSourceObject = NULL;
	mOutletNumber = 0;
	mCallbackHandler = NULL;	
}


void TTMulticoreSource::create()
{
	TTObjectInstantiate(TT("Callback"), &mCallbackHandler, kTTValNONE);
	
	mCallbackHandler->setAttributeValue(TT("Function"), TTPtr(&TTMulticoreSourceObserverCallback));
	mCallbackHandler->setAttributeValue(TT("Baton"), TTPtr(this));	
}


void TTMulticoreSource::connect(TTMulticoreObjectPtr anObject, TTUInt16 fromOutletNumber)
{
	mSourceObject = anObject;
	mOutletNumber = fromOutletNumber;

	// dynamically add a message to the callback object so that it can handle the 'objectFreeing' notification
	mCallbackHandler->registerMessage(TT("objectFreeing"), (TTMethod)&TTCallback::notify, kTTMessagePassValue);
	
	// tell the source that is passed in that we want to watch it
	mSourceObject->registerObserverForNotifications(*mCallbackHandler);
}	
