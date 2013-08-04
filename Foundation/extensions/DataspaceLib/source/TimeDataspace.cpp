/** @file
 *
 * @ingroup foundationDataspaceLib
 *
 * @brief The #TimeDataspace converts between different measurement untis describing time intervals and frequencies.
 *
 * @details The neutral unit of the time dataspace is _second (s)_.
 *
 * @authors Tim Place, Nils Peters, Trond Lossius, ...
 *
 * @copyright Copyright © 2007 by Tim Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#include "TimeDataspace.h"
#include "TTFoundationAPI.h"
#include <math.h>

#ifdef TT_PLATFORM_WIN
template <typename T> T asinh(T value)
{
	T returned;
	if(value>0)
		returned = log(value + sqrt(value * value + 1));
	else
		returned = -log(-value + sqrt(value * value + 1));
	return(returned);
}
#endif

/****************************************************************************/
/* Bark                                                                     */
/****************************************************************************/

#define thisTTClass			BarkUnit
#define thisTTClassName		"unit.bark"
#define thisTTClassTags		"dataspace.unit, time, pitch, frequency"

TT_OBJECT_CONSTRUCTOR,
TTDataspaceUnit(arguments)
{;}

BarkUnit::~BarkUnit(){;}		

void BarkUnit::convertToNeutral(const TTValue& input, TTValue& output)
{   // code from http://labrosa.ee.columbia.edu/matlab/rastamat/bark2hz.m 
	output = 1.0 / (600 * sinh(TTFloat64(input) / 6));
}


void BarkUnit::convertFromNeutral(const TTValue& input, TTValue& output)
{  // taken from http://labrosa.ee.columbia.edu/matlab/rastamat/hz2bark.m
	output = (6 * asinh(1.0 / (TTFloat64(input) * 600.0)));
}


#undef thisTTClass
#undef thisTTClassName
#undef thisTTClassTags




/****************************************************************************/
/* Beats per Minute (bpm)                                                   */
/****************************************************************************/

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


/****************************************************************************/
/* Cent - MIDI Cents                                                        */
/****************************************************************************/

#define thisTTClass			CentUnit
#define thisTTClassName		"unit.cent"
#define thisTTClassTags		"dataspace.unit, time"

TT_OBJECT_CONSTRUCTOR,
TTDataspaceUnit(arguments)
{;}

CentUnit::~CentUnit(){;}		

void CentUnit::convertToNeutral(const TTValue& input, TTValue& output)
{
    output = 1. / (440.0 * pow(2.0, (TTFloat64(input)-6900.0) / 1200.0 ));
}


void CentUnit::convertFromNeutral(const TTValue& input, TTValue& output)
{
    output = 6900.0 + 1200.0 * log(1./(440.0*TTFloat64(input)))/log(2.0);
    
}

#undef thisTTClass
#undef thisTTClassName
#undef thisTTClassTags


/****************************************************************************/
/* Frequency (Hz)                                                           */
/****************************************************************************/

#define thisTTClass			FrequencyUnit
#define thisTTClassName		"unit.rate"
#define thisTTClassTags		"dataspace.unit, time"


TT_OBJECT_CONSTRUCTOR,
TTDataspaceUnit(arguments)
{;}

FrequencyUnit::~FrequencyUnit(){;}		

void FrequencyUnit::convertToNeutral(const TTValue& input, TTValue& output)
{   
	//TODO: prevent division with zero
	output = 1.0 / TTFloat64(input);
}

void FrequencyUnit::convertFromNeutral(const TTValue& input, TTValue& output)
{
	//TODO: prevent division with zero
	output = 1.0 / TTFloat64(input);
}


#undef thisTTClass
#undef thisTTClassName
#undef thisTTClassTags


/****************************************************************************/
/* Mel                                                                      */
/****************************************************************************/

#define thisTTClass			MelUnit
#define thisTTClassName		"unit.mel"
#define thisTTClassTags		"dataspace.unit, time"

TT_OBJECT_CONSTRUCTOR,
TTDataspaceUnit(arguments)
{;}

MelUnit::~MelUnit(){;}		

void MelUnit::convertToNeutral(const TTValue& input, TTValue& output)
{   // HTK-code from http://labrosa.ee.columbia.edu/matlab/rastamat/mel2hz.m
	output = 1.0 / (700.0 *(pow(10,(TTFloat64(input)/2595.0))-1.0));
}


void MelUnit::convertFromNeutral(const TTValue& input, TTValue& output)
{  // HTK-code from http://labrosa.ee.columbia.edu/matlab/rastamat/hz2mel.m
	output = 2595.0 * log10(1+1.0/(TTFloat64(input)*700.0));
}


#undef thisTTClass
#undef thisTTClassName
#undef thisTTClassTags


/****************************************************************************/
/* MIDI Pitch                                                               */
/****************************************************************************/

#define thisTTClass			MidiPitchUnit
#define thisTTClassName		"unit.midi"
#define thisTTClassTags		"dataspace.unit, time"

