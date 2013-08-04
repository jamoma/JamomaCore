/** @file
 *
 * @ingroup foundationDataspaceLib
 *
 * @brief The #OrientationDataspace converts between different untis describing orientation.
 *
 * @details The neutral unit of the orientation dataspace is _quarternian_. @n
 * @n
 * The unit conventinos are based on SpinCalc for Matlab: http://www.mathworks.com/matlabcentral/fileexchange/20696-function-to-convert-between-dcm-euler-orientation-quaternions-and-euler-vectors
 *
 * @authors Nils Peters, Trond Lossius, Tim Place, ...
 *
 * @copyright Copyright © 2011 by Nils Peters @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#ifndef __ORIENTATIONDATASPACE_H__
#define __ORIENTATIONDATASPACE_H__

#include "TTDataspace.h"


/** Base class for the orientation dataspace, provides dataspace support for converting orientation between radians and degrees.
 *
 * @details: Quarternian is the neutral data unit of this dataspace.
 */
class OrientationDataspace : public TTDataObjectBase, public TTDataspace {
	TTCLASS_SETUP(OrientationDataspace)
    
    /** Unit test for the orientation dataspace.
	 @param returnedTestInfo		The outcome from the performed unit test.
	 @return						#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	virtual TTErr test(TTValue& returnedTestInfo);
};


/** Converts orientation to and from quarternian.
 *
 * @details This unit is denoted as "quarternian" or "quat".
 */
class QuaternionUnit : public TTDataObjectBase, public TTDataspaceUnit {
	TTCLASS_SETUP(QuaternionUnit)
	
public:
	
	/** Convert from quarternian to neutral unit.
	 @param input				Input orientation described using quarternian .
	 @param output				Returned orientation, converted to neutral unit.
	 */
	void convertToNeutral(const TTValue& input, TTValue& output);
	
	/** Convert from neutral unit to quarternian.
	 @param input				Input orientation described using the neutral unit.
	 @param output				Returned orientation, described using quarternian.
	 */
	void convertFromNeutral(const TTValue& input, TTValue& output);	
};


/** Converts orientation to and from Euler.
 *
 * @details This unit is denoted as "euler" or "ypr".
 */
class EulerUnit : public TTDataObjectBase, public TTDataspaceUnit {
	TTCLASS_SETUP(EulerUnit)
	
public:
	
	/** Convert from Euler to neutral unit.
	 @param input				Input orientation described using Euler .
	 @param output				Returned orientation, converted to neutral unit.
	 */
	void convertToNeutral(const TTValue& input, TTValue& output);
	
	/** Convert from neutral unit to Euler.
	 @param input				Input orientation described using the neutral unit.
	 @param output				Returned orientation, described using Euler.
	 */
	void convertFromNeutral(const TTValue& input, TTValue& output);	
};


/** Converts orientation to and from axis unit.
 *
 * @details This unit is denoted as "axis" or "xyza".
 */
class AxisUnit : public TTDataObjectBase, public TTDataspaceUnit {
	TTCLASS_SETUP(AxisUnit)
	
public:
	
	/** Convert from axis unit to neutral unit.
	 @param input				Input orientation described using axis unit .
	 @param output				Returned orientation, converted to neutral unit.
	 */
	void convertToNeutral(const TTValue& input, TTValue& output);
	
	/** Convert from neutral unit to axis unit.
	 @param input				Input orientation described using the neutral unit.
	 @param output				Returned orientation, described using axis unit.
	 */
	void convertFromNeutral(const TTValue& input, TTValue& output);	
};



#endif // __ORIENTATIONDATASPACE_H__
