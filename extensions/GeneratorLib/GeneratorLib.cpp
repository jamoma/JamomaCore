/* 
 * GeneratorLib
 * Extension Class for Jamoma DSP
 * Copyright © 2009, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTDSP.h"
#include "TTAdsr.h"
#include "TTNoise.h"
#include "TTPhasor.h"
#include "TTRamp.h"
#include "TTWavetable.h"


extern "C" TT_EXTENSION_EXPORT TTErr loadTTExtension(void)
{
	TTDSPInit();

	TTAdsr::registerClass();
	TTNoise::registerClass();	
	TTPhasor::registerClass();
	TTRamp::registerClass();
	TTWavetable::registerClass();
	
	return kTTErrNone;
}

