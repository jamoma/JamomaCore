/* 
 * Unit tests for the TTValue object
 * Copyright © 2011, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTValueTest.h"

#define thisTTClass			TTValueTest
#define thisTTClassName		"value.test"
#define thisTTClassTags		"test, foundation"


TT_OBJECT_CONSTRUCTOR
{;}

TTValueTest::~TTValueTest()
{;}


void TTValueTestBasic(int& errorCount, int&testAssertionCount)
{
	TTTestLog("\n");
	TTTestLog("Testing basic TTValue operation");

	
	TTValue v1(3.14);

	TTTestAssertion("init with a double is correctly typed as kTypeFloat64", 
					v1.getType(0) == kTypeFloat64, 
					testAssertionCount,
					errorCount);
	
	TTTestAssertion("init with a double has correct element count", 
					v1.getSize() == 1,
					testAssertionCount,
					errorCount);	
	
	TTTestAssertion("init with a double has correct value when retrieved as a double", 
					TTTestFloatEquivalence(double(v1), 3.14), 
					testAssertionCount,
					errorCount);
	
	TTTestAssertion("init with a double has correct value when retrieved as an TTInt32",
					TTInt32(v1) == 3, 
					testAssertionCount,
					errorCount);
	
	TTTestLog("Appending a symbol to TTValue");	
	v1.append(TT("foo"));

	TTTestAssertion("TTValue correctly updated element count to 2", 
					v1.getSize() == 2,
					testAssertionCount,
					errorCount);	
	
	TTTestAssertion("first item still is correctly typed as kTypeFloat64", 
					v1.getType(0) == kTypeFloat64, 
					testAssertionCount,
					errorCount);
	
	TTTestAssertion("first item still has correct value when retrieved as a double", 
					TTTestFloatEquivalence(double(v1), 3.14), 
					testAssertionCount,
					errorCount);
	
	TTTestAssertion("second item has correct type",
					v1.getType(1) == kTypeSymbol,
					testAssertionCount,
					errorCount);
	
	// TODO: want to implement this:
	// TTSymbolPtr s = v1[1];
	TTSymbolPtr s = NULL;
	v1.get(1, &s);
	TTTestAssertion("second item has correct value, retreiving with get() method",
					s == TT("foo"),
					testAssertionCount,
					errorCount);
	
	TTTestLog("Clearing TTValue");	
	v1.clear();
	
	TTTestAssertion("element count is zero",
					v1.getSize() == 0,
					testAssertionCount,
					errorCount);
	
	TTTestAssertion("type of TTValue which is returned is kTypeNone",
					v1.getType() == kTypeNone,
					testAssertionCount,
					errorCount);
	
	
}


void TTValueTestStringConversion(int& errorCount, int&testAssertionCount)
{
	TTTestLog("\n");
	TTTestLog("Testing TTValue string conversion methods");
	
	// TODO: test toString()
	// TODO: test fromString()
	// TODO: test transformCSVStringToSymbolArray()
	
	TTValue v1(3.14);
}	



void TTValueTestNumericTransformations(int& errorCount, int&testAssertionCount)
{
	TTTestLog("\n");
	TTTestLog("Testing TTValue numeric transformations");
	
	
	/****************************************************************************************************/
	TTTestLog("\n");
	TTTestLog("Testing clip()");
	/****************************************************************************************************/
	
	
	// TTFloat64
	
	TTValue v1(3.14);
	
	v1.clip(6.0, 12.0);
	TTTestAssertion("positive double clipped (out of lower bound)",
					TTTestFloatEquivalence(double(v1), 6.0),
					testAssertionCount,
					errorCount);

	v1 = 3.14;
	v1.clip(0.0, 4.0);
	TTTestAssertion("positive double not clipped (within range)",
					TTTestFloatEquivalence(double(v1), 3.14),
					testAssertionCount,
					errorCount);
	
	v1 = 3.14;
	v1.clip(0.0, 2.0);
	TTTestAssertion("positive double clipped (out of upper bound)",
					TTTestFloatEquivalence(double(v1), 2.0),
					testAssertionCount,
					errorCount);
	
	v1 = -3.14;
	v1.clip(-2.0, 0.0);
	TTTestAssertion("negative double clipped (out of lower bound)",
					TTTestFloatEquivalence(double(v1), -2.0),
					testAssertionCount,
					errorCount);
	
	v1 = -3.14;
	v1.clip(-4.0, 0.0);
	TTTestAssertion("negative double not clipped (within range)",
					TTTestFloatEquivalence(double(v1), -3.14),
					testAssertionCount,
					errorCount);
	
	v1 = -3.14;
	v1.clip(-8.0, -4.0);
	TTTestAssertion("negative double clipped (out of upper bound)",
					TTTestFloatEquivalence(double(v1), -4.0),
					testAssertionCount,
					errorCount);

	
	
	// TTInt8
	
	v1.clip(6, 12);
	TTTestAssertion("positive TTInt8 clipped (out of lower bound)",
					TTInt8(v1) == 6,
					testAssertionCount,
					errorCount);
	
	v1 = TTInt8(3);
	v1.clip(0, 4);
	TTTestAssertion("positive TTInt8 not clipped (within range)",
					TTInt8(v1) == 3,
					testAssertionCount,
					errorCount);
	
	v1 = TTInt8(3);
	v1.clip(0, 2);
	// TTFloat64 myFloat = v1.get;
	TTTestAssertion("positive TTInt8 clipped (out of upper bound)",
					TTInt8(v1) == 2,
					testAssertionCount,
					errorCount);
	
	v1 = TTInt8(-3);
	v1.clip(-2, 0);
	// TTFloat64 myFloat = v1.get;
	TTTestAssertion("negative TTInt8 clipped (out of lower bound)",
					TTInt8(v1) == -2,
					testAssertionCount,
					errorCount);
	
	v1 = TTInt8(-3);
	v1.clip(-4, 0);
	// TTFloat64 myFloat = v1.get;
	TTTestAssertion("negative TTInt8 not clipped (within range)",
					TTInt8(v1) == -3,
					testAssertionCount,
					errorCount);
	
	v1 = TTInt8(-3);
	v1.clip(-8, -4);
	// TTFloat64 myFloat = v1.get;
	TTTestAssertion("negative TTInt8 clipped (out of upper bound)",
					TTInt8(v1) == -4,
					testAssertionCount,
					errorCount);
	
	
	
	// TTInt16
	
	v1.clip(6, 12);
	TTTestAssertion("positive TTInt16 clipped (out of lower bound)",
					TTInt16(v1) == 6,
					testAssertionCount,
					errorCount);
	
	v1 = TTInt16(3);
	v1.clip(0, 4);
	TTTestAssertion("positive TTInt16 not clipped (within range)",
					TTInt16(v1) == 3,
					testAssertionCount,
					errorCount);
	
	v1 = TTInt16(3);
	v1.clip(0, 2);
	// TTFloat64 myFloat = v1.get;
	TTTestAssertion("positive TTInt16 clipped (out of upper bound)",
					TTInt16(v1) == 2,
					testAssertionCount,
					errorCount);
	
	v1 = TTInt16(-3);
	v1.clip(-2, 0);
	// TTFloat64 myFloat = v1.get;
	TTTestAssertion("negative TTInt16 clipped (out of lower bound)",
					TTInt16(v1) == -2,
					testAssertionCount,
					errorCount);
	
	v1 = TTInt16(-3);
	v1.clip(-4, 0);
	// TTFloat64 myFloat = v1.get;
	TTTestAssertion("negative TTInt16 not clipped (within range)",
					TTInt16(v1) == -3,
					testAssertionCount,
					errorCount);
	
	v1 = TTInt16(-3);
	v1.clip(-8, -4);
	// TTFloat64 myFloat = v1.get;
	TTTestAssertion("negative TTInt16 clipped (out of upper bound)",
					TTInt16(v1) == -4,
					testAssertionCount,
					errorCount);
	
	
	
	// TTInt32
	
	v1.clip(6, 12);
	TTTestAssertion("positive TTInt32 clipped (out of lower bound)",
					TTInt32(v1) == 6,
					testAssertionCount,
					errorCount);
	
	v1 = TTInt32(3);
	v1.clip(0, 4);
	TTTestAssertion("positive TTInt32 not clipped (within range)",
					TTInt32(v1) == 3,
					testAssertionCount,
					errorCount);
	
	v1 = TTInt32(3);
	v1.clip(0, 2);
	// TTFloat64 myFloat = v1.get;
	TTTestAssertion("positive TTInt32 clipped (out of upper bound)",
					TTInt32(v1) == 2,
					testAssertionCount,
					errorCount);
	
	v1 = TTInt32(-3);
	v1.clip(-2, 0);
	// TTFloat64 myFloat = v1.get;
	TTTestAssertion("negative TTInt32 clipped (out of lower bound)",
					TTInt32(v1) == -2,
					testAssertionCount,
					errorCount);
	
	v1 = TTInt32(-3);
	v1.clip(-4, 0);
	// TTFloat64 myFloat = v1.get;
	TTTestAssertion("negative TTInt32 not clipped (within range)",
					TTInt32(v1) == -3,
					testAssertionCount,
					errorCount);
	
	v1 = TTInt32(-3);
	v1.clip(-8, -4);
	// TTFloat64 myFloat = v1.get;
	TTTestAssertion("negative TTInt32 clipped (out of upper bound)",
					TTInt32(v1) == -4,
					testAssertionCount,
					errorCount);

	
	
	// TTInt64
	
	v1.clip(6, 12);
	TTTestAssertion("positive TTInt64 clipped (out of lower bound)",
					TTInt64(v1) == 6,
					testAssertionCount,
					errorCount);
	
	v1 = TTInt64(3);
	v1.clip(0, 4);
	TTTestAssertion("positive TTInt64 not clipped (within range)",
					TTInt64(v1) == 3,
					testAssertionCount,
					errorCount);
	
	v1 = TTInt64(3);
	v1.clip(0, 2);
	// TTFloat64 myFloat = v1.get;
	TTTestAssertion("positive TTInt64 clipped (out of upper bound)",
					TTInt64(v1) == 2,
					testAssertionCount,
					errorCount);
	
	v1 = TTInt64(-3);
	v1.clip(-2, 0);
	// TTFloat64 myFloat = v1.get;
	TTTestAssertion("negative TTInt64 clipped (out of lower bound)",
					TTInt64(v1) == -2,
					testAssertionCount,
					errorCount);
	
	v1 = TTInt64(-3);
	v1.clip(-4, 0);
	// TTFloat64 myFloat = v1.get;
	TTTestAssertion("negative TTInt64 not clipped (within range)",
					TTInt64(v1) == -3,
					testAssertionCount,
					errorCount);
	
	v1 = TTInt64(-3);
	v1.clip(-8, -4);
	// TTFloat64 myFloat = v1.get;
	TTTestAssertion("negative TTInt64 clipped (out of upper bound)",
					TTInt64(v1) == -4,
					testAssertionCount,
					errorCount);
	
	// TODO: test cliplow()
	// TODO: test cliphigh()
	// TODO: test round()
	// TODO: test truncate()
	// TODO: test booleanize()
	
	//TTValue v1(3.14);
}	


void TTValueTestOperators(int& errorCount, int&testAssertionCount)
{
	TTTestLog("\n");
	TTTestLog("Testing TTValue operators");
	
	// TODO: test >
	// TODO: test ==
	// TODO: test =
	// TODO: test casting
	// TODO: should + be concatenating elements to create a new value of a+b element count?
	
	TTValue v1(3.14);
}	


// TODO: Benchmarking


TTErr TTValueTest::test(TTValue& returnedTestInfo)
{
	int	errorCount = 0;
	int testAssertionCount = 0;
		
	TTValueTestBasic(errorCount, testAssertionCount);
	TTValueTestStringConversion(errorCount, testAssertionCount);
	TTValueTestNumericTransformations(errorCount, testAssertionCount);
	TTValueTestOperators(errorCount, testAssertionCount);
	
	return TTTestFinish(testAssertionCount, errorCount, returnedTestInfo);
}
