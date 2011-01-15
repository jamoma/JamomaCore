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


MidiPitchUnit::MidiPitchUnit()
	: MaxDataspaceUnit("midi")
{;}


MidiPitchUnit::~MidiPitchUnit()
{;}
		

void MidiPitchUnit::convertToNeutral(long inputNumArgs, t_atom *inputAtoms, long *outputNumArgs, double *output)
{
	*outputNumArgs = 1;
	// f = 440 * pow(2, (m-69)/12.)
	*output = 440. * pow(2,(atom_getfloat(inputAtoms)-69.)/12.);

}


void MidiPitchUnit::convertFromNeutral(long inputNumArgs, double *input, long *outputNumArgs, t_atom **outputAtoms)
{
	*outputNumArgs = 1;
	// m = 69. + 12*log2(f/440.);
	atom_setfloat(*outputAtoms, 69. + 12* log(*input/440.)/log(2.));
}


/***********************************************************************************************/


CentUnit::CentUnit()
	: MaxDataspaceUnit("cents")
{;}


CentUnit::~CentUnit()
{;}
		

void CentUnit::convertToNeutral(long inputNumArgs, t_atom *inputAtoms, long *outputNumArgs, double *output)
{
	*outputNumArgs = 1;
	// f = 440 * pow(2, (m-69)/12.)
	*output = 440. * pow(2,(atom_getfloat(inputAtoms)-6900.)/1200.);

}


void CentUnit::convertFromNeutral(long inputNumArgs, double *input, long *outputNumArgs, t_atom **outputAtoms)
{
	*outputNumArgs = 1;
	// m = 69. + 12*log2(f/440.);
	atom_setfloat(*outputAtoms, 6900. + 1200* log(*input/(440.))/log(2.));
}


/***********************************************************************************************/
FrequencyUnit::FrequencyUnit()
	: MaxDataspaceUnit("Hz")
{;}


FrequencyUnit::~FrequencyUnit()
{;}
		
		
void FrequencyUnit::convertToNeutral(long inputNumArgs, t_atom *inputAtoms, long *outputNumArgs, double *output)
{
	*outputNumArgs = 1;
	*output = atom_getfloat(inputAtoms);
}


void FrequencyUnit::convertFromNeutral(long inputNumArgs, double *input, long *outputNumArgs, t_atom **outputAtoms)
{
	*outputNumArgs = 1;
	atom_setfloat(*outputAtoms, *input);
}


/***********************************************************************************************/

SpeedUnit::SpeedUnit()
	: MaxDataspaceUnit("speed")
{;}


SpeedUnit::~SpeedUnit()
{;}

void SpeedUnit::convertToNeutral(long inputNumArgs, t_atom *inputAtoms, long *outputNumArgs, double *output)
{
	*outputNumArgs = 1;
	// f = speed*440./pow(2.,(69./12.))
	*output = atom_getfloat(inputAtoms) * 440./pow(2.,(69./12.));
}


void SpeedUnit::convertFromNeutral(long inputNumArgs, double *input, long *outputNumArgs, t_atom **outputAtoms)
{
	*outputNumArgs = 1;
	// speed = f * pow(2.,(69./12.))/440.
	atom_setfloat(*outputAtoms, *input * pow(2.,(69./12.))/440.);
}




/***********************************************************************************************/
PitchDataspace::PitchDataspace()
	: MaxDataspaceLib("pitch", "Hz")
{
	// Create one of each kind of unit, and cache them in a hash
	registerUnit(new CentUnit,			SymbolGen("cents"));
	registerUnit(new FrequencyUnit,		SymbolGen("Hz"));
	registerUnit(new MidiPitchUnit,		SymbolGen("midi"));
	registerUnit(new SpeedUnit,			SymbolGen("speed"));	// Transposition playback speed of buffers or sound files 
	
	// Now that the cache is created, we can create a set of default units
	setInputUnit(neutralUnit);
	setOutputUnit(neutralUnit);
}


PitchDataspace::~PitchDataspace()
{
	;
}
