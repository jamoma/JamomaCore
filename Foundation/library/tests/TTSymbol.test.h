/* 
 * Unit tests for the TTSymbol object
 * Copyright © 2012, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_SYMBOLTEST_H__
#define __TT_SYMBOLTEST_H__

#include "TTDataObjectBase.h"
#include "TTUnitTest.h"

/**	Provide unit tests for #TTSymbol */
class TTSymbolTest : public TTDataObjectBase {
	TTCLASS_SETUP(TTSymbolTest)
		
	virtual TTErr test(TTValue& returnedTestInfo);
};


#endif // __TT_SYMBOLTEST_H__
