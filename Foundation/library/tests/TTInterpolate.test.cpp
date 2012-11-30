/** @file
 *
 * @ingroup foundationLibrary
 *
 * @brief #TTInterpolateTest is an class used for unit tests of the interpolation algorithms in #TTInterpolate.h.
 *
 * @details
 *
 * @authors Trond Lossius
 *
 * @copyright Copyright © 2008, Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#include "TTInterpolate.test.h"

#define thisTTClass			TTInterpolateTest
#define thisTTClassName		"interpolate.test"
#define thisTTClassTags		"test, foundation"


/** Constructor macro
 */
TT_OBJECT_CONSTRUCTOR
{;}


/** Destructor
 */
TTInterpolateTest::~TTInterpolateTest()
{;}

#pragma mark -
#pragma mark Test for the various interpolation algorithms
#pragma mark -


/** Perform one linear interpolation and compare the outcome to expected value.
 @param x0				Sample value at prior integer index
 @param x1				Sample value at next integer index
 @param delta			The fractional value for which we want to perform the interpolation.
						delta=0 => x0 @n
						delta=1 => x1
 @param expectedValue	The expected outcome of the interpolation
 @return				TRUE if the interpolat returnes the expected value, else FALSE
 */
TTFloat64 InterpolateAndTestLinear(const TTFloat64 x0, const TTFloat64 x1, const TTFloat64& aDelta, TTFloat64 anExpectedValue)
{
	TTFloat64 interpolatedValue = TTInterpolateLinear(x0, x1, aDelta);
	TTBoolean result = TTTestFloatEquivalence(interpolatedValue , anExpectedValue);
	if (!result)
		TTTestLog("BAD INTERPOLATION @ delta=%.5f  ( value=%.10f   expected=%.10f )", aDelta, interpolatedValue, anExpectedValue);
	return result;
}


/** Test for correct linear interpolations performance.
 @param anErrorCount			The number of asserts that failed
 @param aTestAssertionCount		The numebr of asserts carried out
 */
void TestLinear(int& anErrorCount, int& aTestAssertionCount)
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
					aTestAssertionCount,
					anErrorCount);
}


/** Perform one cosine interpolation and compare the outcome to expected value.
 @param x0				Sample value at prior integer index
 @param x1				Sample value at next integer index
 @param aDelta			The fractional value for which we want to perform the interpolation.
 aDelta=0 => x0 @n
 aDelta=1 => x1
 @param expectedValue	The expected outcome of the interpolation
 @return				TRUE if the interpolat returnes the expected value, else FALSE
 */
TTFloat64 InterpolateAndTestCosine(const TTFloat64 x0, const TTFloat64 x1, const TTFloat64& aDelta, TTFloat64 anExpectedValue)
{
	TTFloat64 interpolatedValue = TTInterpolateCosine(x0, x1, aDelta);
	TTBoolean result = TTTestFloatEquivalence(interpolatedValue , anExpectedValue);
	if (!result)
		TTTestLog("BAD INTERPOLATION @ delta=%.5f  ( value=%.10f   expected=%.10f )", aDelta, interpolatedValue, anExpectedValue);
	return result;
}


/** Test for correct cosine interpolations performance.
 @param anErrorCount			The number of asserts that failed
 @param aTestAssertionCount		The numebr of asserts carried out
 */
void TestCosine(int& anErrorCount, int& aTestAssertionCount)
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
					aTestAssertionCount,
					anErrorCount);
}


/** Perform one cubic interpolation and compare the outcome to expected value.
 @param x0				Sample value at integer index prior to x0
 @param x1				Sample value at prior integer index
 @param x2				Sample value at next integer index
 @param x3				Sample value at integer index after y
 @param aDelta			Fractional location between x1 (0) and x2 (1)
 @param delta			The fractional value for which we want to perform the interpolation.
 aDelta=0 => x0 @n
 aDelta=1 => x1
 @param expectedValue	The expected outcome of the interpolation
 @return				TRUE if the interpolat returnes the expected value, else FALSE
 */
TTFloat64 InterpolateAndTestCubic(const TTFloat64 x0, const TTFloat64 x1, const TTFloat64 x2, const TTFloat64 x3, const TTFloat64& aDelta, TTFloat64 anExpectedValue)
{
	TTFloat64 interpolatedValue = TTInterpolateCubic(x0, x1, x2, x3, aDelta);
	TTBoolean result = TTTestFloatEquivalence(interpolatedValue , anExpectedValue);
	if (!result)
		TTTestLog("BAD INTERPOLATION @ delta=%.5f  ( value=%.10f   expected=%.10f )", aDelta, interpolatedValue, anExpectedValue);
	return result;
}


/** Test for correct cubic interpolations performance.
 @param anErrorCount			The number of asserts that failed
 @param aTestAssertionCount		The numebr of asserts carried out
 */
void TestCubic(int& anErrorCount, int& aTestAssertionCount)
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
					aTestAssertionCount,
					anErrorCount);
}


#pragma mark -
#pragma mark The main function
#pragma mark -

// The main test method
TTErr TTInterpolateTest::test(TTValue& returnedTestInfo)
{
	int	errorCount = 0;
	int testAssertionCount = 0;
	
	TestLinear(errorCount, testAssertionCount);
	TestCosine(errorCount, testAssertionCount);
	TestCubic(errorCount, testAssertionCount);
	
	return TTTestFinish(testAssertionCount, errorCount, returnedTestInfo);
}

