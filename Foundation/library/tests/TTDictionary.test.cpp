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
	TTTestLog("Testing dictionary basic operations");
    
	TTTestLog("\n");
	TTTestLog("Testing dictionary creation");
    
    // creation using a random name
    TTDictionary d1;

	TTTestAssertion("TTDictionary random name : Test fails if the dictionary have no name",
					d1.name() != kTTSymEmpty,
					testAssertionCount,
					errorCount);
    
    // creation using a specific string name
    TTDictionary   d2("dictionary2");
    
    TTTestAssertion("TTDictionary string name : Test fails if the dictionary name is not \"dictionary2\"",
					d2.name() == TTSymbol("dictionary2"),
					testAssertionCount,
					errorCount);
    
    // creation using a specific symbol name
    TTDictionary   d3(kTTSym_symbol);
    
    TTTestAssertion("TTDictionary symbol name : Test fails if the dictionary name is not \"symbol\"",
					d3.name() == kTTSym_symbol,
					testAssertionCount,
					errorCount);
    
    
    
    TTTestLog("\n");
	TTTestLog("Testing dictionary schema");
    
    TTTestAssertion("TTDictionary schema : dictionary schema should default to 'none' ",
					d1.getSchema() == "none",
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
					v == TTValue(),
					testAssertionCount,
					errorCount);
    
    d1.setValue(1);
    d1.getValue(v);
    
    TTTestAssertion("TTDictionary value : Test fails if the dictionary value is not kTTVal1",
					v == 1,
					testAssertionCount,
					errorCount);
    
    
    
    TTTestLog("\n");
	TTTestLog("Testing dictionary keys");
    
    d1.append(kTTSym_gain, 1);
    TTErr err = d1.lookup(kTTSym_gain, v);
    
    TTTestAssertion("TTDictionary append key : Test fails if the dictionary key \"gain\" doesn't exist or its value is not kTTVal1",
                    err == kTTErrNone &&
					v == 1,
					testAssertionCount,
					errorCount);
    
    d1.getKeys(v);
    TTSymbol k1 = v[2];
    TTSymbol k2 = v[1];
    TTSymbol k3 = v[0];
    
    TTTestAssertion("TTDictionary get keys : Test fails if the dictionary keys are not \"schema\", \"value\" and \"gain\" or the size is not 3",
                    k1 == kTTSym_schema &&
                    k2 == kTTSym_value &&
                    k3 == kTTSym_gain &&
                    d1.size() == 3,
					testAssertionCount,
					errorCount);
    
    d1.remove(kTTSym_gain);
    d1.getKeys(v);
    k1 = v[1];
    k2 = v[0];
    
    TTTestAssertion("TTDictionary remove key : Test fails if the dictionary keys are not \"schema\" and \"value\" or the size is not 2",
                    k1 == kTTSym_schema &&
                    k2 == kTTSym_value  &&
                    d1.size() == 2,
					testAssertionCount,
					errorCount);
    
    d1.clear();
    
    TTTestAssertion("TTDictionary clear keys : Test fails if the dictionary keys are not empty or the size is not 0",
                    d1.empty() &&
                    d1.size() == 0,
					testAssertionCount,
					errorCount);
}

void TTDictionaryTestValue(int& errorCount, int& testAssertionCount)
{
	TTTestLog("\n");
	TTTestLog("Testing dictionary inside value");
    
    TTDictionary d1("dictionary1");
    TTValue v = d1;
    
    TTTestAssertion("TTDictionary value assignement : Test fails if the value type is not dictionary",
                    v[0].type() == kTypeDictionary,
					testAssertionCount,
					errorCount);
    
    TTDictionary d2 = v[0];
    
    TTTestAssertion("TTDictionary value assignement : Test fails if two dictionaries haven't the same name",
                    d2.name() == d1.name(),
					testAssertionCount,
					errorCount);
}

TTErr TTDictionaryTest::test(TTValue& returnedTestInfo)
{
	int	errorCount = 0;
	int testAssertionCount = 0;
	
	TTDictionaryTestBasic(errorCount, testAssertionCount);
    
    TTDictionaryTestValue(errorCount, testAssertionCount);
		
	return TTTestFinish(testAssertionCount, errorCount, returnedTestInfo);
}
