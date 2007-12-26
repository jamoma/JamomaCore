/* 
 * Jamoma DataspaceLib: DistanceDataspace
 * Copyright © 2007, Tim Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "DistanceDataspace.h"


CentimeterUnit::CentimeterUnit()
	: DataspaceUnit::DataspaceUnit("centimeter")
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
	: DataspaceUnit::DataspaceUnit("foot")
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
	: DataspaceUnit::DataspaceUnit("inch")
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
	: DataspaceUnit::DataspaceUnit("meter")
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
	: DataspaceLib::DataspaceLib("distance", "meter")
{
	// Create one of each kind of unit, and cache them in a hash
	registerUnit(new CentimeterUnit,	gensym("cm"));
	registerUnit(new CentimeterUnit,	gensym("centimeter"));
	registerUnit(new FootUnit,			gensym("'"));
	registerUnit(new FootUnit,			gensym("feet"));
	registerUnit(new InchUnit,			gensym("\""));
	registerUnit(new InchUnit,			gensym("inches"));
	registerUnit(new MeterUnit,			gensym("m"));
	registerUnit(new MeterUnit,			gensym("meters"));
	
	// Now that the cache is created, we can create a set of default units
	setInputUnit(neutralUnit);
	setOutputUnit(neutralUnit);
}


DistanceDataspace::~DistanceDataspace()
{
	;
}
