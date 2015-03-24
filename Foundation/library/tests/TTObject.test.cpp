/*
 * Unit tests for TTObject
 * Copyright © 2014, Timothy Place
 *
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTObject.test.h"
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
        
        TTTestAssertion("after duplication the object is still valid",
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


void TTObjectTestIterateTTList(int& errorCount, int& testAssertionCount)
{
    TTTestLog("\n");
	TTTestLog("Testing iteration on TTObjects stored inside a TTList");
    
    // create an object
	TTObject callback("callback");
    
    TTTestAssertion("1 object -- refcount should be 1",
					callback.instance()->getReferenceCount() == 1,
					testAssertionCount,
					errorCount);
	
    // store the object into a list
    TTList testList;
	testList.appendUnique(callback);
    
    TTTestAssertion("1 object and 1 stored inside the list -- refcount should be 2",
					callback.instance()->getReferenceCount() == 2,
					testAssertionCount,
					errorCount);
    
    // iterate the list to send it a message
    TTValue v;
    testList.iterateObjectsSendingMessage("nothing", v);
    
    TTTestAssertion("1 object and 1 stored inside the list -- refcount should be 2",
					callback.instance()->getReferenceCount() == 2,
					testAssertionCount,
					errorCount);
    
    // clear the list
    testList.clear();
    
    TTTestAssertion("1 object -- refcount should be 1",
					callback.instance()->getReferenceCount() == 1,
					testAssertionCount,
					errorCount);
}


void TTObjectTestAsClassMemberCallback(const TTValue& baton, const TTValue& value)
{
    int *errorCount = (int*)TTPtr(baton[0]);
    int *testAssertionCount = (int*)TTPtr(baton[1]);
    TTObject anObject = value[0];
    
    TTTestAssertion("no more object as class member -- should be not valid",
                    !anObject.instance()->valid,
                    *testAssertionCount,
                    *errorCount);
}

void TTObjectTestAsClassMemberAndObjectFreeing(int& errorCount, int& testAssertionCount)

{
    TTTestLog("\n");
	TTTestLog("Testing TTObject as class member and object freeing observation");
    
    // create a Test instance
    Test* testInstance = new Test(errorCount, testAssertionCount);
    
    // register for objectFreeing notification
    TTObject    callback("callback");
    TTValue     v = TTValue(TTPtr(&errorCount), TTPtr(&testAssertionCount));
    callback.set("baton", v);
    callback.set("function", TTPtr(TTObjectTestAsClassMemberCallback));
    callback.set("notification", "objectFreeing");
    
    testInstance->mObject.registerObserverForNotifications(callback);
    
    // now the observer should be referenced also by the observers list of Test::mObject
    TTTestAssertion("1 observer on a TTObject class member -- refcount should be 2",
                    callback.instance()->getReferenceCount() == 2,
                    testAssertionCount,
                    errorCount);
    
    // don't unregister for objectFreeing notification as we need to be notified when the object is freeing
    
    // delete the Test instance and its mObject (and we expect the Test::mObject to forget its observers)
    delete testInstance;
    
    // now the observer should be referenced ony one time
    TTTestAssertion("no more observer on a TTObject class member -- refcount should be 1",
                    callback.instance()->getReferenceCount() == 1,
                    testAssertionCount,
                    errorCount);
}


Test::Test(int& errorCount, int& testAssertionCount) :
mObject("callback")
{
    TTTestAssertion("1 object as class member -- refcount should be 1",
                    mObject.instance()->getReferenceCount() == 1,
                    testAssertionCount,
                    errorCount);
}

Test::~Test()
{
    ; // we do nothing here as we expect the mObject member will be destroyed with the instance of the Test class
}


TTErr TTObjectTest::test(TTValue& returnedTestInfo)
{
	int	errorCount = 0;
	int testAssertionCount = 0;
	
	TTObjectTestBasic(errorCount, testAssertionCount);
	TTObjectTestWithTTValue(errorCount, testAssertionCount);
    TTObjectTestIterateTTList(errorCount, testAssertionCount);
    TTObjectTestAsClassMemberAndObjectFreeing(errorCount, testAssertionCount);
	
	return TTTestFinish(testAssertionCount, errorCount, returnedTestInfo);
}
