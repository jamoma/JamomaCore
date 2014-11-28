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

void TTStateTestStoreAndRecall(int& errorCount, int& testAssertionCount)
{
	TTTestLog("\n");
	TTTestLog("Testing State Store and Recall");
    
    TTValue value, stored;
    
    // setup callback object for test
    TTObject object("callback");
    object.set("notification", "foo");
    object.set("baton", "bar");
	
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
    object.get("notification", value);
    state.lookup("notification", stored);

	TTTestAssertion("State store: Test passes if state content for notification is \"foo\"",
					stored == value,
					testAssertionCount,
					errorCount);
    
    // compare another object attribute value to what is stored into the state
    object.get("baton", value);
    state.lookup("baton", stored);
    
	TTTestAssertion("State store: Test passes if state content for baton is \"bar\"",
					stored == value,
					testAssertionCount,
					errorCount);
    
    // change object attributes values
    object.set("notification", "so");
    object.set("baton", "what");
    
    // set object state
    object.set("state", state);
    
    // check object attributes values
    TTSymbol notification, baton;
    object.get("notification", notification);
    object.get("baton", baton);
    
    TTTestAssertion("State recall: Test passes if the content for notification is still \"foo\" and the baton is still \"bar\"",
					notification == TTSymbol("foo") &&
                    baton == TTSymbol("bar"),
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

