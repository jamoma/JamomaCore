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
	registerAttribute(kTTSym_sampleRate, kTypeUInt32, &sr, (TTSetterMethod)&TTDataObject::setSr);
	setAttributeValue(kTTSym_sampleRate, (uint)ttEnvironment->mSampleRate);
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
