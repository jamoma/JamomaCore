/* 
 * Jamoma Asynchronous Object Graph Layer
 * Creates a wrapper for TTObjects that can be used to build a control graph for asynchronous message passing.
 * Copyright © 2010, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTGraphOutlet.h"
#include "TTCallback.h"
#include "TTGraphDestination.h"
#include "TTGraphObject.h"


// C Callback from any Graph Destination objects we are observing
void TTGraphDestinationObserverCallback(TTGraphDestinationPtr self, TTValue& arg)
{
	// at the moment we only receive one callback, which is for the object being deleted
	self->mDestinationObject = NULL;
	self->mInletNumber = 0;
	self->mOwner->drop(*self);
}


// Implementation for Graph Destination class

TTGraphDestination::TTGraphDestination() :
	mDestinationObject(NULL),
	mInletNumber(0),
	mCallbackHandler(NULL),
	mOwner(NULL)
{
	create();
}


TTGraphDestination::~TTGraphDestination()
{
	if (mDestinationObject)
		mDestinationObject->unregisterObserverForNotifications(*mCallbackHandler);

	TTObjectRelease(&mCallbackHandler);
	
	mDestinationObject = NULL;
	mInletNumber = 0;
	mCallbackHandler = NULL;	
}


void TTGraphDestination::create()
{
	TTObjectInstantiate(TT("callback"), &mCallbackHandler, kTTValNONE);
	
	mCallbackHandler->setAttributeValue(TT("function"), TTPtr(&TTGraphDestinationObserverCallback));
	mCallbackHandler->setAttributeValue(TT("baton"), TTPtr(this));	
}


void TTGraphDestination::connect(TTGraphObjectPtr anObject, TTUInt16 fromOutletNumber)
{
	mDestinationObject = anObject;
	mInletNumber = fromOutletNumber;

	// dynamically add a message to the callback object so that it can handle the 'objectFreeing' notification
	mCallbackHandler->registerMessage(TT("objectFreeing"), (TTMethod)&TTCallback::notify, kTTMessagePassValue);
	
	// tell the source that is passed in that we want to watch it
	mDestinationObject->registerObserverForNotifications(*mCallbackHandler);
}


/*************************************************************/


TTErr TTGraphDestination::push(const TTDictionary& aDictionary)
{
	// TODO: We need to append the inlet number into the dictionary before sending it
	return mDestinationObject->push(aDictionary);
}



