/* 
 * Jamoma DataspaceLib: DistanceDataspace
 * Copyright � 2007, Nils Peters
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 
 * Based on code by Trond Lossius, � 2007 and
 *					Jan Schacher / ICST Zurich � 2006 
 *
 * 
 */

#include "PositionDataspace.h"


#define thisTTClass			Cartesian3DUnit
#define thisTTClassName		"unit.cart3d"
#define thisTTClassTags		"dataspace.unit, position"

TT_OBJECT_CONSTRUCTOR,
TTDataspaceUnit(arguments)
{;}

Cartesian3DUnit::~Cartesian3DUnit(){;}

void Cartesian3DUnit::convertToNeutral(const TTValue& input, TTValue& output)
{
	output.setSize(3);
	output = input;
}


void Cartesian3DUnit::convertFromNeutral(const TTValue& input, TTValue& output)
{
	output = input;
	output.setSize(3);
}


#undef thisTTClass
#undef thisTTClassName
#undef thisTTClassTags

/***********************************************************************************************/

#define thisTTClass			Cartesian2DUnit
#define thisTTClassName		"unit.cart2d"
#define thisTTClassTags		"dataspace.unit, position"

TT_OBJECT_CONSTRUCTOR,
TTDataspaceUnit(arguments)
{;}

Cartesian2DUnit::~Cartesian2DUnit(){;}

void Cartesian2DUnit::convertToNeutral(const TTValue& input, TTValue& output)
{
	output.setSize(3);
	output = input;
	output.set(2, 0);
}

void Cartesian2DUnit::convertFromNeutral(const TTValue& input, TTValue& output)
{
	output = input;
	output.setSize(2);
}


#undef thisTTClass
#undef thisTTClassName
#undef thisTTClassTags

/***********************************************************************************************/

#define thisTTClass			SphericalUnit
#define thisTTClassName		"unit.spherical"
#define thisTTClassTags		"dataspace.unit, position"

TT_OBJECT_CONSTRUCTOR,
TTDataspaceUnit(arguments)
{;}

SphericalUnit::~SphericalUnit(){;}

void SphericalUnit::convertToNeutral(const TTValue& input, TTValue& output)
{
	//TTFloat64 kDegreesToRadians = kDegreesToRadians;
	TTFloat64 aa;// = (atom_getfloat(inputAtoms+0)) *  kDegreesToRadians; //a  
	TTFloat64 ee;// = atom_getfloat(inputAtoms+1) *  kDegreesToRadians; //e
	TTFloat64 dd;// = atom_getfloat(inputAtoms+2); //d
	TTFloat64 temp;
	
	input.get(0, aa);
	input.get(1, ee);
	input.get(2, dd);
	
	aa *= kDegreesToRadians;
	ee *= kDegreesToRadians;
	temp = cos(ee) * dd;
	
	output.setSize(3);
	output.set(0, sin(aa) * temp); 
	output.set(1, cos(aa) * temp); 
	output.set(2, sin(ee) * dd);
}


void SphericalUnit::convertFromNeutral(const TTValue& input, TTValue& output)
{   
	TTFloat64 xx;// = *(input+0);
	TTFloat64 yy;// = *(input+1);
	TTFloat64 zz;// = *(input+2)
	TTFloat64 temp;
	
	input.get(0, xx);
	input.get(1, yy);
	input.get(2, zz);

	temp = (xx * xx) + (yy * yy);

	output.setSize(3);	
	output.set(0, atan2(xx, yy) * kRadiansToDegrees); 
	output.set(1, atan2(zz, (pow((temp), 0.5))) * kRadiansToDegrees);
	output.set(2, pow((temp + (zz * zz)), 0.5));
}


#undef thisTTClass
#undef thisTTClassName
#undef thisTTClassTags

/***********************************************************************************************/

#define thisTTClass			PolarUnit
#define thisTTClassName		"unit.polar"
#define thisTTClassTags		"dataspace.unit, position"

TT_OBJECT_CONSTRUCTOR,
TTDataspaceUnit(arguments)
{;}

PolarUnit::~PolarUnit(){;}

void PolarUnit::convertToNeutral(const TTValue& input, TTValue& output)
{
	TTFloat64 aa;
	TTFloat64 dd;
	
	input.get(0, aa);
	input.get(1, dd);
	aa *= kDegreesToRadians;

    output.setSize(3);
	output.set(0, sin(aa) * dd);	// x
	output.set(1, cos(aa) * dd);	// y
	output.set(2, 0);				// z
}


