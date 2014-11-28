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

TT_OBJECT_CONSTRUCTOR,
TT_STATE
{
    addAttribute(TestMember1, kTypeLocalValue);
    addAttribute(TestMember2, kTypeLocalValue);
}

TTStateTest::~TTStateTest()
{;}

TTErr TTStateTest::getState(TTValue& returnedState) const
{
    TTDictionary dictionary;
    
    dictionary.setSchema(thisTTClassName);
    dictionary.append("testMember1", mTestMember1);
    dictionary.append("testMember2", mTestMember2);
    
    returnedState = dictionary;
    return kTTErrNone;
}

TTErr TTStateTest::setState(const TTValue& newState)
{
    TTDictionary dictionary = newState[0]; // TODO: JamomaCore #319
    if (dictionary.getSchema() == thisTTClassName)
    {
        TTValue value;
        
        dictionary.lookup("testMember1", mTestMember1);
        dictionary.lookup("testMember2", mTestMember2);
        
        return kTTErrNone;
    }
    
    return kTTErrInvalidType;
}

void TTStateTest::TTStateTestStoreAndRecall(int& errorCount, int& testAssertionCount)
{
	TTTestLog("\n");
	TTTestLog("Testing State Store and Recall");
    
    TTValue value, stored;
    
    // test on our self
    TTObject object(this);
    mTestMember1 = TTSymbol("foo");
    mTestMember2 = TTSymbol("bar");
	
	// get object state
    // TODO: JamomaCore #319
    TTValue v;
    TTDictionary state;
    if (!object.get("state", v))
        state = v[0];

    // check state schema
    TTTestAssertion("State schema: Test passes if state schema equals object name",
					state.getSchema() == object.name(),
					testAssertionCount,
					errorCount);

    // compare object attribute value to what is stored into the state
    value = mTestMember1;
    state.lookup("testMember1", stored);

	TTTestAssertion("State store: Test passes if state content for testMember1 is \"foo\"",
					stored == value,
					testAssertionCount,
					errorCount);
    
    // compare another object attribute value to what is stored into the state
    value = mTestMember2;
    state.lookup("testMember2", stored);
    
	TTTestAssertion("State store: Test passes if state content for testMember2 is \"bar\"",
					stored == value,
					testAssertionCount,
					errorCount);
    
    // change object attributes values
    mTestMember1 = TTSymbol("so");
    mTestMember2 = TTSymbol("what");
    
    // set object state
    object.set("state", state);
    
    // check object attributes values
    TTSymbol testMember1 = mTestMember1[0];
    TTSymbol testMember2 = mTestMember2[0];
    TTTestAssertion("State recall: Test passes if the content for testMember1 is still \"foo\" and the testMember2 is still \"bar\"",
					testMember1 == TTSymbol("foo") &&
                    testMember2 == TTSymbol("bar"),
					testAssertionCount,
					errorCount);
}

// TODO: Benchmarking

TTErr TTStateTest::test(TTValue& returnedTestInfo)
{
	int	errorCount = 0;
	int testAssertionCount = 0;
	
    TTStateTestStoreAndRecall(errorCount, testAssertionCount);
	
	return TTTestFinish(testAssertionCount, errorCount, returnedTestInfo);
}

