/*
 * Unit tests for TTObject
 * Copyright © 2014, Timothy Place
 *
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTObjectTest.h"
#include "TTObjectTemplates.h"

#define thisTTClass			TTObjectTest
#define thisTTClassName		"object.test"
#define thisTTClassTags		"test, foundation"


TT_OBJECT_CONSTRUCTOR
{;}


TTObjectTest::~TTObjectTest()
{;}


void TTObjectTestBasic(int& errorCount, int&testAssertionCount)
{
	TTTestLog("\n");
	TTTestLog("Testing basic functionality of TTObject");

	
	TTObject callback("callback");						// create a callback object
	TTSymbol notificationName;
	
	callback.set("notification", "foo");				// set a symbol attr
	callback.get("notification", notificationName);		// attr we get back is what we just set?
	
	TTTestAssertion("symbol attr that we set is returnable to us with correct value",
					notificationName == "foo",
					testAssertionCount,
					errorCount);
}


TTErr TTObjectTest::test(TTValue& returnedTestInfo)
{
	int	errorCount = 0;
	int testAssertionCount = 0;
	
	TTObjectTestBasic(errorCount, testAssertionCount);
	
	return TTTestFinish(testAssertionCount, errorCount, returnedTestInfo);
}
