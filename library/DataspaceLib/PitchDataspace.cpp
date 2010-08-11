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
	: DataspaceUnit("midi")
{;}


MidiPitchUnit::~MidiPitchUnit()
{;}
		

void MidiPitchUnit::convertToNeutral(const TTValue& inValue, TTValue& neutralValue)
{
	// f = 440 * pow(2, (m-69)/12.)
	neutralValue = TTValue(440. * pow(2,(inValue.getFloat64()-69.)/12.));
}


void MidiPitchUnit::convertFromNeutral(TTValue& neutralValue, TTValue& outValue)
{
	// m = 69. + 12*log2(f/440.);
	outValue = TTValue(69. + 12* log(neutralValue.getFloat64()/440.)/log(2.));
}


/***********************************************************************************************/


CentUnit::CentUnit()
	: DataspaceUnit("cents")
{;}


CentUnit::~CentUnit()
{;}
		

void CentUnit::convertToNeutral(const TTValue& inValue, TTValue& neutralValue)
{
	// f = 440 * pow(2, (m-69)/12.)
	neutralValue = TTValue(440. * pow(2,(inValue.getFloat64()-6900.)/1200.));
}


void CentUnit::convertFromNeutral(TTValue& neutralValue, TTValue& outValue)
{
	// m = 69. + 12*log2(f/440.);
	outValue = TTValue(6900. + 1200* log(neutralValue.getFloat64()/(440.))/log(2.));
}


/***********************************************************************************************/
FrequencyUnit::FrequencyUnit()
	: DataspaceUnit("Hz")
{;}


FrequencyUnit::~FrequencyUnit()
{;}
		
		
void FrequencyUnit::convertToNeutral(const TTValue& inValue, TTValue& neutralValue)
{
	neutralValue = inValue;
}


void FrequencyUnit::convertFromNeutral(TTValue& neutralValue, TTValue& outValue)
{
	outValue = neutralValue;
}


/***********************************************************************************************/

SpeedUnit::SpeedUnit()
	: DataspaceUnit("speed")
{;}


SpeedUnit::~SpeedUnit()
{;}

void SpeedUnit::convertToNeutral(const TTValue& inValue, TTValue& neutralValue)
{
	// f = speed*440./pow(2.,(69./12.))
	neutralValue = TTValue(inValue.getFloat64() * 440./pow(2.,(69./12.)));
}


void SpeedUnit::convertFromNeutral(TTValue& neutralValue, TTValue& outValue)
{
	// speed = f * pow(2.,(69./12.))/440.
	outValue = TTValue( neutralValue.getFloat64() * pow(2.,(69./12.))/440.);
}




/***********************************************************************************************/
PitchDataspace::PitchDataspace()
	: DataspaceLib("pitch", "Hz")
{
	// Create one of each kind of unit, and cache them in a hash
	registerUnit(new CentUnit,			TT("cents"));
	registerUnit(new FrequencyUnit,		TT("Hz"));
	registerUnit(new MidiPitchUnit,		TT("midi"));
	registerUnit(new SpeedUnit,			TT("speed"));	// Transposition playback speed of buffers or sound files 
	
	// Now that the cache is created, we can create a set of default units
	setInputUnit(neutralUnit);
	setOutputUnit(neutralUnit);
}


PitchDataspace::~PitchDataspace()
{
	;
}
