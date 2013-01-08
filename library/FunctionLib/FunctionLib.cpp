/* 
 * Jamoma FunctionLib Base Class
 * Copyright © 2007 by Tim Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "FunctionLib.h"


/***************************************************************************
	Interface for Instantiating any FunctionLib
 ***************************************************************************/

/*
static void delete_functionunit(TTAudioObject* functionUnit)
{
	TTObjectBaseRelease(functionUnit);
	*functionUnit = NULL;
}
*/

TTErr FunctionLib::createUnit(const TTSymbol unitName, TTObjectBase **unit)
{
	TTUInt16	numChannels = 1;
	
	return TTObjectBaseInstantiate(unitName, unit, numChannels);
}


void FunctionLib::getUnitNames(TTValue& unitNames)
{
	TTGetRegisteredClassNamesForTags(unitNames, kTTSym_function);
}

