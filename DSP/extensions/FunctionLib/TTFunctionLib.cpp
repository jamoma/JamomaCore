/* 
 * FunctionLib
 * Extension Class for Jamoma DSP
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTDSP.h"
#include "TTCosineFunction.h"
#include "TTCrossFadeInFunction.h"
#include "TTCrossFadeOutFunction.h"
#include "TTExpFunction.h"
#include "TTLinearFunction.h"
#include "TTLogFunction.h"
#include "TTLowpassFunction.h"
#include "TTPowerFunction.h"
#include "TTSmoothPolynomialFunction.h"
#include "TTTanhFunction.h"

#include "TTFunction.h"


extern "C" TT_EXTENSION_EXPORT TTErr TTLoadJamomaExtension_FunctionLib(void)
{
	TTDSPInit();

	TTCosineFunction::registerClass();
	TTExpFunction::registerClass();
	TTCrossFadeInFunction::registerClass();
	TTCrossFadeOutFunction::registerClass();
	TTLinearFunction::registerClass();
	TTLogFunction::registerClass();
	TTLowpassFunction::registerClass();
	TTPowerFunction::registerClass();
	TTSmoothPolynomialFunction::registerClass();
	TTTanhFunction::registerClass();
	
	TTFunction::registerClass();
	
	return kTTErrNone;
}

