/*
 * Jamoma Class for accessing Addresses
 * Copyright © 2012, Timothy Place
 *
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */


#include "TTFoundationAPI.h"

#if BOOST_REGEX
#include <boost/regex.hpp>
using namespace boost;
#else
#include <regex>
using namespace std;
#endif

TTFOUNDATION_EXPORT TTRegex* ttRegexForInstanceZero = NULL;

TTErr TTAddress::parseInstanceZero(const char* cstr, TTString& parsed)
{
    // filter single "0" string
    TTString toParse(cstr);
    if (toParse.size() > 1) {
        
        parsed = toParse;
        
        TTStringIter begin = parsed.begin();
        TTStringIter end = parsed.end();
        
        // parse and remove ".0"
        while (!ttRegexForInstanceZero->parse(begin, end)) {
            TTStringIter z_begin = ttRegexForInstanceZero->begin() - 2;
            TTStringIter z_end = ttRegexForInstanceZero->end();
            
            TTString a(begin, z_begin);
            TTString b(z_end, end);
            parsed = a+b;
            
            begin = parsed.begin();
            end = parsed.end();
        }
    }
    
    return kTTErrNone;
}