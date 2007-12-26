/* 
 * Jamoma DataspaceLib: DistanceDataspace
 * Copyright © 2007, Nils Peters
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 
 * Based on code by Trond Lossius, © 2007 and
 *					Jan Schacher / ICST Zurich © 2006 
 *
 * 
 */

#include "PositionDataspace.h"


Cartesian3DUnit::Cartesian3DUnit()
	: DataspaceUnit::DataspaceUnit("cart3D")
{;}


Cartesian3DUnit::~Cartesian3DUnit()
{;}
		

void Cartesian3DUnit::convertToNeutral(long inputNumArgs, t_atom *inputAtoms, long *outputNumArgs, double *output)
{
	*outputNumArgs = 3;
	*(output+0) = atom_getfloat(inputAtoms+0); //x 
	*(output+1) = atom_getfloat(inputAtoms+1); //y
	*(output+2) = atom_getfloat(inputAtoms+2); //z
}


void Cartesian3DUnit::convertFromNeutral(long inputNumArgs, double *input, long *outputNumArgs, t_atom **outputAtoms)
{
	*outputNumArgs = 3;
	atom_setfloat(*outputAtoms+0, *(input+0));
	atom_setfloat(*outputAtoms+1, *(input+1));
	atom_setfloat(*outputAtoms+2, *(input+2));
}


/***********************************************************************************************/
Cartesian2DUnit::Cartesian2DUnit()
	: DataspaceUnit::DataspaceUnit("cart2D")
{;}

Cartesian2DUnit::~Cartesian2DUnit()
{;}

void Cartesian2DUnit::convertToNeutral(long inputNumArgs, t_atom *inputAtoms, long *outputNumArgs, double *output)
{
	*outputNumArgs = 2;
	*(output+0) = atom_getfloat(inputAtoms+0); //x 
	*(output+1) = atom_getfloat(inputAtoms+1); //y
}

void Cartesian2DUnit::convertFromNeutral(long inputNumArgs, double *input, long *outputNumArgs, t_atom **outputAtoms)
{
	*outputNumArgs = 2;
	atom_setfloat(*outputAtoms+0, *(input+0));
	atom_setfloat(*outputAtoms+1, *(input+1));
}

/***********************************************************************************************/


SphericalUnit::SphericalUnit()
	: DataspaceUnit::DataspaceUnit("spherical")
{;}


SphericalUnit::~SphericalUnit()
{;}
		
		
void SphericalUnit::convertToNeutral(long inputNumArgs, t_atom *inputAtoms, long *outputNumArgs, double *output)
{   //double deg2rad = DEG2RAD;
	double aa = (90. - atom_getfloat(inputAtoms+0)) *  DEG2RAD; //a
	double ee = atom_getfloat(inputAtoms+1) *  DEG2RAD; //e
	double dd = atom_getfloat(inputAtoms+2); //d
	
	*outputNumArgs = 3;
	double temp = cos(ee) * dd;		
	*(output+0) = cos(aa) * temp;
	*(output+1) =  sin(aa) * temp;
	*(output+2) =  sin(ee) * dd;
}


void SphericalUnit::convertFromNeutral(long inputNumArgs, double *input, long *outputNumArgs, t_atom **outputAtoms)
{   
    double xx = *(input+0);
	double yy = *(input+1);
	double zz = *(input+2);
	double temp = (xx * xx) + (yy * yy);

	*outputNumArgs = 3;	
	atom_setfloat(*outputAtoms+0, atan2(xx, yy) * RAD2DEG); 
	atom_setfloat(*outputAtoms+1, atan2(zz, (pow((temp), 0.5))) * RAD2DEG);
	atom_setfloat(*outputAtoms+2, pow((temp + (zz * zz)), 0.5));
}

/***********************************************************************************************/

PolarUnit::PolarUnit()
	: DataspaceUnit::DataspaceUnit("polar")
{;}


PolarUnit::~PolarUnit()
{;}
		
		
void PolarUnit::convertToNeutral(long inputNumArgs, t_atom *inputAtoms, long *outputNumArgs, double *output)
{
    *outputNumArgs = 2;	
	
	double aa = (90. - atom_getfloat(inputAtoms+0)) * DEG2RAD; //a
	double dd = atom_getfloat(inputAtoms+1); //d
				
	*(output+0) = cos(aa)  * dd; //x
	*(output+1) = sin(aa) * dd; //y
		
}


void PolarUnit::convertFromNeutral(long inputNumArgs, double *input, long *outputNumArgs, t_atom **outputAtoms)
{   
    double xx = *(input+0);
	double yy = *(input+1);

	*outputNumArgs = 2;
	
	atom_setfloat(*outputAtoms+0, atan2(xx, yy) * RAD2DEG); //a
	atom_setfloat(*outputAtoms+1, pow(((xx * xx) + (yy * yy)), 0.5)); //distance
}

/***********************************************************************************************/


PositionDataspace::PositionDataspace()
	: DataspaceLib::DataspaceLib("position", "xyz")
{
	// Create one of each kind of unit, and cache them in a hash
	registerUnit(new Cartesian3DUnit,	gensym("cart3D"));
	registerUnit(new Cartesian3DUnit,	gensym("xyz"));
	registerUnit(new Cartesian2DUnit,	gensym("cart2D"));
	registerUnit(new Cartesian2DUnit,	gensym("xy"));
	registerUnit(new SphericalUnit,		gensym("spherical"));
	registerUnit(new SphericalUnit,		gensym("aed"));
	registerUnit(new PolarUnit,			gensym("polar"));
	registerUnit(new PolarUnit,			gensym("ad"));
	
	// Now that the cache is created, we can create a set of default units
	setInputUnit(neutralUnit);
	setOutputUnit(neutralUnit);
}


PositionDataspace::~PositionDataspace()
{
	;
}


