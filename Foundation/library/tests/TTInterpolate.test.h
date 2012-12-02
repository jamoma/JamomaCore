/** @file
 *
 * @ingroup foundationLibrary
 *
<<<<<<< HEAD
 * @brief #TTInterpolateTest is an object used for unit tests of interpolation algorithms
=======
 * @brief #TTInterpolateTest is an class used for unit tests of the interpolation algorithms in #TTInterpolate.h.
>>>>>>> master
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

	
	/** Unit test.
	 @param returnedTestInfo	The outcome from the performed unit test.
	 @return					#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	virtual TTErr test(TTValue& returnedTestInfo);
};


#endif // __TT_INTERPOLATE_TEST_H__
