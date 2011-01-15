/* 
 * Jamoma DataspaceLib: AngleDataspace.cpp
 * Copyright © 2007, Nils Peters
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "AngleDataspace.h"

/***********************************************************************************************/
// rad is also the neutral format
RadianUnit::RadianUnit()
	: MaxDataspaceUnit("radian")
{;}


RadianUnit::~RadianUnit()
{;}
		

void RadianUnit::convertToNeutral(long inputNumArgs, t_atom *inputAtoms, long *outputNumArgs, double *output)
{
	*outputNumArgs = 1;
	*output = atom_getfloat(inputAtoms);
}


void RadianUnit::convertFromNeutral(long inputNumArgs, double *input, long *outputNumArgs, t_atom **outputAtoms)
{
	*outputNumArgs = 1;
	atom_setfloat(*outputAtoms, *input);
}


/***********************************************************************************************/
DegreeUnit::DegreeUnit()
	: MaxDataspaceUnit("degree")
{;}


DegreeUnit::~DegreeUnit()
{;}
		
		
void DegreeUnit::convertToNeutral(long inputNumArgs, t_atom *inputAtoms, long *outputNumArgs, double *output)
{
	*outputNumArgs = 1;
	*output = atom_getfloat(inputAtoms) * kDegreesToRadians; //kDegreesToRadians defined in DataspaceLib.h
}


void DegreeUnit::convertFromNeutral(long inputNumArgs, double *input, long *outputNumArgs, t_atom **outputAtoms)
{
	*outputNumArgs = 1;
	atom_setfloat(*outputAtoms, (*input * kRadiansToDegrees));//kRadiansToDegrees defined in DataspaceLib.h
}

/***********************************************************************************************/
AngleDataspace::AngleDataspace()
	: MaxDataspaceLib("angle", "radian") //would "<" be possible ??
{
	// Create one of each kind of unit, and cache them in a hash
	registerUnit(new RadianUnit,	SymbolGen("radian"));
	registerUnit(new RadianUnit,	SymbolGen("rad"));
	registerUnit(new DegreeUnit,	SymbolGen("degree"));
	registerUnit(new DegreeUnit,	SymbolGen("deg"));
	
	// Now that the cache is created, we can create a set of default units
	setInputUnit(neutralUnit);
	setOutputUnit(neutralUnit);
}


AngleDataspace::~AngleDataspace()
{
	;
}
