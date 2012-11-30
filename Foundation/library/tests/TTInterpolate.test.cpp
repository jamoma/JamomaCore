/* 
 * Jamoma N-Dimensional Matrix Data Class
 * Copyright © 2011, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

//#include "TTInterpolate.h"
#include "TTInterpolate.test.h"

#define thisTTClass			TTInterpolateTest
#define thisTTClassName		"interpolate.test"
#define thisTTClassTags		"test, foundation"


TT_OBJECT_CONSTRUCTOR
{;}


TTInterpolateTest::~TTInterpolateTest()
{;}

#pragma mark -
#pragma mark Test for the various interpolation algorithms
#pragma mark -


TTFloat64 InterpolateAndTestLinear(const TTFloat64 x0, const TTFloat64 x1, const TTFloat64& delta, TTFloat64 expectedValue)
{
	TTFloat64 interpolatedValue = TTInterpolateLinear(x0, x1, delta);
	TTBoolean result = TTTestFloatEquivalence(interpolatedValue , expectedValue);
	if (!result)
		TTTestLog("BAD INTERPOLATION @ delta=%.5f  ( value=%.10f   expected=%.10f )", delta, interpolatedValue, expectedValue);
	return result;
}


void TestLinear(int& errorCount, int&testAssertionCount)
{
	int			badSampleCount = 0;
	
	TTFloat64	x0 =  3.0;
	TTFloat64	x1 = -1.0;
	
	TTTestLog("");
	TTTestLog("Testing linear interpolation");
	
	badSampleCount += !InterpolateAndTestLinear(x0, x1, 0.00,  3.0);
	badSampleCount += !InterpolateAndTestLinear(x0, x1, 0.25,  2.0);
	badSampleCount += !InterpolateAndTestLinear(x0, x1, 0.50,  1.0);
	badSampleCount += !InterpolateAndTestLinear(x0, x1, 0.75,  0.0);
	badSampleCount += !InterpolateAndTestLinear(x0, x1, 1.00, -1.0);
		
	TTTestAssertion("Produces expected results with linear interpolation",
					badSampleCount == 0,
					testAssertionCount,
					errorCount);
}



TTFloat64 InterpolateAndTestCosine(const TTFloat64 x0, const TTFloat64 x1, const TTFloat64& delta, TTFloat64 expectedValue)
{
	TTFloat64 interpolatedValue = TTInterpolateCosine(x0, x1, delta);
	TTBoolean result = TTTestFloatEquivalence(interpolatedValue , expectedValue);
	if (!result)
		TTTestLog("BAD INTERPOLATION @ delta=%.5f  ( value=%.10f   expected=%.10f )", delta, interpolatedValue, expectedValue);
	return result;
}


void TestCosine(int& errorCount, int&testAssertionCount)
{
	int			badSampleCount = 0;
	
	TTFloat64	x0 =  3.0;
	TTFloat64	x1 = -1.0;
	
	TTTestLog("");
	TTTestLog("Testing cosine interpolation");
	
	badSampleCount += !InterpolateAndTestCosine(x0, x1, 0.00,     3.0);
	badSampleCount += !InterpolateAndTestCosine(x0, x1, (1./3.),  2.0);
	badSampleCount += !InterpolateAndTestCosine(x0, x1, 0.50,     1.0);
	badSampleCount += !InterpolateAndTestCosine(x0, x1, (2./3.),  0.0);
	badSampleCount += !InterpolateAndTestCosine(x0, x1, 1.00,    -1.0);
	
	TTTestAssertion("Produces expected results with linear interpolation",
					badSampleCount == 0,
					testAssertionCount,
					errorCount);
}


TTFloat64 InterpolateAndTestCubic(const TTFloat64 x0, const TTFloat64 x1, const TTFloat64 x2, const TTFloat64 x3, const TTFloat64& delta, TTFloat64 expectedValue)
{
	TTFloat64 interpolatedValue = TTInterpolateCubic(x0, x1, x2, x3, delta);
	TTBoolean result = TTTestFloatEquivalence(interpolatedValue , expectedValue);
	if (!result)
		TTTestLog("BAD INTERPOLATION @ delta=%.5f  ( value=%.10f   expected=%.10f )", delta, interpolatedValue, expectedValue);
	return result;
}

void TestCubic(int& errorCount, int&testAssertionCount)
{
	// t = delta-1
	// x(t) = t^3 - 2*t^2 +3t - 4
	//
	// x(t = 0) = x(delta = -1) = -4
	// x(t = 1) = x(delta =  0) = -2
	// x(t = 1.5) = x(delta = 0.5) = 1.125
	// x(t = 2) = x(delta =  1) =  2
	// x(t = 3) = x(delta =  2) = 14
	
	int badSampleCount = 0;

	TTFloat64 x0 = -4.0;
	TTFloat64 x1 = -2.0;
	TTFloat64 x2 =  2.0;
	TTFloat64 x3 = 14.0;
	
	TTTestLog("");
	TTTestLog("Testing cubic interpolation");
	
	badSampleCount += !InterpolateAndTestCubic(x0, x1, x2, x3, -1.00, -4.0);
	badSampleCount += !InterpolateAndTestCubic(x0, x1, x2, x3,  0.00, -2.0);
	badSampleCount += !InterpolateAndTestCubic(x0, x1, x2, x3,  0.50,  1.125);
	badSampleCount += !InterpolateAndTestCubic(x0, x1, x2, x3,  1.00,  2.0);
	badSampleCount += !InterpolateAndTestCubic(x0, x1, x2, x3,  2.00, 14.0);
	
	TTTestAssertion("Produces expected results with cubic interpolation",
					badSampleCount == 0,
					testAssertionCount,
					errorCount);
}


#pragma mark -
#pragma mark The main function
#pragma mark -

TTErr TTInterpolateTest::test(TTValue& returnedTestInfo)
{
	int	errorCount = 0;
	int testAssertionCount = 0;
	
	TestLinear(errorCount, testAssertionCount);
	TestCosine(errorCount, testAssertionCount);
	TestCubic(errorCount, testAssertionCount);
	
	return TTTestFinish(testAssertionCount, errorCount, returnedTestInfo);
}

