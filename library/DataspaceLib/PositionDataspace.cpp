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
	: DataspaceUnit("cart3D")
{;}


Cartesian3DUnit::~Cartesian3DUnit()
{;}
		

void Cartesian3DUnit::convertToNeutral(const TTValue& inValue, TTValue& neutralValue)
{
	neutralValue = inValue;
}


void Cartesian3DUnit::convertFromNeutral(TTValue& neutralValue, TTValue& outValue)
{
	outValue = neutralValue;
}


/***********************************************************************************************/
Cartesian2DUnit::Cartesian2DUnit()
	: DataspaceUnit("cart2D")
{;}

Cartesian2DUnit::~Cartesian2DUnit()
{;}

void Cartesian2DUnit::convertToNeutral(const TTValue& inValue, TTValue& neutralValue)
{
	neutralValue = inValue;
}

void Cartesian2DUnit::convertFromNeutral(TTValue& neutralValue, TTValue& outValue)
{
	outValue = neutralValue;
}

/***********************************************************************************************/


SphericalUnit::SphericalUnit()
	: DataspaceUnit("spherical")
{;}


SphericalUnit::~SphericalUnit()
{;}
		
		
void SphericalUnit::convertToNeutral(const TTValue& inValue, TTValue& neutralValue)
{   
	double aa = inValue.getFloat64(0) *  kDegreesToRadians; //a  
	double ee = inValue.getFloat64(1) *  kDegreesToRadians; //e
	double dd = inValue.getFloat64(2); //d
	double temp = cos(ee) * dd;		
	
	neutralValue.setSize(3);
	neutralValue.set(0, sin(aa) * temp);
	neutralValue.set(1, cos(aa) * temp);
	neutralValue.set(2, sin(ee) * dd);
}


void SphericalUnit::convertFromNeutral(TTValue& neutralValue, TTValue& outValue)
{   
    double xx = neutralValue.getFloat64(0);
	double yy = neutralValue.getFloat64(1);
	double zz = neutralValue.getFloat64(2);
	double temp = (xx * xx) + (yy * yy);
	
	outValue.setSize(3);
	outValue.set(0, atan2(xx, yy) * kRadiansToDegrees);
	outValue.set(1, atan2(zz, (pow((temp), 0.5))) * kRadiansToDegrees);
	outValue.set(2, pow((temp + (zz * zz)), 0.5));
}

/***********************************************************************************************/

PolarUnit::PolarUnit()
	: DataspaceUnit("polar")
{;}


PolarUnit::~PolarUnit()
{;}
		
		
void PolarUnit::convertToNeutral(const TTValue& inValue, TTValue& neutralValue)
{	
	double aa = inValue.getFloat64(0) * kDegreesToRadians; //a
	double dd = inValue.getFloat64(1); //d
	
	neutralValue.setSize(2);
	neutralValue.set(0, sin(aa)  * dd);	//x
	neutralValue.set(1, cos(aa) * dd);	//y
}


void PolarUnit::convertFromNeutral(TTValue& neutralValue, TTValue& outValue)
{   
    double xx = neutralValue.getFloat64(0);
	double yy = neutralValue.getFloat64(1);
	
	outValue.setSize(2);
	outValue.set(0, atan2(xx, yy) * kRadiansToDegrees);	//a
	outValue.set(1, pow(((xx * xx) + (yy * yy)), 0.5));	//distance
}

/***********************************************************************************************/

OpenGlUnit::OpenGlUnit()
	: DataspaceUnit("openGl")
{;}


OpenGlUnit::~OpenGlUnit()
{;}
		

void OpenGlUnit::convertToNeutral(const TTValue& inValue, TTValue& neutralValue)
{	
	neutralValue.setSize(3);
	neutralValue.set(0, inValue.getFloat64(0));			//x
	neutralValue.set(1, -1.0 * inValue.getFloat64(2));	//y
	neutralValue.set(2, inValue.getFloat64(1));			//z
}


void OpenGlUnit::convertFromNeutral(TTValue& neutralValue, TTValue& outValue)
{		
	outValue.setSize(3);
	outValue.set(0, neutralValue.getFloat64(0));		//x
	outValue.set(1, neutralValue.getFloat64(2));		//y
	outValue.set(2, -1.0 * neutralValue.getFloat64(1));	//z
}


/***********************************************************************************************/


CylindricalUnit::CylindricalUnit()
	: DataspaceUnit("cylindrical")
{;}


CylindricalUnit::~CylindricalUnit()
{;}
		

void CylindricalUnit::convertToNeutral(const TTValue& inValue, TTValue& neutralValue)
{
	// Cylindrical coordinate System (according to ISO 31-11 http://en.wikipedia.org/wiki/ISO_31-11#Coordinate_systems )  = radius azimut hight
	
	double dd = inValue.getFloat64(0); //d
	double aa = inValue.getFloat64(1) * kDegreesToRadians; //a
	
	neutralValue.setSize(3);
	neutralValue.set(0, sin(aa)  * dd);			//x
	neutralValue.set(1, cos(aa) * dd);			//y
	neutralValue.set(2, inValue.getFloat64(2));	//z
}


void CylindricalUnit::convertFromNeutral(TTValue& neutralValue, TTValue& outValue)
{	 
	 double xx = neutralValue.getFloat64(0);
     double yy = neutralValue.getFloat64(2);	
	
	// d a z
	outValue.setSize(3);
	outValue.set(0, pow(((xx * xx) + (yy * yy)), 0.5));		//distance
	outValue.set(1, atan2(xx, yy) * kRadiansToDegrees);		//a
	outValue.set(2, neutralValue.getFloat64(2));			//z
}


/***********************************************************************************************/
PositionDataspace::PositionDataspace()
	: DataspaceLib("position", "xyz")
{
	// Create one of each kind of unit, and cache them in a hash
	registerUnit(new Cartesian3DUnit,	TT("cart3D"));
	registerUnit(new Cartesian3DUnit,	TT("xyz"));
	registerUnit(new Cartesian2DUnit,	TT("cart2D"));
	registerUnit(new Cartesian2DUnit,	TT("xy"));
	registerUnit(new SphericalUnit,		TT("spherical"));
	registerUnit(new SphericalUnit,		TT("aed"));
	registerUnit(new PolarUnit,			TT("polar"));
	registerUnit(new PolarUnit,			TT("ad"));
	registerUnit(new OpenGlUnit,		TT("openGL"));
	registerUnit(new CylindricalUnit,	TT("cylindrical"));
	registerUnit(new CylindricalUnit,	TT("daz"));
	
	// Now that the cache is created, we can create a set of default units
	setInputUnit(neutralUnit);
	setOutputUnit(neutralUnit);
}


PositionDataspace::~PositionDataspace()
{
	;
}


