/* 
 * TTCallback
 * Copyright © 2008, Théo de la Hogue & Tim Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTCallback.h"

#define thisTTClass			TTCallback
#define thisTTClassName		"callback"
#define thisTTClassTags		"system"

TT_BASE_OBJECT_CONSTRUCTOR,
	mFunction(NULL),
	mBaton(NULL)
{
	addAttribute(Function, kTypePointer);
	addAttribute(Baton, kTypePointer);
	
	// Théo says this is only used for debugging purposes [tap]
	addAttributeWithSetter(Owner, kTypeSymbol);
	
	addMessageWithArguments(notify);
}


TTCallback::~TTCallback()
{
	mFunction = NULL;
	mBaton = NULL;
	if (mOwner) {
		mOwner = kTTSymEmpty;
	}
}


TTErr TTCallback::notify(const TTValue& anInputValue, TTValue &anUnusedOutputValue)
{
	if (mFunction)
		mFunction(mBaton, anInputValue);
	
	return kTTErrNone;
}


TTErr TTCallback::setOwner(const TTValue& input)
{
	input.get(0, mOwner);
	cout << "TTCallback::setOwner() -- " << (const char*)mOwner << endl;
	return kTTErrNone;
}