/*
 * Unit tests for TTState
 * Copyright © 2014, Théo de la Hogue
 *
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_STATETEST_H__
#define __TT_STATETEST_H__

#include "TTObjectBase.h"
#include "TTUnitTest.h"

/**	Provide unit tests for state class */
class TTStateTest : public TTDataObjectBase, public TTState
{
	TTCLASS_SETUP(TTStateTest)
    
    TTValue mTestMember1;
    TTValue mTestMember2;
		
	virtual TTErr test(TTValue& returnedTestInfo);
    
    TTErr getState(TTValue& returnedState) const override;
    TTErr setState(const TTValue& newState) override;
    
    void TTStateTestStoreAndRecall(int& errorCount, int& testAssertionCount);
};

#endif // __TT_STATETEST_H__
