/*
 * TTRegex
 * Copyright © 2008, Théo de la Hogue & Tim Place
 *
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTRegex.h"

#include <regex>
using namespace std;
typedef std::regex	TTExpression;
typedef std::match_results <TTStringIter> TTRegexStringResult;

#define EXPRESSION  ((TTExpression*)(mExpression))
#define mEXPRESSION (*EXPRESSION)
	
#define RESULT  ((TTRegexStringResult*)(mResult))
#define mRESULT (*RESULT)

TTRegex::TTRegex(const char* anExpression, int expectedMatch):
mExpression(NULL), mResult(NULL),mExpectedMatch(expectedMatch)
{
	try
    {
        mExpression = new TTExpression(anExpression, regex_constants::ECMAScript);
	}
	catch (const regex_error& e)
    {
        TTLogError("%s caught: ", e.what(), anExpression);
		
		if (e.code() == regex_constants::error_brack)
            TTLogError("The code was error_brack with expression \"%s\"\n", anExpression);
	}
	
	mResult = new TTRegexStringResult();
}

TTRegex::~TTRegex()
{
	delete EXPRESSION;
	delete RESULT;
}

TTErr TTRegex::parse(TTStringIter begin, TTStringIter end)
{
	if (regex_search(begin, end, mRESULT, mEXPRESSION))
		return kTTErrNone;

	return kTTErrGeneric;
}

/** Get where start the result */
TTStringIter TTRegex::begin()
{
    return mRESULT[mExpectedMatch].first;
}

/** Get where end the result */
TTStringIter TTRegex::end()
{
    return mRESULT[mExpectedMatch].second;
}
