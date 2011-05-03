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


#define thisTTClass			MidiPitchUnit
#define thisTTClassName		"unit.midi.pitch"
#define thisTTClassTags		"dataspace.unit, pitch"

TT_OBJECT_CONSTRUCTOR,
TTDataspaceUnit(arguments)
{;}

MidiPitchUnit::~MidiPitchUnit(){;}		

void MidiPitchUnit::convertToNeutral(const TTValue& input, TTValue& output)
{
	output = 440.0 * pow(2.0, (TTFloat64(input) - 69.0) / 12.0);
}


void MidiPitchUnit::convertFromNeutral(const TTValue& input, TTValue& output)
{
	output = 69.0 + 12.0 * log(TTFloat64(input)/440.0)/log(2.0);
}


#undef thisTTClass
#undef thisTTClassName
#undef thisTTClassTags

/***********************************************************************************************/

#define thisTTClass			CentUnit
#define thisTTClassName		"unit.cent"
#define thisTTClassTags		"dataspace.unit, pitch"

TT_OBJECT_CONSTRUCTOR,
TTDataspaceUnit(arguments)
{;}

CentUnit::~CentUnit(){;}		

void CentUnit::convertToNeutral(const TTValue& input, TTValue& output)
{
	output = 440.0 * pow(2.0, (TTFloat64(input) - 6900.0) / 1200.0);
}


void CentUnit::convertFromNeutral(const TTValue& input, TTValue& output)
{
	output = 6900.0 + 1200.0 * log(TTFloat64(input)/440.0)/log(2.0);
}


#undef thisTTClass
#undef thisTTClassName
#undef thisTTClassTags

/***********************************************************************************************/

#define thisTTClass			FrequencyUnit
#define thisTTClassName		"unit.hz"
#define thisTTClassTags		"dataspace.unit, pitch"

TT_OBJECT_CONSTRUCTOR,
TTDataspaceUnit(arguments)
{;}

FrequencyUnit::~FrequencyUnit(){;}		
		
void FrequencyUnit::convertToNeutral(const TTValue& input, TTValue& output)
{
	output = input;
}


void FrequencyUnit::convertFromNeutral(const TTValue& input, TTValue& output)
{
	output = input;
}


#undef thisTTClass
#undef thisTTClassName
#undef thisTTClassTags

/***********************************************************************************************/

#define thisTTClass			SpeedUnit
#define thisTTClassName		"unit.speed"
#define thisTTClassTags		"dataspace.unit, pitch"

TT_OBJECT_CONSTRUCTOR,
TTDataspaceUnit(arguments)
{;}

SpeedUnit::~SpeedUnit(){;}		

void SpeedUnit::convertToNeutral(const TTValue& input, TTValue& output)
{
	output = TTFloat64(input) * 440.0 / pow(2.0, 69.0/12.0);
}


void SpeedUnit::convertFromNeutral(const TTValue& input, TTValue& output)
{
	output = TTFloat64(input) * pow(2.0, 69.0/12.0) / 440.0;
}


#undef thisTTClass
#undef thisTTClassName
#undef thisTTClassTags

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
	registerUnit(TT("unit.cent"),		TT("cents"));
	registerUnit(TT("unit.hz"),			TT("Hz"));
	registerUnit(TT("unit.midi.pitch"),	TT("midi"));
	registerUnit(TT("unit.mel"),		TT("mel"));
	registerUnit(TT("unit.speed"),		TT("speed"));	// Transposition playback speed of buffers or sound files 
	
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
