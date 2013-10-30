/** @file
 *
 * @ingroup foundationDataspaceLib
 *
 * @brief The #NoneDataspace is a dataspace unit for situations where no dataspace conversions are desired or relevant. It contains only one unit, the #NoneUnit, and that unit does not perform any conversions.
 *
 * @details The neutral unit of the angle dataspace is none.
 *
 * @authors Tim Place, Nils Peters, Trond Lossius, ...
 *
 * @copyright Copyright © 2007 by Nils Peters @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#include "NoneDataspace.h"


#define thisTTClass			NoneUnit
#define thisTTClassName		"unit.none"
#define thisTTClassTags		"dataspace.unit, none"

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
#define thisTTClassTags		"foundationDataspaceLib, dataspace, none"

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
