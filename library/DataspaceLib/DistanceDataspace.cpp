/* 
 * Jamoma DataspaceLib: DistanceDataspace
 * Copyright © 2007, Tim Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "DistanceDataspace.h"


CentimeterUnit::CentimeterUnit()
	: DataspaceUnit("centimeter")
{;}


CentimeterUnit::~CentimeterUnit()
{;}
		

void CentimeterUnit::convertToNeutral(const TTValue& inValue, TTValue& neutralValue)
{
	neutralValue = TTValue(inValue.getFloat64() * 0.01);
}


void CentimeterUnit::convertFromNeutral(TTValue& neutralValue, TTValue& outValue)
{
	outValue = TTValue(neutralValue.getFloat64() * 100.0);
}


/***********************************************************************************************/
FootUnit::FootUnit()
	: DataspaceUnit("foot")
{;}


FootUnit::~FootUnit()
{;}
		
		
void FootUnit::convertToNeutral(const TTValue& inValue, TTValue& neutralValue)
{
	neutralValue = TTValue(inValue.getFloat64() / 3.281);
}


void FootUnit::convertFromNeutral(TTValue& neutralValue, TTValue& outValue)
{
	outValue = TTValue(neutralValue.getFloat64() * 3.281);
}


/***********************************************************************************************/
InchUnit::InchUnit()
	: DataspaceUnit("inch")
{;}


InchUnit::~InchUnit()
{;}

void InchUnit::convertToNeutral(const TTValue& inValue, TTValue& neutralValue)
{
	neutralValue = TTValue(inValue.getFloat64() / 39.37);
}


void InchUnit::convertFromNeutral(TTValue& neutralValue, TTValue& outValue)
{
	outValue = TTValue(neutralValue.getFloat64() * 39.37);
}


/***********************************************************************************************/
MeterUnit::MeterUnit()
	: DataspaceUnit("meter")
{;}


MeterUnit::~MeterUnit()
{;}

		
void MeterUnit::convertToNeutral(const TTValue& inValue, TTValue& neutralValue)
{
	neutralValue = inValue;
}


void MeterUnit::convertFromNeutral(TTValue& neutralValue, TTValue& outValue)
{
	outValue = neutralValue;
}


/***********************************************************************************************/
DistanceDataspace::DistanceDataspace()
	: DataspaceLib("distance", "meters")
{
	// Create one of each kind of unit, and cache them in a hash
	registerUnit(new CentimeterUnit,	TT("cm"));
	registerUnit(new CentimeterUnit,	TT("centimeters"));
	registerUnit(new FootUnit,			TT("'"));
	registerUnit(new FootUnit,			TT("feet"));
	registerUnit(new InchUnit,			TT("\""));
	registerUnit(new InchUnit,			TT("inches"));
	registerUnit(new MeterUnit,			TT("m"));
	registerUnit(new MeterUnit,			TT("meters"));
	
	// Now that the cache is created, we can create a set of default units
	setInputUnit(neutralUnit);
	setOutputUnit(neutralUnit);
}


DistanceDataspace::~DistanceDataspace()
{
	;
}
