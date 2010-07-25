/* 
 * Jamoma Network Socket
 * Copyright © 2010, Tim Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTNetSocket.h"

void* TTNetSocketListener(void* anArgument)
{
	TTNetSocketPtr self = (TTNetSocketPtr)anArgument;
	self->Accept();
	return NULL;
}

