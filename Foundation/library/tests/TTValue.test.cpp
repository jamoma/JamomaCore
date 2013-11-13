/** @file
 *
 * @ingroup foundationLibrary
 *
 * @brief #TTValueTest is an class used for unit tests of the #TTValue class.
 *
 * @details
 *
 * @authors Tim Place, Théo de la Hogue, Nathan Wolek, Julien Rabin, Nils Peters, Trond Lossius
 *
 * @copyright Copyright © 2011, Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
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


void TTValueTestFloatAssertion32(int& errorCount, int&testAssertionCount)
{
	TTTestLog("\n");
	TTTestLog("Testing TTTestFloatEquivalence method used to compare TTFloat32");
	
	TTFloat32 zero1 = 0.;
	TTFloat32 zero2 = 0.;
	
	// Create various special numbers
	
    TTFloat32 negativeZero;
    
	// Initialize negativeZero with its integer representation
    *(TTInt32*)&negativeZero = 0x80000000;
    
	// Create a NAN
    TTFloat32 nan1 = sqrt(-1.0f);
    
	// Create a NAN a different way - should give the same NAN on Intel chips.
    TTFloat32 nan2 = zero1 / zero2;
	
    // Create an infinity
    TTFloat32 inf = 1 / zero1;
    
	// Create a NAN a third way - should give the same NAN on Intel chips.
    TTFloat32 nan3 = inf - inf;

    // Copy one of the NANs and modify its representation.
    // This will still give a NAN, just a different one.
    TTFloat32 nan4 = nan3;
    (*(TTInt32*)&nan4) += 1;
	
    // Create a denormal by starting with zero and incrementing
    // the integer representation.
    TTFloat32 smallestDenormal = 0;
    (*(TTInt32*)&smallestDenormal) += 1;
	
	
	// The first set of tests check things that any self-respecting
    // comparison function should agree upon.
	

	// The following test is expected to fail, hence the !
	TTTestAssertion("TTFloat32: Test fails if epsilon is negative.",
					!TTTestFloatEquivalence(TTFloat32(3.14), TTFloat32(3.14), false, TTFloat32(-0.1)),
					testAssertionCount,
					errorCount);
	
	TTTestAssertion("TTFloat32: zero and negativeZero compare as equal.",
					TTTestFloatEquivalence(zero1, negativeZero),
					testAssertionCount,
					errorCount);
	
	TTTestAssertion("TTFloat32: Nearby numbers compare as equal.",
					TTTestFloatEquivalence(TTFloat32(2.0), TTFloat32(1.9999999f)),
					testAssertionCount,
					errorCount);
	
	TTTestAssertion("TTFloat32: Same test fails with smaller epsilon.",
					TTTestFloatEquivalence(TTFloat32(2.0), TTFloat32(1.9999999f), false, TTFloat32(0.0000000001)),
					testAssertionCount,
					errorCount);
	
	TTTestAssertion("TTFloat32: Slightly more distant numbers compare as equal.",
					TTTestFloatEquivalence(TTFloat32(2.0), TTFloat32(1.9999995f)),
					testAssertionCount,
					errorCount);
	
	TTTestAssertion("TTFloat32: The results are the same with parameters reversed.",
					TTTestFloatEquivalence(TTFloat32(1.9999995f), TTFloat32(2.0)),
					testAssertionCount,
					errorCount);
	
	TTTestAssertion("TTFloat32: Even more distant numbers don't compare as equal",
					TTTestFloatEquivalence(TTFloat32(1.8), TTFloat32(2.0), false),
					testAssertionCount,
					errorCount);

	TTTestAssertion("TTFloat32: But it pass if epsilon is upped",
					TTTestFloatEquivalence(TTFloat32(1.8), TTFloat32(2.0), true, TTFloat32(0.5)),
					testAssertionCount,
					errorCount);
	
	TTTestAssertion("TTFloat32: Nearby negative numbers compare as equal.",
					TTTestFloatEquivalence(TTFloat32(-2.0), TTFloat32(-1.9999999f)),
					testAssertionCount,
					errorCount);
	
	TTTestAssertion("TTFloat32: Slightly more distant negative numbers compare as equal.",
					TTTestFloatEquivalence(TTFloat32(-2.0), TTFloat32(-1.9999995f)),
					testAssertionCount,
					errorCount);
	
	TTTestAssertion("TTFloat32: The results are the same with parameters reversed.",
					TTTestFloatEquivalence(TTFloat32(-1.9999995f), TTFloat32(-2.0)),
					testAssertionCount,
					errorCount);
	
	TTTestAssertion("TTFloat32: Even more distant negative numbers don't compare as equal",
					TTTestFloatEquivalence(TTFloat32(-1.8), TTFloat32(-2.0), false),
					testAssertionCount,
					errorCount);
	
	TTTestAssertion("TTFloat32: Positive and negative numbers don't compare as equal",
					TTTestFloatEquivalence(TTFloat32(-2.0), TTFloat32(2.0), false),
					testAssertionCount,
					errorCount);
		
	// The next set of tests check things where the correct answer isn't
    // as obvious or important. Some of these tests check for cases that
    // are rare or can easily be avoided.
#ifdef RARE
	TTTestAssertion("TTFloat32: inf == inf.",
					TTTestFloatEquivalence(inf, inf),
					testAssertionCount,
					errorCount);
	
	TTTestAssertion("TTFloat32: -inf == -inf.",
					TTTestFloatEquivalence(-inf, -inf),
					testAssertionCount,
					errorCount);
	TTTestAssertion("TTFloat32: inf != -inf.",
					TTTestFloatEquivalence(inf, -inf, false),
					testAssertionCount,
					errorCount);
#endif

// FLT_MAX is not defined for the iOS
#ifndef TT_PLATFORM_IOS
	TTTestAssertion("TTFloat32: FLT_MAX != inf",
#ifdef TT_PLATFORM_WIN
					TTTestFloatEquivalence(FLT_MAX, inf, false),
#else
					TTTestFloatEquivalence(std::numeric_limits<float>::max(), inf, false),
#endif
					testAssertionCount,
					errorCount);
#endif
	TTTestAssertion("TTFloat32: 3.14 != inf",
					TTTestFloatEquivalence(TTFloat32(3.14), inf, false),
					testAssertionCount,
					errorCount);

	
	// The IEEE standard says that any comparison operation involving a NAN must return false.
	TTTestAssertion("TTFloat32: nan1==3.14 => false (according to IEEE standard)",
					TTTestFloatEquivalence(nan1, TTFloat32(3.14), false),
					testAssertionCount,
					errorCount);
	
	TTTestAssertion("TTFloat32: nan1==nan1 => false (according to IEEE standard).",
					TTTestFloatEquivalence(nan1, nan1, false),
					testAssertionCount,
					errorCount);
	
	TTTestAssertion("TTFloat32: nan2==nan2 => false (according to IEEE standard).",
					TTTestFloatEquivalence(nan2, nan2, false),
					testAssertionCount,
					errorCount);
	
	TTTestAssertion("TTFloat32: nan3==nan3 => false (according to IEEE standard).",
					TTTestFloatEquivalence(nan3, nan3, false),
					testAssertionCount,
					errorCount);
	
	TTTestAssertion("TTFloat32: nan4==nan4 => false (according to IEEE standard).",
					TTTestFloatEquivalence(nan4, nan4, false),
					testAssertionCount,
					errorCount);
	
	TTTestAssertion("TTFloat32: nan1==nan2 => false (according to IEEE standard).",
					TTTestFloatEquivalence(nan1, nan2, false),
					testAssertionCount,
					errorCount);
	
	TTTestAssertion("TTFloat32: nan1==nan3 => false (according to IEEE standard).",
					TTTestFloatEquivalence(nan1, nan3, false),
					testAssertionCount,
					errorCount);
	
	TTTestAssertion("TTFloat32: nan1==nan4 => false (according to IEEE standard).",
					TTTestFloatEquivalence(nan1, nan4, false),
					testAssertionCount,
					errorCount);
	
	TTTestAssertion("TTFloat32: nan1==inf => false (according to IEEE standard).",
					TTTestFloatEquivalence(nan1, inf, false),
					testAssertionCount,
					errorCount);

	// Tests for denormals
	TTTestAssertion("TTFloat32: Tiny numbers of opposite signs compare as equal.",
					TTTestFloatEquivalence(smallestDenormal, -smallestDenormal),
					testAssertionCount,
					errorCount);
	
	TTTestAssertion("TTFloat32: The results are the same with parameters reversed.",
					TTTestFloatEquivalence(-smallestDenormal, smallestDenormal),
					testAssertionCount,
					errorCount);
}

void TTValueTestFloatAssertion64(int& errorCount, int&testAssertionCount)
{
	TTTestLog("\n");
	TTTestLog("Testing TTTestFloatEquivalence method used to compare TTFloat64");
	
	TTFloat64 zero1 = 0.;
	TTFloat64 zero2 = 0.;
	
	// Create various special numbers
	
	// TTFloat64 negativeZero;
	
	// Initialize negativeZero with its integer representation
	// *(TTInt64*)&negativeZero = TTInt64(0x8000000000000000);
	
	// Create a NAN
	TTFloat64 nan1 = sqrt(-1.0f);
	
	// Create a NAN a different way - should give the same NAN on Intel chips.
	TTFloat64 nan2 = zero1 / zero2;
	
	// Create an infinity
	TTFloat64 inf = 1 / zero1;
	
	// Create a NAN a third way - should give the same NAN on Intel chips.
	TTFloat64 nan3 = inf - inf;
	
	// Copy one of the NANs and modify its representation.
	// This will still give a NAN, just a different one.
	TTFloat64 nan4 = nan3;
	(*(TTInt64*)&nan4) += 10;
	
	// Create a denormal by starting with zero and incrementing
	// the integer representation.
	TTFloat64 smallestDenormal = TTInt64(0);
	(*(TTInt64*)&smallestDenormal) += 1;
	
	// The first set of tests check things that any self-respecting
	// comparison function should agree upon.

	// The following test is expected to fail, hence the !
	TTTestAssertion("TTFloat64: Test fails if epsilon is negative.",
					!TTTestFloatEquivalence(TTFloat64(3.14), TTFloat64(3.14), false, TTFloat64(-0.0001)),
					testAssertionCount,
					errorCount);
	
	/* TL: It doesn't seem possible to create negatie zeros for doubles, so test is commented out.
	TTTestAssertion("TTFloat64: zero and negativeZero compare as equal.",
					TTTestFloatEquivalence(zero1, negativeZero),
					testAssertionCount,
					errorCount);
	*/
	
	TTTestAssertion("TTFloat64: Nearby numbers compare as equal.",
					TTTestFloatEquivalence(TTFloat64(2.0), TTFloat64(1.99999999999999)),
					testAssertionCount,
					errorCount);
	
	TTTestAssertion("TTFloat64: Same test fails with smaller epsilon.",
					TTTestFloatEquivalence(TTFloat64(2.0), TTFloat64(1.99999999999999), false, TTFloat64(0.0000000000000000001)),
					testAssertionCount,
					errorCount);
	
	
	TTTestAssertion("TTFloat64: Slightly more distant numbers compare as equal.",
					TTTestFloatEquivalence(TTFloat64(2.0), TTFloat64(1.9999999999999)),
					testAssertionCount,
					errorCount);
	
	TTTestAssertion("TTFloat64: The results are the same with parameters reversed.",
					TTTestFloatEquivalence(TTFloat64(1.9999999999999), TTFloat64(2.0)),
					testAssertionCount,
					errorCount);
	
	TTTestAssertion("TTFloat64: Even more distant numbers don't compare as equal",
					TTTestFloatEquivalence(TTFloat64(1.8), TTFloat64(2.0), false),
					testAssertionCount,
					errorCount);
	
	TTTestAssertion("TTFloat32: But it pass if epsilon is upped",
					TTTestFloatEquivalence(TTFloat64(1.8), TTFloat64(2.0), true, TTFloat64(0.5)),
					testAssertionCount,
					errorCount);
	
	TTTestAssertion("TTFloat64: Nearby negative numbers compare as equal.",
					TTTestFloatEquivalence(TTFloat64(-2.0), TTFloat64(-1.99999999999999)),
					testAssertionCount,
					errorCount);
	
	TTTestAssertion("TTFloat64: Slightly more distant negative numbers compare as equal.",
					TTTestFloatEquivalence(TTFloat64(-2.0), TTFloat64(-1.9999999999999)),
					testAssertionCount,
					errorCount);
	
	TTTestAssertion("TTFloat64: The results are the same with parameters reversed.",
					TTTestFloatEquivalence(TTFloat64(-1.9999999999999), TTFloat64(-2.0)),
					testAssertionCount,
					errorCount);
	
	TTTestAssertion("TTFloat64: Even more distant negative numbers don't compare as equal",
					TTTestFloatEquivalence(TTFloat64(-1.8), TTFloat64(-2.0), false),
					testAssertionCount,
					errorCount);
	
	TTTestAssertion("TTFloat64: Positive and negative numbers don't compare as equal",
					TTTestFloatEquivalence(TTFloat64(-2.0), TTFloat64(2.0), false),
					testAssertionCount,
					errorCount);
	
	// The next set of tests check things where the correct answer isn't
    // as obvious or important. Some of these tests check for cases that
    // are rare or can easily be avoided.
