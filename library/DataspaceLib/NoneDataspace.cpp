/* 
 * Jamoma DataspaceLib: NoneDataspace
 * Copyright © 2007, Tim Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "NoneDataspace.h"


NoneUnit::NoneUnit()
	: DataspaceUnit("none")
{;}


NoneUnit::~NoneUnit()
{;}
		

void NoneUnit::convertToNeutral(const TTValue& inValue, TTValue& neutralValue)
{
	neutralValue = inValue;
}


void NoneUnit::convertFromNeutral(TTValue& neutralValue, TTValue& outValue)
{
	outValue = neutralValue;
}


/***********************************************************************************************/
NoneDataspace::NoneDataspace()
	: DataspaceLib("none", "none")
{
	// Create one of each kind of unit, and cache them in a hash
	registerUnit(new NoneUnit,	TT("none"));
	
	// Now that the cache is created, we can create a set of default units
	setInputUnit(neutralUnit);
	setOutputUnit(neutralUnit);
}


NoneDataspace::~NoneDataspace()
{
	;
}