TT_OBJECT_CONSTRUCTOR,
TTDataspaceUnit(arguments)
{;}

MidiPitchUnit::~MidiPitchUnit(){;}		

void MidiPitchUnit::convertToNeutral(const TTValue& input, TTValue& output)
{
    output = 1. / (440.0 * pow(2.0, (TTFloat64(input)-69.0) / 12.0 ));
}


void MidiPitchUnit::convertFromNeutral(const TTValue& input, TTValue& output)
{
    //output = 69.0 + 12.0 * log(1./(440.0*TTFloat64(input)))/log(2.0);
    
    // The above can be transformed to the slightly more optimised:
    output = 69.0 - 12.0 * log(440.0*TTFloat64(input))/log(2.0);
}

#undef thisTTClass
#undef thisTTClassName
#undef thisTTClassTags


/****************************************************************************/
/* Millisecond (ms)                                                         */
/****************************************************************************/

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


/****************************************************************************/
/* Samples - dynamically adjusted for audio environment sample rate         */
/****************************************************************************/

#define thisTTClass			SampleUnit
#define thisTTClassName		"unit.sample"
#define thisTTClassTags		"dataspace.unit, time"


TT_OBJECT_CONSTRUCTOR,
TTDataspaceUnit(arguments)
{   
}

SampleUnit::~SampleUnit()
{;}

void SampleUnit::convertToNeutral(const TTValue& input, TTValue& output)
{
	TTValue globalSampleRate;	
	
    ttEnvironment->getAttributeValue(kTTSym_sampleRate, globalSampleRate);
	double sampleRate = globalSampleRate;
    
	output = TTFloat64(input) / sampleRate;
}

void SampleUnit::convertFromNeutral(const TTValue& input, TTValue& output)
{
	TTValue globalSampleRate;	
	
    ttEnvironment->getAttributeValue(kTTSym_sampleRate, globalSampleRate);
	double sampleRate = globalSampleRate;
	
    output = TTFloat64(input) * sampleRate;
}


#undef thisTTClass
#undef thisTTClassName
#undef thisTTClassTags


/****************************************************************************/
/* Second (s)                                                               */
/****************************************************************************/

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


/****************************************************************************/
/* Speed - Transposition playback speed of buffers or sound files           */
/****************************************************************************/

#define thisTTClass			SpeedUnit
#define thisTTClassName		"unit.speed"
#define thisTTClassTags		"dataspace.unit, time"

TT_OBJECT_CONSTRUCTOR,
TTDataspaceUnit(arguments)
{;}

SpeedUnit::~SpeedUnit(){;}		

void SpeedUnit::convertToNeutral(const TTValue& input, TTValue& output)
{
	/*
     Here's one way of converting:
     
     TTFloat64 midi;
    
     // 1) speed => midi
     midi = 12.0 * log(TTFloat64(input))/log(2.0);
     // 2) midi => second
     output = 1. / (440.0 * pow(2.0, (midi-69.0) / 12.0 ));
     */
    
    // This is an optimized version of the above:
    output = pow(2.0, 69./12.) / (440.0*TTFloat64(input));
}


void SpeedUnit::convertFromNeutral(const TTValue& input, TTValue& output)
{
    /*
     Here's one way of converting from second to speed:
    
     TTFloat64 midi;
    
     // 1) second => midi
     midi = 69.0 - 12.0 * log(440.0*TTFloat64(input))/log(2.0);
     // 2) midi => speed
     output = pow(2.0, (midi/12.0));
     */
    
    // Optimized in a similar way to the above:
    output = pow(2.0, 69./12.) / (440.0*TTFloat64(input));
}


#undef thisTTClass
#undef thisTTClassName
#undef thisTTClassTags


/****************************************************************************/
/*                                                                          */
/****************************************************************************/

#define thisTTClass			TimeDataspace
#define thisTTClassName		"dataspace.time"
#define thisTTClassTags		"dataspace, time"


TT_OBJECT_CONSTRUCTOR
{	
	// Register unit names for this dataspace, 
	// and map them to the actual object names implementing the conversion.
	registerUnit(TT("unit.bark"),	TT("bark"));
	registerUnit(TT("unit.bpm"),	TT("bpm"));
    registerUnit(TT("unit.cent"),	TT("cents"));
	registerUnit(TT("unit.mel"),	TT("mel"));
    registerUnit(TT("unit.midi"),	TT("midi"));
	registerUnit(TT("unit.ms"),		TT("ms"));
	registerUnit(TT("unit.ms"),		TT("millisecond"));
	registerUnit(TT("unit.rate"),	TT("fps"));
	registerUnit(TT("unit.rate"),	TT("Hz"));
	registerUnit(TT("unit.rate"),	TT("hz"));
	registerUnit(TT("unit.rate"),	TT("Hertz"));
	registerUnit(TT("unit.sample"),	TT("sample"));
	registerUnit(TT("unit.second"),	TT("s"));
	registerUnit(TT("unit.second"),	TT("second"));
    registerUnit(TT("unit.speed"),	TT("speed"));

	
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
