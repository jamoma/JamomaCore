/** @file
 *
 * @ingroup dspLibrary
 *
 * @brief Unit tests for the #TTBuffer class
 *
 * @details
 *
 * @see TTBuffer
 *
 * @authors Nathan Wolek
 *
 * @copyright Copyright © 2012 by Nathan Wolek @n
 * This code is licensed under the terms of the "New BSD License" @n
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
	this->setAttributeValue("lengthInSamples", 50);

	TTTestLog("\nTest checkout of first SampleMatrix...");
	
	// TEST 1: checking out a matrix returns something
	TTSampleMatrixPtr myFirstCheckOut = NULL;
	this->checkOutMatrix(myFirstCheckOut);
	
	TTBoolean result1 = { myFirstCheckOut != NULL };
	
	TTTestAssertion("checkOutMatrix returns a valid pointer", 
					result1,
					testAssertionCount, 
					errorCount);
	
	// if it failed then we need to abort further testing to avoid a crash dereferencing a bogus pointer
	if (!myFirstCheckOut)
		return TTTestFinish(testAssertionCount, errorCount, returnedTestInfo);
	
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
	
	TTTestLog("\nTest if changing lengthInSamples attribute spawns new SampleMatrix...");
	
	// TEST 7: changing length at TTBuffer should spawn a new matrix
	TTSampleMatrixPtr mySecondCheckOut = NULL;
	this->setAttributeValue("lengthInSamples", 100);
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
	
	
	/******/
	TTTestLog("\nAt this point, 3 SampleMatrix objects are checked out via 4 pointers:");
	TTTestLog("myFirstCheckOut: userCount %i, Active %i, Becoming Idle %i", myFirstCheckOut->getUserCount(), myFirstCheckOut->isBufferPoolStage(kSM_Active), myFirstCheckOut->isBufferPoolStage(kSM_BecomingIdle));
	TTTestLog("myFirstCheckOut2: userCount %i, Active %i, Becoming Idle %i", myFirstCheckOut2->getUserCount(), myFirstCheckOut2->isBufferPoolStage(kSM_Active), myFirstCheckOut2->isBufferPoolStage(kSM_BecomingIdle));
	TTTestLog("mySecondCheckOut: userCount %i, Active %i, Becoming Idle %i", mySecondCheckOut->getUserCount(), mySecondCheckOut->isBufferPoolStage(kSM_Active), mySecondCheckOut->isBufferPoolStage(kSM_BecomingIdle));
	TTTestLog("myThirdCheckOut: userCount %i, Active %i, Becoming Idle %i", myThirdCheckOut->getUserCount(), myThirdCheckOut->isBufferPoolStage(kSM_Active), myThirdCheckOut->isBufferPoolStage(kSM_BecomingIdle));
	/******/
	
	
	TTTestLog("\nTesting check in process...");
	
	// TEST 11: checking out a matrix returns NULL pointer
	this->checkInMatrix(myFirstCheckOut);

	TTBoolean result11 = { myFirstCheckOut == NULL };
	
	TTTestAssertion("checkInMatrix(myFirstCheckOut) resets pointer to NULL", 
					result11,
					testAssertionCount, 
					errorCount);
					
	// TEST 12: second pointer to first matrix is still valid
	TTBoolean result12 = { myFirstCheckOut2 != NULL };
	
	TTTestAssertion("myFirstCheckOut2 is still a valid pointer", 
					result12,
					testAssertionCount, 
					errorCount);
	
	// TEST 13: poke/peek a sample into first matrix
	TTSampleValue test13expect = TTRandom64();
	myFirstCheckOut2->poke(10,0,test13expect);
					
	TTSampleValue test13return;
	myFirstCheckOut2->peek(10,0,test13return);
	
	TTBoolean result13 = TTTestFloatEquivalence(test13expect,test13return);
	
	TTTestAssertion("poke/peek sample value still works",
					result13,
					testAssertionCount,
					errorCount);

	if(!result13)
	{
		TTTestLog("Expected a value of %i, but returned value was %i", test13expect, test13return);
	}
	
	// TEST 14: checking out a matrix returns NULL pointer
	this->checkInMatrix(myFirstCheckOut2);

	TTBoolean result14 = { myFirstCheckOut2 == NULL };
	
	TTTestAssertion("checkInMatrix(myFirstCheckOut2) resets pointer to NULL", 
					result14,
					testAssertionCount, 
					errorCount);
	
	// TEST 15: checking out a matrix returns NULL pointer
	this->checkInMatrix(mySecondCheckOut);

	TTBoolean result15 = { mySecondCheckOut == NULL };
	
	TTTestAssertion("checkInMatrix(mySecondCheckOut) resets pointer to NULL", 
					result15,
					testAssertionCount, 
					errorCount);
					
	// TEST 16: checking out a matrix returns NULL pointer
	this->checkInMatrix(myThirdCheckOut);

	TTBoolean result16 = { myThirdCheckOut == NULL };
	
	TTTestAssertion("checkInMatrix(myThirdCheckOut) resets pointer to NULL", 
					result16,
					testAssertionCount, 
					errorCount);
    


	// The following is effectively taken care of through check in...
	//TTObjectRelease(&myFirstCheckOut);
	//TTObjectRelease(&mySecondCheckOut);
	//TTObjectRelease(&myThirdCheckOut);

	// Wrap up the test results to pass back to whoever called this test
	return TTTestFinish(testAssertionCount, errorCount, returnedTestInfo);
	

}

