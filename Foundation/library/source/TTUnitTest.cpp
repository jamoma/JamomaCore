/* 
 * TTUnitTest
 * Copyright © 2011, Timothy Place and Trond Lossius
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTUnitTest.h"


static const TTFloat32 kTTTestFloat32Epsilon = 0.00001f;
static const TTFloat64 kTTTestFloat64Epsilon = 0.000000001;
static const TTFloat32 kTTTestFloat32Infinity = std::numeric_limits<float>::infinity();
static const TTFloat64 kTTTestFloat64Infinity = std::numeric_limits<double>::infinity();



TTBoolean TTTestFloatEquivalence(TTFloat32 aFloat, TTFloat32 bFloat, TTBoolean expectedResult, TTFloat32 epsilon)
{
	if (epsilon <= 0.) {
		TTLogMessage("		TTTestFloatEquivalence: epsilon must be a positive number\n");
		return false;
	}
	
	TTBoolean result;

	if ((aFloat == kTTTestFloat32Infinity)||(bFloat == kTTTestFloat32Infinity)) {
		if (aFloat==bFloat)
			result = true;
		else
			result = false;
	}
	else {
		TTFloat32 aAbs = fabs(aFloat);
		TTFloat32 bAbs = fabs(bFloat);
		TTFloat32 absoluteOrRelative = (1.0f > aAbs ? 1.0f : aAbs);
		absoluteOrRelative = (absoluteOrRelative > bAbs ? absoluteOrRelative : bAbs);
		if (fabs(aFloat - bFloat) <= epsilon * absoluteOrRelative)
			result = true;
		else
			result = false;
	}
	// Was this the expected result?
	if (result == expectedResult)
		return true;
	else {
#ifdef NOISY_FAILURE
		TTLogMessage("\n");
		TTLogMessage("		TTTestFloatEquivalence: Unexpected result\n");
		TTLogMessage("\n");
		TTLogMessage("		aFloat  = %.8e\n", aFloat);
		TTLogMessage("		bFloat  = %.8e\n", bFloat);
		TTLogMessage("		result  = %s\n", (result)?"true":"false");
		TTLogMessage("\n");
#endif
		return false;
	}
}


TTBoolean TTTestFloatEquivalence(TTFloat64 aFloat, TTFloat64 bFloat, TTBoolean expectedResult, TTFloat64 epsilon)
{
	if (epsilon <= 0.) {
		TTLogMessage("		TTTestFloatEquivalence: epsilon must be a positive number\n");
		return false;
	}
	
	TTBoolean result;
	
	if ((aFloat == kTTTestFloat64Infinity)||(bFloat == kTTTestFloat64Infinity)) {
		if (aFloat==bFloat)
			result = true;
		else
			result = false;
	}
	else {
		TTFloat64 aAbs = fabs(aFloat);
		TTFloat64 bAbs = fabs(bFloat);
		TTFloat64 absoluteOrRelative = (1.0f > aAbs ? 1.0f : aAbs);
		absoluteOrRelative = (absoluteOrRelative > bAbs ? absoluteOrRelative : bAbs);
		if (fabs(aFloat - bFloat) <= epsilon * absoluteOrRelative)
			result = true;
		else
			result = false;
	}
	// Was this the expected result?
	if (result == expectedResult)
		return true;
	else {
#ifdef NOISY_FAILURE
		TTLogMessage("\n");
		TTLogMessage("		TTTestFloatEquivalence: Unexpected result\n");
		TTLogMessage("\n");
		TTLogMessage("		aFloat  = %.15e\n", aFloat);
		TTLogMessage("		bFloat  = %.15e\n", bFloat);
		TTLogMessage("		result  = %s\n", (result)?"true":"false");
		TTLogMessage("\n");
#endif
		return false;
	}
}


TTBoolean TTTestFloat32ArrayEquivalence(TTValue &aFloat, TTValue &bFloat, TTBoolean expectedResult, TTFloat32 epsilon)
{
    TTBoolean	result;
    
    // Compare vector size
    if (aFloat.size() != bFloat.size())
        result = false;
    else {
        // Compare member by member
        result = true;
        for (size_t i=0; i<aFloat.size(); i++)
            result = result && TTTestFloatEquivalence(TTFloat32(aFloat[i]), TTFloat32(bFloat[i]), expectedResult, epsilon);
    }
    
    return result;
}


TTBoolean TTTestFloat64ArrayEquivalence(TTValue &aFloat, TTValue &bFloat, TTBoolean expectedResult, TTFloat64 epsilon)
{
    TTBoolean	result;
    
    // Compare vector size
    if (aFloat.size() != bFloat.size())
        result = false;
    else {
        // Compare member by member
        result = true;
        for (size_t i=0; i<aFloat.size(); i++)
            result = result && TTTestFloatEquivalence(aFloat[i], bFloat[i], expectedResult, epsilon);
    }
    
    return result;
}


void TTTestLog(const char *fmtstring, ...)
{
	char	str[4096];
	char	fullstr[4096];
	va_list	ap;
	
	va_start(ap, fmtstring);
	vsnprintf(str, 4000, fmtstring, ap);
	va_end(ap);
	str[4095] = 0;
	
	strncpy(fullstr, "		", 4095);
	strncat(fullstr, str, 4095);
	strncat(fullstr, "\n", 4095);
//	TTLogMessage(fullstr);
}


void TTTestLogResult(const char *name, TTBoolean aResult, const char* filename = "", int linenumber = 0)
{
	// Note: we don't post passing assertions because the log (at least in Xcode) starts suppressing the messages and failures won't be posted
	if (aResult == false) {
#ifdef TT_PLATFORM_WIN
	std::cout << filename << "(" << linenumber << ") : error: " << "Test Assertion Failed -- " << name << std::endl;
#else
	std::cout << filename << ":" << linenumber << ": error: " << "Test Assertion Failed -- " << name << std::endl;
#endif
	}
}


//void TTTestAssertion(const char* aTestName, TTBoolean aTestResult, int& testAssertionCount, int& errorCount)
void TTTestAssertionResult(const char* aTestName, TTBoolean aTestResult, int& testAssertionCount, int& errorCount, const char* filename, int linenumber)
{
	testAssertionCount++;
	TTTestLogResult(aTestName, aTestResult, filename, linenumber);
//	if (aTestResult)
//		TTLogMessage("	PASS -- ");
//	else {
//		TTLogMessage("	FAIL -- ");
	if (!aTestResult)
		errorCount++;
//	}
//	TTLogMessage(aTestName);
//	TTLogMessage("\n");
//	if (!aTestResult)
 //		TTLogMessage("\n");
}


TTErr TTTestFinish(int testAssertionCount, int errorCount, TTValue& returnedTestInfo)
{
	TTDictionary d;

	d.setSchema("TestInfo");
	d.append("testAssertionCount", testAssertionCount);
	d.append("errorCount", errorCount);
	returnedTestInfo = d;
	
	TTTestLog("\n");
	TTTestLog("Number of assertions: %ld", testAssertionCount);
	TTTestLog("Number of failed assertions: %ld", errorCount);
	TTTestLog("\n");
	
	if (errorCount)
		return kTTErrGeneric;
	else
		return kTTErrNone;
}

