/* 
 * Super simple Spatialization object for Jamoma DSP
 * Copyright © 2011 by Trond Lossius, Nils Peters, and Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */


#include "TTDSP.h"
#include "SpatMatrix.h"



TTErr SpatMatrix::test(TTValue& returnedTestInfo)
{
	int					errorCount = 0;
	int					testAssertionCount = 0;
	
	// Wrap up the test results to pass back to whoever called this test
	return TTTestFinish(testAssertionCount, errorCount, returnedTestInfo);
}
