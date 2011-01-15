/* 
 * Jamoma DataspaceLib: DistanceDataspace
 * Copyright © 2007, Nils Peters
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 
 * Based on code by Trond Lossius, © 2007 and
 *					Jan Schacher / ICST Zurich © 2006 
 *
 * 
 */

#include "PositionDataspace.h"


Cartesian3DUnit::Cartesian3DUnit()
	: MaxDataspaceUnit("cart3D")
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
	: MaxDataspaceUnit("cart2D")
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
	: MaxDataspaceUnit("spherical")
{;}


SphericalUnit::~SphericalUnit()
{;}
		
		
void SphericalUnit::convertToNeutral(long inputNumArgs, t_atom *inputAtoms, long *outputNumArgs, double *output)
{   //double kDegreesToRadians = kDegreesToRadians;
	double aa = (atom_getfloat(inputAtoms+0)) *  kDegreesToRadians; //a  
	double ee = atom_getfloat(inputAtoms+1) *  kDegreesToRadians; //e
	double dd = atom_getfloat(inputAtoms+2); //d
	
	*outputNumArgs = 3;
	double temp = cos(ee) * dd;		
	*(output+0) = sin(aa) * temp; 
	*(output+1) = cos(aa) * temp; 
	*(output+2) = sin(ee) * dd;
}


void SphericalUnit::convertFromNeutral(long inputNumArgs, double *input, long *outputNumArgs, t_atom **outputAtoms)
{   
    double xx = *(input+0);
	double yy = *(input+1);
	double zz = *(input+2);
	double temp = (xx * xx) + (yy * yy);

	*outputNumArgs = 3;	
	atom_setfloat(*outputAtoms+0, atan2(xx, yy) * kRadiansToDegrees); 
	atom_setfloat(*outputAtoms+1, atan2(zz, (pow((temp), 0.5))) * kRadiansToDegrees);
	atom_setfloat(*outputAtoms+2, pow((temp + (zz * zz)), 0.5));
}

/***********************************************************************************************/

PolarUnit::PolarUnit()
	: MaxDataspaceUnit("polar")
{;}


PolarUnit::~PolarUnit()
{;}
		
		
void PolarUnit::convertToNeutral(long inputNumArgs, t_atom *inputAtoms, long *outputNumArgs, double *output)
{
    *outputNumArgs = 2;
	
	double aa = (atom_getfloat(inputAtoms+0)) * kDegreesToRadians; //a
	double dd = atom_getfloat(inputAtoms+1); //d
				
	*(output+0) = sin(aa)  * dd; //x
	*(output+1) = cos(aa) * dd; //y
	
		
}


void PolarUnit::convertFromNeutral(long inputNumArgs, double *input, long *outputNumArgs, t_atom **outputAtoms)
{   
    double xx = *(input+0);
	double yy = *(input+1);

	*outputNumArgs = 2;
	
	atom_setfloat(*outputAtoms+0, atan2(xx, yy) * kRadiansToDegrees); //a
	atom_setfloat(*outputAtoms+1, pow(((xx * xx) + (yy * yy)), 0.5)); //distance	
}

/***********************************************************************************************/

OpenGlUnit::OpenGlUnit()
	: MaxDataspaceUnit("openGl")
{;}


OpenGlUnit::~OpenGlUnit()
{;}
		

void OpenGlUnit::convertToNeutral(long inputNumArgs, t_atom *inputAtoms, long *outputNumArgs, double *output)
{
	*outputNumArgs = 3;
	*(output+0) = atom_getfloat(inputAtoms+0); //x 
	*(output+1) = -1.0 * atom_getfloat(inputAtoms+2); //y
	*(output+2) = atom_getfloat(inputAtoms+1); //z
}


void OpenGlUnit::convertFromNeutral(long inputNumArgs, double *input, long *outputNumArgs, t_atom **outputAtoms)
{
	*outputNumArgs = 3;
	atom_setfloat(*outputAtoms+0, *(input+0));//x
	atom_setfloat(*outputAtoms+1, *(input+2));//y
	atom_setfloat(*outputAtoms+2, *(input+1) * -1.0);//z
}


/***********************************************************************************************/


CylindricalUnit::CylindricalUnit()
	: MaxDataspaceUnit("cylindrical")
{;}


CylindricalUnit::~CylindricalUnit()
{;}
		

void CylindricalUnit::convertToNeutral(long inputNumArgs, t_atom *inputAtoms, long *outputNumArgs, double *output)
{
	// Cylindrical coordinate System (according to ISO 31-11 http://en.wikipedia.org/wiki/ISO_31-11#Coordinate_systems )  = radius azimut hight
	
	*outputNumArgs = 3;
	double dd = atom_getfloat(inputAtoms+0); //d
	double aa = (atom_getfloat(inputAtoms+1)) * kDegreesToRadians; //a
	
				
	*(output+0) = sin(aa)  * dd; //x
	*(output+1) = cos(aa) * dd; //y
	*(output+2) = atom_getfloat(inputAtoms+2); //z
}


void CylindricalUnit::convertFromNeutral(long inputNumArgs, double *input, long *outputNumArgs, t_atom **outputAtoms)
{
	 
	 *outputNumArgs = 3;
	 
	 double xx = *(input+0);
     double yy = *(input+1);	
	
	// d a z
	atom_setfloat(*outputAtoms+0, pow(((xx * xx) + (yy * yy)), 0.5)); //distance
	atom_setfloat(*outputAtoms+1, atan2(xx, yy) * kRadiansToDegrees); //a
	atom_setfloat(*outputAtoms+2, *(input+2));//z
}


/***********************************************************************************************/
PositionDataspace::PositionDataspace()
	: MaxDataspaceLib("position", "xyz")
{
	// Create one of each kind of unit, and cache them in a hash
	registerUnit(new Cartesian3DUnit,	SymbolGen("cart3D"));
	registerUnit(new Cartesian3DUnit,	SymbolGen("xyz"));
	registerUnit(new Cartesian2DUnit,	SymbolGen("cart2D"));
	registerUnit(new Cartesian2DUnit,	SymbolGen("xy"));
	registerUnit(new SphericalUnit,		SymbolGen("spherical"));
	registerUnit(new SphericalUnit,		SymbolGen("aed"));
	registerUnit(new PolarUnit,			SymbolGen("polar"));
	registerUnit(new PolarUnit,			SymbolGen("ad"));
	registerUnit(new OpenGlUnit,		SymbolGen("openGL"));
	registerUnit(new CylindricalUnit,	SymbolGen("cylindrical"));
	registerUnit(new CylindricalUnit,	SymbolGen("daz"));
	
	// Now that the cache is created, we can create a set of default units
	setInputUnit(neutralUnit);
	setOutputUnit(neutralUnit);
}


PositionDataspace::~PositionDataspace()
{
	;
}


