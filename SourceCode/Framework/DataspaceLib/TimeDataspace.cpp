/* 
 * Jamoma DataspaceLib: TimeDataspace
 * Copyright © 2007, Tim Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TimeDataspace.h"
#include "TTBlueAPI.h"


MillisecondUnit::MillisecondUnit()
	: DataspaceUnit("millisecond")
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
	: DataspaceUnit("sample")
{   
	TTValue globalSampleRate;	
	
	ttEnvironment->getAttributeValue(TT("sr"), globalSampleRate);
	sample_rate = globalSampleRate; 	//was: sample_rate = (long)DEFAULT_SAMPLE_RATE; [NP]
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
	: DataspaceUnit("second")
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
UpdaterateUnit::UpdaterateUnit()
	: DataspaceUnit("fps") //frames per second; also update rate e.g. of gestural devices etc. 
{;}


UpdaterateUnit::~UpdaterateUnit()
{;}


void UpdaterateUnit::convertToNeutral(long inputNumArgs, t_atom *inputAtoms, long *outputNumArgs, double *output)
{   
	*outputNumArgs = 1;
	*output = 1000.0 / atom_getfloat(inputAtoms);
}
//TODO: prevent division with zero

void UpdaterateUnit::convertFromNeutral(long inputNumArgs, double *input, long *outputNumArgs, t_atom **outputAtoms)
{
	*outputNumArgs = 1;
	atom_setfloat(*outputAtoms, 1000.0 / *input);
}
//TODO: prevent division with zero
/***********************************************************************************************/
BpmUnit::BpmUnit()
: DataspaceUnit("bpm") //beats per minute
{;}


BpmUnit::~BpmUnit()
{;}


void BpmUnit::convertToNeutral(long inputNumArgs, t_atom *inputAtoms, long *outputNumArgs, double *output)
{
	*outputNumArgs = 1;
	*output = 60000.0 / atom_getfloat(inputAtoms);
}
//TODO: prevent division with zero

void BpmUnit::convertFromNeutral(long inputNumArgs, double *input, long *outputNumArgs, t_atom **outputAtoms)
{
	*outputNumArgs = 1;
	atom_setfloat(*outputAtoms, 60000.0 / *input);
}
//TODO: prevent division with zero


/***********************************************************************************************/
TimeDataspace::TimeDataspace()
	: DataspaceLib("time", "millisecond")
{
	// Create one of each kind of unit, and cache them in a hash
	registerUnit(new BpmUnit,			gensym("bpm"));
	registerUnit(new UpdaterateUnit,	gensym("fps"));
	registerUnit(new UpdaterateUnit,	gensym("Hz"));
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
