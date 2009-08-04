/* 
 * TTBlue Object Base Class
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __TT_MESSAGE_H__
#define __TT_MESSAGE_H__

#include "TTObject.h"


/**	A convenience macro to be used by subclasses for registering messages.
	@param	name	The name of the message, and also the name of the classes' method to be called.
*/
#define registerMessageSimple(name)    registerMessage(TT(#name), (TTMethod)& thisTTClass ::name , kTTMessagePassNone)


/**	A convenience macro to be used by subclasses for registering messages.
	@param	name	The name of the message, and also the name of the classes' method to be called.
*/
#define registerMessageWithArgument(name)    registerMessage(TT(#name), (TTMethod)& thisTTClass ::name )


/****************************************************************************************************/
// Class Specifications

/**
	This class represents a single message, as used by the TTObject class.
	At the moment we define it in the same file because we are sharing the typedef
	for TTMethod.
*/
class TTEXPORT TTMessage : public TTObject {
private:
public:
	// Should make this group private, but to get things working initially, we're leaving them public...
	const TTSymbolPtr	name;		///< the name of the message.
	TTMessageFlags		flags;		///< define the behavior of the message.
	TTMethod			method;		///< method associated with this message.

	TTMessage(const TTSymbolPtr newName, TTMethod newMethod, TTMessageFlags newFlags);
	virtual ~TTMessage();
};


#endif // __TT_MESSAGE_H__

