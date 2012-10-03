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

void TTNodeLibTestAddressParsing(int& errorCount, int& testAssertionCount)
{
	TTTestLog("\n");
	TTTestLog("Testing Address Parsing");
	
	TTAddress		testAddress1("directory1:/gran/parent1/name1.instance1:attribute1");
	
	TTSymbol		directory1	= testAddress1.getDirectory();
	TTAddress		parent1		= testAddress1.getParent();
	TTSymbol		name1		= testAddress1.getName();
	TTSymbol		instance1	= testAddress1.getInstance();
	TTSymbol		attribute1	= testAddress1.getAttribute();
	TTAddressType	type1		= testAddress1.getType();
	
	TTAddress		testAddress2("/gran/parent2/name2.instance2");
	
	TTSymbol		directory2	= testAddress2.getDirectory();
	TTAddress		parent2		= testAddress2.getParent();
	TTSymbol		name2		= testAddress2.getName();
	TTSymbol		instance2	= testAddress2.getInstance();
	TTSymbol		attribute2	= testAddress2.getAttribute();
	TTAddressType	type2		= testAddress2.getType();
	
	TTAddress		testAddress3("parent3/name3.instance3");
	
	TTSymbol		directory3	= testAddress3.getDirectory();
	TTAddress		parent3		= testAddress3.getParent();
	TTSymbol		name3		= testAddress3.getName();
	TTSymbol		instance3	= testAddress3.getInstance();
	TTSymbol		attribute3	= testAddress3.getAttribute();
	TTAddressType	type3		= testAddress3.getType();
	
	TTAddress		testAddress4("/");
	
	TTSymbol		directory4	= testAddress4.getDirectory();
	TTAddress		parent4		= testAddress4.getParent();
	TTSymbol		name4		= testAddress4.getName();
	TTSymbol		instance4	= testAddress4.getInstance();
	TTSymbol		attribute4	= testAddress4.getAttribute();
	TTAddressType	type4		= testAddress4.getType();
	
	TTAddress		testAddress5(":attribute5");
	
	TTSymbol		directory5	= testAddress5.getDirectory();
	TTAddress		parent5		= testAddress5.getParent();
	TTSymbol		name5		= testAddress5.getName();
	TTSymbol		instance5	= testAddress5.getInstance();
	TTSymbol		attribute5	= testAddress5.getAttribute();
	TTAddressType	type5		= testAddress5.getType();
	
	TTAddress		testAddress6("/gran/parent6.0/name6.0:attribute6");
	
	TTSymbol		directory6	= testAddress6.getDirectory();
	TTAddress		parent6		= testAddress6.getParent();
	TTSymbol		name6		= testAddress6.getName();
	TTSymbol		instance6	= testAddress6.getInstance();
	TTSymbol		attribute6	= testAddress6.getAttribute();
	TTAddressType	type6		= testAddress6.getType();
	
	// The first set of tests checks parsing of addresses
	TTTestAssertion("TTAddress: Test fails if parsing of testAddress1 is bad",
					directory1 == TT("directory1") &&
					parent1 == TTAddress("/gran/parent1") &&
					name1 == TT("name1") &&
					instance1 == TT("instance1") &&
					attribute1 == TT("attribute1") &&
					type1 == kAddressAbsolute,
					testAssertionCount,
					errorCount);
	
	TTTestAssertion("TTAddress: Test fails if parsing of testAddress2 is bad",
					directory2 == NO_DIRECTORY &&
					parent2 == TTAddress("/gran/parent2") &&
					name2 == TT("name2") &&
					instance2 == TT("instance2") &&
					attribute2 == NO_ATTRIBUTE &&
					type2 == kAddressAbsolute,
					testAssertionCount,
					errorCount);
	
	TTTestAssertion("TTAddress: Test fails if parsing of testAddress3 is bad",
					directory3 == NO_DIRECTORY &&
					parent3 == TTAddress("parent3") &&
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
					parent6 == TTAddress("/gran/parent6") &&
					name6 == TT("name6") &&
					instance6 == NO_INSTANCE &&
					attribute6 == TT("attribute6") &&
					type6 == kAddressAbsolute,
					testAssertionCount,
					errorCount);
}

