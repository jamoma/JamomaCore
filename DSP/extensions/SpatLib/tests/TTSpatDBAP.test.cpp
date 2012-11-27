/** @file
 *
 * @ingroup dspSpatLib
 *
 * @brief Unit tests for the #TTSpatDBAP SpatLib spatialisation renderer.
 *
 * @details
 *
 * @authors Trond Lossius, Nils Peters, Timothy Place
 *
 * @copyright Copyright © 2011 by Trond Lossius, Nils Peters, and Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#include "TTDSP.h"
#include "TTSpatDBAP.h"


TTErr TTSpatDBAP::test(TTValue& aReturnedTestInfo)
{
	// preliminary setup
	int					errorCount = 0;
	int					testAssertionCount = 0;
	
	
	// TODO: implement unit tests for DBAP

	// Wrap up the test results to pass back to whoever called this test
	return TTTestFinish(testAssertionCount, errorCount, aReturnedTestInfo);
}
