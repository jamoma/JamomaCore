/* 
 * TTNode
 * Copyright © 2008, Théo de la Hogue & Tim Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTCallback.h"

#define thisTTClass			TTCallback
#define thisTTClassName		"Callback"
#define thisTTClassTags		"system"

TT_OBJECT_CONSTRUCTOR,
	mFunction(NULL),
	mBaton(NULL)
{
	addAttribute(Function, kTypePointer);
	addAttribute(Baton, kTypePointer);
	
	addMessage(notify);
}


TTCallback::~TTCallback()
{
	;
}


TTErr TTCallback::notify(TTValue& arguments)
{
	if (mFunction)
		mFunction(mBaton, arguments);
	return kTTErrNone;
}

