/* 
 * Jamoma DataspaceLib: NoneDataspace
 * Copyright © 2007, Tim Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "NoneDataspace.h"


#define thisTTClass			NoneUnit
#define thisTTClassName		"unit.none"
#define thisTTClassTags		"dataspace, none"

TT_OBJECT_CONSTRUCTOR,
TTDataspaceUnit(arguments)
{;}

NoneUnit::~NoneUnit(){;}		

void NoneUnit::convertToNeutral(const TTValue& input, TTValue& output)
{
	output = input;
}


void NoneUnit::convertFromNeutral(const TTValue& input, TTValue& output)
{
	output = input;
}


#undef thisTTClass
#undef thisTTClassName
#undef thisTTClassTags

/***********************************************************************************************/

#define thisTTClass			NoneDataspace
#define thisTTClassName		"dataspace.none"
#define thisTTClassTags		"dataspace, none"

TT_OBJECT_CONSTRUCTOR
{
	TTErr err;
	
	// Create one of each kind of unit, and cache them in a hash
	registerUnit(TT("unit.none"),	TT("none"));
	
	// Set our neutral unit (the unit through which all conversions are made)
	neutralUnit = TT("none");
	
	// Now that the cache is created, we can create a set of default units
	err = setInputUnit(neutralUnit);
	if (err)
		throw TTException("Could not create neutralUnit for NoneDataspace");

	err = setOutputUnit(neutralUnit);
	if (err)
		throw TTException("Could not create neutralUnit for NoneDataspace");	
}


NoneDataspace::~NoneDataspace()
{
	;
}

#undef thisTTClass
#undef thisTTClassName
#undef thisTTClassTags
