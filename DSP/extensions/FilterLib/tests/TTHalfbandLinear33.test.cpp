/** @file
 *
 * @ingroup dspFilterLib
 *
 * @brief Unit test for the FilterLib #TTHalfbandLinear33 class.
 *
 * @details Currently this test is just a stub
 *
 * @authors Trond Lossius, Tim Place
 *
 * @copyright Copyright © 2012 by Trond Lossius & Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#include "TTHalfbandLinear33.h"


TTErr TTHalfbandLinear33::test(TTValue& returnedTestInfo)
{
	int					errorCount = 0;
	int					testAssertionCount = 0;	
	
	// Wrap up the test results to pass back to whoever called this test
	return TTTestFinish(testAssertionCount, errorCount, returnedTestInfo);
}