#ifdef RARE	
	TTTestAssertion("TTFloat64: inf == inf.",
					TTTestFloatEquivalence(inf, inf),
					testAssertionCount,
					errorCount);
	
	TTTestAssertion("TTFloat64: -inf == -inf.",
					TTTestFloatEquivalence(-inf, -inf),
					testAssertionCount,
					errorCount);
	TTTestAssertion("TTFloat64: inf != -inf.",
					TTTestFloatEquivalence(inf, -inf, false),
					testAssertionCount,
					errorCount);
#endif
	
// DBL_MAX is not defined for the iOS
#ifndef TT_PLATFORM_IOS
	TTTestAssertion("TTFloat64: DBL_MAX != inf",
#ifdef TT_PLATFORM_WIN
					TTTestFloatEquivalence(DBL_MAX, inf, false),
#else
					TTTestFloatEquivalence(std::numeric_limits<double>::max(), inf, false),
#endif
					testAssertionCount,
					errorCount);
#endif	
	TTTestAssertion("TTFloat64: 3.14 != inf",
					TTTestFloatEquivalence(TTFloat64(3.14), inf, false),
					testAssertionCount,
					errorCount);
	
	
	// The IEEE standard says that any comparison operation involving a NAN must return false.
	TTTestAssertion("TTFloat64: nan1==3.14 => false (according to IEEE standard)",
					TTTestFloatEquivalence(nan1, TTFloat64(3.14), false),
					testAssertionCount,
					errorCount);
	
	TTTestAssertion("TTFloat64: nan1==nan1 => false (according to IEEE standard).",
					TTTestFloatEquivalence(nan1, nan1, false),
					testAssertionCount,
					errorCount);
	
	TTTestAssertion("TTFloat64: nan2==nan2 => false (according to IEEE standard).",
					TTTestFloatEquivalence(nan2, nan2, false),
					testAssertionCount,
					errorCount);
	
	TTTestAssertion("TTFloat64: nan3==nan3 => false (according to IEEE standard).",
					TTTestFloatEquivalence(nan3, nan3, false),
					testAssertionCount,
					errorCount);
	
	TTTestAssertion("TTFloat64: nan4==nan4 => false (according to IEEE standard).",
					TTTestFloatEquivalence(nan4, nan4, false),
					testAssertionCount,
					errorCount);
	
	TTTestAssertion("TTFloat64: nan1==nan2 => false (according to IEEE standard).",
					TTTestFloatEquivalence(nan1, nan2, false),
					testAssertionCount,
					errorCount);
	
	TTTestAssertion("TTFloat64: nan1==nan3 => false (according to IEEE standard).",
					TTTestFloatEquivalence(nan1, nan3, false),
					testAssertionCount,
					errorCount);
	
	TTTestAssertion("TTFloat64: nan1==nan4 => false (according to IEEE standard).",
					TTTestFloatEquivalence(nan1, nan4, false),
					testAssertionCount,
					errorCount);
	
	TTTestAssertion("TTFloat64: nan1==inf => false (according to IEEE standard).",
					TTTestFloatEquivalence(nan1, inf, false),
					testAssertionCount,
					errorCount);
	
	// Tests for denormals

	/* Don't manage to create denorm values, so these tests are commented out.
	TTTestAssertion("TTFloat64: Tiny numbers of opposite signs compare as equal.",
					TTTestFloatEquivalence(smallestDenormal, -smallestDenormal),
					testAssertionCount,
					errorCount);
	
	TTTestAssertion("TTFloat64: The results are the same with parameters reversed.",
					TTTestFloatEquivalence(-smallestDenormal, smallestDenormal),
					testAssertionCount,
					errorCount);
	*/
}

