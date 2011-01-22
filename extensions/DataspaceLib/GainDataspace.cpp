/* 
 * Jamoma DataspaceLib: GainDataspace
 * Copyright � 2007, Trond Lossius
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 *
 * Neutral unit is linear amplitude
 */

#include "GainDataspace.h"
#include <math.h>


#define thisTTClass			LinearAmplitudeUnit
#define thisTTClassName		"unit.linear"
#define thisTTClassTags		"dataspace.unit, gain"

TT_OBJECT_CONSTRUCTOR,
TTDataspaceUnit(arguments)
{;}

LinearAmplitudeUnit::~LinearAmplitudeUnit(){;}		

void LinearAmplitudeUnit::convertToNeutral(const TTValue& input, TTValue& output)
{
	output = input;
	output.cliplow(0.0);
}


void LinearAmplitudeUnit::convertFromNeutral(const TTValue& input, TTValue& output)
{
	output = input;
}


#undef thisTTClass
#undef thisTTClassName
#undef thisTTClassTags

/***********************************************************************************************/

#define thisTTClass			MidiGainUnit
#define thisTTClassName		"unit.midi.gain"
#define thisTTClassTags		"dataspace.unit, gain"

TT_OBJECT_CONSTRUCTOR,
TTDataspaceUnit(arguments)
{;}

MidiGainUnit::~MidiGainUnit(){;}		

void MidiGainUnit::convertToNeutral(const TTValue& input, TTValue& output)
{
	output = pow(TTFloat64(input)*0.01, kGainMidiPower);
}


void MidiGainUnit::convertFromNeutral(const TTValue& input, TTValue& output)
{
	output = 100.0 * pow(TTFloat64(input), kGainMidiPowerInv);
}


#undef thisTTClass
#undef thisTTClassName
#undef thisTTClassTags

/***********************************************************************************************/

#define thisTTClass			DecibelUnit
#define thisTTClassName		"unit.db"
#define thisTTClassTags		"dataspace.unit, gain"

TT_OBJECT_CONSTRUCTOR,
TTDataspaceUnit(arguments)
{;}

DecibelUnit::~DecibelUnit(){;}		

void DecibelUnit::convertToNeutral(const TTValue& input, TTValue& output)
{
	output = pow(10.0, TTFloat64(input) * 0.05);
}


void DecibelUnit::convertFromNeutral(const TTValue& input, TTValue& output)
{
	output = log10(TTFloat64(input)) * 20.0;
}


#undef thisTTClass
#undef thisTTClassName
#undef thisTTClassTags

/***********************************************************************************************/

#define thisTTClass			GainDataspace
#define thisTTClassName		"dataspace.gain"
#define thisTTClassTags		"dataspace, gain"

TT_OBJECT_CONSTRUCTOR
{
	// Create one of each kind of unit, and cache them in a hash
	registerUnit(TT("unit.linear"),		TT("linear"));
	registerUnit(TT("unit.midi.gain"),	TT("midi"));
	registerUnit(TT("unit.db"),			TT("dB"));
	registerUnit(TT("unit.db"),			TT("db"));

	// Set our neutral unit (the unit through which all conversions are made)
	neutralUnit = TT("linear");
	
	// Now that the cache is created, we can create a set of default units
	setInputUnit(neutralUnit);
	setOutputUnit(neutralUnit);
}


GainDataspace::~GainDataspace()
{
	;
}

#undef thisTTClass
#undef thisTTClassName
#undef thisTTClassTags
