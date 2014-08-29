/** @file
 *
 * @ingroup foundationDataspaceLib
 *
 * @brief The #PositionDataspace converts between different untis describing position.
 *
 * @details The neutral unit of the position dataspace is 3-dimensional Cartesian coordinates.
 *
 * @authors Nils Peters, Trond Lossius, Jan Schacher, Tim Place, ...
 *
 * @copyright Copyright © 2007 by Nils Peters @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
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
	output.resize(3);
	output = input;
}


void Cartesian3DUnit::convertFromNeutral(const TTValue& input, TTValue& output)
{
	output = input;
	output.resize(3);
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
	TTFloat64 x; 
	TTFloat64 y;
	
	x = input[0];
	y = input[1];
	
	output.resize(3);
    output[0] = x;
    output[1] = y;
	output[2] = 0.0;
}

void Cartesian2DUnit::convertFromNeutral(const TTValue& input, TTValue& output)
{
	output = input;
	output.resize(2);
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
	//TTFloat64 kTTDegreesToRadians = kTTDegreesToRadians;
	TTFloat64 aa;//a  
	TTFloat64 ee;//e
	TTFloat64 dd;//d
	TTFloat64 temp;
	
	aa = input[0];
	ee = input[1];
	dd = input[2];
	
	aa *= kTTDegreesToRadians;
	ee *= kTTDegreesToRadians;
	temp = cos(ee) * dd;
	
	output.resize(3);
	output[0] = sin(aa) * temp;
	output[1] = cos(aa) * temp;
	output[2] = sin(ee) * dd;
}


void SphericalUnit::convertFromNeutral(const TTValue& input, TTValue& output)
{   
	TTFloat64 xx;
	TTFloat64 yy;
	TTFloat64 zz;
	TTFloat64 temp;
	
	xx = input[0];
	yy = input[1];
	zz = input[2];

	temp = (xx * xx) + (yy * yy);

	output.resize(3);	
	output[0] = atan2(xx, yy) * kTTRadiansToDegrees;
	output[1] = atan2(zz, (pow((temp), 0.5))) * kTTRadiansToDegrees;
	output[2] = pow((temp + (zz * zz)), 0.5);
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
	
	aa = input[0];
	dd = input[1];
	aa *= kTTDegreesToRadians;

    output.resize(3);
	output[0] = sin(aa) * dd;	// x
	output[1] = cos(aa) * dd;	// y
	output[2] = 0;				// z
}


void PolarUnit::convertFromNeutral(const TTValue& input, TTValue& output)
{   
	TTFloat64 xx;
	TTFloat64 yy;
	
	xx = input[0];
	yy = input[1];

	output.resize(2);	
	output[0] = atan2(xx, yy) * kTTRadiansToDegrees; //a
	output[1] = pow(((xx * xx) + (yy * yy)), 0.5);	 //distance
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
	
	x = input[0];
	y = input[1];
	z = input[2];
	
	output.resize(3);
	output[0] = x;
	output[1] = -1.0 * z;
	output[2] = y;
}


void OpenGlUnit::convertFromNeutral(const TTValue& input, TTValue& output)
{
	TTFloat64 x;
	TTFloat64 y;
	TTFloat64 z;
	
	x = input[0];
	y = input[1];
	z = input[2];
	
	output.resize(3);
	output[0] = x;
	output[1] = z;
	output[2] = y * -1.0;
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
	TTFloat64 dd;
	TTFloat64 aa;
	TTFloat64 zz;

	dd = input[0];
	aa = input[1];
	zz = input[2];
	aa *= kTTDegreesToRadians;
				
	output.resize(3);
	output[0] = sin(aa) * dd; //x
	output[1] = cos(aa) * dd; //y
	output[2] = zz; //z
}


void CylindricalUnit::convertFromNeutral(const TTValue& input, TTValue& output)
{
	TTFloat64 xx;
	TTFloat64 yy;
	TTFloat64 zz;

	xx = input[0];
	yy = input[1];
	zz = input[2];
	
	// d a z
	output.resize(3);
	output[0] = pow(((xx * xx) + (yy * yy)), 0.5);   //distance
	output[1] = atan2(xx, yy) * kTTRadiansToDegrees; //a
	output[2] = zz;                                  //z
}


#undef thisTTClass
#undef thisTTClassName
#undef thisTTClassTags

/***********************************************************************************************/

#define thisTTClass			PositionDataspace
#define thisTTClassName		"dataspace.position"
#define thisTTClassTags		"foundationDataspaceLib, dataspace, position"

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
