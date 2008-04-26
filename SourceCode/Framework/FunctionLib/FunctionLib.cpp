/* 
 * Jamoma FunctionLib Base Class
 * Copyright © 2007 by Tim Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "FunctionLib.h"
#include "TTThread.h"


FunctionUnit::FunctionUnit(const char* functionName)
	: TTObject(functionName)
{
}

FunctionUnit::~FunctionUnit()
{
	;
}


/***************************************************************************
	Interface for Instantiating any FunctionLib
 ***************************************************************************/

#include "CosineFunction.h"
#include "LinearFunction.h"
#include "LowpassFunction.h"
#include "PowerFunction.h"
#include "TanhFunction.h"


// TODO: get rid of this MaxAPI include when we get rid of the defer_low() call
#include "ext.h"

static void delete_functionunit(FunctionUnit* functionUnit)
{
	delete functionUnit;
	functionUnit = NULL;
}

JamomaError FunctionLib::createUnit(const TTSymbol& unitName, FunctionUnit **unit)
{
	FunctionUnit* oldUnit = NULL;
	FunctionUnit* newUnit = NULL;
	
	if(*unit){
		TTSymbol& existingFunctionName = (*unit)->getName();
		if(unitName == existingFunctionName)
			return JAMOMA_ERR_NONE;
		else
			oldUnit = *unit;
	}

	// These should be alphabetized
	if(unitName == TT("cosine"))
		newUnit = (FunctionUnit*) new CosineFunction;
	else if(unitName == TT("linear"))
		newUnit = (FunctionUnit*) new LinearFunction;
	else if(unitName == TT("lowpass"))
		newUnit = (FunctionUnit*) new LowpassFunction;
	else if(unitName == TT("power"))
		newUnit = (FunctionUnit*) new PowerFunction;
	else if(unitName == TT("tanh"))
		newUnit = (FunctionUnit*) new TanhFunction;
	else{
		// Invalid function specified default to linear
//		TTLogError("rampLib: Invalid function: %s", (TTString)unitName);
		TTLogError("rampLib: Invalid function", (TTString)unitName);
		newUnit = (FunctionUnit*) new LinearFunction;
	}
	
	*unit = newUnit;
	if(oldUnit){
		// We can't sleep the main thread. So this is futile:
		//	TTThread::sleep(100);
		//	delete oldUnit;
		// TTQueue is not all ironed out just yet.  We should use that... 
		// Maybe through a delay on the TTScheduler, which isn't written at all.
		// So we'll use this nasty hack in the Max API to delete the old unit safely:
		defer_low(NULL, (method)delete_functionunit, (t_symbol*)oldUnit, 0, NULL);
	}
	return JAMOMA_ERR_NONE;
}


void FunctionLib::getUnitNames(TTValue& unitNames)
{
	unitNames.clear();
	unitNames.append(TT("cosine"));
	unitNames.append(TT("linear"));
	unitNames.append(TT("lowpass"));
	unitNames.append(TT("power"));
	unitNames.append(TT("tanh"));
}

