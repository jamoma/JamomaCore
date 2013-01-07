/* 
 * Unit tests for the NodeLib
 * Copyright © 2011, Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_NODELIBTEST_H__
#define __TT_NODELIBTEST_H__

#include "TTDataObject.h"
#include "TTUnitTest.h"

#include "TTNode.h"
#include "TTAddress.h"
#include "TTAddressItem.h"
#include "TTNodeDirectory.h"

/**	Provide unit tests for #TTValue */
class TTNodeLibTest : public TTDataObjectBase {
	TTCLASS_SETUP(TTNodeLibTest)
		
	virtual TTErr test(TTValue& returnedTestInfo);
};


#endif // __TT_NODELIBTEST_H__
