/* 
 * Unit tests for the NodeLib
 * Copyright © 2011, Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTNodeLib.test.h"

#define thisTTClass			TTNodeLibTest
#define thisTTClassName		"nodelib.test"
#define thisTTClassTags		"test, foundation"

TT_OBJECT_CONSTRUCTOR
{;}

TTNodeLibTest::~TTNodeLibTest()
{;}

void TTNodeLibTestNodeAddressTable(int& errorCount, int&testAssertionCount)
{
	TTTestLog("\n");
	TTTestLog("Testing Node Address Table access");
	
	TTNodeAddressPtr testAddress1 = TTADRS("directory1:/gran/parent1/name1.instance1:attribute1");
	
	TTSymbolPtr directory1 = testAddress1->getDirectory();
	TTNodeAddressPtr parent1 = testAddress1->getParent();
	TTSymbolPtr name1 = testAddress1->getName();
	TTSymbolPtr instance1 = testAddress1->getInstance();
	TTSymbolPtr attribute1 = testAddress1->getAttribute();
	TTNodeAddressType type1 = testAddress1->getType();
	
	TTNodeAddressPtr testAddress2 = TTADRS("/gran/parent2/name2.instance2");
	
	TTSymbolPtr directory2 = testAddress2->getDirectory();
	TTNodeAddressPtr parent2 = testAddress2->getParent();
	TTSymbolPtr name2 = testAddress2->getName();
	TTSymbolPtr instance2 = testAddress2->getInstance();
	TTSymbolPtr attribute2 = testAddress2->getAttribute();
	TTNodeAddressType type2 = testAddress2->getType();
	
	TTNodeAddressPtr testAddress3 = TTADRS("parent3/name3.instance3");
	
	TTSymbolPtr directory3 = testAddress3->getDirectory();
	TTNodeAddressPtr parent3 = testAddress3->getParent();
	TTSymbolPtr name3 = testAddress3->getName();
	TTSymbolPtr instance3 = testAddress3->getInstance();
	TTSymbolPtr attribute3 = testAddress3->getAttribute();
	TTNodeAddressType type3 = testAddress3->getType();
	
	TTNodeAddressPtr testAddress4 = TTADRS("/");
	
	TTSymbolPtr directory4 = testAddress4->getDirectory();
	TTNodeAddressPtr parent4 = testAddress4->getParent();
	TTSymbolPtr name4 = testAddress4->getName();
	TTSymbolPtr instance4 = testAddress4->getInstance();
	TTSymbolPtr attribute4 = testAddress4->getAttribute();
	TTNodeAddressType type4 = testAddress4->getType();
	
	TTNodeAddressPtr testAddress5 = TTADRS(":attribute5");
	
	TTSymbolPtr directory5 = testAddress5->getDirectory();
	TTNodeAddressPtr parent5 = testAddress5->getParent();
	TTSymbolPtr name5 = testAddress5->getName();
	TTSymbolPtr instance5 = testAddress5->getInstance();
	TTSymbolPtr attribute5 = testAddress5->getAttribute();
	TTNodeAddressType type5 = testAddress5->getType();
	
	TTNodeAddressPtr testAddress6 = TTADRS("/gran/parent6.0/name6.0:attribute6");
	
	TTSymbolPtr directory6 = testAddress6->getDirectory();
	TTNodeAddressPtr parent6 = testAddress6->getParent();
	TTSymbolPtr name6 = testAddress6->getName();
	TTSymbolPtr instance6 = testAddress6->getInstance();
	TTSymbolPtr attribute6 = testAddress6->getAttribute();
	TTNodeAddressType type6 = testAddress6->getType();
	
	// The first set of tests checks parsing of addresses
	TTTestAssertion("TTNodeAddress: Test fails if parsing of testAddress1 is bad",
					directory1 == TT("directory1") &&
					parent1 == TTADRS("/gran/parent1") &&
					name1 == TT("name1") &&
					instance1 == TT("instance1") &&
					attribute1 == TT("attribute1") &&
					type1 == kAddressAbsolute,
					testAssertionCount,
					errorCount);
	
	TTTestAssertion("TTNodeAddress: Test fails if parsing of testAddress2 is bad",
					directory2 == NO_DIRECTORY &&
					parent2 == TTADRS("/gran/parent2") &&
					name2 == TT("name2") &&
					instance2 == TT("instance2") &&
					attribute2 == NO_ATTRIBUTE &&
					type2 == kAddressAbsolute,
					testAssertionCount,
					errorCount);
	
	TTTestAssertion("TTNodeAddress: Test fails if parsing of testAddress3 is bad",
					directory3 == NO_DIRECTORY &&
					parent3 == TTADRS("parent3") &&
					name3 == TT("name3") &&
					instance3 == TT("instance3") &&
					attribute3 == NO_ATTRIBUTE &&
					type3 == kAddressRelative,
					testAssertionCount,
					errorCount);

	TTTestAssertion("TTNodeAddress: Test fails if parsing of testAddress4 is bad",
					directory4 == NO_DIRECTORY &&
					parent4 == NO_PARENT &&
					name4 == S_SEPARATOR &&
					instance4 == NO_INSTANCE &&
					attribute4 == NO_ATTRIBUTE &&
					type4 == kAddressAbsolute,
					testAssertionCount,
					errorCount);
	
	TTTestAssertion("TTNodeAddress: Test fails if parsing of testAddress5 is bad",
					directory5 == NO_DIRECTORY &&
					parent5 == NO_PARENT &&
					name5 == NO_NAME &&
					instance5 == NO_INSTANCE &&
					attribute5 == TT("attribute5") &&
					type5 == kAddressRelative,
					testAssertionCount,
					errorCount);
	
	TTTestAssertion("TTNodeAddress: Test fails if parsing of testAddress6 is bad",
					directory5 == NO_DIRECTORY &&
					parent5 == TTADRS("/gran/parent6") &&
					name5 == TT("name6") &&
					instance5 == NO_INSTANCE &&
					attribute5 == TT("attribute6") &&
					type5 == kAddressAbsolute,
					testAssertionCount,
					errorCount);
}

// TODO: Benchmarking

TTErr TTNodeLibTest::test(TTValue& returnedTestInfo)
{
	int	errorCount = 0;
	int testAssertionCount = 0;
	
	TTNodeLibTestNodeAddressTable(errorCount, testAssertionCount);
	
	return TTTestFinish(testAssertionCount, errorCount, returnedTestInfo);
}
