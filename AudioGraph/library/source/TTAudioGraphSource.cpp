/** @file
 *
 * @ingroup audioGraphLibrary
 *
 * @brief Represents one connection between two AudioGraph objects
 *
 * @details TTAudioGraphSource is an upstream connection from a #TTAudioGraphInlet of a #TTAudioGraphObject to a "TTAudioGraphOutlet of an upstream #TTAudioGraphObject.
 * The relationship of a source to other parts of the audio graph hierarchy is as follows:
 *
 * - A graph may have many objects.
 * - An object may have many inlets.
 * - An inlet may have many signals (sources) connected.
 * - A signal may have many channels.
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
	mCallbackHandler("callback"),
	mOwner(NULL)
{
	create();
}


TTAudioGraphSource::TTAudioGraphSource(const TTAudioGraphSource& original) :
	mSourceObject(NULL),
	mOutletNumber(0),
	mCallbackHandler("callback"),
	mOwner(NULL)
{
	create();
	mOwner = original.mOwner;
	
	// NOTE: See notes below in TTAudioGraphInlet copy constructor...
	// NOTE: When vector of sources is resized, it is possible for an object to be created and immediately copied -- prior to a 'connect' method call
	// NOTE: Are we ever called after connecting?  If so, then we need to set up the connection...
	
	if (original.mSourceObject)
		connect(original.mSourceObject, original.mOutletNumber);
}



TTAudioGraphSource::~TTAudioGraphSource()
{
	if (mSourceObject)
		mSourceObject->unregisterObserverForNotifications(mCallbackHandler);
	
	mSourceObject = NULL;
	mOutletNumber = 0;
}


void TTAudioGraphSource::create()
{
	mCallbackHandler.set("function", TTPtr(&TTAudioGraphSourceObserverCallback));
	mCallbackHandler.set("baton", TTPtr(this));
}


void TTAudioGraphSource::setOwner(TTAudioGraphInletPtr theOwningInlet)
{
	mOwner = theOwningInlet;
}


TTAudioGraphSource& TTAudioGraphSource::operator=(const TTAudioGraphSource& original)
{
	mSourceObject = NULL;
	mOutletNumber = 0;
	mCallbackHandler = NULL;
	mOwner = NULL;
	
	// TODO: We're probably leaking memory here, because mCallbackHandler is potentially never freed...
	// However, if we don't NULL the mCallbackHandler
	// then we end up with crashes when we do something like close a Max patcher after editing connections while running.
	
	create();
	mOwner = original.mOwner;
	
	// TODO: evaluate if this is doing the correct thing:
	// - we can copy the owner ptr for sure
	// - we definitely can not copy the mCallbackHandler pointer
	// - not certain about the mSourceObject
	
	if (original.mSourceObject && original.mSourceObject->valid)
		connect(original.mSourceObject, original.mOutletNumber);
	
	return *this;
}


void TTAudioGraphSource::connect(TTAudioGraphObjectBasePtr anObject, TTUInt16 fromOutletNumber)
{
	mSourceObject = anObject;
	mOutletNumber = fromOutletNumber;

	// dynamically add a message to the callback object so that it can handle the 'objectFreeing' notification
	mCallbackHandler.instance()->registerMessage(TT("objectFreeing"), (TTMethod)&TTCallback::notify, kTTMessagePassValue);
	
	// tell the source that is passed in that we want to watch it
	mSourceObject->registerObserverForNotifications(mCallbackHandler);
}	
