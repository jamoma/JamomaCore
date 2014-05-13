/* 
 * Unit tests for TTObject
 * Copyright © 2014, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_OBJECT_TEST_H__
#define __TT_OBJECT_TEST_H__

#include "TTObject.h"
#include "TTUnitTest.h"

/**	Provide unit tests for #TTSymbol */
class TTObjectTest : public TTDataObjectBase {
	TTCLASS_SETUP(TTObjectTest)
		
	virtual TTErr test(TTValue& returnedTestInfo);
};

/** Declare a Test class for TTObjectTestAsClassMemberAndObjectFreeing */
class Test
{
    public :
    TTObject mObject;
    
    Test(int& errorCount, int& testAssertionCount);
    
    ~Test();
};

#endif // __TT_OBJECT_TEST_H__
