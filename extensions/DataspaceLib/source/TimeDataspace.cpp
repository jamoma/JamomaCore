/* 
 * Jamoma DataspaceLib: TimeDataspace
 * Copyright © 2007, Tim Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TimeDataspace.h"
#include "TTFoundationAPI.h"


/***********************************************************************************************/

#define thisTTClass			MillisecondUnit
#define thisTTClassName		"unit.ms"
#define thisTTClassTags		"dataspace.unit, time"


TT_OBJECT_CONSTRUCTOR,
TTDataspaceUnit(arguments)
{;}

MillisecondUnit::~MillisecondUnit(){;}		

void MillisecondUnit::convertToNeutral(const TTValue& input, TTValue& output)
{
	output = 0.001*TTFloat64(input);
}


void MillisecondUnit::convertFromNeutral(const TTValue& input, TTValue& output)
{
	output = 1000*TTFloat64(input);
}


#undef thisTTClass
#undef thisTTClassName
#undef thisTTClassTags

/***********************************************************************************************/

#define thisTTClass			SampleUnit
#define thisTTClassName		"unit.sample"
#define thisTTClassTags		"dataspace.unit, time"


TT_OBJECT_CONSTRUCTOR,
TTDataspaceUnit(arguments)
{   
	TTValue globalSampleRate;	
	
	ttEnvironment->getAttributeValue(TT("sr"), globalSampleRate);
	sampleRate = globalSampleRate; 	//was: sample_rate = (long)DEFAULT_SAMPLE_RATE; [NP]
	inverseSampleRate = 1.0 / sampleRate;
}

SampleUnit::~SampleUnit()
{;}

void SampleUnit::convertToNeutral(const TTValue& input, TTValue& output)
{
	output = TTFloat64(input) * inverseSampleRate;
}

void SampleUnit::convertFromNeutral(const TTValue& input, TTValue& output)
{
	output = TTFloat64(input) * inverseSampleRate;
}


#undef thisTTClass
#undef thisTTClassName
#undef thisTTClassTags

/***********************************************************************************************/

#define thisTTClass			SecondUnit
#define thisTTClassName		"unit.second"
#define thisTTClassTags		"dataspace.unit, time"


TT_OBJECT_CONSTRUCTOR,
TTDataspaceUnit(arguments)
{;}

SecondUnit::~SecondUnit(){;}		

void SecondUnit::convertToNeutral(const TTValue& input, TTValue& output)
{
	output = input;
}

void SecondUnit::convertFromNeutral(const TTValue& input, TTValue& output)
{
	output = input;
}


#undef thisTTClass
#undef thisTTClassName
#undef thisTTClassTags

/***********************************************************************************************/

#define thisTTClass			UpdaterateUnit
#define thisTTClassName		"unit.rate"
#define thisTTClassTags		"dataspace.unit, time"


TT_OBJECT_CONSTRUCTOR,
TTDataspaceUnit(arguments)
{;}

UpdaterateUnit::~UpdaterateUnit(){;}		

void UpdaterateUnit::convertToNeutral(const TTValue& input, TTValue& output)
{   
	//TODO: prevent division with zero
	output = 1.0 / TTFloat64(input);
}

void UpdaterateUnit::convertFromNeutral(const TTValue& input, TTValue& output)
{
	//TODO: prevent division with zero
	output = 1.0 / TTFloat64(input);
}


#undef thisTTClass
#undef thisTTClassName
#undef thisTTClassTags

/***********************************************************************************************/

#define thisTTClass			BpmUnit
#define thisTTClassName		"unit.bpm"
#define thisTTClassTags		"dataspace.unit, time"


TT_OBJECT_CONSTRUCTOR,
TTDataspaceUnit(arguments)
{;}

BpmUnit::~BpmUnit(){;}		

void BpmUnit::convertToNeutral(const TTValue& input, TTValue& output)
{
	//TODO: prevent division with zero
	output = 60.0 / TTFloat64(input);
}

void BpmUnit::convertFromNeutral(const TTValue& input, TTValue& output)
{
	//TODO: prevent division with zero
	output = 60.0 / TTFloat64(input);
}


#undef thisTTClass
#undef thisTTClassName
#undef thisTTClassTags

/***********************************************************************************************/

#define thisTTClass			TimeDataspace
#define thisTTClassName		"dataspace.time"
#define thisTTClassTags		"dataspace, time"


TT_OBJECT_CONSTRUCTOR
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
	
	// Set our neutral unit (the unit through which all conversions are made)
	neutralUnit = TT("second");
	
	// Now that the cache is created, we can create a set of default units
	// Typically this should be the neutral unit
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
