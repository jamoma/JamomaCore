/* 
 * Jamoma DataspaceLib: AngleDataspace.cpp
 * Copyright © 2007
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "AngleDataspace.h"

/***********************************************************************************************/
// rad is also the neutral format
RadianUnit::RadianUnit()
	: DataspaceUnit::DataspaceUnit("radian")
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
	: DataspaceUnit::DataspaceUnit("degree")
{;}


DegreeUnit::~DegreeUnit()
{;}
		
		
void DegreeUnit::convertToNeutral(long inputNumArgs, t_atom *inputAtoms, long *outputNumArgs, double *output)
{
	*outputNumArgs = 1;
	*output = atom_getfloat(inputAtoms) * 0.017453292519943;
}


void DegreeUnit::convertFromNeutral(long inputNumArgs, double *input, long *outputNumArgs, t_atom **outputAtoms)
{
	*outputNumArgs = 1;
	atom_setfloat(*outputAtoms, (*input * 57.29577951308232));
}

/***********************************************************************************************/
AngleDataspace::AngleDataspace()
	: DataspaceLib::DataspaceLib("angle", "angles") //would "<" be possible ??
{
	// Create one of each kind of unit, and cache them in a hash
	registerUnit(new RadianUnit,	gensym("radian"));
	registerUnit(new RadianUnit,	gensym("rad"));
	registerUnit(new DegreeUnit,	gensym("degree"));
	registerUnit(new DegreeUnit,	gensym("deg"));
	
	// Now that the cache is created, we can create a set of default units
	setInputUnit(neutralUnit);
	setOutputUnit(neutralUnit);
}


AngleDataspace::~AngleDataspace()
{
	;
}
