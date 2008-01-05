/* 
 * TTBlue Global Object
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTGlobal.h"
#include "TTAudioObject.h"

// The global instance of this class
TTGlobal	ttGlobalObject;


/****************************************************************************************************/

TTGlobal::TTGlobal()
{
	registerMessage(TT("getVersion"), (TTMethod)&TTGlobal::getVersion);
	registerParameter(TT("sr"), kTypeUInt32, &TTAudioObject::globalSr);

	setParameterValue(TT("sr"), 44100);
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

