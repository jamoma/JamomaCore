/* 
 * TTBlue Object Base Class
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTObject.h"
#include "TTEnvironment.h"


TTMessage::TTMessage(const TTSymbolPtr newName, TTMethod newMethod, TTMessageFlags newFlags)
	: TTObject("message"), name(newName), method(newMethod), flags(newFlags)
{
	;
}


TTMessage::~TTMessage()
{
	;
}

