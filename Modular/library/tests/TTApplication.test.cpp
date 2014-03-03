/** @file
 *
 * @ingroup modularLibrary
 *
 * @brief Unit test for the Modular #TTApplication class.
 *
 * @details Currently this test is just a stub
 *
 * @authors Théo de la Hogue
 *
 * @copyright Copyright © 2014 by Théo de la Hogue @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTApplication.h"

TTErr TTApplication::test(TTValue& returnedTestInfo)
{
	int errorCount = 0;
	int testAssertionCount = 0;
    
    // do tests here !
    TTTestAssertion("TTApplication: Test passes because it is a fake test",
					YES,
					testAssertionCount,
					errorCount);
	
	// Wrap up the test results to pass back to whoever called this test
	return TTTestFinish(testAssertionCount, errorCount, returnedTestInfo);
}

