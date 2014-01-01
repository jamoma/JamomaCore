/** @file
 *
 * @ingroup foundationLibrary
 *
 * @brief This class is used to create a backward communication to notify a client that something changed in the #TTnode
 *
 * @details
 *
 * @todo Use the TTObjectBase class fonctionnality besause TTNode is also a TTObjectBase
 *
 * @authors Théo de la Hogue, Tim Place, Nathan Wolek, Trond Lossius
 *
 * @copyright Copyright © 2009, Théo de la Hogue and Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTCallback.h"

#define thisTTClass			TTCallback
#define thisTTClassName		"callback"
#define thisTTClassTags		"system"

TT_BASE_OBJECT_CONSTRUCTOR,
	mFunction(NULL),
	mBaton(NULL),
    mNotification(kTTSym_notify)
{
	addAttribute(Function, kTypePointer);
	addAttribute(Baton, kTypePointer);
    addAttributeWithSetter(Notification, kTypeSymbol);
	
    // by default the callback is sensitive to the kTTSym_notify notification sent from a TTObject
    registerMessage(mNotification, (TTMethod)& TTCallback::notify);
}

TTCallback::~TTCallback()
{
	mFunction = NULL;
	mBaton = NULL;
}

TTErr TTCallback::setNotification(const TTValue& value)
{
    if (value.size() == 1) {
        
        if (value[0].type() == kTypeSymbol) {
        
            removeMessage(mNotification);
            
            mNotification = value[0];
            
            return registerMessage(mNotification, (TTMethod)& TTCallback::notify);
        }
    }
    
    return kTTErrGeneric;
}

TTErr TTCallback::notify(const TTValue& anInputValue, TTValue &anUnusedOutputValue)
{
	if (mFunction)
		mFunction(mBaton, anInputValue);
	
	return kTTErrNone;
}