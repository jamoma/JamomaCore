/* 
 * Unit tests for the NodeLib
 * Copyright © 2011, Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef DISABLE_NODELIB

#include "TTNodeLib.test.h"

#define thisTTClass			TTNodeLibTest
#define thisTTClassName		"nodelib.test"
#define thisTTClassTags		"test, foundation"

TT_OBJECT_CONSTRUCTOR
{;}

TTNodeLibTest::~TTNodeLibTest()
{;}

void TTNodeLibTestAddressTable(int& errorCount, int& testAssertionCount)
{
	TTTestLog("\n");
	TTTestLog("Testing Node Address Table access");
	
	TTAddressPtr testAddress1 = TTADRS("directory1:/gran/parent1/name1.instance1:attribute1");
	
	TTSymbolRef directory1 = testAddress1->getDirectory();
	TTAddressPtr parent1 = testAddress1->getParent();
	TTSymbolRef name1 = testAddress1->getName();
	TTSymbolRef instance1 = testAddress1->getInstance();
	TTSymbolRef attribute1 = testAddress1->getAttribute();
	TTAddressType type1 = testAddress1->getType();
	
	TTAddressPtr testAddress2 = TTADRS("/gran/parent2/name2.instance2");
	
	TTSymbolRef directory2 = testAddress2->getDirectory();
	TTAddressPtr parent2 = testAddress2->getParent();
	TTSymbolRef name2 = testAddress2->getName();
	TTSymbolRef instance2 = testAddress2->getInstance();
	TTSymbolRef attribute2 = testAddress2->getAttribute();
	TTAddressType type2 = testAddress2->getType();
	
	TTAddressPtr testAddress3 = TTADRS("parent3/name3.instance3");
	
	TTSymbolRef directory3 = testAddress3->getDirectory();
	TTAddressPtr parent3 = testAddress3->getParent();
	TTSymbolRef name3 = testAddress3->getName();
	TTSymbolRef instance3 = testAddress3->getInstance();
	TTSymbolRef attribute3 = testAddress3->getAttribute();
	TTAddressType type3 = testAddress3->getType();
	
	TTAddressPtr testAddress4 = TTADRS("/");
	
	TTSymbolRef directory4 = testAddress4->getDirectory();
	TTAddressPtr parent4 = testAddress4->getParent();
	TTSymbolRef name4 = testAddress4->getName();
	TTSymbolRef instance4 = testAddress4->getInstance();
	TTSymbolRef attribute4 = testAddress4->getAttribute();
	TTAddressType type4 = testAddress4->getType();
	
	TTAddressPtr testAddress5 = TTADRS(":attribute5");
	
	TTSymbolRef directory5 = testAddress5->getDirectory();
	TTAddressPtr parent5 = testAddress5->getParent();
	TTSymbolRef name5 = testAddress5->getName();
	TTSymbolRef instance5 = testAddress5->getInstance();
	TTSymbolRef attribute5 = testAddress5->getAttribute();
	TTAddressType type5 = testAddress5->getType();
	
	TTAddressPtr testAddress6 = TTADRS("/gran/parent6.0/name6.0:attribute6");
	
	TTSymbolRef directory6 = testAddress6->getDirectory();
	TTAddressPtr parent6 = testAddress6->getParent();
	TTSymbolRef name6 = testAddress6->getName();
	TTSymbolRef instance6 = testAddress6->getInstance();
	TTSymbolRef attribute6 = testAddress6->getAttribute();
	TTAddressType type6 = testAddress6->getType();
	
	// The first set of tests checks parsing of addresses
	TTTestAssertion("TTAddress: Test fails if parsing of testAddress1 is bad",
					directory1 == TT("directory1") &&
					parent1 == TTADRS("/gran/parent1") &&
					name1 == TT("name1") &&
					instance1 == TT("instance1") &&
					attribute1 == TT("attribute1") &&
					type1 == kAddressAbsolute,
					testAssertionCount,
					errorCount);
	
	TTTestAssertion("TTAddress: Test fails if parsing of testAddress2 is bad",
					directory2 == NO_DIRECTORY &&
					parent2 == TTADRS("/gran/parent2") &&
					name2 == TT("name2") &&
					instance2 == TT("instance2") &&
					attribute2 == NO_ATTRIBUTE &&
					type2 == kAddressAbsolute,
					testAssertionCount,
					errorCount);
	
	TTTestAssertion("TTAddress: Test fails if parsing of testAddress3 is bad",
					directory3 == NO_DIRECTORY &&
					parent3 == TTADRS("parent3") &&
					name3 == TT("name3") &&
					instance3 == TT("instance3") &&
					attribute3 == NO_ATTRIBUTE &&
					type3 == kAddressRelative,
					testAssertionCount,
					errorCount);

	TTTestAssertion("TTAddress: Test fails if parsing of testAddress4 is bad",
					directory4 == NO_DIRECTORY &&
					parent4 == NO_PARENT &&
					name4 == S_SEPARATOR &&
					instance4 == NO_INSTANCE &&
					attribute4 == NO_ATTRIBUTE &&
					type4 == kAddressAbsolute,
					testAssertionCount,
					errorCount);
	
	TTTestAssertion("TTAddress: Test fails if parsing of testAddress5 is bad",
					directory5 == NO_DIRECTORY &&
					parent5 == NO_PARENT &&
					name5 == NO_NAME &&
					instance5 == NO_INSTANCE &&
					attribute5 == TT("attribute5") &&
					type5 == kAddressRelative,
					testAssertionCount,
					errorCount);
	
	TTTestAssertion("TTAddress: Test fails if parsing of testAddress6 is bad",
					directory6 == NO_DIRECTORY &&
					parent6 == TTADRS("/gran/parent6") &&
					name6 == TT("name6") &&
					instance6 == NO_INSTANCE &&
					attribute6 == TT("attribute6") &&
					type6 == kAddressAbsolute,
					testAssertionCount,
					errorCount);
}

void TTNodeLibTestAddressItem(int& errorCount, int& testAssertionCount)
{
	TTAddressItemPtr aNamespace, aParent, n, f;
	TTSymbolRef	aSymbol(kTTSymEmpty);
	TTBoolean aSelection, empty;
	TTUInt8 size;
	TTErr err;
	
	TTTestLog("\n");
	TTTestLog("Testing Node Address Item management");
	
	// The first test checks item creation and member access
	aNamespace = new TTAddressItem(kTTSymEmpty);
	aSymbol = aNamespace->getSymbol();
	aParent = aNamespace->getParent();
	aSelection = aNamespace->getSelection();
	empty = aNamespace->isEmpty();

	TTTestAssertion("TTAddressItem: Test fails if the namespace is not empty",
					empty &&
					aSymbol == NO_NAME &&
					aParent == NULL &&
					aSelection == NO,
					testAssertionCount,
					errorCount);
	
	// The second set of tests checks item management
	n = new TTAddressItem(TT("test"));
	aNamespace->merge(n);
	
	TTTestAssertion("TTAddressItem: Test fails if the namespace size is not equal 1",
					aNamespace->getSize() == 1,
					testAssertionCount,
					errorCount);
	
	f = aNamespace->getItem(n->getSymbol());
	
	if (f) {
		aSymbol = f->getSymbol();
		aParent = f->getParent();
		aSelection = f->getSelection();
		empty = f->isEmpty();
	}
	
	TTTestAssertion("TTAddressItem: Test fails if the namespace is not named \"test\" or have no parent",
					empty &&
					aSymbol == TT("test") &&
					aParent == aNamespace &&
					aSelection == NO,
					testAssertionCount,
					errorCount);
	
	aNamespace->destroy(n);
	
	TTTestAssertion("TTAddressItem: Test fails if the namespace is not empty",
					aNamespace->isEmpty(),
					testAssertionCount,
					errorCount);
	
	// The third set of tests checks item management using TTAddress
	aNamespace->clear();
	aNamespace->append(TTADRS("/parent/name.instance"), &f);
	aSymbol = aNamespace->getSymbol();
	size = aNamespace->getSize();
	
	TTTestAssertion("TTAddressItem: Test fails if the namespace is not named \"/\" and size is not equal 1",
					size == 1 &&
					aSymbol == kTTSymEmpty,
					testAssertionCount,
					errorCount);
	
	f = NULL;
	err = aNamespace->find(TTADRS("/parent"), &f);
	
	if (!err) {
		aSymbol = f->getSymbol();
		aParent = f->getParent();
		aSelection = f->getSelection();
		empty = f->isEmpty();
	}
	
	TTTestAssertion("TTAddressItem: Test fails if the namespace is not named \"\" or have no parent or no child",
					!empty &&
					aSymbol == kTTSymEmpty &&
					aParent == aNamespace->getItem(TT("parent")) &&
					aSelection == NO,
					testAssertionCount,
					errorCount);
	
	n = f;
	f = NULL;
	err = aNamespace->find(TTADRS("/parent/name"), &f);
	
	if (!err) {
		aSymbol = f->getSymbol();
		aParent = f->getParent();
		aSelection = f->getSelection();
		empty = f->isEmpty();
	}
	
	TTTestAssertion("TTAddressItem: Test fails if the namespace is not named \"name\" or have no parent or is empty",
					!empty &&
					aSymbol == TT("name") &&
					aParent == n &&
					aSelection == NO,
					testAssertionCount,
					errorCount);
	
	n = f;
	f = NULL;
	err = aNamespace->find(TTADRS("/parent/name.instance"), &f);
	
	if (!err) {
		aSymbol = f->getSymbol();
		aParent = f->getParent();
		aSelection = f->getSelection();
		empty = f->isEmpty();
	}
	
	TTTestAssertion("TTAddressItem: Test fails if the namespace is not named \"instance\" or have no parent or is not empty",
					empty &&
					aSymbol == TT("instance") &&
					aParent == n &&
					aSelection == NO,
					testAssertionCount,
					errorCount);
	
	f = NULL;
	aNamespace->append(TTADRS("/parent/name.other"), &f);
	
	size = f->getParent()->getSize();
	
	TTTestAssertion("TTAddressItem: Test fails if size is not equal to 2",
					size == 2,
					testAssertionCount,
					errorCount);
	
}

void TTNodeLibTestAddressComparison(int& errorCount, int& testAssertionCount)
{
	TTAddressComparisonFlag result;
	TTInt8 depthDifference;
	
	TTTestLog("\n");
	TTTestLog("Testing Node Address Comparison");
	
	TTAddressPtr testAddressA = TTADRS("/gran/parent/name.instance");
	TTAddressPtr testAddressB = TTADRS("/gran");
	TTAddressPtr testAddressC = TTADRS("gran/parent/name.instance");
	TTAddressPtr testAddressD = TTADRS("gran");
	
	result = testAddressA->compare(testAddressA, depthDifference);
	TTTestAssertion("TTAddressComparison: Test fails if comparison returns anything else than equality",
					result == kAddressEqual &&
					depthDifference == 0,
					testAssertionCount,
					errorCount);
	
	result = testAddressA->compare(testAddressB, depthDifference);
	TTTestAssertion("TTAddressComparison: Test passes if comparison returns the address is lower with 2 levels of difference",
					result == kAddressLower &&
					depthDifference == 2,
					testAssertionCount,
					errorCount);
	
	result = testAddressB->compare(testAddressA, depthDifference);
	TTTestAssertion("TTAddressComparison: Test passes if comparison returns the address is upper with 2 levels of difference",
					result == kAddressUpper &&
					depthDifference == -2,
					testAssertionCount,
					errorCount);
	
	result = testAddressC->compare(testAddressD, depthDifference);
	TTTestAssertion("TTAddressComparison: Test passes if comparison returns the address is lower with 2 levels of difference",
					result == kAddressLower &&
					depthDifference == 2,
					testAssertionCount,
					errorCount);
	
	result = testAddressD->compare(testAddressC, depthDifference);
	TTTestAssertion("TTAddressComparison: Test passes if comparison returns the address is upper with 2 levels of difference",
					result == kAddressUpper &&
					depthDifference == -2,
					testAssertionCount,
					errorCount);
	
	result = testAddressA->compare(testAddressD, depthDifference);
	TTTestAssertion("TTAddressComparison: Test passes if comparison returns the address is lower with 2 levels of difference",
					result == kAddressDifferent,
					testAssertionCount,
					errorCount);
	
	result = testAddressC->compare(testAddressB, depthDifference);
	TTTestAssertion("TTAddressComparison: Test passes if comparison returns the address is upper with 2 levels of difference",
					result == kAddressDifferent,
					testAssertionCount,
					errorCount);
}

// TODO: Benchmarking

TTErr TTNodeLibTest::test(TTValue& returnedTestInfo)
{
	int	errorCount = 0;
	int testAssertionCount = 0;
	
	TTNodeLibTestAddressTable(errorCount, testAssertionCount);
	
	TTNodeLibTestAddressItem(errorCount, testAssertionCount);
	
	TTNodeLibTestAddressComparison(errorCount, testAssertionCount);
	
	return TTTestFinish(testAssertionCount, errorCount, returnedTestInfo);
}

#endif

