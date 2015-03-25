/*
 * Unit tests for the TTRegex object
 * Copyright © 2015, Théo de la Hogue
 *
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTRegex.test.h"

#define thisTTClass			TTRegexTest
#define thisTTClassName		"regex.test"
#define thisTTClassTags		"test, foundation"


TT_OBJECT_CONSTRUCTOR
{;}


TTRegexTest::~TTRegexTest()
{;}


void TTRegexTestBasic(int& errorCount, int&testAssertionCount)
{
	TTTestLog("\n");
	TTTestLog("Testing regex parsing");
    
    TTString s_toParse("directory:/parent/name.instance:attribute");
    TTString s_directory;
    TTString s_attribute;
    TTString s_parent;
    TTString s_instance;
    TTString s_name;
    
    // parse directory
    if (!ttRegexForDirectory->parse(s_toParse.begin(), s_toParse.end()))
    {
        s_directory = TTString(ttRegexForDirectory->begin(), ttRegexForDirectory->end());
        s_toParse.erase(ttRegexForDirectory->begin(), ttRegexForDirectory->end()+1); // +1 to remove ":"
    }
    
    TTTestAssertion("correct parsing of directory",
                    s_directory == "directory",
                    testAssertionCount,
                    errorCount);

    // parse attribute
    if (!ttRegexForAttribute->parse(s_toParse.begin(), s_toParse.end()))
    {
        s_attribute = TTString(ttRegexForAttribute->begin(), s_toParse.end());
        s_toParse.erase(ttRegexForAttribute->begin()-1, s_toParse.end()-1); // -1 to remove ":" and not erase the last \0
    }
    
    TTTestAssertion("correct parsing of attribute",
                    s_attribute == "attribute",
                    testAssertionCount,
                    errorCount);
    
    // parse parent
    if (!ttRegexForParent->parse(s_toParse.begin(), s_toParse.end()))
    {
        s_parent = TTString(ttRegexForParent->begin()+1, ttRegexForParent->end()); // +1 to remove leading "/"
        s_toParse.erase(ttRegexForParent->begin(), ttRegexForParent->end()+1); // +1 to remove "/" after parent
    }
    
    TTTestAssertion("correct parsing of parent",
                    s_parent == "parent",
                    testAssertionCount,
                    errorCount);

    // parse instance
    if (!ttRegexForInstance->parse(s_toParse.begin(), s_toParse.end()))
    {
        s_instance = TTString(ttRegexForInstance->begin(), s_toParse.end());
        s_toParse.erase(ttRegexForInstance->begin()-1, s_toParse.end()-1); // -1 to remove "." and not erase the last \0
    }
    
    TTTestAssertion("correct parsing of instance",
                    s_instance == "instance",
                    testAssertionCount,
                    errorCount);
    
    s_name = s_toParse;
    
    TTTestAssertion("correct parsing of name",
                    s_name == "name",
                    testAssertionCount,
                    errorCount);
}

TTErr TTRegexTest::test(TTValue& returnedTestInfo)
{
	int	errorCount = 0;
	int testAssertionCount = 0;
	
	TTRegexTestBasic(errorCount, testAssertionCount);
	
	return TTTestFinish(testAssertionCount, errorCount, returnedTestInfo);
}
