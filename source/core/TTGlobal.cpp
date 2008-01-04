/* 
 * TTBlue Global Object
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTGlobal.h"


// The global instance of this class
TTGlobal	ttGlobalObject;


/****************************************************************************************************/

TTGlobal::TTGlobal()
{
	registerMessage(TT("getVersion"), (TTMethod)&TTGlobal::getVersion);
//	registerParameter(TT("bypass"), kTypeInt32, &attrBypass, (TTGetterMethod)NULL, (TTSetterMethod)&TTDCBlock::setBypass);

//	setMaxNumChannels(newMaxNumChannels);	// set the max num channels
//	setBypass(kTTVal0);					// set default (bypass=no) and the process method
//	setParameterValue(TT("maxNumChannels"),	newMaxNumChannels);
//	setParameterValue(TT("bypass"),			kTTBoolNo);
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

