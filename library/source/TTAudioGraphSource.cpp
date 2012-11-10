/** @file
 *
 * @ingroup audioGraphLibrary
 *
 * @brief AudioGraph Audio Graph Layer for Jamoma DSP
 *
 * @details
 *
 * @authors Timothy Place, Trond Lossius
 *
 * @copyright Copyright © 2010, Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#include "TTAudioGraphObject.h"
#include "TTAudioGraphInlet.h"
#include "TTCallback.h"


// C Callback from any AudioGraph Source objects we are observing
void TTAudioGraphSourceObserverCallback(TTAudioGraphSourcePtr self, TTValue& arg)
{
	// at the moment we only receive one callback, which is for the object being deleted
	self->mSourceObject = NULL;
	self->mOutletNumber = 0;
	self->mOwner->drop(*self);
}


// Implementation for AudioGraph Source class

TTAudioGraphSource::TTAudioGraphSource() :
	mSourceObject(NULL),
	mOutletNumber(0),
	mCallbackHandler(NULL),
	mOwner(NULL)
{
	create();
}


TTAudioGraphSource::~TTAudioGraphSource()
{
	if (mSourceObject)
		mSourceObject->unregisterObserverForNotifications(*mCallbackHandler);

	TTObjectRelease(&mCallbackHandler);
	
	mSourceObject = NULL;
	mOutletNumber = 0;
	mCallbackHandler = NULL;	
}


void TTAudioGraphSource::create()
{
	TTObjectInstantiate(TT("callback"), &mCallbackHandler, kTTValNONE);
	
	mCallbackHandler->setAttributeValue(TT("function"), TTPtr(&TTAudioGraphSourceObserverCallback));
	mCallbackHandler->setAttributeValue(TT("baton"), TTPtr(this));	
}


void TTAudioGraphSource::connect(TTAudioGraphObjectPtr anObject, TTUInt16 fromOutletNumber)
{
	mSourceObject = anObject;
	mOutletNumber = fromOutletNumber;

	// dynamically add a message to the callback object so that it can handle the 'objectFreeing' notification
	mCallbackHandler->registerMessage(TT("objectFreeing"), (TTMethod)&TTCallback::notify, kTTMessagePassValue);
	
	// tell the source that is passed in that we want to watch it
	mSourceObject->registerObserverForNotifications(*mCallbackHandler);
}	
