/* 
 * Jamoma DataspaceLib: TemperatureDataspace
 * Copyright © 2007
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TemperatureDataspace.h"


CelsiusUnit::CelsiusUnit()
	: DataspaceUnit("Celsius")
{;}


CelsiusUnit::~CelsiusUnit()
{;}
		

void CelsiusUnit::convertToNeutral(const TTValue& inValue, TTValue& neutralValue)
{
	neutralValue = TTValue(inValue.getFloat64() + 273.15);
}


void CelsiusUnit::convertFromNeutral(TTValue& neutralValue, TTValue& outValue)
{
	outValue = TTValue(neutralValue.getFloat64() - 273.15);
}


/***********************************************************************************************/
FahrenheitUnit::FahrenheitUnit()
	: DataspaceUnit("Fahrenheit")
{;}


FahrenheitUnit::~FahrenheitUnit()
{;}
		
		
void FahrenheitUnit::convertToNeutral(const TTValue& inValue, TTValue& neutralValue)
{
	neutralValue = TTValue((inValue.getFloat64() + 459.67) / 1.8);
}


void FahrenheitUnit::convertFromNeutral(TTValue& neutralValue, TTValue& outValue)
{
	outValue = TTValue((neutralValue.getFloat64() * 1.8) - 459.67);
}


/***********************************************************************************************/
KelvinUnit::KelvinUnit()
	: DataspaceUnit("Kelvin")
{;}


KelvinUnit::~KelvinUnit()
{;}

		
void KelvinUnit::convertToNeutral(const TTValue& inValue, TTValue& neutralValue)
{
	neutralValue = inValue;
}


void KelvinUnit::convertFromNeutral(TTValue& neutralValue, TTValue& outValue)
{
	outValue = neutralValue;
}


/***********************************************************************************************/
TemperatureDataspace::TemperatureDataspace()
	: DataspaceLib("temperature", "Kelvin")
{
	// Create one of each kind of unit, and cache them in a hash
	registerUnit(new CelsiusUnit,		TT("C"));
	registerUnit(new CelsiusUnit,		TT("Celsius"));
	registerUnit(new FahrenheitUnit,	TT("F"));
	registerUnit(new FahrenheitUnit,	TT("Fahrenheit"));
	registerUnit(new KelvinUnit,		TT("K"));
	registerUnit(new KelvinUnit,		TT("Kelvin"));
	
	// Now that the cache is created, we can create a set of default units
	setInputUnit(neutralUnit);
	setOutputUnit(neutralUnit);
}


TemperatureDataspace::~TemperatureDataspace()
{
	;
}
