/* 
 * TTBlue Global Object
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTGlobal.h"
#include "TTAudioObject.h"

TTGlobal*	ttGlobalObject = NULL;

/****************************************************************************************************/

TTGlobal::TTGlobal()
	: TTObject("global")
{
	registerMessage(TT("getVersion"), (TTMethod)&TTGlobal::getVersion);

	// The global object, and calls for setting the global SR, may come before any TTAudioObject is
	// instantiated.  So the attribute definition has been moved into the TTGlobal class itself.
	registerAttribute(TT("sr"), kTypeUInt32, &TTAudioObject::globalSr);
	setAttributeValue(TT("sr"), 44100);
}


TTGlobal::~TTGlobal()
{
	;
}


TTErr TTGlobal::getVersion(TTValue &value)
{
	value = "0.5.0";
	return kTTErrNone;
}

