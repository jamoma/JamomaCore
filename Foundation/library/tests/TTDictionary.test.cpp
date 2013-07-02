/** @file
 *
 * @ingroup foundationLibrary
 *
 * @brief #TTDictionaryTest is an class used for unit tests of the #TTDictionary class.
 *
 * @details
 *
 * @authors Théo de la Hogue, Tim Place
 *
 * @copyright Copyright © 2013, Théo de la Hogue, Tim Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTDictionary.test.h"

#define thisTTClass			TTDictionaryTest
#define thisTTClassName		"dictionary.test"
#define thisTTClassTags		"test, foundation"


TT_OBJECT_CONSTRUCTOR
{;}


TTDictionaryTest::~TTDictionaryTest()
{;}


void TTDictionaryTestBasic(int& errorCount, int& testAssertionCount)
{
	TTTestLog("\n");
	TTTestLog("Testing something");
	
	TTTestAssertion("TTDictionary: Test fails if ...",
					NO,
					testAssertionCount,
					errorCount);
}


TTErr TTDictionaryTest::test(TTValue& returnedTestInfo)
{
	int	errorCount = 0;
	int testAssertionCount = 0;
	
	TTDictionaryTestBasic(errorCount, testAssertionCount);
		
	return TTTestFinish(testAssertionCount, errorCount, returnedTestInfo);
}
