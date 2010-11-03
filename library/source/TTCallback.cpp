/* 
 * TTNode
 * Copyright © 2008, Théo de la Hogue & Tim Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTCallback.h"

#define thisTTClass			TTCallback
#define thisTTClassName		"callback"
#define thisTTClassTags		"system"

TT_OBJECT_CONSTRUCTOR,
	mFunction(NULL),
	mBaton(NULL),
	mOwner(NULL)
{
	addAttribute(Function, kTypePointer);
	addAttribute(Baton, kTypePointer);
	
	addAttribute(Owner, kTypeSymbol);
	
	addMessageWithArgument(notify);
}


TTCallback::~TTCallback()
{
	mFunction = NULL;
	
	delete mBaton;		// to -- there is a warning here... However mBaton is often a TTValue we have to delete... 
	mBaton = NULL;
}


TTErr TTCallback::notify(TTValue& arguments)
{
	if (mFunction)
		mFunction(mBaton, arguments);
	
	return kTTErrNone;
}

