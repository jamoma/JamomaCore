/* 
 * TTFunctionLib
 * Extension Class for TTBlue
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTDSP.h"
#include "CosineFunction.h"
#include "ExpFunction.h"
#include "LinearFunction.h"
#include "logFunction.h"
#include "LowpassFunction.h"
#include "PowerFunction.h"
#include "TanhFunction.h"


extern "C" TT_EXTENSION_EXPORT TTErr loadTTExtension(void)
{
	TTDSPInit();

	CosineFunction::registerClass();
	ExpFunction::registerClass();	
	LinearFunction::registerClass();
	LogFunction::registerClass();
	LowpassFunction::registerClass();
	PowerFunction::registerClass();
	TanhFunction::registerClass();
	
	return kTTErrNone;
}

