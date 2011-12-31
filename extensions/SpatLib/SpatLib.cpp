/* 
 * SpatLib
 * Extension Class for Jamoma DSP
 * Copyright © 2011 by Trond Lossius, Nils Peters, and Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTDSP.h"
#include "TTSpat.h"
#include "SpatDBAP.h"
#include "SpatMatrix.h"
#include "SpatThru.h"

extern "C" TT_EXTENSION_EXPORT TTErr TTLoadJamomaExtension_SpatLib(void)
{
	TTDSPInit();
	TTSpat::registerClass();
	SpatMatrix::registerClass();
	SpatThru::registerClass();
	SpatDBAP::registerClass();	
	return kTTErrNone;
}

