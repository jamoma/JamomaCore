/* 
 * Jamoma N-Dimensional Matrix Data Class
 * Copyright © 2011, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTMatrix.h"


TTErr TTMatrix::test(TTValue& returnedTestInfo)
{
	int	errorCount = 0;
	int testAssertionCount = 0;
	

	
	
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
		
		
		TTTestLog("Setting to a 1D, float64, matrix with a length of 16 for complex numbers (2 elements per value)");
		matrix->setAttributeValue(TT("dimensions"), 16);
		matrix->setAttributeValue(TT("type"), TT("float64"));
		matrix->setAttributeValue(TT("elementCount"), 2);
		
		TTTestAssertion("correct amount of data storage calculated", 
						matrix->mDataSize == sizeof(TTFloat64) * 16 * 2, 
						testAssertionCount,
						errorCount);
		
		
		
		TTTestLog("Setting to a 2D image matrix (8-bit int, 4 elements per value for rgba color) with a size of 160 x 120");
		TTValue dims(160, 120);
		matrix->setAttributeValue(TT("dimensions"), dims);
		matrix->setAttributeValue(TT("type"), TT("uint8"));
		matrix->setAttributeValue(TT("elementCount"), 4);
		
		TTTestAssertion("correct amount of data storage calculated", 
						matrix->mDataSize == sizeof(TTUInt8) * 160 * 120 * 4, 
						testAssertionCount,
						errorCount);
		
		
		TTTestLog("Setting to a 3D matrix with a size of 5 x 3 x 4 using float32 data and a single element per value");
		dims.setSize(3);
		dims.set(0, 5);
		dims.set(1, 3);
		dims.set(2, 4);
		matrix->setAttributeValue(TT("dimensions"), dims);
		matrix->setAttributeValue(TT("type"), TT("float32"));
		matrix->setAttributeValue(TT("elementCount"), 1);

		TTTestAssertion("correct amount of data storage calculated", 
						matrix->mDataSize == sizeof(TTFloat32) * 5 * 3 * 4 * 1, 
						testAssertionCount,
						errorCount);
		
		
		err = TTObjectRelease((TTObjectPtr*)&matrix);
		TTTestAssertion("frees successfully", 
						err == kTTErrNone, 
						testAssertionCount,
						errorCount);
		
	}	
	
	
	
	
	return TTTestFinish(testAssertionCount, errorCount, returnedTestInfo);
}
