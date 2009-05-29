/* 
 * Jamoma FunctionLib Base Class
 * Copyright © 2007 by Tim Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "FunctionLib.h"


/***************************************************************************
	Interface for Instantiating any FunctionLib
 ***************************************************************************/

/*
static void delete_functionunit(TTAudioObject* functionUnit)
{
	TTObjectRelease(functionUnit);
	*functionUnit = NULL;
}
*/

TTErr FunctionLib::createUnit(const TTSymbolPtr unitName, TTAudioObject **unit)
{
	TTUInt16	numChannels = 1;
	
	return TTObjectInstantiate(unitName, unit, numChannels);
}


void FunctionLib::getUnitNames(TTValue& unitNames)
{
	TTGetRegisteredClassNamesForTags(unitNames, TT("function"));
}

