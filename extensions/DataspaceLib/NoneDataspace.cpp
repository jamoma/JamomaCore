/* 
 * Jamoma DataspaceLib: NoneDataspace
 * Copyright © 2007, Tim Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "NoneDataspace.h"


#define thisTTClass			NoneUnit
#define thisTTClassName		"unit.none"
#define thisTTClassTags		"dataspace, none"

TT_DATASPACEUNIT_CONSTRUCTOR{;}
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

TT_DATASPACELIB_CONSTRUCTOR
//NoneDataspace::NoneDataspace()
//	: DataspaceLib("none", "none")
{
	// Create one of each kind of unit, and cache them in a hash
//	registerUnit(new NoneUnit,	SymbolGen("none"));
	
	// Now that the cache is created, we can create a set of default units
	setInputUnit(neutralUnit);
	setOutputUnit(neutralUnit);
}


NoneDataspace::~NoneDataspace()
{
	;
}

#undef thisTTClass
#undef thisTTClassName
#undef thisTTClassTags
