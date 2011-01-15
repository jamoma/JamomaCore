/* 
 * Jamoma DataspaceLib: TemperatureDataspace
 * Copyright © 2007
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TemperatureDataspace.h"


CelsiusUnit::CelsiusUnit()
	: MaxDataspaceUnit("Celsius")
{;}


CelsiusUnit::~CelsiusUnit()
{;}
		

void CelsiusUnit::convertToNeutral(long inputNumArgs, t_atom *inputAtoms, long *outputNumArgs, double *output)
{
	*outputNumArgs = 1;
	*output = atom_getfloat(inputAtoms) + 273.15;
}


void CelsiusUnit::convertFromNeutral(long inputNumArgs, double *input, long *outputNumArgs, t_atom **outputAtoms)
{
	*outputNumArgs = 1;
	atom_setfloat(*outputAtoms, *input - 273.15);
}


/***********************************************************************************************/
FahrenheitUnit::FahrenheitUnit()
	: MaxDataspaceUnit("Fahrenheit")
{;}


FahrenheitUnit::~FahrenheitUnit()
{;}
		
		
void FahrenheitUnit::convertToNeutral(long inputNumArgs, t_atom *inputAtoms, long *outputNumArgs, double *output)
{
	*outputNumArgs = 1;
	*output = (atom_getfloat(inputAtoms) + 459.67) / 1.8;
}


void FahrenheitUnit::convertFromNeutral(long inputNumArgs, double *input, long *outputNumArgs, t_atom **outputAtoms)
{
	*outputNumArgs = 1;
	atom_setfloat(*outputAtoms, (*input * 1.8) - 459.67);
}


/***********************************************************************************************/
KelvinUnit::KelvinUnit()
	: MaxDataspaceUnit("Kelvin")
{;}


KelvinUnit::~KelvinUnit()
{;}

		
void KelvinUnit::convertToNeutral(long inputNumArgs, t_atom *inputAtoms, long *outputNumArgs, double *output)
{
	*outputNumArgs = 1;
	*output = atom_getfloat(inputAtoms);
}


void KelvinUnit::convertFromNeutral(long inputNumArgs, double *input, long *outputNumArgs, t_atom **outputAtoms)
{
	*outputNumArgs = 1;
	atom_setfloat(*outputAtoms, *input);
}


/***********************************************************************************************/
TemperatureDataspace::TemperatureDataspace()
	: MaxDataspaceLib("temperature", "Kelvin")
{
	// Create one of each kind of unit, and cache them in a hash
	registerUnit(new CelsiusUnit,		SymbolGen("C"));
	registerUnit(new CelsiusUnit,		SymbolGen("Celsius"));
	registerUnit(new FahrenheitUnit,	SymbolGen("F"));
	registerUnit(new FahrenheitUnit,	SymbolGen("Fahrenheit"));
	registerUnit(new KelvinUnit,		SymbolGen("K"));
	registerUnit(new KelvinUnit,		SymbolGen("Kelvin"));
	
	// Now that the cache is created, we can create a set of default units
	setInputUnit(neutralUnit);
	setOutputUnit(neutralUnit);
}


TemperatureDataspace::~TemperatureDataspace()
{
	;
}
