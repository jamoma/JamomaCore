/* 
 * Jamoma DataspaceLib: PitchDataspace
 * Copyright © 2007, Trond Lossius
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 *
 * Neutral unit is Hz
 */

#include "PitchDataspace.h"
#include <math.h>


#define thisTTClass			MidiPitchUnit
#define thisTTClassName		"unit.midi.pitch"
#define thisTTClassTags		"dataspace, pitch"

TT_DATASPACEUNIT_CONSTRUCTOR{;}
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
#define thisTTClassTags		"dataspace, pitch"

TT_DATASPACEUNIT_CONSTRUCTOR{;}
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
#define thisTTClassTags		"dataspace, pitch"

TT_DATASPACEUNIT_CONSTRUCTOR{;}
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
#define thisTTClassTags		"dataspace, pitch"

TT_DATASPACEUNIT_CONSTRUCTOR{;}
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

TT_DATASPACELIB_CONSTRUCTOR
//PitchDataspace::PitchDataspace()
//	: DataspaceLib("pitch", "Hz")
{
	// Create one of each kind of unit, and cache them in a hash
//	registerUnit(new CentUnit,			SymbolGen("cents"));
//	registerUnit(new FrequencyUnit,		SymbolGen("Hz"));
//	registerUnit(new MidiPitchUnit,		SymbolGen("midi"));
//	registerUnit(new SpeedUnit,			SymbolGen("speed"));	// Transposition playback speed of buffers or sound files 
	
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