void PolarUnit::convertFromNeutral(const TTValue& input, TTValue& output)
{   
	TTFloat64 xx;
	TTFloat64 yy;
	
	input.get(0, xx);
	input.get(1, yy);

	output.setSize(2);	
	output.set(0, atan2(xx, yy) * kRadiansToDegrees); //a
	output.set(1, pow(((xx * xx) + (yy * yy)), 0.5)); //distance	
}


#undef thisTTClass
#undef thisTTClassName
#undef thisTTClassTags

/***********************************************************************************************/

#define thisTTClass			OpenGlUnit
#define thisTTClassName		"unit.openGL"
#define thisTTClassTags		"dataspace.unit, position"

TT_OBJECT_CONSTRUCTOR,
TTDataspaceUnit(arguments)
{;}

OpenGlUnit::~OpenGlUnit(){;}

void OpenGlUnit::convertToNeutral(const TTValue& input, TTValue& output)
{
	TTFloat64 x;
	TTFloat64 y;
	TTFloat64 z;
	
	input.get(0, x);
	input.get(1, y);
	input.get(2, z);
	
	output.setSize(3);
	output.set(0, x);
	output.set(1, -1.0 * z);
	output.set(2, y);
}


void OpenGlUnit::convertFromNeutral(const TTValue& input, TTValue& output)
{
	TTFloat64 x;
	TTFloat64 y;
	TTFloat64 z;
	
	input.get(0, x);
	input.get(1, y);
	input.get(2, z);
	
	output.setSize(3);
	output.set(0, x);
	output.set(1, z);
	output.set(2, y * -1.0);
}


#undef thisTTClass
#undef thisTTClassName
#undef thisTTClassTags

/***********************************************************************************************/

#define thisTTClass			CylindricalUnit
#define thisTTClassName		"unit.cylindrical"
#define thisTTClassTags		"dataspace.unit, position"

TT_OBJECT_CONSTRUCTOR,
TTDataspaceUnit(arguments)
{;}

CylindricalUnit::~CylindricalUnit(){;}

// Cylindrical coordinate System (according to ISO 31-11 http://en.wikipedia.org/wiki/ISO_31-11#Coordinate_systems )  = radius azimut hight

void CylindricalUnit::convertToNeutral(const TTValue& input, TTValue& output)
{
	TTFloat64 dd;// = *(input+0);
	TTFloat64 aa;// = *(input+1);
	TTFloat64 zz;// = *(input+2)
	
	aa *= kDegreesToRadians;
				
	output.setSize(3);
	output.set(0, sin(aa) * dd); //x
	output.set(1, cos(aa) * dd); //y
	output.set(2, zz); //z
}


void CylindricalUnit::convertFromNeutral(const TTValue& input, TTValue& output)
{
	TTFloat64 xx;// = *(input+0);
	TTFloat64 yy;// = *(input+1);
	TTFloat64 zz;// = *(input+2)

	input.get(0, xx);
	input.get(1, yy);
	input.get(2, zz);
	
	// d a z
	output.setSize(3);
	output.set(0, pow(((xx * xx) + (yy * yy)), 0.5)); //distance
	output.set(1, atan2(xx, yy) * kRadiansToDegrees); //a
	output.set(2, zz);//z
}


#undef thisTTClass
#undef thisTTClassName
#undef thisTTClassTags

/***********************************************************************************************/

#define thisTTClass			PositionDataspace
#define thisTTClassName		"dataspace.position"
#define thisTTClassTags		"dataspace, position"

TT_OBJECT_CONSTRUCTOR
{
	// Create one of each kind of unit, and cache them in a hash
	registerUnit(TT("unit.cart3d"),			TT("cart3D"));
	registerUnit(TT("unit.cart3d"),			TT("xyz"));
	registerUnit(TT("unit.cart2d"),			TT("cart2D"));
	registerUnit(TT("unit.cart2d"),			TT("xy"));
	registerUnit(TT("unit.spherical"),		TT("spherical"));
	registerUnit(TT("unit.spherical"),		TT("aed"));
	registerUnit(TT("unit.polar"),			TT("polar"));
	registerUnit(TT("unit.polar"),			TT("ad"));
	registerUnit(TT("unit.openGL"),			TT("openGL"));
	registerUnit(TT("unit.cylindrical"),	TT("cylindrical"));
	registerUnit(TT("unit.cylindrical"),	TT("daz"));
	
	// Set our neutral unit (the unit through which all conversions are made)
	neutralUnit = TT("xyz");
	
	// Now that the cache is created, we can create a set of default units
	setInputUnit(neutralUnit);
	setOutputUnit(neutralUnit);
}


PositionDataspace::~PositionDataspace()
{
	;
}

#undef thisTTClass
#undef thisTTClassName
#undef thisTTClassTags
