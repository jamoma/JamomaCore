/* 
 * Jamoma MatrixProcessingLib: Stencil
 * Copyright © 2011, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTMatrixStencil.h"


TTErr TTMatrixStencil::test(TTValue& returnedTestInfo)
{
	int					errorCount = 0;
	int					testAssertionCount = 0;
	//int					badSampleCount = 0;
	//int					badSampleCountTotal = 0;
	//TTAudioSignalPtr	output = NULL;
	
	/*
		Do something.
	 */
	
	// Wrap up the test results to pass back to whoever called this test
	return TTTestFinish(testAssertionCount, errorCount, returnedTestInfo);
}

