/* 
 * Jamoma MatrixProcessingLib: Gain
 * Copyright © 2011, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTMatrixGain.h"


TTErr TTMatrixGain::test(TTValue& returnedTestInfo)
{
	int			errorCount = 0;
	int			testAssertionCount = 0;
	int			badValueCount = 0;
	TTMatrixPtr	x = NULL;				// input matrix
	TTMatrixPtr	y = NULL;				// output matrix
	TTErr		err = kTTErrNone;
	TTValue		v(16, 16);
	
	err = TTObjectInstantiate(kTTSym_matrix, (TTObjectPtr*)&x, kTTValNONE);
	err = TTObjectInstantiate(kTTSym_matrix, (TTObjectPtr*)&y, kTTValNONE);
	
	x->setAttributeValue(kTTSym_dimensions,		v);
	x->setAttributeValue(kTTSym_type,			kTTSym_uint8);
	x->setAttributeValue(kTTSym_elementCount,	4);
	x->fill(200);
	
	this->setAttributeValue(kTTSym_gain, 0.125);
	err = this->calculate(x, y);
	
	// 1. Assert the correct dimensions, type, etc. for y (should adapt to x)
	
	// 2. Iterate through y and check all of the values
	TTUInt8* data = (TTUInt8*)y->getLockedPointer();
	
	for (int i=0; i<(16*16); i++) {
		TTBoolean result = !(data[i] == 25);
		badValueCount += result;
		if (result)
			TTTestLog("BAD VALUE @ i=%i  ( value=%.10f   expected=%.10f )", i, data[i], 0.25);
	}
	y->releaseLockedPointer();
	
	TTTestAssertion("Test 1: Produces correct ramp from 0 to 1 when a positive Frequency is defined", 
					badValueCount == 0, 
					testAssertionCount, 
					errorCount);
	if (badValueCount)
		TTTestLog("badValueCount is %i", badValueCount);
	
	
	// TODO: test other types, dims, elem counts
	
	
	TTObjectRelease((TTObjectPtr*)&x);
	TTObjectRelease((TTObjectPtr*)&y);

	// Wrap up the test results to pass back to whoever called this test
	return TTTestFinish(testAssertionCount, errorCount, returnedTestInfo);
}

