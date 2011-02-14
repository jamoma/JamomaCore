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

TT_BASE_OBJECT_CONSTRUCTOR,
	mFunction(NULL),
	mBaton(NULL),
	mOwner(NULL)
{
	addAttribute(Function, kTypePointer);
	addAttribute(Baton, kTypePointer);
	
	// Théo says this is only used for debugging purposes [tap]
	addAttribute(Owner, kTypeSymbol);
	
	addMessageWithArgument(notify);
}


TTCallback::~TTCallback()
{
	mFunction = NULL;
	mBaton = NULL;
}


TTErr TTCallback::notify(TTValue& arguments)
{
	if (mFunction)
		mFunction(mBaton, arguments);
	
	return kTTErrNone;
}

