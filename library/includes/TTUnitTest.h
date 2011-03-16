/* 
 * TTUnitTest
 * Copyright © 2011, Timothy Place and Trond Lossius
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_UNITTEST_H__
#define __TT_UNITTEST_H__

#include "TTFoundationAPI.h"

#define MAX_UNITS_IN_THE_LAST_PLACE 5


/**	Determine if two 32-bit floats are equal in value, but tolerant of floating-point precision.
	@group unittest
	@param a	The first float to test
	@param b	The second float to test
	@return		Returns true if a == b, otherwise returns false.	*/
TTBoolean TTFOUNDATION_EXPORT TTTestFloatEquivalence(TTFloat32 a, TTFloat32 b);


/**	Determine if two 32-bit floats are equal in value, but tolerant of floating-point precision.
	@group unittest
	@param a	The first float to test
	@param b	The second float to test
	@return		Returns true if a == b, otherwise returns false.	*/
TTBoolean TTFOUNDATION_EXPORT TTTestFloatEquivalence(TTFloat64 a, TTFloat64 b);


/**	Post a message to the console.
	Adequate indenting is provided for free, as are newlines at the end.
	At some point we may want to additionally log these messages in other ways (e.g. to a database).
	@group unittest
	@param msg	The string to post
*/
void TTFOUNDATION_EXPORT TTTestLog(const char *msg, ...);


/**	Log the outcome of a proceedure that should result as true.
	Test assertions are not like normal C++ assertions -- test assertions are not designed to crash when they fail.
	@group unittest
	@param aTestName			A name you wish to give the assertion.  Should be as descriptive as possible.
	@param aTestResult			You should pass 'true' if the assertion passes, or 'false' if it failed.
	@param testAssertionCount	The address of a variable you incrementing when making a test assertion.
	@param errorCount			The address of a variable you incrementing when test assertions fail.
	@return						Returns true if a == b, otherwise returns false.	*/
void TTFOUNDATION_EXPORT TTTestAssertion(const char* aTestName, TTBoolean aTestResult, int& testAssertionCount, int& errorCount);


/** Wrap up the test results to pass back to whoever called this test.
	@group	unittest
	@param	testAssertionCount		The number of assertions made during the test.
	@param	errorCount				The number of assertions that failed during the test.
	@param	returnedTestInfo		The argument passed to the test function, which will be filled-in with a dictionary upon return.
	@return		An error code if the test failed.
 */
TTErr TTFOUNDATION_EXPORT TTTestFinish(int testAssertionCount, int errorCount, TTValue& returnedTestInfo);


#endif // __TT_UNITTEST_H__
