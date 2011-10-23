/* 
 * Jamoma Asynchronous Object Graph Layer
 * Creates a wrapper for TTObjects that can be used to build a control graph for asynchronous message passing.
 * Copyright © 2010, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTGraphSource.h"
#include "TTGraphInlet.h"
#include "TTCallback.h"
#include "TTGraphObject.h"

// C Callback from any Audio Graph Source objects we are observing
void TTGraphSourceObserverCallback(TTGraphSourcePtr self, TTValue& arg)
{
	// at the moment we only receive one callback, which is for the object being deleted
	self->mSourceObject = NULL;
	self->mOutletNumber = 0;
	self->mOwner->drop(*self);
}


// Implementation for Audio Graph Source class

TTGraphSource::TTGraphSource() :
	mSourceObject(NULL),
	mOutletNumber(0),
	mCallbackHandler(NULL),
	mOwner(NULL)
{
	create();
}


TTGraphSource::~TTGraphSource()
{
	if (mSourceObject)
		mSourceObject->unregisterObserverForNotifications(*mCallbackHandler);

	TTObjectRelease(&mCallbackHandler);
	
	mSourceObject = NULL;
	mOutletNumber = 0;
	mCallbackHandler = NULL;	
}


void TTGraphSource::create()
{
	TTObjectInstantiate(TT("callback"), &mCallbackHandler, kTTValNONE);
		
	mCallbackHandler->setAttributeValue(TT("owner"), TT("TTGraphSource"));	
	mCallbackHandler->setAttributeValue(TT("function"), TTPtr(&TTGraphSourceObserverCallback));
	mCallbackHandler->setAttributeValue(TT("baton"), TTPtr(this));	
}


void TTGraphSource::prepareDescription()
{
	mSourceObject->prepareDescription();
}


void TTGraphSource::getDescription(TTGraphDescription& desc)
{
	mSourceObject->getDescription(desc);
}


void TTGraphSource::connect(TTGraphObjectPtr anObject, TTUInt16 fromOutletNumber)
{
	mSourceObject = anObject;
	mOutletNumber = fromOutletNumber;

	// dynamically add a message to the callback object so that it can handle the 'objectFreeing' notification
	mCallbackHandler->registerMessage(TT("objectFreeing"), (TTMethod)&TTCallback::notify, kTTMessagePassValue);
	
	// tell the source that is passed in that we want to watch it
	mSourceObject->registerObserverForNotifications(*mCallbackHandler);
}	
