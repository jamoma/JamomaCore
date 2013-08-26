/** @file
 *
 * @ingroup foundationDataspaceLib
 *
 * @brief The #DistanceDataspace converts between different measurement untis describing distance.
 *
 * @details The neutral unit of the distance dataspace is _meter_.
 *
 * @authors Tim Place, Trond Lossius, Nils Peters, ...
 *
 * @copyright Copyright © 2007 by Tim Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#include "DistanceDataspace.h"


#define thisTTClass			CentimeterUnit
#define thisTTClassName		"unit.centimeter"
#define thisTTClassTags		"dataspace.unit, distance"

TT_OBJECT_CONSTRUCTOR,
TTDataspaceUnit(arguments)
{;}

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
#define thisTTClassTags		"dataspace.unit, distance"

TT_OBJECT_CONSTRUCTOR,
TTDataspaceUnit(arguments)
{;}

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
#define thisTTClassTags		"dataspace.unit, distance"

TT_OBJECT_CONSTRUCTOR,
TTDataspaceUnit(arguments)
{;}

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
#define thisTTClassTags		"dataspace.unit, distance"

TT_OBJECT_CONSTRUCTOR,
TTDataspaceUnit(arguments)
{;}

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

TT_OBJECT_CONSTRUCTOR
{
	// Create one of each kind of unit, and cache them in a hash
	registerUnit(TT("unit.centimeter"),		TT("cm"));
	registerUnit(TT("unit.centimeter"),		TT("centimeters"));
	registerUnit(TT("unit.foot"),			TT("'"));
	registerUnit(TT("unit.foot"),			TT("feet"));
	registerUnit(TT("unit.inch"),			TT("\""));
	registerUnit(TT("unit.inch"),			TT("inches"));
	registerUnit(TT("unit.meter"),			TT("m"));
	registerUnit(TT("unit.meter"),			TT("meters"));
	
	// Set our neutral unit (the unit through which all conversions are made)
	neutralUnit = TT("meters");
	
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
