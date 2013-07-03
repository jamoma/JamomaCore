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
	TTTestLog("Testing dictionary creation");
    
    // creation using a random name
    TTDictionary d1;

	TTTestAssertion("TTDictionary random name : Test fails if the dictionary have no name",
					d1.name() != kTTSymEmpty,
					testAssertionCount,
					errorCount);
    
    // creation using a specific string name
    //TTDictionary   d2("dictionary2");         // theo - is this should be possible ?
    
    // creation using a specific symbol name
    //TTDictionary   d3(kTTSym_symbol);         // theo - is this should be possible ?
    
    
    
    TTTestLog("\n");
	TTTestLog("Testing dictionary schema");
    
    TTTestAssertion("TTDictionary schema : Test fails if the dictionary schema is not empty",
					d1.getSchema() == kTTSymEmpty,
					testAssertionCount,
					errorCount);
    
    d1.setSchema(TTSymbol("aSchemaName"));
    
    TTTestAssertion("TTDictionary schema : Test fails if the dictionary schema is not \"aSchemaName\"",
					d1.getSchema() == TTSymbol("aSchemaName"),
					testAssertionCount,
					errorCount);
    
    
    
    TTTestLog("\n");
	TTTestLog("Testing dictionary value");
    
    TTValue v;
    d1.getValue(v);
    
    TTTestAssertion("TTDictionary value : Test fails if the dictionary value is not empty",
					v == kTTValNONE,
					testAssertionCount,
					errorCount);
    
    d1.setValue(kTTVal1);
    d1.getValue(v);
    
    TTTestAssertion("TTDictionary value : Test fails if the dictionary value is not kTTVal1",
					v == kTTVal1,
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