/**	Test the method used to compare floats for equity.
 @group unittest
 @param a	Errors counter
 @param b	Assertions counter */
void TTValueTestFloatAssertion(int& errorCount, int&testAssertionCount)
{
	// Testing for TTFloat32
	TTValueTestFloatAssertion32(errorCount, testAssertionCount);
	
	// Testing for TTFloat64
	TTValueTestFloatAssertion64(errorCount, testAssertionCount);	
}


void TTValueTestBasic(int& errorCount, int&testAssertionCount)
{	
	TTTestLog("\n");
	TTTestLog("Testing basic TTValue operation");

    TTValue v0;
    TTTestAssertion("init with nothing",
					v0.empty(),
					testAssertionCount,
					errorCount);
	
	TTValue v1(3.14);

	TTTestAssertion("init with a double is correctly typed as kTypeFloat64", 
					v1[0].type() == kTypeFloat64,
					testAssertionCount,
					errorCount);
	
	TTTestAssertion("init with a double has correct element count", 
					v1.size() == 1,
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
	v1.append(TTSymbol("foo"));

	TTTestAssertion("TTValue correctly updated element count to 2", 
					v1.size() == 2,
					testAssertionCount,
					errorCount);	
	
	TTTestAssertion("first item still is correctly typed as kTypeFloat64", 
					v1[0].type() == kTypeFloat64, 
					testAssertionCount,
					errorCount);
	
	TTTestAssertion("first item still has correct value when retrieved as a double", 
					TTTestFloatEquivalence(double(v1), 3.14), 
					testAssertionCount,
					errorCount);
	
	TTTestAssertion("second item has correct type",
					v1[1].type() == kTypeSymbol,
					testAssertionCount,
					errorCount);

	TTSymbol s = v1[1];
	TTTestAssertion("second item has correct value, retreiving with get() method",
					s == "foo",
					testAssertionCount,
					errorCount);
	
	TTTestLog("Prepending a TTValue with one symbol to TTValue");	
	v1.prepend(TTValue(kTTSym_value));
	
	TTTestAssertion("TTValue correctly updated element count to 3", 
					v1.size() == 3,
					testAssertionCount,
					errorCount);
	
	TTTestAssertion("first item should be typed as kTypeSymbol", 
					v1[0].type() == kTypeSymbol, 
					testAssertionCount,
					errorCount);
	
	s = v1[0];
	TTTestAssertion("first item should be \"value\" symbol", 
					s == kTTSym_value,
					testAssertionCount,
					errorCount);
	
	TTTestAssertion("second item still is correctly typed as kTypeFloat64", 
					v1[1].type() == kTypeFloat64,
					testAssertionCount,
					errorCount);
	
	TTTestAssertion("third item has correct type",
					v1[2].type() == kTypeSymbol,
					testAssertionCount,
					errorCount);
	
	
	// BUG :	when value v1 is set as below, 
	//			there is a problem during the copy of the memory (cf memcpy in copy method)
	//			and there is a crash when the value is deleted at the end of this method.
	
	//v1 = TTString("test");

	TTTestLog("Clearing TTValue");	
	v1.clear();
	
	TTTestAssertion("element count is zero",
					v1.size() == 0,
					testAssertionCount,
					errorCount);

	// TODO: document that we check size rather than type
#ifdef OLD
	TTTestAssertion("type of TTValue which is returned is kTypeNone",
					v1.getType() == kTypeNone,
					testAssertionCount,
					errorCount);
#endif
	
}


void TTValueTestStringConversion(int& errorCount, int&testAssertionCount)
{
	TTTestLog("\n");
	TTTestLog("Testing TTValue string conversion methods");
	
	TTValue		v;
	TTString	aString;
	TTSymbol	aSymbol = kTTSymEmpty;
	TTInt32		i;
	TTFloat32	f;
	
	// TODO: test toString()
	
	// test fromString()
	aString = TTString("0");
	v = aString;
	v.fromString();
	
	TTTestAssertion("\"0\" string is converted into a TTInt32 0 value",
					v[0].type() == kTypeInt32 &&
					v[0] == 0,
					testAssertionCount,
					errorCount);
	
	v.clear();
	aString = TTString("0.000000");
	v = aString;
	v.fromString();
	
	TTTestAssertion("\"0.000000\" string is converted into a TTFloat64 0.000000 value",
					v[0].type() == kTypeFloat64 &&
					v[0] == 0.f,
					testAssertionCount,
					errorCount);
	
	v.clear();
	aString = TTString("1");
	v = aString;
	v.fromString();
	
	TTTestAssertion("\"1\" string is converted into a TTInt32 1 value",
					v[0].type() == kTypeInt32 &&
					v[0] == 1,
					testAssertionCount,
					errorCount);
    
    v.clear();
	aString = TTString("1234u");
	v = aString;
	v.fromString();
    
    TTTestAssertion("\"1234u\" string is converted into a TTUInt32 1234 value",
					v[0].type() == kTypeUInt32 &&
					v[0] == 1234,
					testAssertionCount,
					errorCount);
    
    v.clear();
	aString = TTString("uzi");
	v = aString;
	v.fromString();
    
    TTTestAssertion("\"uzi\" string is not converted into a TTUInt32 0 value",
					v[0].type() != kTypeUInt32 &&
                    v[0].type() == kTypeSymbol,
					testAssertionCount,
					errorCount);
	
	v.clear();
	aString = TTString("1.234567");
	v = aString;
	v.fromString();
	
	TTTestAssertion("\"1.234567\" string is converted into a TTFloat32 1.234567 value",
					v[0].type() == kTypeFloat64 &&
					TTTestFloatEquivalence(TTFloat32(v[0]), 1.234567f),
					testAssertionCount,
					errorCount);
	
	v.clear();
	aString = TTString("value");
	v = aString;
	v.fromString();
	aSymbol = v[0];
	
	TTTestAssertion("\"value\" string is converted into a TTSymbolPtr kTTSym_value",
					v[0].type() == kTypeSymbol &&
					aSymbol == kTTSym_value,
					testAssertionCount,
					errorCount);
	
	v.clear();
	aString = TTString("sampleRate 1 1.234567");
	v = aString;
	v.fromString();
	aSymbol = v[0];
	i = v[1];
	f = v[2];
	
	TTTestAssertion("\"sampleRate 1 1.234567\" string is converted into a 3 datas value",
					v[0].type() == kTypeSymbol &&
					v[1].type() == kTypeInt32 &&
					v[2].type() == kTypeFloat64 &&
					aSymbol == kTTSym_sampleRate &&
					i == 1 &&
					TTTestFloatEquivalence(f, 1.234567f) &&
					v.size() == 3,
					testAssertionCount,
					errorCount);
	
	v.clear();
	
	// TODO: test transformCSVStringToSymbolArray()
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

	
	
	// TTInt32 -- which is a classic "int" type
	
	v1 = 3;
	v1.clip(6, 12);
	TTTestAssertion("positive TTInt32 clipped (out of lower bound)",
					TTInt32(v1) == 6,
					testAssertionCount,
					errorCount);
	
	v1 = 3;
	v1.clip(0, 4);
	TTTestAssertion("positive TTInt32 not clipped (within range)",
					TTInt32(v1) == 3,
					testAssertionCount,
					errorCount);
	
	v1 = 3;
	v1.clip(0, 2);
	TTTestAssertion("positive TTInt32 clipped (out of upper bound)",
					TTInt32(v1) == 2,
					testAssertionCount,
					errorCount);
	
	v1 = -3;
	v1.clip(-2, 0);
	TTTestAssertion("negative TTInt32 clipped (out of lower bound)",
					TTInt32(v1) == -2,
					testAssertionCount,
					errorCount);
	
	v1 = -3;
	v1.clip(-4, 0);
	TTTestAssertion("negative TTInt32 not clipped (within range)",
					TTInt32(v1) == -3,
					testAssertionCount,
					errorCount);
	
	v1 = -3;
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
	v2.resize(6);
	v2[0] = 2.5;
	v2[1] = 2;
	v2[2] = 3.14;
	v2[3] = 4;
	v2[4] = 6.28;
	v2[5] = 6;
	
	v2.clip(3.0, 5.0);
	
	TTFloat64 aFloat = v2[0];
	TTInt32 anInt = v2[1];

	TTTestAssertion("array double clipped (out of lower bound)",
					TTTestFloatEquivalence(aFloat, 3.0),
					testAssertionCount,
					errorCount);
	
	TTTestAssertion("array integer clipped (out of lower bound)",
					anInt == 3,
					testAssertionCount,
					errorCount);
	
	aFloat = v2[2];
	TTTestAssertion("array double not clipped (within range)",
					TTTestFloatEquivalence(aFloat, 3.14),
					testAssertionCount,
					errorCount);
	
	anInt = v2[3];
	TTTestAssertion("array integer not clipped (within range)",
					anInt == 4,
					testAssertionCount,
					errorCount);

	aFloat = v2[4];
	TTTestAssertion("array double clipped (out of upper bound)",
					TTTestFloatEquivalence(aFloat, 5.0),
					testAssertionCount,
					errorCount);
	
	anInt = v2[5];
	TTTestAssertion("array integer clipped (out of upper bound)",
					anInt == 5,
					testAssertionCount,
					errorCount);
	
	
	/****************************************************************************************************/
	TTTestLog("\n");
	TTTestLog("Testing cliplow()");
	/****************************************************************************************************/
	
	// TTFloat32
	
	v1 = TTFloat32(3.14);
	v1.cliplow(6.0);
	TTTestAssertion("positive TTFloat32 clipped at lower limit (out of lower bound)",
					TTTestFloatEquivalence(TTFloat32(v1), TTFloat32(6.0)),
					testAssertionCount,
					errorCount);
	
	v1 = TTFloat32(3.14);
	v1.cliplow(0.0);
	TTTestAssertion("positive TTFloat32 not clipped at lower limit (within range)",
					TTTestFloatEquivalence(TTFloat32(v1), TTFloat32(3.14)),
					testAssertionCount,
					errorCount);
	
	v1 = TTFloat32(-3.14);
	v1.cliplow(-2.0);
	TTTestAssertion("negative TTFloat32 clipped at lower limit (out of lower bound)",
					TTTestFloatEquivalence(TTFloat32(v1), TTFloat32(-2.0)),
					testAssertionCount,
					errorCount);
	
	v1 = TTFloat32(-3.14);
	v1.cliplow(-4.0);
	TTTestAssertion("negative TTFloat32 not clipped at lower limit (within range)",
					TTTestFloatEquivalence(TTFloat32(v1), TTFloat32(-3.14)),
					testAssertionCount,
					errorCount);
	
	
	
	// TTFloat64
	
	v1 = TTFloat64(3.14);
	v1.cliplow(6.0);
	TTTestAssertion("positive TTFloat64 clipped at lower limit (out of lower bound)",
					TTTestFloatEquivalence(double(v1), 6.0),
					testAssertionCount,
					errorCount);
	
	v1 = 3.14;
	v1.cliplow(0.0);
	TTTestAssertion("positive TTFloat64 not clipped at lower limit (within range)",
					TTTestFloatEquivalence(double(v1), 3.14),
					testAssertionCount,
					errorCount);
	
	v1 = -3.14;
	v1.cliplow(-2.0);
	TTTestAssertion("negative TTFloat64 clipped at lower limit (out of lower bound)",
					TTTestFloatEquivalence(double(v1), -2.0),
					testAssertionCount,
					errorCount);
	
	v1 = -3.14;
	v1.cliplow(-4.0);
	TTTestAssertion("negative TTFloat64 not clipped at lower limit (within range)",
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
	
	
	
	// TTInt32 -- the classic C "int" type
	
	v1 = 3;
	v1.cliplow(6);
	TTTestAssertion("positive TTInt32 clipped at lower limit (out of lower bound)",
					TTInt32(v1) == 6,
					testAssertionCount,
					errorCount);
	
	v1 = 3;
	v1.cliplow(0);
	TTTestAssertion("positive TTInt32 not clipped at lower limit (within range)",
					TTInt32(v1) == 3,
					testAssertionCount,
					errorCount);
	
	v1 = -3;
	v1.cliplow(-2);
	// TTFloat64 myFloat = v1.get;
	TTTestAssertion("negative TTInt32 clipped at lower limit (out of lower bound)",
					TTInt32(v1) == -2,
					testAssertionCount,
					errorCount);
	
	v1 = -3;
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
	v2.resize(4);
	v2[0] = 2.5;
	v2[1] = 2;
	v2[2] = 3.14;
	v2[3] = 4;
	
	v2.cliplow(3.0);
	
	aFloat = v2[0];
	TTTestAssertion("array double clipped at lower limit (out of lower bound)",
					TTTestFloatEquivalence(aFloat, 3.0),
					testAssertionCount,
					errorCount);
	
	anInt = v2[1];
	TTTestAssertion("array integer clipped at lower limit (out of lower bound)",
					anInt == 3,
					testAssertionCount,
					errorCount);
	
	aFloat = v2[2];
	TTTestAssertion("array double not clipped at lower limit (within range)",
					TTTestFloatEquivalence(aFloat, 3.14),
					testAssertionCount,
					errorCount);
	
	anInt = v2[3];
	TTTestAssertion("array integer not clipped at lower limit (within range)",
					anInt == 4,
					testAssertionCount,
					errorCount);
	
	
	

	/****************************************************************************************************/
	TTTestLog("\n");
	TTTestLog("Testing cliphigh()");
	/****************************************************************************************************/
	
	
	// TTFloat32
	
	v1 = TTFloat32(3.14);
	v1.cliphigh(4.0);
	TTTestAssertion("positive TTFloat32 not clipped at higher limit (within range)",
					TTTestFloatEquivalence(TTFloat32(v1), TTFloat32(3.14)),
					testAssertionCount,
					errorCount);
	
	v1 = TTFloat32(3.14);
	v1.cliphigh(2.0);
	TTTestAssertion("positive TTFloat32 clipped at higher limit (out of upper bound)",
					TTTestFloatEquivalence(TTFloat32(v1), TTFloat32(2.0)),
					testAssertionCount,
					errorCount);
	
	v1 = TTFloat32(-3.14);
	v1.cliphigh(0.0);
	TTTestAssertion("negative TTFloat32 not clipped at higher limit (within range)",
					TTTestFloatEquivalence(TTFloat32(v1), TTFloat32(-3.14)),
					testAssertionCount,
					errorCount);
	
	v1 = TTFloat32(-3.14);
	v1.cliphigh(-4.0);
	TTTestAssertion("negative TTFloat32 clipped at higher limit (out of upper bound)",
					TTTestFloatEquivalence(TTFloat32(v1), TTFloat32(-4.0)),
					testAssertionCount,
					errorCount);
	
	
	
	// TTFloat64
	
	v1 = TTFloat64(3.14);
	v1.cliphigh(4.0);
	TTTestAssertion("positive TTFloat64 not clipped at higher limit (within range)",
					TTTestFloatEquivalence(double(v1), 3.14),
					testAssertionCount,
					errorCount);
	
	v1 = TTFloat64(3.14);
	v1.cliphigh(2.0);
	TTTestAssertion("positive TTFloat64 clipped at higher limit (out of upper bound)",
					TTTestFloatEquivalence(double(v1), 2.0),
					testAssertionCount,
					errorCount);
	
	v1 = TTFloat64(-3.14);
	v1.cliphigh(0.0);
	TTTestAssertion("negative TTFloat64 not clipped at higher limit (within range)",
					TTTestFloatEquivalence(double(v1), -3.14),
					testAssertionCount,
					errorCount);
	
	v1 = TTFloat64(-3.14);
	v1.cliphigh(-4.0);
	TTTestAssertion("negative TTFloat64 clipped at higher limit (out of upper bound)",
					TTTestFloatEquivalence(double(v1), -4.0),
					testAssertionCount,
					errorCount);
	
	
	
	// TTInt8
	
	v1 = TTInt8(3);
	v1.cliphigh(4);
	TTTestAssertion("positive TTInt8 not clipped at higher limit (within range)",
					TTInt8(v1) == 3,
					testAssertionCount,
					errorCount);
	
	v1 = TTInt8(3);
	v1.cliphigh(2);
	TTTestAssertion("positive TTInt8 clipped at higher limit (out of upper bound)",
					TTInt8(v1) == 2,
					testAssertionCount,
					errorCount);
	
	v1 = TTInt8(-3);
	v1.cliphigh(0);
	TTTestAssertion("negative TTInt8 not clipped at higher limit (within range)",
					TTInt8(v1) == -3,
					testAssertionCount,
					errorCount);
	
	v1 = TTInt8(-3);
	v1.cliphigh(-4);
	TTTestAssertion("negative TTInt8 clipped at higher limit (out of upper bound)",
					TTInt8(v1) == -4,
					testAssertionCount,
					errorCount);
	
	
	
	// TTUInt8
	
	v1 = TTUInt8(3);
	v1.cliphigh(4);
	TTTestAssertion("positive TTUInt8 not clipped at higher limit (within range)",
					TTUInt8(v1) == 3,
					testAssertionCount,
					errorCount);
	
	v1 = TTUInt8(3);
	v1.cliphigh(2);
	TTTestAssertion("positive TTUInt8 clipped at higher limit (out of upper bound)",
					TTUInt8(v1) == 2,
					testAssertionCount,
					errorCount);
	
	
	
	// TTInt16
	
	v1 = TTInt16(3);
	v1.cliphigh(4);
	TTTestAssertion("positive TTInt16 not clipped at higher limit (within range)",
					TTInt16(v1) == 3,
					testAssertionCount,
					errorCount);
	
	v1 = TTInt16(3);
	v1.cliphigh(2);
	TTTestAssertion("positive TTInt16 clipped at higher limit (out of upper bound)",
					TTInt16(v1) == 2,
					testAssertionCount,
					errorCount);
	
	v1 = TTInt16(-3);
	v1.cliphigh(0);
	TTTestAssertion("negative TTInt16 not clipped at higher limit (within range)",
					TTInt16(v1) == -3,
					testAssertionCount,
					errorCount);
	
	v1 = TTInt16(-3);
	v1.cliphigh(-4);
	TTTestAssertion("negative TTInt16 clipped at higher limit (out of upper bound)",
					TTInt16(v1) == -4,
					testAssertionCount,
					errorCount);
	
	
	
	// TTUInt16
	
	v1 = TTUInt16(3);
	v1.cliphigh(4);
	TTTestAssertion("positive TTUInt16 not clipped at higher limit (within range)",
					TTUInt16(v1) == 3,
					testAssertionCount,
					errorCount);
	
	v1 = TTUInt16(3);
	v1.cliphigh(2);
	TTTestAssertion("positive TTUInt16 clipped at higher limit (out of upper bound)",
					TTUInt16(v1) == 2,
					testAssertionCount,
					errorCount);
	
	
	
	// TTInt32 -- the classic C "int" type
	
	v1 = 3;
	v1.cliphigh(4);
	TTTestAssertion("positive TTInt32 not clipped at higher limit (within range)",
					TTInt32(v1) == 3,
					testAssertionCount,
					errorCount);
	
	v1 = 3;
	v1.cliphigh(2);
	TTTestAssertion("positive TTInt32 clipped at higher limit (out of upper bound)",
					TTInt32(v1) == 2,
					testAssertionCount,
					errorCount);
	
	v1 = -3;
	v1.cliphigh(0);
	TTTestAssertion("negative TTInt32 not clipped at higher limit (within range)",
					TTInt32(v1) == -3,
					testAssertionCount,
					errorCount);
	
	v1 = -3;
	v1.cliphigh(-4);
	TTTestAssertion("negative TTInt32 clipped at higher limit (out of upper bound)",
					TTInt32(v1) == -4,
					testAssertionCount,
					errorCount);
	
	
	
	// TTUInt32
	
	v1 = TTUInt32(3);
	v1.cliphigh(4);
	TTTestAssertion("positive TTUInt32 not clipped at higher limit (within range)",
					TTUInt32(v1) == 3,
					testAssertionCount,
					errorCount);
	
	v1 = TTUInt32(3);
	v1.cliphigh(2);
	TTTestAssertion("positive TTUInt32 clipped at higher limit (out of upper bound)",
					TTUInt32(v1) == 2,
					testAssertionCount,
					errorCount);
	
	
	
	// TTInt64
	
	v1 = TTInt64(3);
	v1.cliphigh(4);
	TTTestAssertion("positive TTInt64 not clipped at higher limit (within range)",
					TTInt64(v1) == 3,
					testAssertionCount,
					errorCount);
	
	v1 = TTInt64(3);
	v1.cliphigh(2);
	TTTestAssertion("positive TTInt64 clipped at higher limit (out of upper bound)",
					TTInt64(v1) == 2,
					testAssertionCount,
					errorCount);
	
	v1 = TTInt64(-3);
	v1.cliphigh(0);
	TTTestAssertion("negative TTInt64 not clipped at higher limit (within range)",
					TTInt64(v1) == -3,
					testAssertionCount,
					errorCount);
	
	v1 = TTInt64(-3);
	v1.cliphigh(-4);
	TTTestAssertion("negative TTInt64 clipped at higher limit (out of upper bound)",
					TTInt64(v1) == -4,
					testAssertionCount,
					errorCount);
	
	
	
	// TTUInt64
	
	v1 = TTUInt64(3);
	v1.cliphigh(4);
	TTTestAssertion("positive TTUInt64 not clipped at higher limit (within range)",
					TTUInt64(v1) == 3,
					testAssertionCount,
					errorCount);
	
	v1 = TTUInt64(3);
	v1.cliphigh(2);
	TTTestAssertion("positive TTUInt64 clipped at higher limit (out of upper bound)",
					TTUInt64(v1) == 2,
					testAssertionCount,
					errorCount);
	
	// And a final test on an array
	v2.resize(4);
	v2[0] = 3.14;
	v2[1] = 4;
	v2[2] = 6.28;
	v2[3] = 6;
	
	v2.cliphigh(5.0);
	
	aFloat = v2[0];
	TTTestAssertion("array double not clipped at higher limit (within range)",
					TTTestFloatEquivalence(aFloat, 3.14),
					testAssertionCount,
					errorCount);
	
	anInt = v2[1];
	TTTestAssertion("array integer not clipped at higher limit (within range)",
					anInt == 4,
					testAssertionCount,
					errorCount);
	
	aFloat = v2[2];
	TTTestAssertion("array double clipped at higher limit (out of upper bound)",
					TTTestFloatEquivalence(aFloat, 5.0),
					testAssertionCount,
					errorCount);
	
	anInt = v2[3];
	TTTestAssertion("array integer clipped at higher limit (out of upper bound)",
					anInt == 5,
					testAssertionCount,
					errorCount);
	
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
	
	/****************************************************************************************************/
	TTTestLog("\n");
	TTTestLog("Testing < operator");
	/****************************************************************************************************/
	
	TTValue v1, v2;
	
	// TTInt8
	v1 = TTInt8(-12);
	v2 = TTInt8(120);
	TTTestAssertion("TTInt8 < operator comparison (with A < B)",
					v1 < v2,
					testAssertionCount,
					errorCount);
	
	TTTestAssertion("TTInt8 < operator comparison (with A > B)",
					!(v2 < v1),
					testAssertionCount,
					errorCount);
	
	// TTUInt8
	v1 = TTUInt8(12);
	v2 = TTUInt8(204);
	TTTestAssertion("TTUInt8 < operator comparison (with A < B)",
					v1 < v2,
					testAssertionCount,
					errorCount);
	
	TTTestAssertion("TTUInt8 < operator comparison (with A > B)",
					!(v2 < v1),
					testAssertionCount,
					errorCount);
	
	// TTInt16
	v1 = TTInt16(-12);
	v2 = TTInt16(204);
	TTTestAssertion("TTInt16 < operator comparison (with A < B)",
					v1 < v2,
					testAssertionCount,
					errorCount);
	
	TTTestAssertion("TTInt16 < operator comparison (with A > B)",
					!(v2 < v1),
					testAssertionCount,
					errorCount);
	
	// TTUInt16
	v1 = TTUInt16(12);
	v2 = TTUInt16(204);
	TTTestAssertion("TTUInt16 < operator comparison (with A < B)",
					v1 < v2,
					testAssertionCount,
					errorCount);
	
	TTTestAssertion("TTUInt16 < operator comparison (with A > B)",
					!(v2 < v1),
					testAssertionCount,
					errorCount);
	
	// TTInt32
	v1 = -12;
	v2 = 204;
	TTTestAssertion("TTInt32 < operator comparison (with A < B)",
					v1 < v2,
					testAssertionCount,
					errorCount);
	
	TTTestAssertion("TTInt32 < operator comparison (with A > B)",
					!(v2 < v1),
					testAssertionCount,
					errorCount);
	
	// TTUInt32
	v1 = TTUInt32(12);
	v2 = TTUInt32(204);
	TTTestAssertion("TTUInt32 < operator comparison (with A < B)",
					v1 < v2,
					testAssertionCount,
					errorCount);
	
	TTTestAssertion("TTUInt32 < operator comparison (with A > B)",
					!(v2 < v1),
					testAssertionCount,
					errorCount);
	
	// TTInt64
	v1 = TTInt64(-12);
	v2 = TTInt64(204);
	TTTestAssertion("TTInt64 < operator comparison (with A < B)",
					v1 < v2,
					testAssertionCount,
					errorCount);
	
	TTTestAssertion("TTInt64 < operator comparison (with A > B)",
					!(v2 < v1),
					testAssertionCount,
					errorCount);
	
	// TTUInt64
	v1 = TTUInt64(12);
	v2 = TTUInt64(204);
	TTTestAssertion("TTUInt64 < operator comparison (with A < B)",
					v1 < v2,
					testAssertionCount,
					errorCount);
	
	TTTestAssertion("TTUInt64 < operator comparison (with A > B)",
					!(v2 < v1),
					testAssertionCount,
					errorCount);
	
	// TTFloat32
	v1 = TTFloat32(-12);
	v2 = TTFloat32(204);
	TTTestAssertion("TTFloat32 < operator comparison (with A < B)",
					v1 < v2,
					testAssertionCount,
					errorCount);
	
	TTTestAssertion("TTFloat32 < operator comparison (with A > B)",
					!(v2 < v1),
					testAssertionCount,
					errorCount);
	
	// TTFloat64
	v1 = TTFloat64(-12);
	v2 = TTFloat64(204);
	TTTestAssertion("TTFloat64 < operator comparison (with A < B)",
					v1 < v2,
					testAssertionCount,
					errorCount);
	
	TTTestAssertion("TTFloat64 < operator comparison (with A > B)",
					!(v2 < v1),
					testAssertionCount,
					errorCount);
	
	// TTSymbol
	v1 = TTSymbol("azerty");
	v2 = TTSymbol("qwerty");
	TTTestAssertion("TTSymbol < operator comparison (with A < B)",
					v1 < v2,
					testAssertionCount,
					errorCount);
	
	TTTestAssertion("TTSymbol < operator comparison (with A > B)",
					!(v2 < v1),
					testAssertionCount,
					errorCount);
	
	// TTString
	// BUG :	if we used the value v1 and v2, 
	//			there is a problem during the copy of the memory (cf memcpy in copy method)
	//			this bug is relative to a line introduced and commented out into TTValueTestBasic
	TTValue	s1 = TTString("azerty");
	TTValue	s2 = TTString("qwerty");
	TTTestAssertion("TTString < operator comparison (with A < B)",
					s1 < s2,
					testAssertionCount,
					errorCount);
	
	TTTestAssertion("TTString < operator comparison (with A > B)",
					!(s2 < s1),
					testAssertionCount,
					errorCount);
	
	// TTPtr ? TTObject ?
   	
	// TODO: test ==
	// TODO: test =
	// TODO: test casting
	// TODO: should + be concatenating elements to create a new value of a+b element count?
}	


// TODO: Benchmarking


TTErr TTValueTest::test(TTValue& returnedTestInfo)
{
	int	errorCount = 0;
	int testAssertionCount = 0;
	
	TTValueTestFloatAssertion(errorCount, testAssertionCount);
	TTValueTestBasic(errorCount, testAssertionCount);
	TTValueTestStringConversion(errorCount, testAssertionCount);
	TTValueTestNumericTransformations(errorCount, testAssertionCount);
	TTValueTestOperators(errorCount, testAssertionCount);
	
	return TTTestFinish(testAssertionCount, errorCount, returnedTestInfo);
}
