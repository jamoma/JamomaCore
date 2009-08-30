/* 
 * Jamoma DataspaceLib: DistanceDataspace
 * Copyright © 2007, Tim Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "DistanceDataspace.h"


#define thisTTClass			CentimeterUnit
#define thisTTClassName		"unit.centimeter"
#define thisTTClassTags		"dataspace, distance"

TT_DATASPACEUNIT_CONSTRUCTOR{;}
CentimeterUnit::~CentimeterUnit(){;}		

void CentimeterUnit::convertToNeutral(const TTValue& input, TTValue& output)
{
//	output.setSize(1);
//	*output = atom_getfloat(inputAtoms) * 0.01;
	output = TTFloat64(input) * 0.01;
}


void CentimeterUnit::convertFromNeutral(const TTValue& input, TTValue& output)
{
//	output.setSize(1);
//	atom_setfloat(*outputAtoms, *input * 100.0);
	output = TTFloat64(input) * 100.0;
}


#undef thisTTClass
#undef thisTTClassName
#undef thisTTClassTags

/***********************************************************************************************/

#define thisTTClass			FootUnit
#define thisTTClassName		"unit.foot"
#define thisTTClassTags		"dataspace, distance"

TT_DATASPACEUNIT_CONSTRUCTOR{;}
FootUnit::~FootUnit(){;}		

void FootUnit::convertToNeutral(const TTValue& input, TTValue& output)
{
//	output.setSize(1);
//	*output = atom_getfloat(inputAtoms) / 3.281;
	output = TTFloat64(input) / 3.281;
}


void FootUnit::convertFromNeutral(const TTValue& input, TTValue& output)
{
//	output.setSize(1);
//	atom_setfloat(*outputAtoms, (*input * 3.281));
	output = TTFloat64(input) * 3.281;
}


#undef thisTTClass
#undef thisTTClassName
#undef thisTTClassTags

/***********************************************************************************************/

#define thisTTClass			InchUnit
#define thisTTClassName		"unit.inch"
#define thisTTClassTags		"dataspace, distance"

TT_DATASPACEUNIT_CONSTRUCTOR{;}
InchUnit::~InchUnit(){;}		

void InchUnit::convertToNeutral(const TTValue& input, TTValue& output)
{
//	output.setSize(1);
//	*output = atom_getfloat(inputAtoms) / 39.37;
	output = TTFloat64(input) / 39.37;
}


void InchUnit::convertFromNeutral(const TTValue& input, TTValue& output)
{
//	output.setSize(1);
//	atom_setfloat(*outputAtoms, (*input * 39.37));
	output = TTFloat64(input) * 39.37;
}


#undef thisTTClass
#undef thisTTClassName
#undef thisTTClassTags

/***********************************************************************************************/

#define thisTTClass			MeterUnit
#define thisTTClassName		"unit.meter"
#define thisTTClassTags		"dataspace, distance"

TT_DATASPACEUNIT_CONSTRUCTOR{;}
MeterUnit::~MeterUnit(){;}
		
void MeterUnit::convertToNeutral(const TTValue& input, TTValue& output)
{
	output = input;
}


void MeterUnit::convertFromNeutral(const TTValue& input, TTValue& output)
{
	output = input;
}


#undef thisTTClass
#undef thisTTClassName
#undef thisTTClassTags

/***********************************************************************************************/

#define thisTTClass			DistanceDataspace
#define thisTTClassName		"dataspace.distance"
#define thisTTClassTags		"dataspace, distance"

TT_DATASPACELIB_CONSTRUCTOR
//DistanceDataspace::DistanceDataspace()
//	: DataspaceLib("distance", "meters")
{
	// Create one of each kind of unit, and cache them in a hash
//	registerUnit(new CentimeterUnit,	SymbolGen("cm"));
//	registerUnit(new CentimeterUnit,	SymbolGen("centimeters"));
//	registerUnit(new FootUnit,			SymbolGen("'"));
//	registerUnit(new FootUnit,			SymbolGen("feet"));
//	registerUnit(new InchUnit,			SymbolGen("\""));
//	registerUnit(new InchUnit,			SymbolGen("inches"));
//	registerUnit(new MeterUnit,			SymbolGen("m"));
//	registerUnit(new MeterUnit,			SymbolGen("meters"));
	
	// Now that the cache is created, we can create a set of default units
	setInputUnit(neutralUnit);
	setOutputUnit(neutralUnit);
}


DistanceDataspace::~DistanceDataspace()
{
	;
}

#undef thisTTClass
#undef thisTTClassName
#undef thisTTClassTags
