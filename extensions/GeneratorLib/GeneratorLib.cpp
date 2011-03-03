/* 
 * GeneratorLib
 * Extension Class for Jamoma DSP
 * Copyright © 2009, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTDSP.h"
#include "TTAdsr.h"
#include "TTNoise.h"
#include "TTPhasor.h"
#include "TTRamp.h"
#include "TTWavetable.h"


extern "C" TT_EXTENSION_EXPORT TTErr TTLoadJamomaExtension_GeneratorLib(void)
{
	TTDSPInit();

	TTAdsr::registerClass();
	TTNoise::registerClass();	
	TTPhasor::registerClass();
	TTRamp::registerClass();
	TTWavetable::registerClass();
	
	return kTTErrNone;
}

