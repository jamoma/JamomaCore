/** @file
 *
 * @ingroup foundationLibrary
 *
 * @brief #TTListTest is an class used for unit tests of the #TTList class.
 *
 * @details
 *
 * @author Théo de la Hogue, Tim Place
 *
 * @copyright Copyright © 2013, Théo de la Hogue, Tim Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTList.test.h"

#define thisTTClass			TTListTest
#define thisTTClassName		"list.test"
#define thisTTClassTags		"test, foundation"


TT_OBJECT_CONSTRUCTOR
{;}


TTListTest::~TTListTest()
{;}


void TTListTestBasic(int& errorCount, int& testAssertionCount)
{
    TTTestLog("\n");
	TTTestLog("Testing list basic operations");
    
	TTTestLog("\n");
	TTTestLog("Testing list creation");
    
    // creation
    TTList l1;

	TTTestAssertion("TTList size : Test fails if the list can't report its size or the fact it is empty",
					l1.getSize() == 0 && l1.isEmpty(),
					testAssertionCount,
					errorCount);
    
    // iteration on an empty list
    TTUInt8 i = 0;
    for (l1.begin(); l1.end(); l1.next())
        i++;
    
    TTTestAssertion("TTList iteration on empty : Test fails if the list have made an iteration",
					i == 0,
					testAssertionCount,
					errorCount);
}

TTErr TTListTest::test(TTValue& returnedTestInfo)
{
	int	errorCount = 0;
	int testAssertionCount = 0;
	
	TTListTestBasic(errorCount, testAssertionCount);
		
	return TTTestFinish(testAssertionCount, errorCount, returnedTestInfo);
}
