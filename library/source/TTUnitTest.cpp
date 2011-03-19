/* 
 * TTUnitTest
 * Copyright © 2011, Timothy Place and Trond Lossius
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTUnitTest.h"


static const TTFloat32 kTTTestFloat32Epsilon = 0.00001;
static const TTFloat64 kTTTestFloat64Epsilon = 0.000000001;


TTBoolean TTTestFloatEquivalence(TTFloat32 aFloat, TTFloat32 bFloat, TTBoolean expectedResult, TTFloat32 epsilon)
{
	if (epsilon <= 0.) {
		TTLogMessage("		TTTestFloatEquivalence: epsilon must be a positive number\n");
		return false;
	}
	
	TTBoolean result;

	if (isinf(aFloat)||isinf(bFloat)) {
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
		TTLogMessage("\n");
		TTLogMessage("		TTTestFloatEquivalence: Unexpected result\n");
		TTLogMessage("\n");
		TTLogMessage("		aFloat  = %.8e\n", aFloat);
		TTLogMessage("		bFloat  = %.8e\n", bFloat);
		TTLogMessage("		result  = %s\n", (result)?"true":"false");
		TTLogMessage("\n");
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
	
	if (isinf(aFloat)||isinf(bFloat)) {
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
		TTLogMessage("\n");
		TTLogMessage("		TTTestFloatEquivalence: Unexpected result\n");
		TTLogMessage("\n");
		TTLogMessage("		aFloat  = %.15e\n", aFloat);
		TTLogMessage("		bFloat  = %.15e\n", bFloat);
		TTLogMessage("		result  = %s\n", (result)?"true":"false");
		TTLogMessage("\n");
		return false;
	}
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
	TTLogMessage(fullstr);
}


void TTTestAssertion(const char* aTestName, TTBoolean aTestResult, int& testAssertionCount, int& errorCount)
{
	testAssertionCount++;
	
	if (aTestResult)
		TTLogMessage("	PASS -- ");
	else {
		TTLogMessage("	FAIL -- ");
		errorCount++;
	}	
	TTLogMessage(aTestName);
	TTLogMessage("\n");
	if (!aTestResult)
		TTLogMessage("\n");
}


TTErr TTTestFinish(int testAssertionCount, int errorCount, TTValue& returnedTestInfo)
{
	TTDictionaryPtr d = new TTDictionary;

	d->setSchema(TT("TestInfo"));
	d->append(TT("testAssertionCount"), testAssertionCount);
	d->append(TT("errorCount"), errorCount);
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

