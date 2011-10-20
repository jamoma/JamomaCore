/* 
 * FunctionLib
 * Extension Class for Jamoma DSP
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTDSP.h"
#include "CosineFunction.h"
#include "ExpFunction.h"
#include "LinearFunction.h"
#include "LogFunction.h"
#include "LowpassFunction.h"
#include "PowerFunction.h"
#include "SmoothPolynomialFunction.h"
#include "TanhFunction.h"

#include "Function.h"


extern "C" TT_EXTENSION_EXPORT TTErr TTLoadJamomaExtension_FunctionLib(void)
{
	TTDSPInit();

	CosineFunction::registerClass();
	ExpFunction::registerClass();	
	LinearFunction::registerClass();
	LogFunction::registerClass();
	LowpassFunction::registerClass();
	PowerFunction::registerClass();
	SmoothPolynomialFunction::registerClass();
	TanhFunction::registerClass();
	
	TTFunction::registerClass();
	
	return kTTErrNone;
}

