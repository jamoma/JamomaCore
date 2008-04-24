/* 
 * Jamoma DataspaceLib: NoneDataspace
 * Copyright © 2007, Tim Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "NoneDataspace.h"


NoneUnit::NoneUnit()
	: DataspaceUnit("none")
{;}


NoneUnit::~NoneUnit()
{;}
		

void NoneUnit::convertToNeutral(long inputNumArgs, t_atom *inputAtoms, long *outputNumArgs, double *output)
{
	*outputNumArgs = 1;
	*output = atom_getfloat(inputAtoms);
}


void NoneUnit::convertFromNeutral(long inputNumArgs, double *input, long *outputNumArgs, t_atom **outputAtoms)
{
	*outputNumArgs = 1;
	atom_setfloat(*outputAtoms, *input);
}


/***********************************************************************************************/
NoneDataspace::NoneDataspace()
	: DataspaceLib("none", "none")
{
	// Create one of each kind of unit, and cache them in a hash
	registerUnit(new NoneUnit,	gensym("none"));
	
	// Now that the cache is created, we can create a set of default units
	setInputUnit(neutralUnit);
	setOutputUnit(neutralUnit);
}


NoneDataspace::~NoneDataspace()
{
	;
}
