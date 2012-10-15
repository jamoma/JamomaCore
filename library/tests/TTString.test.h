/* 
 * Unit tests for the TTString object
 * Copyright © 2012, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_STRINGTEST_H__
#define __TT_STRINGTEST_H__

#include "TTDataObject.h"
#include "TTUnitTest.h"

/**	Provide unit tests for #TTString */
class TTStringTest : public TTDataObject {
	TTCLASS_SETUP(TTStringTest)
		
	virtual TTErr test(TTValue& returnedTestInfo);
};


#endif // __TT_VALUETEST_H__