void TTNodeLibTestAddressMethods(int& errorCount, int& testAssertionCount)
{
	TTAddress testAddressA("directory:/gran/parent/name.instance:attribute");
	TTAddress testAddressB("/parent/name");
	TTAddress testAddressC("name");
	
	TTAddress testAddressD("/gran/parent");
	TTAddress testAddressE("directory:/gran/parent");
	
	TTAddress testAddressF("name.instance:attribute");
	TTAddress testAddressG("/name.instance:attribute");
	TTSymbol result;
	TTAddress part1, part2;
	TTAddress testPart1, testPart2;
	
	// the first set of tests checks the getNameInstance method
	TTTestLog("\n");
	TTTestLog("Testing Address getNameInstance Method");
	
	result = testAddressA.getNameInstance();
	TTTestAssertion("TTAddress: Test passes if the getNameInstance() method returns \"name.instance\"",
					result == TTSymbol("name.instance"),
					testAssertionCount,
					errorCount);
	
	result = testAddressB.getNameInstance();
	TTTestAssertion("TTAddress: Test passes if the getNameInstance() method returns \"name\"",
					result == TTSymbol("name"),
					testAssertionCount,
					errorCount);
	
	result = testAddressC.getNameInstance();
	TTTestAssertion("TTAddress: Test passes if the getNameInstance() method returns \"name\"",
					result == TTSymbol("name"),
					testAssertionCount,
					errorCount);
	
	result = kTTAdrsEmpty.getNameInstance();
	TTTestAssertion("TTAddress: Test passes if the getNameInstance() method returns kTTSymEmpty",
					result == kTTSymEmpty,
					testAssertionCount,
					errorCount);
	
	// the second set of tests checks the appendAddress method
	TTTestLog("\n");
	TTTestLog("Testing Address appendAddress Method");
	
	result = testAddressD.appendAddress(kTTAdrsEmpty);
	TTTestAssertion("TTAddress: Test passes if the appendAddress() method returns the same address",
					result ==testAddressD,
					testAssertionCount,
					errorCount);
	
	result = kTTAdrsEmpty.appendAddress(testAddressD);
	TTTestAssertion("TTAddress: Test passes if the appendAddress() method returns the same address",
					result == testAddressD,
					testAssertionCount,
					errorCount);
	
	result = kTTAdrsRoot.appendAddress(testAddressD);
	TTTestAssertion("TTAddress: Test passes if the appendAddress() method returns the same address",
					result == testAddressD,
					testAssertionCount,
					errorCount);
	
	result = kTTAdrsEmpty.appendAddress(testAddressE);
	TTTestAssertion("TTAddress: Test passes if the appendAddress() method returns the same address",
					result == testAddressE,
					testAssertionCount,
					errorCount);
	
	result = kTTAdrsRoot.appendAddress(testAddressE);
	TTTestAssertion("TTAddress: Test passes if the appendAddress() method returns the same address",
					result == testAddressE,
					testAssertionCount,
					errorCount);
	
	result = testAddressD.appendAddress(testAddressF);
	TTTestAssertion("TTAddress: Test passes if the appendAddress() method returns \"/gran/parent/name.instance:attribute\"",
					result == TTAddress("/gran/parent/name.instance:attribute"),
					testAssertionCount,
					errorCount);
	
	result = testAddressD.appendAddress(testAddressG);
	TTTestAssertion("TTAddress: Test passes if the appendAddress() method returns \"/gran/parent/name.instance:attribute\"",
					result == TTAddress("/gran/parent/name.instance:attribute"),
					testAssertionCount,
					errorCount);
	
	// This test checks appendInstance() and appendAttribute() methods
	result = kTTAdrsRoot.appendAddress(TTAddress("name")).appendInstance(TTAddress("instance")).appendAttribute(TTAddress("attribute"));
	TTTestAssertion("TTAddress: Test passes if appendAddress + appendInstance + appendAttribute methods returns \"/name.instance:attribute\"",
					result == TTAddress("/name.instance:attribute"),
					testAssertionCount,
					errorCount);

	// the third set of tests checks the splitAt method
	TTTestLog("\n");
	TTTestLog("Testing Address splitAt Method");
	
	testAddressA.splitAt(0, part1, part2);
	testPart1 = TTAddress("directory:/");
	testPart2 = TTAddress("gran/parent/name.instance:attribute");
	TTTestAssertion("TTAddress: Test passes if splitAt method returns \"directory:/\" and \"gran/parent/name.instance:attribute\"",
					part1 == testPart1 &&
					part2 == testPart2,
					testAssertionCount,
					errorCount);
	
	testAddressA.splitAt(1, part1, part2);
	TTTestAssertion("TTAddress: Test passes if splitAt method returns \"directory:/gran\" and \"parent/name.instance:attribute\"",
					part1 == TTAddress("directory:/gran") &&
					part2 == TTAddress("parent/name.instance:attribute"),
					testAssertionCount,
					errorCount);
	
	testAddressA.splitAt(2, part1, part2);
	TTTestAssertion("TTAddress: Test passes if splitAt method returns \"directory:/gran/parent\" and \"name.instance:attribute\"",
					part1 == TTAddress("directory:/gran/parent") &&
					part2 == TTAddress("name.instance:attribute"),
					testAssertionCount,
					errorCount);
	
	
	// the fourth set of tests checks the countSeparator method
	TTTestLog("\n");
	TTTestLog("Testing Address countSeparator Method");
	
	/*	
	// the fift set of tests checks the listNameInstance method
	TTTestLog("\n");
	TTTestLog("Testing Address listNameInstance Method");
	 */
	
}

