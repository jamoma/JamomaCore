/** @file
 *
 * @ingroup foundationDataspaceLib
 *
 * @brief The #GainDataspace converts between different measurement untis describing audio gain.
 *
 * @details The neutral unit of the gain dataspace is _linear gain_.
 *
 * @authors Trond Lossius, Tim Place, Nils Peters, ...
 *
 * @copyright Copyright © 2007 by Trond Lossius @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#ifndef __GAINDATASPACE_H__
#define __GAINDATASPACE_H__

#include "TTDataspace.h"


/** Base class for the gain dataspace, provides dataspace support for converting gain between linear, decibel and MIDI gain.
 *
 * @details: Linear gain is the neutral data unit of this dataspace.
 */
class GainDataspace : public TTDataObjectBase, public TTDataspace {
	TTCLASS_SETUP(GainDataspace)
    
    /** Unit test for the gain dataspace.
	 @param returnedTestInfo		The outcome from the performed unit test.
	 @return						#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	virtual TTErr test(TTValue& returnedTestInfo);
};


/** Converts gains to and from linear gain.
 *
 * @details This unit is denoted as "linear".
 */
class LinearAmplitudeUnit : public TTDataObjectBase, public TTDataspaceUnit {
	TTCLASS_SETUP(LinearAmplitudeUnit)
	
public:
	
	/** Convert from linear to neutral unit.
	 @param input				Input gain described using linear gain .
	 @param output				Returned gain, converted to neutral unit.
	 */
	void convertToNeutral(const TTValue& input, TTValue& output);
	
	/** Convert from neutral unit to linear.
	 @param input				Input gain described using the neutral unit.
	 @param output				Returned gain, described using linear gain.
	 */
	void convertFromNeutral(const TTValue& input, TTValue& output);	
};


/** Converts gains to and from MIDI units.
 *
 * @details This unit is denoted as "midi". @n
 * @n
 * Jamoma use a non-linear MIDI scale for gain, where MIDI 100 equals 0 dB, MIDI 110 equals +6 dB and MIDI 127 equals +10 dB. Refer to #GainDataspace.cpp for details concerning the equations used for convertions to and from MIDI units.
 */
class MidiGainUnit : public TTDataObjectBase, public TTDataspaceUnit {
	TTCLASS_SETUP(MidiGainUnit)
	
public:
	
	/** Convert from MIDI units to neutral unit.
	 @param input				Input gain described using MIDI units .
	 @param output				Returned gain, converted to neutral unit.
	 */
	void convertToNeutral(const TTValue& input, TTValue& output);
	
	/** Convert from neutral unit to midi value.
	 @param input				Input gain described using the neutral unit.
	 @param output				Returned gain, described using MIDI units.
	 */
	void convertFromNeutral(const TTValue& input, TTValue& output);	
};



/** Converts gains to and from decibels.
 *
 * @details This unit is denoted as "dB" or "db".
 */
class DecibelUnit : public TTDataObjectBase, public TTDataspaceUnit {
	TTCLASS_SETUP(DecibelUnit)
	
public:
	
	/** Convert from decibel to neutral unit.
	 @param input				Input gain described using decibels.
	 @param output				Returned gain, converted to neutral unit.
	 */
	void convertToNeutral(const TTValue& input, TTValue& output);
	
	/** Convert from neutral unit to decibels.
	 @param input				Input gain described using the neutral unit.
	 @param output				Returned gain, described using decibels.
	 */
	void convertFromNeutral(const TTValue& input, TTValue& output);	
};


#endif // __GAINDATASPACE_H__
