/* 
 * TTBlue Data Object Base Class
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTDataObject.h"
#include "TTEnvironment.h"


/****************************************************************************************************/

TTDataObject::TTDataObject(TTValue& arguments)
	: TTObject(arguments)
{
	registerMessage(TT("test"), TTMethod(&TTObject::test));
}


TTDataObject::~TTDataObject()
{
	;
}

