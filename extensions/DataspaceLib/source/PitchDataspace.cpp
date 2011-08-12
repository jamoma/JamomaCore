/* 
 * Jamoma DataspaceLib: PitchDataspace
 * Copyright © 2007, Trond Lossius
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 *
 * Neutral unit is Hz
 */

#include "PitchDataspace.h"
#include <math.h>


#ifdef TT_PLATFORM_WIN
template <typename T> T asinh(T value)
{
	T returned;
	if(value>0)
		returned = log(value + sqrt(value * value + 1));
	else
		returned = -log(-value + sqrt(value * value + 1));
	return(returned);
}
#endif


/***********************************************************************************************/

#define thisTTClass			BarkUnit
#define thisTTClassName		"unit.bark"
#define thisTTClassTags		"dataspace.unit, pitch"

TT_OBJECT_CONSTRUCTOR,
TTDataspaceUnit(arguments)
{;}

BarkUnit::~BarkUnit(){;}		

void BarkUnit::convertToNeutral(const TTValue& input, TTValue& output)
{   // code from http://labrosa.ee.columbia.edu/matlab/rastamat/bark2hz.m 
	output = 600 * sinh(TTFloat64(input)/6);
}


void BarkUnit::convertFromNeutral(const TTValue& input, TTValue& output)
{  // taken from http://labrosa.ee.columbia.edu/matlab/rastamat/hz2bark.m
	output = 6 * asinh(TTFloat64(input) / 600);
}


#undef thisTTClass
#undef thisTTClassName
#undef thisTTClassTags

/***********************************************************************************************/

#define thisTTClass			MelUnit
#define thisTTClassName		"unit.mel"
#define thisTTClassTags		"dataspace.unit, pitch"

TT_OBJECT_CONSTRUCTOR,
TTDataspaceUnit(arguments)
{;}

MelUnit::~MelUnit(){;}		

void MelUnit::convertToNeutral(const TTValue& input, TTValue& output)
{   // HTK-code from http://labrosa.ee.columbia.edu/matlab/rastamat/mel2hz.m
	output = 700.0 *(pow(10,(TTFloat64(input)/2595.0))-1.0);
}


void MelUnit::convertFromNeutral(const TTValue& input, TTValue& output)
{  // HTK-code from http://labrosa.ee.columbia.edu/matlab/rastamat/hz2mel.m
	output = 2595.0 * log10(1+TTFloat64(input)/700.0);
}


#undef thisTTClass
#undef thisTTClassName
#undef thisTTClassTags

/***********************************************************************************************/

#define thisTTClass			PitchDataspace
#define thisTTClassName		"dataspace.pitch"
#define thisTTClassTags		"dataspace, pitch"

TT_OBJECT_CONSTRUCTOR
{
	// Create one of each kind of unit, and cache them in a hash
	registerUnit(TT("unit.bark"),		TT("bark"));
	registerUnit(TT("unit.mel"),		TT("mel"));
	
	// Set our neutral unit (the unit through which all conversions are made)
	neutralUnit = TT("Hz");
	
	// Now that the cache is created, we can create a set of default units
	setInputUnit(neutralUnit);
	setOutputUnit(neutralUnit);
}


PitchDataspace::~PitchDataspace()
{
	;
}

#undef thisTTClass
#undef thisTTClassName
#undef thisTTClassTags
