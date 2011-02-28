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
//	output.setSize(1);
	// f = 440 * pow(2, (m-69)/12.)
//	*output = 440. * pow(2,(atom_getfloat(inputAtoms)-69.)/12.);
	output = 440.0 * pow(2.0, (TTFloat64(input) - 69.0) / 12.0);
}


void MidiPitchUnit::convertFromNeutral(const TTValue& input, TTValue& output)
{
//	output.setSize(1);
	// m = 69. + 12*log2(f/440.);
//	atom_setfloat(*outputAtoms, 69. + 12* log(*input/440.)/log(2.));
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
//	output.setSize(1);
	// f = 440 * pow(2, (m-69)/12.)
//	*output = 440. * pow(2,(atom_getfloat(inputAtoms)-6900.)/1200.);
	output = 440.0 * pow(2.0, (TTFloat64(input) - 6900.0) / 1200.0);
}


void CentUnit::convertFromNeutral(const TTValue& input, TTValue& output)
{
//	output.setSize(1);
	// m = 69. + 12*log2(f/440.);
//	atom_setfloat(*outputAtoms, 6900. + 1200* log(*input/440.)/log(2.));
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
//	output.setSize(1);
	// f = speed*440./pow(2.,(69./12.))
//	*output = atom_getfloat(inputAtoms) * 440./pow(2.,(69./12.));
	output = TTFloat64(input) * 440.0 / pow(2.0, 69.0/12.0);
}


void SpeedUnit::convertFromNeutral(const TTValue& input, TTValue& output)
{
//	output.setSize(1);
	// speed = f * pow(2.,(69./12.))/440.
//	atom_setfloat(*outputAtoms, *input * pow(2.,(69./12.))/440.);
	output = TTFloat64(input) * pow(2.0, 69.0/12.0) / 440.0;
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
	registerUnit(TT("unit.cent"),		TT("cents"));
	registerUnit(TT("unit.hz"),			TT("Hz"));
	registerUnit(TT("unit.midi.pitch"),	TT("midi"));
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
