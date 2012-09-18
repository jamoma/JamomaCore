/* 
 * Unit tests for the TTValue object
 * Copyright © 2011, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTString.test.h"

#define thisTTClass			TTStringTest
#define thisTTClassName		"string.test"
#define thisTTClassTags		"test, foundation"


TT_OBJECT_CONSTRUCTOR
{;}


TTStringTest::~TTStringTest()
{;}


void TTStringTestBasic(int& errorCount, int&testAssertionCount)
{	
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
	
	// TEST: = init
	
	TTTestLog("\n");
	TTTestLog("Testing = assigment");
	
	TTString jet;
	jet = "jet";
	
	TTTestAssertion("created from = with correct size",
					jet.size() == 3,
					testAssertionCount,
					errorCount);
	TTTestAssertion("created from = with correct length",
					jet.length() == 3,
					testAssertionCount,
					errorCount);
	TTTestAssertion("created from = with correct chars",
					jet.at(0) == 'j' && jet.at(1) == 'e' && jet.at(2) == 't',
					testAssertionCount,
					errorCount);
	TTTestAssertion("created from = correctly null terminated",
					jet.at(3) == 0,
					testAssertionCount,
					errorCount);


	// TEST: individual char access
	
	TTTestLog("\n");
	TTTestLog("Testing [] assigment");
	
	foo[0] = 'g';
	foo[2] = foo[2] + 1;
	TTTestAssertion("modified some chars using [] notation",
					foo.at(0) == 'g' && foo.at(1) == 'o' && foo.at(2) == 'p',
					testAssertionCount,
					errorCount);
	
	
	// TEST: comparison (depends on the result from above)
	
	TTTestLog("\n");
	TTTestLog("Testing == operator");
		
	TTString gop("gop");
	TTString bar("bar");
	
	TTTestAssertion("== operator when strings have the same content",
					foo == gop,
					testAssertionCount,
					errorCount);
	TTTestAssertion("== operator when strings have different content",
					!(foo == bar),
					testAssertionCount,
					errorCount);
		
	TTTestAssertion("!= operator when strings have the same content",
					!(foo != gop),
					testAssertionCount,
					errorCount);
	TTTestAssertion("!= operator when strings have different content",
					(foo != bar),
					testAssertionCount,
					errorCount);
	
}


void TTStringTestNumeric(int& errorCount, int&testAssertionCount)
{
	TTTestLog("\n");
	TTTestLog("Testing substring operation");
	
	TTString series("0123456789");
	
	TTString sub = series.substr(3,3);
	
	TTTestAssertion("created from substr with correct size",
					sub.size() == 3,
					testAssertionCount,
					errorCount);
	TTTestAssertion("created from substr with correct length",
					sub.length() == 3,
					testAssertionCount,
					errorCount);
	TTTestAssertion("created from substr with correct chars",
					sub.at(0) == '3' && sub.at(1) == '4' && sub.at(2) == '5',
					testAssertionCount,
					errorCount);
	TTTestAssertion("created from substr correctly null terminated",
					sub.at(3) == 0,
					testAssertionCount,
					errorCount);
	
	TTTestLog("\n");
	TTTestLog("Testing summing operation");
	
	TTString sum;
	sum += "/";
	
	TTTestAssertion("created from += operator with correct size",
					sum.size() == 1,
					testAssertionCount,
					errorCount);
	TTTestAssertion("created from += operator with correct length",
					sum.length() == 1,
					testAssertionCount,
					errorCount);
	TTTestAssertion("created from += operator correctly null terminated",
					sum.at(1) == 0,
					testAssertionCount,
					errorCount);
	
	
	// TEST: appending numbers
	
	TTTestLog("\n");
	TTTestLog("Testing appending numbers");
	
	TTString a;
	TTString b("Pi is roughly 7/22");

	a += "Pi is roughly ";
	a += 7u;
	a += "/";
	a += 22;
	TTTestAssertion("string built-up with a couple of ints in it",
					a == b,
					testAssertionCount,
					errorCount);
	
	b = "Pi is roughly 3.140000";
	a = "Pi is roughly ";
	a += 3.14f;
	TTTestAssertion("string built-up with a float in it",
					a == b,
					testAssertionCount,
					errorCount);
	
	a = "Pi is roughly ";
	a += 3.14;
	TTTestAssertion("string built-up with a double in it",
					a == b,
					testAssertionCount,
					errorCount);

	
	TTTestLog("\n");
	TTTestLog("Testing + operator");
	
	TTString z("At the far end of town");
	TTString y("where the grickle grass grows");
	TTString x("and the wind smells sour as it blows");
	TTString w = z + " " + y + " " + x + "...";
	
	TTTestAssertion("string built-up with + operator",
					w == TTString("At the far end of town where the grickle grass grows and the wind smells sour as it blows..."),
					testAssertionCount,
					errorCount);
	
}


void TTStringTestStream(int& errorCount, int&testAssertionCount)
{
	TTTestLog("\n");
	TTTestLog("Testing string stream");
	TTTestLog("(there will be no assertions, look for stdout output)");
	
	TTString hi("Hello World!");
	
	cout << "	Passing TTString to stdout: " << hi << " (hooray)" << endl;
}


// TODO: Benchmarking


TTErr TTStringTest::test(TTValue& returnedTestInfo)
{
	int	errorCount = 0;
	int testAssertionCount = 0;
	
	TTStringTestBasic(errorCount, testAssertionCount);
	TTStringTestNumeric(errorCount, testAssertionCount);
	TTStringTestStream(errorCount, testAssertionCount);
	
	return TTTestFinish(testAssertionCount, errorCount, returnedTestInfo);
}
