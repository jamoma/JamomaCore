/** @file
 *
 * @ingroup foundationDataspaceLib
 *
 * @brief The #TemperatureDataspace converts between different measurement untis describing temperature.
 *
 * @details The neutral unit of the temperature dataspace is _Kelvin (K)_.
 *
 * @authors Nils Peters, Trond Lossius, Tim Peters, ...
 *
 * @copyright Copyright © 2007 by Tim Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#include "TemperatureDataspace.h"


#define thisTTClass			CelsiusUnit
#define thisTTClassName		"unit.celsius"
#define thisTTClassTags		"dataspace.unit, temperature"

TT_OBJECT_CONSTRUCTOR,
TTDataspaceUnit(arguments)
{;}

CelsiusUnit::~CelsiusUnit(){;}

void CelsiusUnit::convertToNeutral(const TTValue& input, TTValue& output)
{
//	output.setSize(1);
//	*output = atom_getfloat(inputAtoms) + 273.15;
	output = TTFloat64(input) + 273.15;
}


void CelsiusUnit::convertFromNeutral(const TTValue& input, TTValue& output)
{
//	output.setSize(1);
//	atom_setfloat(*outputAtoms, *input - 273.15);
	output = TTFloat64(input) - 273.15;
}


#undef thisTTClass
#undef thisTTClassName
#undef thisTTClassTags

/***********************************************************************************************/

#define thisTTClass			FahrenheitUnit
#define thisTTClassName		"unit.fahrenheit"
#define thisTTClassTags		"dataspace.unit, temperature"

TT_OBJECT_CONSTRUCTOR,
TTDataspaceUnit(arguments)
{;}

FahrenheitUnit::~FahrenheitUnit(){;}

void FahrenheitUnit::convertToNeutral(const TTValue& input, TTValue& output)
{
//	output.setSize(1);
//	*output = (atom_getfloat(inputAtoms) + 459.67) / 1.8;
	output = (TTFloat64(input) + 459.67) / 1.8;
}


void FahrenheitUnit::convertFromNeutral(const TTValue& input, TTValue& output)
{
//	output.setSize(1);
//	atom_setfloat(*outputAtoms, (*input * 1.8) - 459.67);
	output = TTFloat64(input) * 1.8 - 459.67;
}


#undef thisTTClass
#undef thisTTClassName
#undef thisTTClassTags

/***********************************************************************************************/

#define thisTTClass			KelvinUnit
#define thisTTClassName		"unit.kelvin"
#define thisTTClassTags		"dataspace.unit, temperature"

TT_OBJECT_CONSTRUCTOR,
TTDataspaceUnit(arguments)
{;}

KelvinUnit::~KelvinUnit(){;}

void KelvinUnit::convertToNeutral(const TTValue& input, TTValue& output)
{
	output = input;
}


void KelvinUnit::convertFromNeutral(const TTValue& input, TTValue& output)
{
	output = input;
}


#undef thisTTClass
#undef thisTTClassName
#undef thisTTClassTags

/***********************************************************************************************/

#define thisTTClass			TemperatureDataspace
#define thisTTClassName		"dataspace.temperature"
#define thisTTClassTags		"dataspace, temperature"

TT_OBJECT_CONSTRUCTOR
{
	// Create one of each kind of unit, and cache them in a hash
	registerUnit(TT("unit.celsius"),	TT("C"));
	registerUnit(TT("unit.celsius"),	TT("Celsius"));
	registerUnit(TT("unit.fahrenheit"),	TT("F"));
	registerUnit(TT("unit.fahrenheit"),	TT("Fahrenheit"));
	registerUnit(TT("unit.kelvin"),		TT("K"));
	registerUnit(TT("unit.kelvin"),		TT("Kelvin"));
	
	// Set our neutral unit (the unit through which all conversions are made)
	neutralUnit = TT("Kelvin");
	
	// Now that the cache is created, we can create a set of default units
	setInputUnit(neutralUnit);
	setOutputUnit(neutralUnit);
}


TemperatureDataspace::~TemperatureDataspace()
{
	;
}

#undef thisTTClass
#undef thisTTClassName
#undef thisTTClassTags
