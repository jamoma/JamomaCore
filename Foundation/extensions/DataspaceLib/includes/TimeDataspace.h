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


#ifndef __TIME_DATASPACE_H__
#define __TIME_DATASPACE_H__

#include "TTDataspace.h"


/** Base class for the time dataspace, provides dataspace support for converting values representing time or frequency between bark, bpm, cent, frequency, mel, midi, millisecond, sample, second and speed.
 *
 * @details: _Second (s)_ is the neutral data unit of this dataspace.
 */
class TimeDataspace : public TTDataObjectBase, public TTDataspace {
	TTCLASS_SETUP(TimeDataspace)
    
    /** Unit test for the time dataspace.
	 @param returnedTestInfo		The outcome from the performed unit test.
	 @return						#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	virtual TTErr test(TTValue& returnedTestInfo);
};



/** Converts time to and from Bark unit.
 *
 * @details This unit is denoted as "bark".
 */
class BarkUnit : public TTDataObjectBase, public TTDataspaceUnit {
	TTCLASS_SETUP(BarkUnit)
	
public:
	
	/** Convert from Bark to neutral unit.
	 @param input				Input time described using Bark .
	 @param output				Returned time, converted to neutral unit.
	 */
	void convertToNeutral(const TTValue& input, TTValue& output);
	
	/** Convert from neutral unit to Bark.
	 @param input				Input time described using the neutral unit.
	 @param output				Returned time, described using Bark.
	 */
	void convertFromNeutral(const TTValue& input, TTValue& output);	
};


/** Converts times to and from Bpm (beats per minute).
 *
 * @details This unit is denoted as "bpm".
 */
class BpmUnit : public TTDataObjectBase, public TTDataspaceUnit {
	TTCLASS_SETUP(BpmUnit)
	
public:
	
	/** Convert from Bpm to neutral unit.
	 @param input				Input time described using Bpm .
	 @param output				Returned time, converted to neutral unit.
	 */
	void convertToNeutral(const TTValue& input, TTValue& output);
	
	/** Convert from neutral unit to Bpm.
	 @param input				Input time described using the neutral unit.
	 @param output				Returned time, described using Bpm.
	 */
	void convertFromNeutral(const TTValue& input, TTValue& output);	
};


/** Converts times to and from MIDI Cents.
 *
 * @details This unit is denoted as "cents".
 */
class CentUnit : public TTDataObjectBase, public TTDataspaceUnit {
	TTCLASS_SETUP(CentUnit)
	
public:
	
	/** Convert from radians to neutral unit.
	 @param input				Input time described using cents.
	 @param output				Returned time, converted to neutral unit.
	 */
	void convertToNeutral(const TTValue& input, TTValue& output);
	
	/** Convert from neutral unit to cents.
	 @param input				Input time described using the neutral unit.
	 @param output				Returned time, described using cents.
	 */
	void convertFromNeutral(const TTValue& input, TTValue& output);	
};


/** Converts times to and from frequency (Hz).
 *
 * @details This unit can be denoted as "fps", "Hz", "hz", or "Hertz".
 */
class FrequencyUnit : public TTDataObjectBase, public TTDataspaceUnit {
	TTCLASS_SETUP(FrequencyUnit)
	
public:
	
	/** Convert from Hz to neutral unit.
	 @param input				Input time described using Hz .
	 @param output				Returned time, converted to neutral unit.
	 */
	void convertToNeutral(const TTValue& input, TTValue& output);
	
	/** Convert from neutral unit to Hz.
	 @param input				Input time described using the neutral unit.
	 @param output				Returned time, described using Hz.
	 */
	void convertFromNeutral(const TTValue& input, TTValue& output);
};


/** Converts times to and from Mel.
 *
 * @details This unit is denoted as "mel".
 */
class MelUnit : public TTDataObjectBase, public TTDataspaceUnit {
	TTCLASS_SETUP(MelUnit)
	
public:
	
