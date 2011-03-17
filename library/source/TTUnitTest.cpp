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


TTBoolean TTTestFloatEquivalence(TTFloat32 a, TTFloat32 b, TTBoolean expectedResult, TTInt32 maxUnitsInTheLastPlace)
{
	// Following method is based on 
	// http://www.cygnus-software.com/papers/comparingfloats/comparingfloats.htm
	
	// Make sure maxUnitsInTheLastPlace is non-negative and small enough that the
	// default NAN won't compare as equal to anything.
	if (maxUnitsInTheLastPlace <= 0) {
		TTLogMessage("TTTestFloatEquivalence: maxUnitsInTheLastPlace must be a positive number");
		return false;
	}
	if (maxUnitsInTheLastPlace > (4 * 1024 * 1024)) {
		TTLogMessage("TTTestFloatEquivalence: maxUnitsInTheLastPlace to large to distinguish normal values from NAN");
		return false;
	}
	
	TTInt32 aInt = *(TTInt32*)&a;
	
	// Make aInt lexicographically ordered as a twos-complement int
	if (aInt < 0)
		aInt = 0x80000000 - aInt;
	// Make bInt lexicographically ordered as a twos-complement int
	TTInt32 bInt = *(TTInt32*)&b;
	
	if (bInt < 0)
		bInt = 0x80000000 - bInt;
	TTInt32 intDiff = abs(aInt - bInt);
	
	// Decide on result
	TTBoolean result;
	if (intDiff <= maxUnitsInTheLastPlace)
		result = true;
	else
		result = false;
	
	// Was this the expected result?
	if (result == expectedResult)
		return true;
	else {
		TTLogMessage("TTTestFloatEquivalence: Unexpected result\n");
		TTLogMessage("a = %.8e\n", a);
		TTLogMessage("b = %.8e\n", b);
		TTLogMessage("result = %s\n", (result)?"true":"false");
		TTLogMessage("intDiff = %ld\n", intDiff);
		return false;
	}
}


TTBoolean TTTestFloatEquivalence(TTFloat64 a, TTFloat64 b, TTBoolean expectedResult, TTInt64 maxUnitsInTheLastPlace)
{
	// Following method is based on 
	// http://www.cygnus-software.com/papers/comparingfloats/comparingfloats.htm

	// Make sure maxUnitsInTheLastPlace is non-negative and small enough that the
	// default NAN won't compare as equal to anything.
	if (maxUnitsInTheLastPlace <= 0) {
		TTLogMessage("TTTestFloatEquivalence: maxUnitsInTheLastPlace must be a positive number");
		return false;
	}
	// TODO: The following test might be to restrictive for TTFloat64
	if (maxUnitsInTheLastPlace > (4 * 1024 * 1024)) {
		TTLogMessage("TTTestFloatEquivalence: maxUnitsInTheLastPlace to large to distinguish normal values from NAN");
		return false;
	}
	
	TTInt64 aInt = *(TTInt64*)&a;
	
	// TODO: Are the 0x8000000 values correct for TTFloat64?
	
	// Make aInt lexicographically ordered as a twos-complement int
	if (aInt < 0)
		aInt = 0x80000000 - aInt;
	// Make bInt lexicographically ordered as a twos-complement int
	TTInt64 bInt = *(TTInt64*)&b;
	
	if (bInt < 0)
		bInt = 0x80000000 - bInt;
	TTInt64 intDiff = abs(aInt - bInt);

	// Decide on result
	TTBoolean result;	
	if (intDiff <= maxUnitsInTheLastPlace)
		result = true;
	else
		result = false;
	
	// Was this the expected result?
	if (result == expectedResult)
		return true;
	else {
		TTLogMessage("TTTestFloatEquivalence: Unexpected result\n");
		TTLogMessage("a = %.15e\n", a);
		TTLogMessage("b = %.15e\n", b);
		TTLogMessage("result = %s\n", (result)?"true":"false");
		TTLogMessage("intDiff = %ld\n", intDiff);
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

