/** @file
 *
 * @ingroup foundationDataspaceLib
 *
 * @brief The #AngleDataspace converts between different measurement untis describing trigonometric angles.
 *
 * @details The neutral unit of the angle dataspace is _radian_.
 *
 * @authors Nils Peters, Trond Lossius, Tim Place, ...
 *
 * @copyright Copyright © 2007 by Nils Peters @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#include "AngleDataspace.h"

/***********************************************************************************************/
// rad is also the neutral format

#define thisTTClass			RadianUnit
#define thisTTClassName		"unit.radian"
#define thisTTClassTags		"dataspace.unit, angle"

TT_OBJECT_CONSTRUCTOR,
TTDataspaceUnit(arguments)
{;}

RadianUnit::~RadianUnit(){;}


void RadianUnit::convertToNeutral(const TTValue& input, TTValue& output)
{
	output = input;
}

void RadianUnit::convertFromNeutral(const TTValue& input, TTValue& output)
{
	output = input;
}


#undef thisTTClass
#undef thisTTClassName
#undef thisTTClassTags

/***********************************************************************************************/

#define thisTTClass			DegreeUnit
#define thisTTClassName		"unit.degree"
#define thisTTClassTags		"dataspace.unit, angle"

TT_OBJECT_CONSTRUCTOR,
TTDataspaceUnit(arguments)
{;}

DegreeUnit::~DegreeUnit(){;}


void DegreeUnit::convertToNeutral(const TTValue& input, TTValue& output)
{
	output = TTFloat64(input) * kTTDegreesToRadians;
}

void DegreeUnit::convertFromNeutral(const TTValue& input, TTValue& output)
{
	output = TTFloat64(input) * kTTRadiansToDegrees;
}


#undef thisTTClass
#undef thisTTClassName
#undef thisTTClassTags

/***********************************************************************************************/

#define thisTTClass			AngleDataspace
#define thisTTClassName		"dataspace.angle"
#define thisTTClassTags		"foundationDataspaceLib, dataspace, angle"

TT_OBJECT_CONSTRUCTOR
{	
	// Create one of each kind of unit, and cache them in a hash
	registerUnit(TT("unit.radian"),	TT("radian"));
	registerUnit(TT("unit.radian"),	TT("rad"));
	registerUnit(TT("unit.degree"),	TT("degree"));
	registerUnit(TT("unit.degree"),	TT("deg"));
	
	// Set our neutral unit (the unit through which all conversions are made)
	neutralUnit = TT("radian");
	
	// Now that the cache is created, we can create a set of default units
	setInputUnit(neutralUnit);
	setOutputUnit(neutralUnit);
}


AngleDataspace::~AngleDataspace()
{
	;
}

#undef thisTTClass
#undef thisTTClassName
#undef thisTTClassTags

