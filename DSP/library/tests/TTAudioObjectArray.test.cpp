/** @file
 *
 * @ingroup dspLibrary
 *
 * @brief Unit tests for the #TTAudioObjectBaseArray class
 *
 * @details
 *
 * @see TTAudioObjectBaseArray, TTAudioObjectBase
 *
 * @authors Tim Place, Trond Lossius
 *
 * @copyright Copyright © 2008 by Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTAudioObjectArray.h"


TTErr TTAudioObjectBaseArray::test(TTValue& returnedTestInfo)
{
	int					errorCount = 0;
	int					testAssertionCount = 0;
		
	// Wrap up the test results to pass back to whoever called this test
	return TTTestFinish(testAssertionCount, errorCount, returnedTestInfo);
}

