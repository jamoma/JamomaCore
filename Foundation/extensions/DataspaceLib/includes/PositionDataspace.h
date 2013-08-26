/** @file
 *
 * @ingroup foundationDataspaceLib
 *
 * @brief The #PositionDataspace converts between different untis describing position.
 *
 * @details The neutral unit of the position dataspace is 3-dimensional Cartesian coordinates.
 *
 * @authors Nils Peters, Trond Lossius, Jan Schacher, Tim Place, ...
 *
 * @copyright Copyright © 2007 by Nils Peters @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#ifndef __POSITIONDATASPACE_H__
#define __POSITIONDATASPACE_H__

#include "TTDataspace.h"


/** Base class for the position dataspace, provides dataspace support for converting position between Cartesian 2D or 3D, spherical, polar, cylindrical and OpenGL.
 *
 * @details: Radians is the neutral data unit of this dataspace.
 */
class PositionDataspace : public TTDataObjectBase, public TTDataspace {
	TTCLASS_SETUP(PositionDataspace)
    
    /** Unit test for the position dataspace.
	 @param returnedTestInfo		The outcome from the performed unit test.
	 @return						#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	virtual TTErr test(TTValue& returnedTestInfo);
};


/** Converts position to and from 3D Cartesian coordinates.
 *
 * @details This unit is denoted as "cart3D" or "xyz".
 */
class Cartesian3DUnit : public TTDataObjectBase, public TTDataspaceUnit {
	TTCLASS_SETUP(Cartesian3DUnit)
	
public:
	
	/** Convert from 3D Cartesian coordinates to neutral unit.
	 @param input				Input position described using 3D Cartesian coordinates .
	 @param output				Returned position, converted to neutral unit.
	 */
	void convertToNeutral(const TTValue& input, TTValue& output);
	
	/** Convert from neutral unit to 3D Cartesian coordinates.
	 @param input				Input position described using the neutral unit.
	 @param output				Returned position, described using 3D Cartesian coordinates.
	 */
	void convertFromNeutral(const TTValue& input, TTValue& output);	
};


/** Converts position to and from 2D Cartesian coordinates.
 *
 * @details This unit is denoted as "cart2D" or "xy", and is only able to describe positions in the two-dimensional horisontal plane.
 */
class Cartesian2DUnit : public TTDataObjectBase, public TTDataspaceUnit {
	TTCLASS_SETUP(Cartesian2DUnit)
	
public:
	
	/** Convert from 2D Cartesian coordinates to neutral unit.
	 @param input				Input position described using 2D Cartesian coordinates .
	 @param output				Returned position, converted to neutral unit.
	 */
	void convertToNeutral(const TTValue& input, TTValue& output);
	
	/** Convert from neutral unit to 2D Cartesian coordinates.
	 @param input				Input position described using the neutral unit.
	 @param output				Returned position, described using 2D Cartesian coordinates.
	 */
	void convertFromNeutral(const TTValue& input, TTValue& output);
};


/** Converts position to and from spherical coordinates.
 *
 * @details This unit is denoted as "spherical" or "aed".
*/
class SphericalUnit : public TTDataObjectBase, public TTDataspaceUnit {
	TTCLASS_SETUP(SphericalUnit)
	
public:
	
	/** Convert from spherical coordinates to neutral unit.
	 @param input				Input position described using spherical coordinates .
	 @param output				Returned position, converted to neutral unit.
	 */
	void convertToNeutral(const TTValue& input, TTValue& output);
	
	/** Convert from neutral unit to spherical coordinates.
	 @param input				Input position described using the neutral unit.
	 @param output				Returned position, described using spherical coordinates.
	 */
	void convertFromNeutral(const TTValue& input, TTValue& output);	
};


/** Converts position to and from polar coordinates.
 *
 * @details This unit is denoted as "polar" or "ad", and is only able to describe positions in the two-dimensional horisontal plane.
*/
class PolarUnit : public TTDataObjectBase, public TTDataspaceUnit {
	TTCLASS_SETUP(PolarUnit)
	
public:
	
	/** Convert from polar coordinates to neutral unit.
	 @param input				Input position described using polar coordinates .
	 @param output				Returned position, converted to neutral unit.
	 */
	void convertToNeutral(const TTValue& input, TTValue& output);
	
	/** Convert from neutral unit to polar coordinates.
	 @param input				Input position described using the neutral unit.
	 @param output				Returned position, described using polar coordinates.
	 */
	void convertFromNeutral(const TTValue& input, TTValue& output);	
};


/** Converts position to and from OpenGL coordinates.
 *
 * @details This unit is denoted as "openGL".
*/
class OpenGlUnit : public TTDataObjectBase, public TTDataspaceUnit {
	TTCLASS_SETUP(OpenGlUnit)
	
public:
	
	/** Convert from OpenGL coordinates to neutral unit.
	 @param input				Input position described using OpenGL coordinates .
	 @param output				Returned position, converted to neutral unit.
	 */
	void convertToNeutral(const TTValue& input, TTValue& output);
	
	/** Convert from neutral unit to OpenGL coordinates.
	 @param input				Input position described using the neutral unit.
	 @param output				Returned position, described using OpenGL coordinates.
	 */
	void convertFromNeutral(const TTValue& input, TTValue& output);	
};


/** Converts position to and from cylindrical coordinates.
 *
 * @details This unit is denoted as "cylindrical" or "daz".
 */
class CylindricalUnit : public TTDataObjectBase, public TTDataspaceUnit {
	TTCLASS_SETUP(CylindricalUnit)
	
public:
	
	/** Convert from cylindrical coordinates to neutral unit.
	 @param input				Input position described using cylindrical coordinates .
	 @param output				Returned position, converted to neutral unit.
	 */
	void convertToNeutral(const TTValue& input, TTValue& output);
	
	/** Convert from neutral unit to cylindrical coordinates.
	 @param input				Input position described using the neutral unit.
	 @param output				Returned position, described using cylindrical coordinates.
	 */
	void convertFromNeutral(const TTValue& input, TTValue& output);	
};


#endif // __POSITIONDATASPACE_H__
