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
class TTStateTest : public TTDataObjectBase {
	TTCLASS_SETUP(TTStateTest)
		
	virtual TTErr test(TTValue& returnedTestInfo);
};


#endif // __TT_STATETEST_H__
