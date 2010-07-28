/* 
 * TTBlue Object Base Class
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTObject.h"
#include "TTEnvironment.h"


TTMessage::TTMessage(const TTSymbolPtr newName, TTMethod newMethod, TTMessageFlags newFlags)
	: TTObject(kTTValNONE), name(newName), flags(newFlags), method(newMethod)
{
	;
}


TTMessage::~TTMessage()
{
	;
}