void TTNodeLibTestAddressItem(int& errorCount, int& testAssertionCount)
{
	TTAddressItemPtr aNamespace, aParent, n, f;
	TTSymbol		aSymbol(kTTSymEmpty);
	TTBoolean aSelection, empty;
	TTUInt8 size;
	TTErr err;
	
	TTTestLog("\n");
	TTTestLog("Testing Address Item management");
	
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
	aNamespace->append(TTAddress("/parent/name.instance"), &f);
	aSymbol = aNamespace->getSymbol();
	size = aNamespace->getSize();
	
	TTTestAssertion("TTAddressItem: Test fails if the namespace is not named \"/\" and size is not equal 1",
					size == 1 &&
					aSymbol == kTTSymEmpty,
					testAssertionCount,
					errorCount);
	
	f = NULL;
	err = aNamespace->find(TTAddress("/parent"), &f);
	
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
	err = aNamespace->find(TTAddress("/parent/name"), &f);
	
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
	err = aNamespace->find(TTAddress("/parent/name.instance"), &f);
	
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
	aNamespace->append(TTAddress("/parent/name.other"), &f);
	
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
	TTTestLog("Testing Address Comparison");
	
	TTAddress testAddressA("/gran/parent/name.instance");
	TTAddress testAddressB("/gran");
	TTAddress testAddressC("gran/parent/name.instance");
	TTAddress testAddressD("gran");
	
	result = testAddressA.compare(testAddressA, depthDifference);
	TTTestAssertion("TTAddressComparison: Test fails if comparison returns anything else than equality",
					result == kAddressEqual &&
					depthDifference == 0,
					testAssertionCount,
					errorCount);
	
	result = testAddressA.compare(testAddressB, depthDifference);
	TTTestAssertion("TTAddressComparison: Test passes if comparison returns the address is lower with 2 levels of difference",
					result == kAddressLower &&
					depthDifference == 2,
					testAssertionCount,
					errorCount);
	
	result = testAddressB.compare(testAddressA, depthDifference);
	TTTestAssertion("TTAddressComparison: Test passes if comparison returns the address is upper with 2 levels of difference",
					result == kAddressUpper &&
					depthDifference == -2,
					testAssertionCount,
					errorCount);
	
	result = testAddressC.compare(testAddressD, depthDifference);
	TTTestAssertion("TTAddressComparison: Test passes if comparison returns the address is lower with 2 levels of difference",
					result == kAddressLower &&
					depthDifference == 2,
					testAssertionCount,
					errorCount);
	
	result = testAddressD.compare(testAddressC, depthDifference);
	TTTestAssertion("TTAddressComparison: Test passes if comparison returns the address is upper with 2 levels of difference",
					result == kAddressUpper &&
					depthDifference == -2,
					testAssertionCount,
					errorCount);
	
	result = testAddressA.compare(testAddressD, depthDifference);
	TTTestAssertion("TTAddressComparison: Test passes if comparison returns the address is lower with 2 levels of difference",
					result == kAddressDifferent,
					testAssertionCount,
					errorCount);
	
	result = testAddressC.compare(testAddressB, depthDifference);
	TTTestAssertion("TTAddressComparison: Test passes if comparison returns the address is upper with 2 levels of difference",
					result == kAddressDifferent,
					testAssertionCount,
					errorCount);
}

void TTNodeLibTestMiscellaneous(int& errorCount, int& testAssertionCount)
{
	TTTestLog("\n");
	TTTestLog("Miscellaneous Tests");
	
	// test convertUpperCasedName global method
	TTSymbol testSymbolA = "TestSymbolName";
	TTSymbol testSymbolB = "testSymbolName";
	TTSymbol testSymbolC = "testsymbolname";
	TTSymbol result;

	convertUpperCasedName(testSymbolA, result);
	TTTestAssertion("convertUpperCasedName: Test passes if \"TestSymbolName\" is converted in \"test/symbol/name\"",
					result == TTSymbol("test/symbol/name"),
					testAssertionCount,
					errorCount);
	
	convertUpperCasedName(testSymbolB, result);
	TTTestAssertion("convertUpperCasedName: Test passes if \"testSymbolName\" is converted in \"test/symbol/name\"",
					result == TTSymbol("test/symbol/name"),
					testAssertionCount,
					errorCount);
	
	convertUpperCasedName(testSymbolC, result);
	TTTestAssertion("convertUpperCasedName: Test passes if \"testsymbolname\" is not converted",
					result == testSymbolC,
					testAssertionCount,
					errorCount);
}

// TODO: Benchmarking

TTErr TTNodeLibTest::test(TTValue& returnedTestInfo)
{
	int	errorCount = 0;
	int testAssertionCount = 0;
	
	TTNodeLibTestAddressParsing(errorCount, testAssertionCount);
	
	TTNodeLibTestAddressMethods(errorCount, testAssertionCount);
	
	TTNodeLibTestAddressItem(errorCount, testAssertionCount);
	
	TTNodeLibTestAddressComparison(errorCount, testAssertionCount);
	
	TTNodeLibTestMiscellaneous(errorCount, testAssertionCount);
	
	return TTTestFinish(testAssertionCount, errorCount, returnedTestInfo);
}

#endif

