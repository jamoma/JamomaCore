/* 
 * Unit tests for the TTBuffer Object for Jamoma DSP
 * Copyright © 2011, Tim Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTBuffer.h"


TTErr TTBuffer::test(TTValue& returnedTestInfo)
{
	int					errorCount = 0;
	int					testAssertionCount = 0;
	//int					badSampleCount = 0;
	
	// TODO: test filling with sine wave
	// TODO: test scaling (applying gain)
	// TODO: test normalizing (with optional arg, and also without an optional arg)
	
    this->init(1,"myFirstBuffer");
	
	// TEST 1: checking out a matrix returns something
	TTSampleMatrixPtr myfirstCheckOut = NULL;
	this->checkOutMatrix(myfirstCheckOut);
	
	TTBoolean result1 = { myfirstCheckOut != NULL };
	
	TTTestAssertion("checkOutMatrix returns a pointer", 
					result1,
					testAssertionCount, 
					errorCount);
	
	// TEST 2: how many channels does this matrix have?
	TTInt32 test2expect = 1;
	
	TTInt32 test2return = 0;
	myfirstCheckOut->getAttributeValue("numChannels", test2return);
	
	TTBoolean result2 = { test2expect == test2return };
	
	TTTestAssertion("numChannels is set properly", 
					result2,
					testAssertionCount, 
					errorCount);
	
	if(!result2)
	{
		TTTestLog("Expected a value of %i, but returned value was %i", test2expect, test2return);	
	}
	
	
	// Wrap up the test results to pass back to whoever called this test
	return TTTestFinish(testAssertionCount, errorCount, returnedTestInfo);
}

