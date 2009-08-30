/* 
 * Jamoma DataspaceLib: TimeDataspace
 * Copyright © 2007, Tim Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TimeDataspace.h"
#include "TTFoundationAPI.h"



#define thisTTClass			MillisecondUnit
#define thisTTClassName		"unit.ms"
#define thisTTClassTags		"dataspace, time"

TT_DATASPACEUNIT_CONSTRUCTOR{;}
MillisecondUnit::~MillisecondUnit(){;}		

void MillisecondUnit::convertToNeutral(const TTValue& input, TTValue& output)
{
	output = input;
}


void MillisecondUnit::convertFromNeutral(const TTValue& input, TTValue& output)
{
	output = input;
}


#undef thisTTClass
#undef thisTTClassName
#undef thisTTClassTags

/***********************************************************************************************/

#define thisTTClass			SampleUnit
#define thisTTClassName		"unit.sample"
#define thisTTClassTags		"dataspace, time"

TT_DATASPACEUNIT_CONSTRUCTOR
{   
	TTValue globalSampleRate;	
	
	ttEnvironment->getAttributeValue(TT("sr"), globalSampleRate);
	sample_rate = globalSampleRate; 	//was: sample_rate = (long)DEFAULT_SAMPLE_RATE; [NP]
	msr = double(sample_rate) / 1000.0;
	rmsr = 1.0 / msr;
}


SampleUnit::~SampleUnit()
{;}
		
		
void SampleUnit::convertToNeutral(const TTValue& input, TTValue& output)
{
//	output.setSize(1);
//	*output = atom_getfloat(inputAtoms) * rmsr;
	output = TTFloat64(input) * rmsr;
}


void SampleUnit::convertFromNeutral(const TTValue& input, TTValue& output)
{
//	output.setSize(1);
//	atom_setfloat(*outputAtoms, (*input * msr));
	output = TTFloat64(input) * msr;
}


#undef thisTTClass
#undef thisTTClassName
#undef thisTTClassTags

/***********************************************************************************************/
#define thisTTClass			SecondUnit
#define thisTTClassName		"unit.second"
#define thisTTClassTags		"dataspace, time"

TT_DATASPACEUNIT_CONSTRUCTOR{;}
SecondUnit::~SecondUnit(){;}		

void SecondUnit::convertToNeutral(const TTValue& input, TTValue& output)
{
//	output.setSize(1);
//	*output = atom_getfloat(inputAtoms) * 1000.0;
	output = TTFloat64(input) * 1000.0;
}


void SecondUnit::convertFromNeutral(const TTValue& input, TTValue& output)
{
//	output.setSize(1);
//	atom_setfloat(*outputAtoms, *input * 0.001);
	output = TTFloat64(input) * 0.001;
}


#undef thisTTClass
#undef thisTTClassName
#undef thisTTClassTags

/***********************************************************************************************/
#define thisTTClass			UpdaterateUnit
#define thisTTClassName		"unit.rate"
#define thisTTClassTags		"dataspace, time"

TT_DATASPACEUNIT_CONSTRUCTOR{;}
UpdaterateUnit::~UpdaterateUnit(){;}		

void UpdaterateUnit::convertToNeutral(const TTValue& input, TTValue& output)
{   
//	output.setSize(1);
//	*output = 1000.0 / atom_getfloat(inputAtoms);
	output = 1000.0 / TTFloat64(input);
}
//TODO: prevent division with zero

void UpdaterateUnit::convertFromNeutral(const TTValue& input, TTValue& output)
{
//	output.setSize(1);
//	atom_setfloat(*outputAtoms, 1000.0 / *input);
	output = 1000.0 / TTFloat64(input);
}
//TODO: prevent division with zero


#undef thisTTClass
#undef thisTTClassName
#undef thisTTClassTags

/***********************************************************************************************/
#define thisTTClass			BpmUnit
#define thisTTClassName		"unit.bpm"
#define thisTTClassTags		"dataspace, time"

TT_DATASPACEUNIT_CONSTRUCTOR{;}
BpmUnit::~BpmUnit(){;}		

void BpmUnit::convertToNeutral(const TTValue& input, TTValue& output)
{
//	output.setSize(1);
//	*output = 60000.0 / atom_getfloat(inputAtoms);
	output = 60000.0 / TTFloat64(input);
}
//TODO: prevent division with zero

void BpmUnit::convertFromNeutral(const TTValue& input, TTValue& output)
{
//	output.setSize(1);
//	atom_setfloat(*outputAtoms, 60000.0 / *input);
	output = 60000.0 / TTFloat64(input);
}
//TODO: prevent division with zero


#undef thisTTClass
#undef thisTTClassName
#undef thisTTClassTags

/***********************************************************************************************/

#define thisTTClass			TimeDataspace
#define thisTTClassName		"dataspace.time"
#define thisTTClassTags		"dataspace, time"

TT_DATASPACELIB_CONSTRUCTOR
//TimeDataspace::TimeDataspace()
//	: DataspaceLib("time", "millisecond")
{
	// Register unit names for this dataspace, 
	// and map them to the actual object names implementing the conversion.
	registerUnit(TT("unit.bpm"),	TT("bpm"));
	registerUnit(TT("unit.rate"),	TT("fps"));
	registerUnit(TT("unit.rate"),	TT("Hz"));
	registerUnit(TT("unit.ms"),		TT("ms"));
	registerUnit(TT("unit.ms"),		TT("millisecond"));
	registerUnit(TT("unit.second"),	TT("s"));
	registerUnit(TT("unit.second"),	TT("second"));
	registerUnit(TT("unit.sample"),	TT("sample"));
	
	
	// Now that the cache is created, we can create a set of default units
	setInputUnit(neutralUnit);
	setOutputUnit(neutralUnit);
}


TimeDataspace::~TimeDataspace()
{
	;
}

#undef thisTTClass
#undef thisTTClassName
#undef thisTTClassTags

