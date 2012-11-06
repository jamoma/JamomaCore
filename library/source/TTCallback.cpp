/** @file
 * @ingroup foundation
 *
 * @brief This class is used to create a backward communication to notify a client that something changed in the #TTnode
 *
 * @details
 *
 * @todo Use the TTObject class fonctionnality besause TTNode is also a TTObject
 *
 * @authors Théo de la Hogue, Tim Place, Nathan Wolek, Trond Lossius
 *
 * @copyright This code is licensed under the terms of the "New BSD License" @n
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