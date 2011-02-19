/* 
 * Jamoma N-Dimensional Matrix Data Class
 * Copyright © 2011, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTMatrix.h"


void TTMatrixTestBasic(int& errorCount, int&testAssertionCount)
{
	TTTestLog("\n");
	TTTestLog("Testing TTMatrix Basics...");
	
	TTMatrixPtr matrix = NULL;
	TTErr err;
	
	err = TTObjectInstantiate(TT("matrix"), (TTObjectPtr*)&matrix, kTTValNONE);
	TTTestAssertion("instantiates successfully", 
					err == kTTErrNone, 
					testAssertionCount,
					errorCount);

	TTTestLog("Setting to a 1D Matrix with a length of 16");
	matrix->setAttributeValue(TT("dimensions"), 16);
	
	
	TTTestLog("Setting to a 2D Matrix with a size of 160 x 120");
	TTValue dims(160, 120);
	matrix->setAttributeValue(TT("dimensions"), dims);
	
	
	TTTestLog("Setting to a 3D Matrix with a size of 5 x 3 x 4");
	dims.setSize(3);
	dims.set(0, 5);
	dims.set(1, 3);
	dims.set(2, 4);
	matrix->setAttributeValue(TT("dimensions"), dims);
	
	
	
	err = TTObjectRelease((TTObjectPtr*)&matrix);
	TTTestAssertion("frees successfully", 
					err == kTTErrNone, 
					testAssertionCount,
					errorCount);
	
}	


TTErr TTMatrix::test(TTValue& returnedTestInfo)
{
	int	errorCount = 0;
	int testAssertionCount = 0;
	
	TTMatrixTestBasic(errorCount, testAssertionCount);
	
	return TTTestFinish(testAssertionCount, errorCount, returnedTestInfo);
}
