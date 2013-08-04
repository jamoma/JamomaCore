/** @file
 *
 * @ingroup foundationDataspaceLib
 *
 * @brief The #DistanceDataspace converts between different measurement untis describing distance.
 *
 * @details The neutral unit of the distance dataspace is _meter_.
 *
 * @authors Tim Place, Trond Lossius, Nils Peters, ...
 *
 * @copyright Copyright © 2007 by Tim Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#ifndef __DISTANCEDATASPACE_H__
#define __DISTANCEDATASPACE_H__

#include "TTDataspace.h"


/** Base class for the distance dataspace, provides dataspace support for converting distances between radians and degrees.
 *
 * @details: meter is the neutral data unit of this dataspace.
 */
class DistanceDataspace : public TTDataObjectBase, public TTDataspace {
	TTCLASS_SETUP(DistanceDataspace)
    
    /** Unit test for the distance dataspace.
	 @param returnedTestInfo		The outcome from the performed unit test.
	 @return						#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	virtual TTErr test(TTValue& returnedTestInfo);
};


/** Converts distance to and from centimeter.
 *
 * @details This unit is denoted as "cm" or "centimeters".
 */
class CentimeterUnit : public TTDataObjectBase, public TTDataspaceUnit {
	TTCLASS_SETUP(CentimeterUnit)
	
public:
	
	/** Convert from centimeter to neutral unit.
	 @param input				Input distance described using centimeter .
	 @param output				Returned distance, converted to neutral unit.
	 */
	void convertToNeutral(const TTValue& input, TTValue& output);
	
	/** Convert from neutral unit to centimeter.
	 @param input				Input distance described using the neutral unit.
	 @param output				Returned distance, described using centimeter.
	 */
	void convertFromNeutral(const TTValue& input, TTValue& output);	
};


/** Converts distances to and from inch.
 *
 * @details This unit is denoted as '"' or 'inches'.
 */
class InchUnit : public TTDataObjectBase, public TTDataspaceUnit {
	TTCLASS_SETUP(InchUnit)
	
public:
	
	/** Convert from inches to neutral unit.
	 @param input				Input distance described using inches.
	 @param output				Returned distance, converted to neutral unit.
	 */
	void convertToNeutral(const TTValue& input, TTValue& output);
	
	/** Convert from neutral unit to inches.
	 @param input				Input distance described using the neutral unit.
	 @param output				Returned distance, described using inches.
	 */
	void convertFromNeutral(const TTValue& input, TTValue& output);	
};


/** Converts distances to and from feet.
 *
 * @details This unit is denoted as "feet" or "'".
 */
class FootUnit : public TTDataObjectBase, public TTDataspaceUnit {
	TTCLASS_SETUP(FootUnit)
	
public:
	
	/** Convert from feet to neutral unit.
	 @param input				Input distance described using feet .
	 @param output				Returned distance, converted to neutral unit.
	 */
	void convertToNeutral(const TTValue& input, TTValue& output);
	
	/** Convert from neutral unit to feet.
	 @param input				Input distance described using the neutral unit.
	 @param output				Returned distance, described using feet.
	 */
	void convertFromNeutral(const TTValue& input, TTValue& output);	
};



/** Converts distances to and from meters.
 *
 * @details This unit is denoted as "m" or "meters".
 */
class MeterUnit : public TTDataObjectBase, public TTDataspaceUnit {
	TTCLASS_SETUP(MeterUnit)
	
public:
	
	/** Convert from meters to neutral unit.
	 @param input				Input distance described using meters.
	 @param output				Returned distance, converted to neutral unit.
	 */
	void convertToNeutral(const TTValue& input, TTValue& output);
	
	/** Convert from neutral unit to meters.
	 @param input				Input distance described using the neutral unit.
	 @param output				Returned distance, described using meters.
	 */
	void convertFromNeutral(const TTValue& input, TTValue& output);	
};


#endif // __DISTANCEDATASPACE_H__
