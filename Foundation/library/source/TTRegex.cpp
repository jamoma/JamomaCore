/*
 * TTRegex
 * Copyright © 2008, Théo de la Hogue & Tim Place
 *
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTRegex.h"

#if BOOST_REGEX
#include <boost/regex.hpp>
using namespace boost;
using namespace std;
typedef boost::regex	TTExpression;
typedef boost::match_results <TTStringIter> TTRegexStringResult;
#else
#include <regex>
using namespace std;
typedef std::regex	TTExpression;
typedef std::match_results <TTStringIter> TTRegexStringResult;
#endif

#define EXPRESSION  ((TTExpression*)(mExpression))
#define mEXPRESSION (*EXPRESSION)
	
#define RESULT  ((TTRegexStringResult*)(mResult))
#define mRESULT (*RESULT)

TTRegex::TTRegex(const char* anExpression):
mExpression(NULL), mResult(NULL)
{
	try
    {
		mExpression = new TTExpression(anExpression, regex_constants::extended);
	}
	catch (const regex_error& e)
    {
        TTLogError("%s caught: ", e.what(), anExpression);
		
		if (e.code() == regex_constants::error_brack)
            TTLogError("The code was error_brack");
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
#if BOOST_REGEX
	return mRESULT[1].first;
#else
    return mRESULT[0].first + 1;
#endif
}

/** Get where end the result */
TTStringIter TTRegex::end()
{
#if BOOST_REGEX
	return mRESULT[1].second;
#else
    return mRESULT[0].second;
#endif
}
