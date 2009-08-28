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

void LinearAmplitudeUnit::convertToNeutral(long inputNumArgs, t_atom *inputAtoms, long *outputNumArgs, double *output)
{
	*outputNumArgs = 1;
	
	*output = atom_getfloat(inputAtoms);
	// avoid negative valus that might blow up some convertions
	if (*output<0)
		*output = 0;

}


void LinearAmplitudeUnit::convertFromNeutral(long inputNumArgs, double *input, long *outputNumArgs, t_atom **outputAtoms)
{
	*outputNumArgs = 1;
	atom_setfloat(*outputAtoms, *input);
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

void MidiGainUnit::convertToNeutral(long inputNumArgs, t_atom *inputAtoms, long *outputNumArgs, double *output)
{
	*outputNumArgs = 1;
	// This is the old formula behaving the same as the gain~ object:
	// *output =  pow(10., (atom_getfloat(inputAtoms)-127.)*0.03);
	// Now substituted for:
	*output = pow(atom_getfloat(inputAtoms)*0.01,kGainMidiPower);
}


void MidiGainUnit::convertFromNeutral(long inputNumArgs, double *input, long *outputNumArgs, t_atom **outputAtoms)
{
	*outputNumArgs = 1;
	// This is the old formula behaving the same as the gain~ object:
	// atom_setfloat(*outputAtoms, log10(*input)*33.333333333333+127.);
	// Now substituted for:
	atom_setfloat(*outputAtoms, 100.*pow((*input),kGainMidiPowerInv));
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

void DecibelUnit::convertToNeutral(long inputNumArgs, t_atom *inputAtoms, long *outputNumArgs, double *output)
{
	*outputNumArgs = 1;
	*output = pow(10., atom_getfloat(inputAtoms)*0.05);
}


void DecibelUnit::convertFromNeutral(long inputNumArgs, double *input, long *outputNumArgs, t_atom **outputAtoms)
{
	*outputNumArgs = 1;	
	atom_setfloat(*outputAtoms, log10(*input)*20.);
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
	registerUnit(new LinearAmplitudeUnit,	SymbolGen("linear"));
	registerUnit(new MidiGainUnit,			SymbolGen("midi"));
	registerUnit(new DecibelUnit,			SymbolGen("dB"));
	registerUnit(new DecibelUnit,			SymbolGen("db"));

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
