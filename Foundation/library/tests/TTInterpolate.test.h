/** @file
 *
 * @ingroup foundationLibrary
 *
 * @brief #TTInterpolateTest is an object used for unit tests of interpolation algorithms
 *
 * @details
 *
 * @authors Trond Lossius
 *
 * @copyright Copyright © 2008, Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_INTERPOLATE_TEST_H__
#define __TT_INTERPOLATE_TEST_H__

#include "TTDataObject.h"
#include "TTUnitTest.h"

/**	Provide unit tests for #TTInterpolate */
class TTInterpolateTest : public TTDataObject {
	TTCLASS_SETUP(TTInterpolateTest)
		
	virtual TTErr test(TTValue& returnedTestInfo);
};


#endif // __TT_INTERPOLATE_TEST_H__
