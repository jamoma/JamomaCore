/* 
 * Unit tests for the TTRegex object
 * Copyright © 2015, Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_REGEXTEST_H__
#define __TT_REGEXTEST_H__

#include "TTDataObjectBase.h"
#include "TTUnitTest.h"

/**	Provide unit tests for #TTRegex */
class TTRegexTest : public TTDataObjectBase
{
	TTCLASS_SETUP(TTRegexTest)
		
	virtual TTErr test(TTValue& returnedTestInfo);
};


#endif // __TT_REGEXTEST_H__
