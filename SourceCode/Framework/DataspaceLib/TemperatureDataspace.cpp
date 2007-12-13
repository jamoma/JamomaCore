/* 
 * Jamoma DataspaceLib: TemperatureDataspace
 * Copyright © 2007
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TemperatureDataspace.h"


CelsiusUnit::CelsiusUnit()
	: DataspaceUnit::DataspaceUnit("celsius")
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
	: DataspaceUnit::DataspaceUnit("fahrenheit")
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
	: DataspaceUnit::DataspaceUnit("kelvin")
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
	: DataspaceLib::DataspaceLib("kelvin")
{
	// Create one of each kind of unit, and cache them in a hash
	registerUnit(gensym("celsius"),		new CelsiusUnit);
	registerUnit(gensym("fahrenheit"),	new FahrenheitUnit);
	registerUnit(gensym("kelvin"),		new KelvinUnit);
	
	// Now that the cache is created, we can create a set of default units
	setInputUnit(nativeUnit);
	setOutputUnit(nativeUnit);
}


TemperatureDataspace::~TemperatureDataspace()
{
	;
}
