/** @file
 *
 * @ingroup foundationDataspaceLib
 *
 * @brief The #SpeedDataspace converts between different measurement untis describing velocity.
 *
 * @details The neutral unit of the speed dataspace is _m/s_.
 *
 * @authors Nils Peters, Trond Lossius, Tim Peters, ...
 *
 * @copyright Copyright © 2011 by Nils Peters @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#ifndef __SPEEDDATASPACE_H__
#define __SPEEDDATASPACE_H__

#include "TTDataspace.h"


/** Base class for the speed dataspace, provides dataspace support for converting speed between mph, km/h, knot ft/s and m/s.
 *
 * @details: _m/s_ is the neutral data unit of this dataspace.
 */
class SpeedDataspace : public TTDataObjectBase, public TTDataspace {
	TTCLASS_SETUP(SpeedDataspace)
    
    /** Unit test for the speed dataspace.
	 @param returnedTestInfo		The outcome from the performed unit test.
	 @return						#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	virtual TTErr test(TTValue& returnedTestInfo);
};


/** Converts speed to and from miles per hour.
 *
 * @details This unit is denoted as "mph" or "mi/h".
 */
class MilesPerHourUnit : public TTDataObjectBase, public TTDataspaceUnit {
	TTCLASS_SETUP(MilesPerHourUnit)
	
public:
	
	/** Convert from miles per hour to neutral unit.
	 @param input				Input speed described using miles per hour .
	 @param output				Returned speed, converted to neutral unit.
	 */
	void convertToNeutral(const TTValue& input, TTValue& output);
	
	/** Convert from neutral unit to miles per hour.
	 @param input				Input speed described using the neutral unit.
	 @param output				Returned speed, described using miles per hour.
	 */
	void convertFromNeutral(const TTValue& input, TTValue& output);	
};


/** Converts speed to and from kilometers per hour.
 *
 * @details This unit is denoted as "km/h" or "kmph".
 */
class KilometerPerHourUnit : public TTDataObjectBase, public TTDataspaceUnit {
	TTCLASS_SETUP(KilometerPerHourUnit)
	
public:
	
	/** Convert from kilometers per hour to neutral unit.
	 @param input				Input speed described using kilometers per hour .
	 @param output				Returned speed, converted to neutral unit.
	 */
	void convertToNeutral(const TTValue& input, TTValue& output);
	
	/** Convert from neutral unit to radians.
	 @param input				Input speed described using the neutral unit.
	 @param output				Returned speed, described using kilometers per hour.
	 */
	void convertFromNeutral(const TTValue& input, TTValue& output);	
};


/** Converts speed to and from foot per second.
 *
 * @details This unit is denoted as "ft/s" or "fps".
 */
class FootPerSecondUnit : public TTDataObjectBase, public TTDataspaceUnit {
	TTCLASS_SETUP(FootPerSecondUnit)
	
public:
	
	/** Convert from foot per second to neutral unit.
	 @param input				Input speed described using foot per second .
	 @param output				Returned speed, converted to neutral unit.
	 */
	void convertToNeutral(const TTValue& input, TTValue& output);
	
	/** Convert from neutral unit to foot per second.
	 @param input				Input speed described using the neutral unit.
	 @param output				Returned speed, described using foot per second.
	 */
	void convertFromNeutral(const TTValue& input, TTValue& output);	
};


/** Converts speed to and from knot.
 *
 * @details This unit is denoted as "kn".
 */
class KnotUnit : public TTDataObjectBase, public TTDataspaceUnit {
	TTCLASS_SETUP(KnotUnit)
	
public:
	
	/** Convert from knot to neutral unit.
	 @param input				Input speed described using knot .
	 @param output				Returned speed, converted to neutral unit.
	 */
	void convertToNeutral(const TTValue& input, TTValue& output);
	
	/** Convert from neutral unit to knot.
	 @param input				Input speed described using the neutral unit.
	 @param output				Returned speed, described using knot.
	 */
	void convertFromNeutral(const TTValue& input, TTValue& output);	
};


/** Converts speed to and from meters per second.
 *
 * @details This unit is denoted as "m/s".
 */
class MeterPerSecondUnit : public TTDataObjectBase, public TTDataspaceUnit {
	TTCLASS_SETUP(MeterPerSecondUnit)
	
public:
	
	/** Convert from meters per second to neutral unit.
	 @param input				Input speed described using meters per second .
	 @param output				Returned speed, converted to neutral unit.
	 */
	void convertToNeutral(const TTValue& input, TTValue& output);
	
	/** Convert from neutral unit to meters per second.
	 @param input				Input speed described using the neutral unit.
	 @param output				Returned speed, described using meters per second.
	 */
	void convertFromNeutral(const TTValue& input, TTValue& output);	
};


#endif // __SPEEDDATASPACE_H__
