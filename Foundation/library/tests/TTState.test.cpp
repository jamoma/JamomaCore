/*
 * Unit tests for TTState
 * Copyright © 2014, Théo de la Hogue
 *
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTState.test.h"

#define thisTTClass			TTStateTest
#define thisTTClassName		"state.test"
#define thisTTClassTags		"test, state"

TT_OBJECT_CONSTRUCTOR
{;}

TTStateTest::~TTStateTest()
{;}

void TTStateTestBasic(int& errorCount, int& testAssertionCount)
{
	TTTestLog("\n");
	TTTestLog("Testing State");
	
	// test state creation
	TTState     state1("test");
    TTSymbol    name1 = state1.name();
    TTSymbol    schema1 = state1.getSchema();

	TTTestAssertion("State constructor: Test passes the name is \"test\" and schema is \"state\"",
					name1 == "test" &&
                    schema1 == "state",
					testAssertionCount,
					errorCount);
}

// TODO: Benchmarking

TTErr TTStateTest::test(TTValue& returnedTestInfo)
{
	int	errorCount = 0;
	int testAssertionCount = 0;
	
	TTStateTestBasic(errorCount, testAssertionCount);
	
	return TTTestFinish(testAssertionCount, errorCount, returnedTestInfo);
}

