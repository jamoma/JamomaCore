/* 
 * Unit tests for the TTValue object
 * Copyright © 2011, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTString.test.h"

#define thisTTClass			TTStringTest
#define thisTTClassName		"string.test"
#define thisTTClassTags		"test, foundation"


TT_OBJECT_CONSTRUCTOR
{;}


TTStringTest::~TTStringTest()
{;}


void TTStringTestBasic(int& errorCount, int&testAssertionCount)
{	
	TTString foo("foo");
	
	TTTestAssertion("created from static const char* arg with correct size",
					foo.size() == 4,
					testAssertionCount,
					errorCount);
	TTTestAssertion("created from static const char* arg with correct length",
					foo.length() == 3,
					testAssertionCount,
					errorCount);
	TTTestAssertion("created from static const char* arg with correct chars",
					foo.at(0) == 'f' && foo.at(1) == 'o' && foo.at(2) == 'o',
					testAssertionCount,
					errorCount);
	TTTestAssertion("created from static const char* arg correctly null terminated",
					foo.at(3) == 0,
					testAssertionCount,
					errorCount);

	//char& c = f[0];
	//f[0] = 'g';

	
}


void TTStringTestNumeric(int& errorCount, int&testAssertionCount)
{
	
}	


void TTStringTestStream(int& errorCount, int&testAssertionCount)
{

}


// TODO: Benchmarking


TTErr TTStringTest::test(TTValue& returnedTestInfo)
{
	int	errorCount = 0;
	int testAssertionCount = 0;
	
	TTStringTestBasic(errorCount, testAssertionCount);
	//TTStringTestNumericTransformations(errorCount, testAssertionCount);
	//TTStringTestStream(errorCount, testAssertionCount);
	
	return TTTestFinish(testAssertionCount, errorCount, returnedTestInfo);
}
