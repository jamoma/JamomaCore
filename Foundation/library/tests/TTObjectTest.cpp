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


void TTObjectTestBasic(int& errorCount, int& testAssertionCount)
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

    TTObject o1 = callback;
    
    TTTestAssertion("two object refering to the same object instance are equal",
					o1 == callback,
					testAssertionCount,
					errorCount);
 
}


void TTObjectTestWithTTValue(int& errorCount, int& testAssertionCount)
{
	TTObject callback("callback");
    
    TTTestAssertion("after creation the object is valid",
                    callback.valid(),
                    testAssertionCount,
                    errorCount);
	
	callback.set("notification", "foo");        // set an attr so we can verify that it survives
	
	{
		TTValue v1(callback);					// assign to value with copy constructor
        
        TTTestAssertion("after duplication the object is valid",
                        callback.valid(),
                        testAssertionCount,
                        errorCount);
        
		TTValue v2 = callback;					// assign to value with = operator
		
		TTTestAssertion("1 object and 2 values -- refcount should be 3",
						callback.instance()->getReferenceCount() == 3,
						testAssertionCount,
						errorCount);

		// could check that v1 and v2 have correct and sane content
		
		TTObject o1 = v1[0];
		TTObject o2 = v2[0];
		
		TTTestAssertion("3 objects and 2 values -- refcount should be 5",
						callback.instance()->getReferenceCount() == 5,
						testAssertionCount,
						errorCount);
	}
	
	TTTestAssertion("1 object, others went out of scope -- refcount should be 1",
					callback.instance()->getReferenceCount() == 1,
					testAssertionCount,
					errorCount);
}


TTErr TTObjectTest::test(TTValue& returnedTestInfo)
{
	int	errorCount = 0;
	int testAssertionCount = 0;
	
	TTObjectTestBasic(errorCount, testAssertionCount);
	TTObjectTestWithTTValue(errorCount, testAssertionCount);
	
	return TTTestFinish(testAssertionCount, errorCount, returnedTestInfo);
}
