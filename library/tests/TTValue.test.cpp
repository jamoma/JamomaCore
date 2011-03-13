/* 
 * Unit tests for the TTValue object
 * Copyright © 2011, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTValue.test.h"

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
	
	TTTestLog("Prepending a TTValue with one symbol to TTValue");	
	v1.prepend(TTValue(kTTSym_value));
	
	TTTestAssertion("TTValue correctly updated element count to 3", 
					v1.getSize() == 3,
					testAssertionCount,
					errorCount);
	
	TTTestAssertion("first item should be typed as kTypeSymbol", 
					v1.getType(0) == kTypeSymbol, 
					testAssertionCount,
					errorCount);
	
	v1.get(0, &s);
	TTTestAssertion("first item should be \"value\" symbol", 
					s == kTTSym_value,
					testAssertionCount,
					errorCount);
	
	TTTestAssertion("second item still is correctly typed as kTypeFloat64", 
					v1.getType(1) == kTypeFloat64, 
					testAssertionCount,
					errorCount);
	
	TTTestAssertion("third item has correct type",
					v1.getType(2) == kTypeSymbol,
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
	
	
	// TTFloat32
	
	TTValue v1;
	
	v1 = TTFloat32(3.14);
	v1.clip(6.0, 12.0);
	TTTestAssertion("positive TTFloat32 clipped (out of lower bound)",
					TTTestFloatEquivalence(TTFloat32(v1), TTFloat32(6.0)),
					testAssertionCount,
					errorCount);
	
	v1 = TTFloat32(3.14);
	v1.clip(0.0, 4.0);
	TTTestAssertion("positive TTFloat32 not clipped (within range)",
					TTTestFloatEquivalence(TTFloat32(v1), TTFloat32(3.14)),
					testAssertionCount,
					errorCount);
	
	v1 = TTFloat32(3.14);
	v1.clip(0.0, 2.0);
	TTTestAssertion("positive TTFloat32 clipped (out of upper bound)",
					TTTestFloatEquivalence(TTFloat32(v1), TTFloat32(2.0)),
					testAssertionCount,
					errorCount);
	
	v1 = TTFloat32(-3.14);
	v1.clip(-2.0, 0.0);
	TTTestAssertion("negative TTFloat32 clipped (out of lower bound)",
					TTTestFloatEquivalence(TTFloat32(v1), TTFloat32(-2.0)),
					testAssertionCount,
					errorCount);
	
	v1 = TTFloat32(-3.14);
	v1.clip(-4.0, 0.0);
	TTTestAssertion("negative TTFloat32 not clipped (within range)",
					TTTestFloatEquivalence(TTFloat32(v1), TTFloat32(-3.14)),
					testAssertionCount,
					errorCount);
	
	v1 = TTFloat32(-3.14);
	v1.clip(-8.0, -4.0);
	TTTestAssertion("negative TTFloat32 clipped (out of upper bound)",
					TTTestFloatEquivalence(TTFloat32(v1), TTFloat32(-4.0)),
					testAssertionCount,
					errorCount);
	
	
	
	// TTFloat64
	
	v1 = TTFloat64(3.14);
	v1.clip(6.0, 12.0);
	TTTestAssertion("positive TTFloat64 clipped (out of lower bound)",
					TTTestFloatEquivalence(double(v1), 6.0),
					testAssertionCount,
					errorCount);

	v1 = TTFloat64(3.14);
	v1.clip(0.0, 4.0);
	TTTestAssertion("positive TTFloat64 not clipped (within range)",
					TTTestFloatEquivalence(double(v1), 3.14),
					testAssertionCount,
					errorCount);
	
	v1 = TTFloat64(3.14);
	v1.clip(0.0, 2.0);
	TTTestAssertion("positive TTFloat64 clipped (out of upper bound)",
					TTTestFloatEquivalence(double(v1), 2.0),
					testAssertionCount,
					errorCount);
	
	v1 = TTFloat64(-3.14);
	v1.clip(-2.0, 0.0);
	TTTestAssertion("negative TTFloat64 clipped (out of lower bound)",
					TTTestFloatEquivalence(double(v1), -2.0),
					testAssertionCount,
					errorCount);
	
	v1 = TTFloat64(-3.14);
	v1.clip(-4.0, 0.0);
	TTTestAssertion("negative TTFloat64 not clipped (within range)",
					TTTestFloatEquivalence(double(v1), -3.14),
					testAssertionCount,
					errorCount);
	
	v1 = TTFloat64(-3.14);
	v1.clip(-8.0, -4.0);
	TTTestAssertion("negative TTFloat64 clipped (out of upper bound)",
					TTTestFloatEquivalence(double(v1), -4.0),
					testAssertionCount,
					errorCount);

	
	
	// TTInt8
	
	v1 = TTInt8(3);
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
	TTTestAssertion("positive TTInt8 clipped (out of upper bound)",
					TTInt8(v1) == 2,
					testAssertionCount,
					errorCount);
	
	v1 = TTInt8(-3);
	v1.clip(-2, 0);
	TTTestAssertion("negative TTInt8 clipped (out of lower bound)",
					TTInt8(v1) == -2,
					testAssertionCount,
					errorCount);
	
	v1 = TTInt8(-3);
	v1.clip(-4, 0);
	TTTestAssertion("negative TTInt8 not clipped (within range)",
					TTInt8(v1) == -3,
					testAssertionCount,
					errorCount);
	
	v1 = TTInt8(-3);
	v1.clip(-8, -4);
	TTTestAssertion("negative TTInt8 clipped (out of upper bound)",
					TTInt8(v1) == -4,
					testAssertionCount,
					errorCount);
	
	
	
	// TTUInt8
	
	v1 = TTUInt8(3);
	v1.clip(6, 12);
	TTTestAssertion("positive TTUInt8 clipped (out of lower bound)",
					TTUInt8(v1) == 6,
					testAssertionCount,
					errorCount);
	
	v1 = TTUInt8(3);
	v1.clip(0, 4);
	TTTestAssertion("positive TTUInt8 not clipped (within range)",
					TTUInt8(v1) == 3,
					testAssertionCount,
					errorCount);
	
	v1 = TTUInt8(3);
	v1.clip(0, 2);
	TTTestAssertion("positive TTUInt8 clipped (out of upper bound)",
					TTUInt8(v1) == 2,
					testAssertionCount,
					errorCount);
	
	
	
	// TTInt16
	
	v1 = TTInt16(3);
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
	TTTestAssertion("positive TTInt16 clipped (out of upper bound)",
					TTInt16(v1) == 2,
					testAssertionCount,
					errorCount);
	
	v1 = TTInt16(-3);
	v1.clip(-2, 0);
	TTTestAssertion("negative TTInt16 clipped (out of lower bound)",
					TTInt16(v1) == -2,
					testAssertionCount,
					errorCount);
	
	v1 = TTInt16(-3);
	v1.clip(-4, 0);
	TTTestAssertion("negative TTInt16 not clipped (within range)",
					TTInt16(v1) == -3,
					testAssertionCount,
					errorCount);
	
	v1 = TTInt16(-3);
	v1.clip(-8, -4);
	TTTestAssertion("negative TTInt16 clipped (out of upper bound)",
					TTInt16(v1) == -4,
					testAssertionCount,
					errorCount);
	
	
	
	// TTUInt16
	
	v1 = TTUInt16(3);
	v1.clip(6, 12);
	TTTestAssertion("positive TTUInt16 clipped (out of lower bound)",
					TTUInt16(v1) == 6,
					testAssertionCount,
					errorCount);
	
	v1 = TTUInt16(3);
	v1.clip(0, 4);
	TTTestAssertion("positive TTUInt16 not clipped (within range)",
					TTUInt16(v1) == 3,
					testAssertionCount,
					errorCount);
	
	v1 = TTUInt16(3);
	v1.clip(0, 2);
	TTTestAssertion("positive TTUInt16 clipped (out of upper bound)",
					TTUInt16(v1) == 2,
					testAssertionCount,
					errorCount);

	
	
	// TTInt32
	
	v1 = TTInt32(3);
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
	TTTestAssertion("positive TTInt32 clipped (out of upper bound)",
					TTInt32(v1) == 2,
					testAssertionCount,
					errorCount);
	
	v1 = TTInt32(-3);
	v1.clip(-2, 0);
	TTTestAssertion("negative TTInt32 clipped (out of lower bound)",
					TTInt32(v1) == -2,
					testAssertionCount,
					errorCount);
	
	v1 = TTInt32(-3);
	v1.clip(-4, 0);
	TTTestAssertion("negative TTInt32 not clipped (within range)",
					TTInt32(v1) == -3,
					testAssertionCount,
					errorCount);
	
	v1 = TTInt32(-3);
	v1.clip(-8, -4);
	TTTestAssertion("negative TTInt32 clipped (out of upper bound)",
					TTInt32(v1) == -4,
					testAssertionCount,
					errorCount);

	
	
	// TTUInt32
	
	v1 = TTUInt32(3);
	v1.clip(6, 12);
	TTTestAssertion("positive TTUInt32 clipped (out of lower bound)",
					TTUInt32(v1) == 6,
					testAssertionCount,
					errorCount);
	
	v1 = TTUInt32(3);
	v1.clip(0, 4);
	TTTestAssertion("positive TTUInt32 not clipped (within range)",
					TTUInt32(v1) == 3,
					testAssertionCount,
					errorCount);
	
	v1 = TTUInt32(3);
	v1.clip(0, 2);
	TTTestAssertion("positive TTUInt32 clipped (out of upper bound)",
					TTUInt32(v1) == 2,
					testAssertionCount,
					errorCount);
	
	
	
	// TTInt64
	
	v1 = TTInt64(3);
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
	TTTestAssertion("positive TTInt64 clipped (out of upper bound)",
					TTInt64(v1) == 2,
					testAssertionCount,
					errorCount);
	
	v1 = TTInt64(-3);
	v1.clip(-2, 0);
	TTTestAssertion("negative TTInt64 clipped (out of lower bound)",
					TTInt64(v1) == -2,
					testAssertionCount,
					errorCount);
	
	v1 = TTInt64(-3);
	v1.clip(-4, 0);
	TTTestAssertion("negative TTInt64 not clipped (within range)",
					TTInt64(v1) == -3,
					testAssertionCount,
					errorCount);
	
	v1 = TTInt64(-3);
	v1.clip(-8, -4);
	TTTestAssertion("negative TTInt64 clipped (out of upper bound)",
					TTInt64(v1) == -4,
					testAssertionCount,
					errorCount);
	
	
	
	// TTUInt64

	v1 = TTUInt64(3);
	v1.clip(6, 12);
	TTTestAssertion("positive TTUInt64 clipped (out of lower bound)",
					TTUInt64(v1) == 6,
					testAssertionCount,
					errorCount);
	
	v1 = TTUInt64(3);
	v1.clip(0, 4);
	TTTestAssertion("positive TTUInt64 not clipped (within range)",
					TTUInt64(v1) == 3,
					testAssertionCount,
					errorCount);
	
	v1 = TTUInt64(3);
	v1.clip(0, 2);
	TTTestAssertion("positive TTUInt64 clipped (out of upper bound)",
					TTUInt64(v1) == 2,
					testAssertionCount,
					errorCount);
	
	// And a final test on an array
	TTValue v2;
	v2.setSize(6);
	v2.set(0, 2.5);
	v2.set(1, 2);
	v2.set(2, 3.14);
	v2.set(3, 4);
	v2.set(4, 6.28);
	v2.set(5, 6);
	
	v2.clip(3.0, 5.0);
	
	TTFloat64 aFloat;
	TTInt32 anInt;

	v2.get(0, aFloat);
	TTTestAssertion("array double clipped (out of lower bound)",
					TTTestFloatEquivalence(aFloat, 3.0),
					testAssertionCount,
					errorCount);
	
	v2.get(1, anInt);
	TTTestAssertion("array integer clipped (out of lower bound)",
					anInt == 3,
					testAssertionCount,
					errorCount);
	
	v2.get(2, aFloat);
	TTTestAssertion("array double not clipped (within range)",
					TTTestFloatEquivalence(aFloat, 3.14),
					testAssertionCount,
					errorCount);
	
	v2.get(3, anInt);
	TTTestAssertion("array integer not clipped (within range)",
					anInt == 4,
					testAssertionCount,
					errorCount);

	v2.get(4, aFloat);
	TTTestAssertion("array double clipped (out of upper bound)",
					TTTestFloatEquivalence(aFloat, 5.0),
					testAssertionCount,
					errorCount);
	
	v2.get(5, anInt);
	TTTestAssertion("array integer clipped (out of upper bound)",
					anInt == 5,
					testAssertionCount,
					errorCount);
	
	
	/****************************************************************************************************/
	TTTestLog("\n");
	TTTestLog("Testing cliplow()");
	/****************************************************************************************************/
	
	
	// TTFloat64
	
	v1 = TTFloat64(3.14);
	v1.cliplow(6.0);
	TTTestAssertion("positive double clipped at lower limit (out of lower bound)",
					TTTestFloatEquivalence(double(v1), 6.0),
					testAssertionCount,
					errorCount);
	
	v1 = 3.14;
	v1.cliplow(0.0);
	TTTestAssertion("positive double not clipped at lower limit (within range)",
					TTTestFloatEquivalence(double(v1), 3.14),
					testAssertionCount,
					errorCount);
	
	v1 = -3.14;
	v1.cliplow(-2.0);
	TTTestAssertion("negative double clipped at lower limit (out of lower bound)",
					TTTestFloatEquivalence(double(v1), -2.0),
					testAssertionCount,
					errorCount);
	
	v1 = -3.14;
	v1.cliplow(-4.0);
	TTTestAssertion("negative double not clipped at lower limit (within range)",
					TTTestFloatEquivalence(double(v1), -3.14),
					testAssertionCount,
					errorCount);
	
	
	
	// TTInt8
	
	v1 = TTInt8(3);
	v1.cliplow(6);
	TTTestAssertion("positive TTInt8 clipped at lower limit (out of lower bound)",
					TTInt8(v1) == 6,
					testAssertionCount,
					errorCount);
	
	v1 = TTInt8(3);
	v1.cliplow(0);
	TTTestAssertion("positive TTInt8 not clipped at lower limit (within range)",
					TTInt8(v1) == 3,
					testAssertionCount,
					errorCount);
	
	v1 = TTInt8(-3);
	v1.cliplow(-2);
	// TTFloat64 myFloat = v1.get;
	TTTestAssertion("negative TTInt8 clipped at lower limit (out of lower bound)",
					TTInt8(v1) == -2,
					testAssertionCount,
					errorCount);
	
	v1 = TTInt8(-3);
	v1.cliplow(-4);
	// TTFloat64 myFloat = v1.get;
	TTTestAssertion("negative TTInt8 not clipped at lower limit (within range)",
					TTInt8(v1) == -3,
					testAssertionCount,
					errorCount);
	
	
	
	// TTUInt8

	v1 = TTUInt8(3);
	v1.cliplow(6);
	TTTestAssertion("positive TTUInt8 clipped at lower limit (out of lower bound)",
					TTUInt8(v1) == 6,
					testAssertionCount,
					errorCount);
	
	v1 = TTUInt8(3);
	v1.cliplow(0);
	TTTestAssertion("positive TTUInt8 not clipped at lower limit (within range)",
					TTUInt8(v1) == 3,
					testAssertionCount,
					errorCount);
	
	
	
	// TTInt16

	v1 = TTInt16(3);
	v1.cliplow(6);
	TTTestAssertion("positive TTInt16 clipped at lower limit (out of lower bound)",
					TTInt16(v1) == 6,
					testAssertionCount,
					errorCount);
	
	v1 = TTInt16(3);
	v1.cliplow(0);
	TTTestAssertion("positive TTInt16 not clipped at lower limit (within range)",
					TTInt16(v1) == 3,
					testAssertionCount,
					errorCount);
	
	v1 = TTInt16(-3);
	v1.cliplow(-2);
	// TTFloat64 myFloat = v1.get;
	TTTestAssertion("negative TTInt16 clipped at lower limit (out of lower bound)",
					TTInt16(v1) == -2,
					testAssertionCount,
					errorCount);
	
	v1 = TTInt16(-3);
	v1.cliplow(-4);
	// TTFloat64 myFloat = v1.get;
	TTTestAssertion("negative TTInt16 not clipped at lower limit (within range)",
					TTInt16(v1) == -3,
					testAssertionCount,
					errorCount);
	
	
	
	// TTUInt16
	
	v1 = TTUInt16(3);
	v1.cliplow(6);
	TTTestAssertion("positive TTUInt16 clipped at lower limit (out of lower bound)",
					TTUInt16(v1) == 6,
					testAssertionCount,
					errorCount);
	
	v1 = TTUInt16(3);
	v1.cliplow(0);
	TTTestAssertion("positive TTUInt16 not clipped at lower limit (within range)",
					TTUInt16(v1) == 3,
					testAssertionCount,
					errorCount);
	
	
	
	// TTInt32
	
	v1 = TTInt32(3);
	v1.cliplow(6);
	TTTestAssertion("positive TTInt32 clipped at lower limit (out of lower bound)",
					TTInt32(v1) == 6,
					testAssertionCount,
					errorCount);
	
	v1 = TTInt32(3);
	v1.cliplow(0);
	TTTestAssertion("positive TTInt32 not clipped at lower limit (within range)",
					TTInt32(v1) == 3,
					testAssertionCount,
					errorCount);
	
	v1 = TTInt32(-3);
	v1.cliplow(-2);
	// TTFloat64 myFloat = v1.get;
	TTTestAssertion("negative TTInt32 clipped at lower limit (out of lower bound)",
					TTInt32(v1) == -2,
					testAssertionCount,
					errorCount);
	
	v1 = TTInt32(-3);
	v1.cliplow(-4);
	// TTFloat64 myFloat = v1.get;
	TTTestAssertion("negative TTInt32 not clipped at lower limit (within range)",
					TTInt32(v1) == -3,
					testAssertionCount,
					errorCount);
	
	
	
	// TTUInt32
	
	v1 = TTUInt32(3);
	v1.cliplow(6);
	TTTestAssertion("positive TTUInt32 clipped at lower limit (out of lower bound)",
					TTUInt32(v1) == 6,
					testAssertionCount,
					errorCount);
	
	v1 = TTUInt32(3);
	v1.cliplow(0);
	TTTestAssertion("positive TTUInt32 not clipped at lower limit (within range)",
					TTUInt32(v1) == 3,
					testAssertionCount,
					errorCount);
	
	
	
	// TTInt64
	
	v1 = TTInt64(3);
	v1.cliplow(6);
	TTTestAssertion("positive TTInt64 clipped at lower limit (out of lower bound)",
					TTInt64(v1) == 6,
					testAssertionCount,
					errorCount);
	
	v1 = TTInt64(3);
	v1.cliplow(0);
	TTTestAssertion("positive TTInt64 not clipped at lower limit (within range)",
					TTInt64(v1) == 3,
					testAssertionCount,
					errorCount);
	
	v1 = TTInt64(-3);
	v1.cliplow(-2);
	// TTFloat64 myFloat = v1.get;
	TTTestAssertion("negative TTInt64 clipped at lower limit (out of lower bound)",
					TTInt64(v1) == -2,
					testAssertionCount,
					errorCount);
	
	v1 = TTInt64(-3);
	v1.cliplow(-4);
	// TTFloat64 myFloat = v1.get;
	TTTestAssertion("negative TTInt64 not clipped at lower limit (within range)",
					TTInt64(v1) == -3,
					testAssertionCount,
					errorCount);
	
	
	
	// TTUInt64
	
	v1 = TTUInt64(3);
	v1.cliplow(6);
	TTTestAssertion("positive TTUInt64 clipped at lower limit (out of lower bound)",
					TTUInt64(v1) == 6,
					testAssertionCount,
					errorCount);
	
	v1 = TTUInt64(3);
	v1.cliplow(0);
	TTTestAssertion("positive TTUInt64 not clipped at lower limit (within range)",
					TTUInt64(v1) == 3,
					testAssertionCount,
					errorCount);
	
	// And a final test on an array
	v2.setSize(4);
	v2.set(0, 2.5);
	v2.set(1, 2);
	v2.set(2, 3.14);
	v2.set(3, 4);
	
	v2.cliplow(3.0);
	
	v2.get(0, aFloat);
	TTTestAssertion("array double clipped at lower limit (out of lower bound)",
					TTTestFloatEquivalence(aFloat, 3.0),
					testAssertionCount,
					errorCount);
	
	v2.get(1, anInt);
	TTTestAssertion("array integer clipped at lower limit (out of lower bound)",
					anInt == 3,
					testAssertionCount,
					errorCount);
	
	v2.get(2, aFloat);
	TTTestAssertion("array double not clipped at lower limit (within range)",
					TTTestFloatEquivalence(aFloat, 3.14),
					testAssertionCount,
					errorCount);
	
	v2.get(3, anInt);
	TTTestAssertion("array integer not clipped at lower limit (within range)",
					anInt == 4,
					testAssertionCount,
					errorCount);
	
	
	
	// TODO: test cliphigh()
	/****************************************************************************************************/
	// TTTestLog("\n");
	// TTTestLog("Testing cliphigh()");
	/****************************************************************************************************/
	
	
	// TODO: test round()
	/****************************************************************************************************/
	// TTTestLog("\n");
	// TTTestLog("Testing round()");
	/****************************************************************************************************/
	
	
	// TODO: test truncate()
	/****************************************************************************************************/
	// TTTestLog("\n");
	// TTTestLog("Testing truncate()");
	/****************************************************************************************************/
	
	
	// TODO: test booleanize()
	/****************************************************************************************************/
	// TTTestLog("\n");
	// TTTestLog("Testing booleanize()");
	/****************************************************************************************************/
	
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
