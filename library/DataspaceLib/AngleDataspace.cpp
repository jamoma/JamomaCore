/* 
 * Jamoma DataspaceLib: AngleDataspace.cpp
 * Copyright © 2007, Nils Peters
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "AngleDataspace.h"

/***********************************************************************************************/
// rad is also the neutral format
RadianUnit::RadianUnit()
	: DataspaceUnit("radian")
{;}


RadianUnit::~RadianUnit()
{;}
		

void RadianUnit::convertToNeutral(const TTValue& inValue, TTValue& neutralValue)
{
	neutralValue = inValue;
}


void RadianUnit::convertFromNeutral(TTValue& neutralValue, TTValue& outValue)
{
	outValue = neutralValue;
}


/***********************************************************************************************/
DegreeUnit::DegreeUnit()
	: DataspaceUnit("degree")
{;}


DegreeUnit::~DegreeUnit()
{;}
		
		
void DegreeUnit::convertToNeutral(const TTValue& inValue, TTValue& neutralValue)
{
	neutralValue = TTValue(inValue.getFloat64() * kDegreesToRadians);	//kDegreesToRadians defined in DataspaceLib.h
}


void DegreeUnit::convertFromNeutral(TTValue& neutralValue, TTValue& outValue)
{
	outValue = TTValue(neutralValue.getFloat64() * kRadiansToDegrees);	//kRadiansToDegrees defined in DataspaceLib.h
}

/***********************************************************************************************/
AngleDataspace::AngleDataspace()
	: DataspaceLib("angle", "radian") //would "<" be possible ??
{
	// Create one of each kind of unit, and cache them in a hash
	registerUnit(new RadianUnit,	TT("radian"));
	registerUnit(new RadianUnit,	TT("rad"));
	registerUnit(new DegreeUnit,	TT("degree"));
	registerUnit(new DegreeUnit,	TT("deg"));
	
	// Now that the cache is created, we can create a set of default units
	setInputUnit(neutralUnit);
	setOutputUnit(neutralUnit);
}


AngleDataspace::~AngleDataspace()
{
	;
}
