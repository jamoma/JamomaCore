/* 
 * Unit tests for the TTValue object
 * Copyright © 2011, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTSymbol.test.h"

#define thisTTClass			TTSymbolTest
#define thisTTClassName		"symbol.test"
#define thisTTClassTags		"test, foundation"


TT_OBJECT_CONSTRUCTOR
{;}


TTSymbolTest::~TTSymbolTest()
{;}


void TTSymbolTestBasic(int& errorCount, int&testAssertionCount)
{
/*
	// TEST: empty string init
	
	TTTestLog("\n");
	TTTestLog("Testing empty string assigment");
		
	TTString empty;
	
	TTTestAssertion("created static const char* arg with correct size",
					empty.size() == 0,
					testAssertionCount,
					errorCount);
	TTTestAssertion("created from static const char* arg with correct length",
					empty.length() == 0,
					testAssertionCount,
					errorCount);
	TTTestAssertion("created from static const char* arg correctly null terminated",
					empty.at(0) == 0,
					testAssertionCount,
					errorCount);
	
	
	// TEST: c-string init
	
	TTTestLog("\n");
	TTTestLog("Testing basic string assigment");
	
	TTString foo("foo");
	
	TTTestAssertion("created from static const char* arg with correct size",
					foo.size() == 3,
					testAssertionCount,
					errorCount);
	TTTestAssertion("created from static const char* arg with correct length",
					foo.length() == 3,
					testAssertionCount,
					errorCount);
	TTTestAssertion("created from static const char* arg with correct chars",
					foo.at(0) == 'f' && foo.at(1) == 'o' && foo.at(2) == 'o',
					testAssertionCount,
					errorCount);
	TTTestAssertion("created from static const char* arg correctly null terminated",
					foo.at(3) == 0,
					testAssertionCount,
					errorCount);
*/
	// TEST: random
	
	TTTestLog("\n");
	TTTestLog("Testing random symbol generation");
	
	TTSymbol r = TTSymbol("foo");
	
	TTTestAssertion("created from = with correct size",
					r.string().size() == 3,
					testAssertionCount,
					errorCount);
	TTTestAssertion("created from = with correct length",
					r.string().length() == 3,
					testAssertionCount,
					errorCount);
	TTTestAssertion("created from = with correct chars",
					r.string().at(0) == 'f' && r.string().at(1) == 'o' && r.string().at(2) == 'o',
					testAssertionCount,
					errorCount);
	TTTestAssertion("created from = correctly null terminated",
					r.string().at(3) == 0,
					testAssertionCount,
					errorCount);
					
	TTTestLog("\n");
	TTTestLog("Testing == operator for symbols");
	
	TTSymbol my_symbol_ref = TTSymbol("puppies");
	TTSymbol my_symbol_ref2 = TTSymbol("puppies");
	
	TTTestAssertion("two symbols created together are equivalent",
					my_symbol_ref == my_symbol_ref2,
					testAssertionCount,
					errorCount);
					
	my_symbol_ref2 = TTSymbol("sine");
	
	TTTestAssertion("symbol matching item in global symbol table is equivalent",
					kTTSym_sine == my_symbol_ref2,
					testAssertionCount,
					errorCount);
	
}


// TODO: Benchmarking


TTErr TTSymbolTest::test(TTValue& returnedTestInfo)
{
	int	errorCount = 0;
	int testAssertionCount = 0;
	
	TTSymbolTestBasic(errorCount, testAssertionCount);
	
	return TTTestFinish(testAssertionCount, errorCount, returnedTestInfo);
}
