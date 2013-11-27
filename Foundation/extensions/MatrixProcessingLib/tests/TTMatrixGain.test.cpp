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
	TTValue		aColor;
    TTValue     aReturnWeDontCareAbout;
	
	err = TTObjectBaseInstantiate(kTTSym_matrix, (TTObjectBasePtr*)&x, kTTValNONE);
	err = TTObjectBaseInstantiate(kTTSym_matrix, (TTObjectBasePtr*)&y, kTTValNONE);
	
	x->setAttributeValue(kTTSym_dimensions,		v);
	x->setAttributeValue(kTTSym_type,			kTTSym_uint8);
	x->setAttributeValue(kTTSym_elementCount,	4);
	aColor.setSize(4);
	aColor.set(0, 200);
	aColor.set(1, 196);
	aColor.set(2, 24);
	aColor.set(3, 240);
	x->fill(aColor, aReturnWeDontCareAbout);
	
	this->setAttributeValue(kTTSym_gain, 0.125);
	err = this->calculate(x, y);
	
	// 1. Assert the correct dimensions, type, etc. for y (should adapt to x)
	
	// 2. Iterate through y and check all of the values
	TTUInt8* data = (TTUInt8*)y->getLockedPointer();
	
	for (int i=0; i<(16*16*4); i += 4) {
		TTUInt8 *pixel = data+i;
		
		if (pixel[0] != 25 || pixel[1] != 24 || pixel[2] != 3 || pixel[3] != 30 ) {
			badValueCount++;
			TTTestLog("BAD VALUE @ i=%i  ( value = [%c,%c,%c,%c]   expected = [25,24,3,30]", i, pixel[0], pixel[1], pixel[2], pixel[3]);
		}
	}
	y->releaseLockedPointer();
	
	TTTestAssertion("Test 2: All values in a 16x16 matrix (type uint8, element count 4) are properly scaled by 1/8.", 
					badValueCount == 0, 
					testAssertionCount, 
					errorCount);
	if (badValueCount)
		TTTestLog("badValueCount is %i", badValueCount);
	
	
	// TODO: test other types, dims, elem counts
	
	
	TTObjectBaseRelease((TTObjectBasePtr*)&x);
	TTObjectBaseRelease((TTObjectBasePtr*)&y);

	// Wrap up the test results to pass back to whoever called this test
	return TTTestFinish(testAssertionCount, errorCount, returnedTestInfo);
}