	/** Convert from Mel to neutral unit.
	 @param input				Input time described using Mel.
	 @param output				Returned time, converted to neutral unit.
	 */
	void convertToNeutral(const TTValue& input, TTValue& output);
	
	/** Convert from neutral unit to Mel.
	 @param input				Input time described using the neutral unit.
	 @param output				Returned time, described using Mel.
	 */
	void convertFromNeutral(const TTValue& input, TTValue& output);	
};


/** Converts times to and from MIDI pitch.
 *
 * @details This unit is denoted as "midi".
 */
class MidiPitchUnit : public TTDataObjectBase, public TTDataspaceUnit {
	TTCLASS_SETUP(MidiPitchUnit)
	
public:
	
	/** Convert from MIDI pitch to neutral unit.
	 @param input				Input time described using MIDI pitch.
	 @param output				Returned time, converted to neutral unit.
	 */
	void convertToNeutral(const TTValue& input, TTValue& output);
	
	/** Convert from neutral unit to MIDI pitch.
	 @param input				Input time described using the neutral unit.
	 @param output				Returned time, described using MIDI pitch.
	 */
	void convertFromNeutral(const TTValue& input, TTValue& output);	
};


/** Converts times to and from milliseconds.
 *
 * @details This unit can be denoted as "ms" or "millisecond".
 */
class MillisecondUnit : public TTDataObjectBase, public TTDataspaceUnit {
	TTCLASS_SETUP(MillisecondUnit)
public:
	
	/** Convert from milliseconds to neutral unit.
	 @param input				Input time described using milliseconds.
	 @param output				Returned time, converted to neutral unit.
	 */
	void convertToNeutral(const TTValue& input, TTValue& output);
	
	/** Convert from neutral unit to milliseconds.
	 @param input				Input time described using the neutral unit.
	 @param output				Returned time, described using milliseconds.
	 */
	void convertFromNeutral(const TTValue& input, TTValue& output);	
};


/** Converts times to and from number of samples.
 *
 * @details This unit is denoted as "sample".
 */
class SampleUnit : public TTDataObjectBase, public TTDataspaceUnit {
	TTCLASS_SETUP(SampleUnit)
	
public:
	
	/** Convert from samples to neutral unit.
	 @param input				Input time described using number of samples .
	 @param output				Returned time, converted to neutral unit.
	 */
	void convertToNeutral(const TTValue& input, TTValue& output);
	
	/** Convert from neutral unit to number of samples.
	 @param input				Input time described using the neutral unit.
	 @param output				Returned time, described using number of samples.
	 */
	void convertFromNeutral(const TTValue& input, TTValue& output);	
};


/** Converts times to and from seconds.
 *
 * @details This unit can be denoted as "s" or "second".
 */
class SecondUnit : public TTDataObjectBase, public TTDataspaceUnit {
	TTCLASS_SETUP(SecondUnit)
	
public:
	
	/** Convert from seconds to neutral unit.
	 @param input				Input time described using seconds .
	 @param output				Returned time, converted to neutral unit.
	 */
	void convertToNeutral(const TTValue& input, TTValue& output);
	
	/** Convert from neutral unit to seconds.
	 @param input				Input time described using the neutral unit.
	 @param output				Returned time, described using seconds.
	 */
	void convertFromNeutral(const TTValue& input, TTValue& output);	
};


/** Converts times to and from transposition playback speed of buffers or sound files.
 *
 * @details This unit is denoted as "speed".
 */
class SpeedUnit : public TTDataObjectBase, public TTDataspaceUnit {
	TTCLASS_SETUP(SpeedUnit)
	
public:
	
	/** Convert from speed to neutral unit.
	 @param input				Input time described using speed .
	 @param output				Returned time, converted to neutral unit.
	 */
	void convertToNeutral(const TTValue& input, TTValue& output);
	
	/** Convert from neutral unit to speed.
	 @param input				Input time described using the neutral unit.
	 @param output				Returned time, described using speed.
	 */
	void convertFromNeutral(const TTValue& input, TTValue& output);	
};


#endif // __TIME_DATASPACE_H__
