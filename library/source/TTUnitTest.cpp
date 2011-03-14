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


TTBoolean TTTestFloatEquivalence(TTFloat32 a, TTFloat32 b)
{
	// Following method is based on 
	// http://www.cygnus-software.com/papers/comparingfloats/comparingfloats.htm
	
	// TODO: Make maxUlps a constant or argument to the method?
	// Make sure maxUlps is non-negative and small enough that the
	// default NAN won't compare as equal to anything.
	TTInt64 maxUlps = 5;
	// assert(maxUlps > 0 && maxUlps < 4 * 1024 * 1024);
	
	TTInt32 aInt = *(TTInt32*)&a;
	
	// Make aInt lexicographically ordered as a twos-complement int
	if (aInt < 0)
		aInt = 0x80000000 - aInt;
	// Make bInt lexicographically ordered as a twos-complement int
	TTInt32 bInt = *(TTInt32*)&b;
	
	if (bInt < 0)
		bInt = 0x80000000 - bInt;
	TTInt32 intDiff = abs(aInt - bInt);
	if (intDiff <= maxUlps)
		return true;
	return false;
	
}


TTBoolean TTTestFloatEquivalence(TTFloat64 a, TTFloat64 b)
{
	if (a != TTAntiDenormal(a))
		TTTestLog("WARNING: TESTING FLOAT EQUIVALENCE ON A DENORMAL!");

	// TODO: Denormal checking on b
	// TODO: checking for NaN
	// TODO: checking for INF
	
	// Following method is based on 
	// http://www.cygnus-software.com/papers/comparingfloats/comparingfloats.htm

	// Make sure maxUlps is non-negative and small enough that the
	// default NAN won't compare as equal to anything.
	// TODO: Make maxUlps a constant or argument to the method?
	TTInt64 maxUlps = 5;
	// assert(maxUlps > 0 && maxUlps < 4 * 1024 * 1024);
	
	TTInt64 aInt = *(TTInt64*)&a;
	
	// Make aInt lexicographically ordered as a twos-complement int
	if (aInt < 0)
		aInt = 0x80000000 - aInt;
	// Make bInt lexicographically ordered as a twos-complement int
	TTInt64 bInt = *(TTInt64*)&b;
	
	if (bInt < 0)
		bInt = 0x80000000 - bInt;
	TTInt64 intDiff = abs(aInt - bInt);
	if (intDiff <= maxUlps)
		return true;
	return false;
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

