/** @file
 *
 * @ingroup foundationDataspaceLib
 *
 * @brief The #NoneDataspace is a dataspace unit for situations where no dataspace conversions are desired or relevant. It contains only one unit, the #NoneUnit, and that unit does not perform any conversions.
 *
 * @details The neutral unit of the angle dataspace is none.
 *
 * @authors Tim Place, Nils Peters, Trond Lossius, ...
 *
 * @copyright Copyright © 2007 by Nils Peters @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#ifndef __NONE_DATASPACE_H__
#define __NONE_DATASPACE_H__

#include "TTDataspace.h"


/** Base class for the none dataspace, used when support for dataspace convertions are not desired or relevant.
 */
class NoneDataspace : public TTDataObjectBase, public TTDataspace {
	TTCLASS_SETUP(NoneDataspace)
};


/** This, the only unit of the #NoneDataspace performs no conversions, leaving values untouched.
 *
 * @details This unit is denoted as "none".
 */
class NoneUnit : public TTDataObjectBase, public TTDataspaceUnit {
	TTCLASS_SETUP(NoneUnit)
	
public:
	
	/** Convertion from none to neutral unit leaves the value untouched.
	 @param input				Input value described using no dataspace unit.
	 @param output				Returned (untouched) value.
	 */
	void convertToNeutral(const TTValue& input, TTValue& output);
	
	/** Convertion from neutral unit to the "none" unit leaves the value untouched.
	 @param input				Input value.
	 @param output				Returned (untouched) value.
	 */
	void convertFromNeutral(const TTValue& input, TTValue& output);	
};


#endif // __NONE_DATASPACE_H__
