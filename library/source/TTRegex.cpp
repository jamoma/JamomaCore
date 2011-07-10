/*
 * TTRegex
 * Copyright © 2008, Théo de la Hogue & Tim Place
 *
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTRegex.h"
#include <boost/regex.hpp>
using namespace boost;
typedef boost::regex	TTExpression;
typedef boost::match_results <TTRegexStringPosition> TTRegexStringResult;

#define EXPRESSION  ((TTExpression*)(mExpression))
#define mEXPRESSION (*EXPRESSION)
	
#define RESULT  ((TTRegexStringResult*)(mResult))
#define mRESULT (*RESULT)

TTRegex::TTRegex(TTString anExpression):
mExpression(NULL), mResult(NULL)
{
	mExpression = new TTExpression(anExpression.data());
	mResult = new TTRegexStringResult();
}

TTRegex::~TTRegex()
{
	delete EXPRESSION;
	delete RESULT;
}

TTErr TTRegex::parse(TTRegexStringPosition& begin, TTRegexStringPosition& end)
{	
	if (boost::regex_search(begin, end, mRESULT, mEXPRESSION))
		return kTTErrNone;
	
	return kTTErrGeneric;
}

/** Get where start the result */
TTRegexStringPosition TTRegex::begin()
{
	return mRESULT[1].first;
}

/** Get where end the result */
TTRegexStringPosition TTRegex::end()
{
	return mRESULT[1].second;
}
