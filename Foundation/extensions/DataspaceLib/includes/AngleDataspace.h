/** @file
 *
 * @ingroup foundationDataspaceLib
 *
 * @brief The #AngleDataspace converts between different measurement untis describing trigonometric angles.
 *
 * @details The neutral unit of the angle dataspace is _radian_.
 *
 * @authors Nils Peters, Trond Lossius, Tim Place, ...
 *
 * @copyright Copyright © 2007 by Nils Peters @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#ifndef __ANGLEDATASPACE_H__
#define __ANGLEDATASPACE_H__

#include "TTDataspace.h"


/** Base class for the angle dataspace, provides dataspace support for converting angles between radians and degrees.
 *
 * @details: Radians is the neutral data unit of this dataspace.
 */
class AngleDataspace : public TTDataObjectBase, public TTDataspace {
	
	TTCLASS_SETUP(AngleDataspace)
    
    /** Unit test for the angle dataspace.
	 @param returnedTestInfo		The outcome from the performed unit test.
	 @return						#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	virtual TTErr test(TTValue& returnedTestInfo);
};



/** Converts angles to and from radians.
 *
 * @details Tghis unit is denoted as "rad" or "radian".
 */
class RadianUnit : public TTDataObjectBase, public TTDataspaceUnit {
	TTCLASS_SETUP(RadianUnit)
	
public:
	
	/** Convert from radians to neutral unit.
	 @param input				Input angle described using radians .
	 @param output				Returned angle, converted to neutral unit.
	 */
	void convertToNeutral(const TTValue& input, TTValue& output);
	
	
	/** Convert from neutral unit to radians.
	 @param input				Input angle described using the neutral unit.
	 @param output				Returned angle, described using radians.
	 */
	void convertFromNeutral(const TTValue& input, TTValue& output);
};



/** Converts angles to and from degrees.
 *
 * @details This unit is denoted as "deg" or "degree".
 */
class DegreeUnit : public TTDataObjectBase, public TTDataspaceUnit {
	TTCLASS_SETUP(DegreeUnit)
	
public:
	
	/** Convert from degrees to neutral unit.
	 @param input				Input angle described using degrees .
	 @param output				Returned angle, converted to neutral unit.
	 */
	void convertToNeutral(const TTValue& input, TTValue& output);
	
	
	/** Convert from neutral unit to degrees.
	 @param input				Input angle described using the neutral unit.
	 @param output				Returned angle, described using degrees.
	 */
	void convertFromNeutral(const TTValue& input, TTValue& output);
};



#endif // __ANGLEDATASPACE_H__
