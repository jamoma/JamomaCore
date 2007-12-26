/* 
 * Jamoma DataspaceLib: TimeDataspace
 * Copyright © 2007, Tim Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TimeDataspace.h"


MillisecondUnit::MillisecondUnit()
	: DataspaceUnit::DataspaceUnit("millisecond")
{;}


MillisecondUnit::~MillisecondUnit()
{;}
		

void MillisecondUnit::convertToNeutral(long inputNumArgs, t_atom *inputAtoms, long *outputNumArgs, double *output)
{
	*outputNumArgs = 1;
	*output = atom_getfloat(inputAtoms);
}


void MillisecondUnit::convertFromNeutral(long inputNumArgs, double *input, long *outputNumArgs, t_atom **outputAtoms)
{
	*outputNumArgs = 1;
	atom_setfloat(*outputAtoms, *input);
}


/***********************************************************************************************/
SampleUnit::SampleUnit()
	: DataspaceUnit::DataspaceUnit("sample")
{
	// TODO: Do something a bit more legit with the sample rate -- need to actually know the real sample rate!
	sample_rate = DEFAULT_SAMPLE_RATE;
	msr = double(sample_rate) / 1000.0;
	rmsr = 1.0 / msr;
}


SampleUnit::~SampleUnit()
{;}
		
		
void SampleUnit::convertToNeutral(long inputNumArgs, t_atom *inputAtoms, long *outputNumArgs, double *output)
{
	*outputNumArgs = 1;
	*output = atom_getfloat(inputAtoms) * rmsr;
}


void SampleUnit::convertFromNeutral(long inputNumArgs, double *input, long *outputNumArgs, t_atom **outputAtoms)
{
	*outputNumArgs = 1;
	atom_setfloat(*outputAtoms, (*input * msr));
}


/***********************************************************************************************/
SecondUnit::SecondUnit()
	: DataspaceUnit::DataspaceUnit("second")
{;}


SecondUnit::~SecondUnit()
{;}

		
void SecondUnit::convertToNeutral(long inputNumArgs, t_atom *inputAtoms, long *outputNumArgs, double *output)
{
	*outputNumArgs = 1;
	*output = atom_getfloat(inputAtoms) * 1000.0;
}


void SecondUnit::convertFromNeutral(long inputNumArgs, double *input, long *outputNumArgs, t_atom **outputAtoms)
{
	*outputNumArgs = 1;
	atom_setfloat(*outputAtoms, *input * 0.001);
}


/***********************************************************************************************/
TimeDataspace::TimeDataspace()
	: DataspaceLib::DataspaceLib("time", "millisecond")
{
	// Create one of each kind of unit, and cache them in a hash
	registerUnit(new MillisecondUnit,	gensym("ms"));
	registerUnit(new MillisecondUnit,	gensym("millisecond"));
	registerUnit(new SecondUnit,		gensym("s"));
	registerUnit(new SecondUnit,		gensym("second"));
	registerUnit(new SampleUnit,		gensym("sample"));
	
	// Now that the cache is created, we can create a set of default units
	setInputUnit(neutralUnit);
	setOutputUnit(neutralUnit);
}


TimeDataspace::~TimeDataspace()
{
	;
}
