/* 
 * Jamoma DataspaceLib: DistanceDataspace
 * Copyright © 2007, Tim Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "DistanceDataspace.h"


CentimeterUnit::CentimeterUnit()
	: MaxDataspaceUnit("centimeter")
{;}


CentimeterUnit::~CentimeterUnit()
{;}
		

void CentimeterUnit::convertToNeutral(long inputNumArgs, t_atom *inputAtoms, long *outputNumArgs, double *output)
{
	*outputNumArgs = 1;
	*output = atom_getfloat(inputAtoms) * 0.01;
}


void CentimeterUnit::convertFromNeutral(long inputNumArgs, double *input, long *outputNumArgs, t_atom **outputAtoms)
{
	*outputNumArgs = 1;
	atom_setfloat(*outputAtoms, *input * 100.0);
}


/***********************************************************************************************/
FootUnit::FootUnit()
	: MaxDataspaceUnit("foot")
{;}


FootUnit::~FootUnit()
{;}
		
		
void FootUnit::convertToNeutral(long inputNumArgs, t_atom *inputAtoms, long *outputNumArgs, double *output)
{
	*outputNumArgs = 1;
	*output = atom_getfloat(inputAtoms) / 3.281;
}


void FootUnit::convertFromNeutral(long inputNumArgs, double *input, long *outputNumArgs, t_atom **outputAtoms)
{
	*outputNumArgs = 1;
	atom_setfloat(*outputAtoms, (*input * 3.281));
}


/***********************************************************************************************/
InchUnit::InchUnit()
	: MaxDataspaceUnit("inch")
{;}


InchUnit::~InchUnit()
{;}
		
		
void InchUnit::convertToNeutral(long inputNumArgs, t_atom *inputAtoms, long *outputNumArgs, double *output)
{
	*outputNumArgs = 1;
	*output = atom_getfloat(inputAtoms) / 39.37;
}


void InchUnit::convertFromNeutral(long inputNumArgs, double *input, long *outputNumArgs, t_atom **outputAtoms)
{
	*outputNumArgs = 1;
	atom_setfloat(*outputAtoms, (*input * 39.37));
}


/***********************************************************************************************/
MeterUnit::MeterUnit()
	: MaxDataspaceUnit("meter")
{;}


MeterUnit::~MeterUnit()
{;}

		
void MeterUnit::convertToNeutral(long inputNumArgs, t_atom *inputAtoms, long *outputNumArgs, double *output)
{
	*outputNumArgs = 1;
	*output = atom_getfloat(inputAtoms);
}


void MeterUnit::convertFromNeutral(long inputNumArgs, double *input, long *outputNumArgs, t_atom **outputAtoms)
{
	*outputNumArgs = 1;
	atom_setfloat(*outputAtoms, *input);
}


/***********************************************************************************************/
DistanceDataspace::DistanceDataspace()
	: MaxDataspaceLib("distance", "meters")
{
	// Create one of each kind of unit, and cache them in a hash
	registerUnit(new CentimeterUnit,	SymbolGen("cm"));
	registerUnit(new CentimeterUnit,	SymbolGen("centimeters"));
	registerUnit(new FootUnit,			SymbolGen("'"));
	registerUnit(new FootUnit,			SymbolGen("feet"));
	registerUnit(new InchUnit,			SymbolGen("\""));
	registerUnit(new InchUnit,			SymbolGen("inches"));
	registerUnit(new MeterUnit,			SymbolGen("m"));
	registerUnit(new MeterUnit,			SymbolGen("meters"));
	
	// Now that the cache is created, we can create a set of default units
	setInputUnit(neutralUnit);
	setOutputUnit(neutralUnit);
}


DistanceDataspace::~DistanceDataspace()
{
	;
}
