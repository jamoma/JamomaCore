/* 
 * SpatLib
 * Extension Class for Jamoma DSP
 * Copyright © 2011 by Trond Lossius, Nils Peters, and Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "SpatLib.h"

#include "SpatMatrix.h"
#include "SpatThru.h"

#include "TTSpat.h"


extern "C" TT_EXTENSION_EXPORT TTErr loadTTExtension(void)
{
	TTDSPInit();

	SpatMatrix::registerClass();
	SpatThru::registerClass();

	TTSpat::registerClass();
	
	return kTTErrNone;
}

