/* 
 * TTBlue Data Object Base Class
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTDataObject.h"


/****************************************************************************************************/

TTDataObject::TTDataObject(const char* name)
	: TTObject(name)
{
	registerAttribute(TT("sr"),	kTypeUInt32, &sr, (TTSetterMethod)&TTDataObject::setSr);
	setAttributeValue(TT("sr"),	TTAudioObject::globalSr);
}


TTDataObject::~TTDataObject()
{
	;
}


TTErr TTDataObject::setSr(const TTValue& newValue)
{
	sr = newValue;
	srInv = 1.0/sr;
	srMill = sr * 0.001;
	sendMessage(TT("updateSr"));
	return kTTErrNone;
}
