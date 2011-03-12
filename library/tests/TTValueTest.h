/* 
 * Unit tests for the TTValue object
 * Copyright © 2011, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_VALUETEST_H__
#define __TT_VALUETEST_H__

#include "TTDataObject.h"
#include "TTUnitTest.h"

/**	Provide unit tests for #TTValue */
class TTValueTest : public TTDataObject {
	TTCLASS_SETUP(TTValueTest)
		
	virtual TTErr test(TTValue& returnedTestInfo);
};


#endif // __TT_VALUETEST_H__
