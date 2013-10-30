/** @file
 *
 * @ingroup foundationDataspaceLib
 *
 * @brief The #SpeedDataspace converts between different measurement untis describing velocity.
 *
 * @details The neutral unit of the speed dataspace is _m/s_.
 *
 * @authors Nils Peters, Trond Lossius, Tim Peters, ...
 *
 * @copyright Copyright © 2011 by Nils Peters @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#include "SpeedDataspace.h"


#define thisTTClass			MilesPerHourUnit
#define thisTTClassName		"unit.milesPerHour"
#define thisTTClassTags		"dataspace.unit, speed"

TT_OBJECT_CONSTRUCTOR,
TTDataspaceUnit(arguments)
{;}

MilesPerHourUnit::~MilesPerHourUnit(){;}

void MilesPerHourUnit::convertToNeutral(const TTValue& input, TTValue& output)
{
	output = TTFloat64(input) * 0.44704;
}


void MilesPerHourUnit::convertFromNeutral(const TTValue& input, TTValue& output)
{
	output = TTFloat64(input) * 2.236936;
}


#undef thisTTClass
#undef thisTTClassName
#undef thisTTClassTags

/***********************************************************************************************/

#define thisTTClass			KilometerPerHourUnit
#define thisTTClassName		"unit.kilometerPerHour"
#define thisTTClassTags		"dataspace.unit, speed"

TT_OBJECT_CONSTRUCTOR,
TTDataspaceUnit(arguments)
{;}

KilometerPerHourUnit::~KilometerPerHourUnit(){;}

void KilometerPerHourUnit::convertToNeutral(const TTValue& input, TTValue& output)
{
	output = TTFloat64(input) / 3.6;
}


void KilometerPerHourUnit::convertFromNeutral(const TTValue& input, TTValue& output)
{
	output = TTFloat64(input) * 3.6;
}


#undef thisTTClass
#undef thisTTClassName
#undef thisTTClassTags

/***********************************************************************************************/

#define thisTTClass			FootPerSecondUnit
#define thisTTClassName		"unit.footPerSecond"
#define thisTTClassTags		"dataspace.unit, speed"

TT_OBJECT_CONSTRUCTOR,
TTDataspaceUnit(arguments)
{;}

FootPerSecondUnit::~FootPerSecondUnit(){;}

void FootPerSecondUnit::convertToNeutral(const TTValue& input, TTValue& output)
{
	output = TTFloat64(input) * 0.3048;
}


void FootPerSecondUnit::convertFromNeutral(const TTValue& input, TTValue& output)
{
	output = TTFloat64(input) * 3.2808399;
}


#undef thisTTClass
#undef thisTTClassName
#undef thisTTClassTags

/***********************************************************************************************/

#define thisTTClass			KnotUnit
#define thisTTClassName		"unit.knot"
#define thisTTClassTags		"dataspace.unit, speed"

TT_OBJECT_CONSTRUCTOR,
TTDataspaceUnit(arguments)
{;}

KnotUnit::~KnotUnit(){;}

void KnotUnit::convertToNeutral(const TTValue& input, TTValue& output)
{
	output = TTFloat64(input) * 0.514444; //not exact
}


void KnotUnit::convertFromNeutral(const TTValue& input, TTValue& output)
{
	output = TTFloat64(input) * 1.943844;//not exact
}


#undef thisTTClass
#undef thisTTClassName
#undef thisTTClassTags

/***********************************************************************************************/

#define thisTTClass			MeterPerSecondUnit
#define thisTTClassName		"unit.meterPerSecond"
#define thisTTClassTags		"dataspace.unit, speed"

TT_OBJECT_CONSTRUCTOR,
TTDataspaceUnit(arguments)
{;}

MeterPerSecondUnit::~MeterPerSecondUnit(){;}

void MeterPerSecondUnit::convertToNeutral(const TTValue& input, TTValue& output)
{
	output = input;
}


void MeterPerSecondUnit::convertFromNeutral(const TTValue& input, TTValue& output)
{
	output = input;
}


#undef thisTTClass
#undef thisTTClassName
#undef thisTTClassTags

/***********************************************************************************************/

#define thisTTClass			SpeedDataspace
#define thisTTClassName		"dataspace.speed"
#define thisTTClassTags		"foundationDataspaceLib, dataspace, speed"

TT_OBJECT_CONSTRUCTOR
{
	// Create one of each kind of unit, and cache them in a hash
	registerUnit(TT("unit.milesPerHour"),			TT("mph"));
	registerUnit(TT("unit.milesPerHour"),			TT("mi/h"));
	registerUnit(TT("unit.kilometerPerHour"),		TT("km/h"));
	registerUnit(TT("unit.kilometerPerHour"),		TT("kmph"));
	registerUnit(TT("unit.meterPerSecond"),			TT("m/s"));
	registerUnit(TT("unit.knot"),					TT("kn"));
	registerUnit(TT("unit.footPerSecond"),			TT("ft/s"));
	registerUnit(TT("unit.footPerSecond"),			TT("fps"));
	// Set our neutral unit (the unit through which all conversions are made)
	neutralUnit = TT("m/s");
	
	// Now that the cache is created, we can create a set of default units
	setInputUnit(neutralUnit);
	setOutputUnit(neutralUnit);
}


SpeedDataspace::~SpeedDataspace()
{
	;
}

#undef thisTTClass
#undef thisTTClassName
#undef thisTTClassTags
