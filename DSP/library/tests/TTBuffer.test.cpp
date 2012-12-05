/* 
 * Unit tests for the TTBuffer Object for Jamoma DSP
 * Copyright © 2012, Nathan Wolek
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
	
	// *** Tim's old list (we'll get there) ***
	// TODO: test filling with sine wave
	// TODO: test scaling (applying gain)
	// TODO: test normalizing (with optional arg, and also without an optional arg)
	
    this->init(1,"myFirstBuffer");

	TTTestLog("\nTest checkout of first SampleMatrix...");
	
	// TEST 1: checking out a matrix returns something
	TTSampleMatrixPtr myFirstCheckOut = NULL;
	this->checkOutMatrix(myFirstCheckOut);
	
	TTBoolean result1 = { myFirstCheckOut != NULL };
	
	TTTestAssertion("checkOutMatrix returns a valid pointer", 
					result1,
					testAssertionCount, 
					errorCount);
	
	// TEST 2: how many channels does this matrix have?
	TTInt32 test2expect = 1;
	
	TTInt32 test2return = 0;
	myFirstCheckOut->getAttributeValue("numChannels", test2return);
	
	TTBoolean result2 = { test2expect == test2return };
	
	TTTestAssertion("numChannels is set properly", 
					result2,
					testAssertionCount, 
					errorCount);
	
	if(!result2)
	{
		TTTestLog("Expected a value of %i, but returned value was %i", test2expect, test2return);	
	}
	
	// TEST 3: what is the user count?
	TTInt32 test3expect = 1;
	
	TTInt32 test3return = 0;
	myFirstCheckOut->getAttributeValue("userCount", test3return);
	
	TTBoolean result3 = { test2expect == test3return };
	
	TTTestAssertion("userCount reports proper value", 
					result3,
					testAssertionCount, 
					errorCount);
	
	if(!result3)
	{
		TTTestLog("Expected a value of %i, but returned value was %i", test3expect, test3return);	
	}
	
	// TEST 4: what is the buffer stage?
	TTBoolean test4expect = true;
	
	TTBoolean test4return = false;
	test4return = myFirstCheckOut->isBufferPoolStage(kSM_Active);
	
	TTBoolean result4 = { test4expect == test4return };
	
	TTTestAssertion("bufferPoolStage reports proper value", 
					result4,
					testAssertionCount, 
					errorCount);
	
	if(!result4)
	{
		TTTestLog("Expected a value of %i, but returned value was %i", test4expect, test4return);	
	}
	
	TTTestLog("\nTest second checkout of first SampleMatrix...");
	
	// TEST 5: checking out a matrix returns something
	TTSampleMatrixPtr myFirstCheckOut2 = NULL;
	this->checkOutMatrix(myFirstCheckOut2);
	
	TTBoolean result5 = { myFirstCheckOut == myFirstCheckOut2 };
	
	TTTestAssertion("checkOutMatrix returns the same pointer", 
					result5,
					testAssertionCount, 
					errorCount);
    
    // TEST 6: what is the user count after 2 checkouts?
	TTInt32 test6expect = 2;
	
	TTInt32 test6return = 0;
	myFirstCheckOut->getAttributeValue("userCount", test6return);
	
	TTBoolean result6 = { test6expect == test6return };
	
	TTTestAssertion("userCount reports proper value after second checkout",
					result6,
					testAssertionCount,
					errorCount);
	
	if(!result6)
	{
		TTTestLog("Expected a value of %i, but returned value was %i", test6expect, test6return);
	}
	
	TTTestLog("\nTest if changing length attribute spawns new SampleMatrix...");
	
	// TEST 7: changing length at TTBuffer should spawn a new matrix
	TTSampleMatrixPtr mySecondCheckOut = NULL;
	this->setAttributeValue("length", 2);
	this->checkOutMatrix(mySecondCheckOut);
	
	TTBoolean result7 = { mySecondCheckOut != myFirstCheckOut };
	
	TTTestAssertion("checkOutMatrix returns pointer to different SampleMatrix", 
					result7,
					testAssertionCount, 
					errorCount);
					
	// TEST 8: what is the user count on new checkout?
	TTInt32 test8expect = 1;
	
	TTInt32 test8return = 0;
	mySecondCheckOut->getAttributeValue("userCount", test8return);
	
	TTBoolean result8 = { test8expect == test8return };
	
	TTTestAssertion("userCount reports proper value",
					result8,
					testAssertionCount,
					errorCount);
	
	if(!result8)
	{
		TTTestLog("Expected a value of %i, but returned value was %i", test8expect, test8return);
	}
	
	TTTestLog("\nRepeat with numChannels attribute...");
	
	// TEST 9: changing numChannels at TTBuffer should spawn a new matrix
	TTSampleMatrixPtr myThirdCheckOut = NULL;
	this->setAttributeValue("numChannels", 2);
	this->checkOutMatrix(myThirdCheckOut);
	
	TTBoolean result9 = { mySecondCheckOut != myThirdCheckOut && myFirstCheckOut != myThirdCheckOut};
	
	TTTestAssertion("checkOutMatrix returns pointer to different SampleMatrix", 
					result9,
					testAssertionCount, 
					errorCount);
					
	// TEST 10: what is the user count on new checkout?
	TTInt32 test10expect = 1;
	
	TTInt32 test10return = 0;
	myThirdCheckOut->getAttributeValue("userCount", test10return);
	
	TTBoolean result10 = { test10expect == test10return };
	
	TTTestAssertion("userCount reports proper value",
					result10,
					testAssertionCount,
					errorCount);
	
	if(!result10)
	{
		TTTestLog("Expected a value of %i, but returned value was %i", test10expect, test10return);
	}
	
	TTTestLog("\nAt this point, 3 distinct SampleMatrix objects have been checked out:");
	TTTestLog("myFirstCheckOut: userCount = %i, Active = %i, Becoming Idle = %i", myFirstCheckOut->getUserCount(), myFirstCheckOut->isBufferPoolStage(kSM_Active), myFirstCheckOut->isBufferPoolStage(kSM_BecomingIdle));
	TTTestLog("mySecondCheckOut: userCount = %i, Active = %i, Becoming Idle = %i", mySecondCheckOut->getUserCount(), mySecondCheckOut->isBufferPoolStage(kSM_Active), mySecondCheckOut->isBufferPoolStage(kSM_BecomingIdle));
	TTTestLog("myThirdCheckOut: userCount = %i, Active = %i, Becoming Idle = %i", myThirdCheckOut->getUserCount(), myThirdCheckOut->isBufferPoolStage(kSM_Active), myThirdCheckOut->isBufferPoolStage(kSM_BecomingIdle));
	
	//TTObjectRelease(&myFirstCheckOut);
	//TTObjectRelease(&mySecondCheckOut);
	//TTObjectRelease(&myThirdCheckOut);
	
	// Wrap up the test results to pass back to whoever called this test
	return TTTestFinish(testAssertionCount, errorCount, returnedTestInfo);
	

}

