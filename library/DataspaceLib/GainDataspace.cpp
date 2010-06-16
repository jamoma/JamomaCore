/* 
 * Jamoma DataspaceLib: GainDataspace
 * Copyright © 2007, Trond Lossius
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 *
 * Neutral unit is linear amplitude
 */

#include "GainDataspace.h"
#include <math.h>



LinearAmplitudeUnit::LinearAmplitudeUnit()
	: DataspaceUnit("linear")
{;}


LinearAmplitudeUnit::~LinearAmplitudeUnit()
{;}


void LinearAmplitudeUnit::convertToNeutral(const TTValue& inValue, TTValue& neutralValue)
{
	neutralValue = inValue;
	// avoid negative valus that might blow up some convertions
	if (neutralValue.getFloat64() < 0)
		neutralValue = TTValue(0);
}


void LinearAmplitudeUnit::convertFromNeutral(TTValue& neutralValue, TTValue& outValue)
{
	outValue = neutralValue;
}


/***********************************************************************************************/
MidiGainUnit::MidiGainUnit()
	: DataspaceUnit("midi")
{;}


MidiGainUnit::~MidiGainUnit()
{;}
		

void MidiGainUnit::convertToNeutral(const TTValue& inValue, TTValue& neutralValue)
{
	// This is the old formula behaving the same as the gain~ object:
	// *output =  pow(10., (atom_getfloat(inputAtoms)-127.)*0.03);
	// Now substituted for:
	neutralValue = TTValue(pow(inValue.getFloat64()*0.01, kGainMidiPower));
}


void MidiGainUnit::convertFromNeutral(TTValue& neutralValue, TTValue& outValue)
{
	// This is the old formula behaving the same as the gain~ object:
	// atom_setfloat(*outputAtoms, log10(*input)*33.333333333333+127.);
	// Now substituted for:
	outValue = TTValue(100.*pow(neutralValue.getFloat64(), kGainMidiPowerInv));
}


/***********************************************************************************************/
DecibelUnit::DecibelUnit()
	: DataspaceUnit("dB")
{;}


DecibelUnit::~DecibelUnit()
{;}
		
		
void DecibelUnit::convertToNeutral(const TTValue& inValue, TTValue& neutralValue)
{
	neutralValue = TTValue(pow(10., inValue.getFloat64()*0.05));
}


void DecibelUnit::convertFromNeutral(TTValue& neutralValue, TTValue& outValue)
{
	outValue = TTValue(log10(neutralValue.getFloat64())*20.);
}


/***********************************************************************************************/
GainDataspace::GainDataspace()
	: DataspaceLib("gain", "linear")
{
	// Create one of each kind of unit, and cache them in a hash
	registerUnit(new LinearAmplitudeUnit,	TT("linear"));
	registerUnit(new MidiGainUnit,			TT("midi"));
	registerUnit(new DecibelUnit,			TT("dB"));
	registerUnit(new DecibelUnit,			TT("db"));

	// Now that the cache is created, we can create a set of default units
	setInputUnit(neutralUnit);
	setOutputUnit(neutralUnit);
}


GainDataspace::~GainDataspace()
{
	;
}
