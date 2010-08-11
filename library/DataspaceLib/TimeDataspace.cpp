/* 
 * Jamoma DataspaceLib: TimeDataspace
 * Copyright © 2007, Tim Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TimeDataspace.h"
#include "TTFoundationAPI.h"


MillisecondUnit::MillisecondUnit()
	: DataspaceUnit("millisecond")
{;}


MillisecondUnit::~MillisecondUnit()
{;}
		

void MillisecondUnit::convertToNeutral(const TTValue& inValue, TTValue& neutralValue)
{
	neutralValue = inValue;
}


void MillisecondUnit::convertFromNeutral(TTValue& neutralValue, TTValue& outValue)
{
	outValue = neutralValue;
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
		
		
void SampleUnit::convertToNeutral(const TTValue& inValue, TTValue& neutralValue)
{
	neutralValue = TTValue(inValue.getFloat64() * rmsr);
}


void SampleUnit::convertFromNeutral(TTValue& neutralValue, TTValue& outValue)
{
	outValue = TTValue(neutralValue.getFloat64() * msr);
}


/***********************************************************************************************/
SecondUnit::SecondUnit()
	: DataspaceUnit("second")
{;}


SecondUnit::~SecondUnit()
{;}

		
void SecondUnit::convertToNeutral(const TTValue& inValue, TTValue& neutralValue)
{
	neutralValue = TTValue(inValue.getFloat64() * 1000.0);
}


void SecondUnit::convertFromNeutral(TTValue& neutralValue, TTValue& outValue)
{
	outValue = TTValue(neutralValue.getFloat64() * 0.001);
}

/***********************************************************************************************/
UpdaterateUnit::UpdaterateUnit()
	: DataspaceUnit("fps") //frames per second; also update rate e.g. of gestural devices etc. 
{;}


UpdaterateUnit::~UpdaterateUnit()
{;}


void UpdaterateUnit::convertToNeutral(const TTValue& inValue, TTValue& neutralValue)
{   
	neutralValue = TTValue(1000.0 / inValue.getFloat64());
}
//TODO: prevent division with zero

void UpdaterateUnit::convertFromNeutral(TTValue& neutralValue, TTValue& outValue)
{
	outValue = TTValue(1000.0 / neutralValue.getFloat64());
}
//TODO: prevent division with zero
/***********************************************************************************************/
BpmUnit::BpmUnit()
: DataspaceUnit("bpm") //beats per minute
{;}


BpmUnit::~BpmUnit()
{;}


void BpmUnit::convertToNeutral(const TTValue& inValue, TTValue& neutralValue)
{
	neutralValue = TTValue(60000.0 / inValue.getFloat64());
}
//TODO: prevent division with zero

void BpmUnit::convertFromNeutral(TTValue& neutralValue, TTValue& outValue)
{
	outValue = TTValue(60000.0 / neutralValue.getFloat64());
}
//TODO: prevent division with zero


/***********************************************************************************************/
TimeDataspace::TimeDataspace()
	: DataspaceLib("time", "millisecond")
{
	// Create one of each kind of unit, and cache them in a hash
	registerUnit(new BpmUnit,			TT("bpm"));
	registerUnit(new UpdaterateUnit,	TT("fps"));
	registerUnit(new UpdaterateUnit,	TT("Hz"));
	registerUnit(new MillisecondUnit,	TT("ms"));
	registerUnit(new MillisecondUnit,	TT("millisecond"));
	registerUnit(new SecondUnit,		TT("s"));
	registerUnit(new SecondUnit,		TT("second"));
	registerUnit(new SampleUnit,		TT("sample"));
	
	
	// Now that the cache is created, we can create a set of default units
	setInputUnit(neutralUnit);
	setOutputUnit(neutralUnit);
}


TimeDataspace::~TimeDataspace()
{
	;
}
