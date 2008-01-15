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


MidiPitchUnit::MidiPitchUnit()
	: DataspaceUnit("centimeter")
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
FrequencyUnit::FrequencyUnit()
	: DataspaceUnit("foot")
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
PitchDataspace::PitchDataspace()
	: DataspaceLib("distance", "meter")
{
	// Create one of each kind of unit, and cache them in a hash
	registerUnit(new MidiPitchUnit,		gensym("midi"));
	registerUnit(new FrequencyUnit,		gensym("Hz"));
	
	// Now that the cache is created, we can create a set of default units
	setInputUnit(neutralUnit);
	setOutputUnit(neutralUnit);
}


PitchDataspace::~PitchDataspace()
{
	;
}
