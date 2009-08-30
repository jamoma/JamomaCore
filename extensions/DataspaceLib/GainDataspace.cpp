/* 
 * Jamoma DataspaceLib: GainDataspace
 * Copyright � 2007, Trond Lossius
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 *
 * Neutral unit is linear amplitude
 */

#include "GainDataspace.h"
#include <math.h>


#define thisTTClass			LinearAmplitudeUnit
#define thisTTClassName		"unit.linear"
#define thisTTClassTags		"dataspace, gain"

TT_DATASPACEUNIT_CONSTRUCTOR{;}
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
#define thisTTClassTags		"dataspace, gain"

TT_DATASPACEUNIT_CONSTRUCTOR{;}
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
#define thisTTClassTags		"dataspace, gain"

TT_DATASPACEUNIT_CONSTRUCTOR{;}
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

TT_DATASPACELIB_CONSTRUCTOR
//GainDataspace::GainDataspace()
//	: DataspaceLib("gain", "linear")
{
	// Create one of each kind of unit, and cache them in a hash
//	registerUnit(new LinearAmplitudeUnit,	SymbolGen("linear"));
//	registerUnit(new MidiGainUnit,			SymbolGen("midi"));
//	registerUnit(new DecibelUnit,			SymbolGen("dB"));
//	registerUnit(new DecibelUnit,			SymbolGen("db"));

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
