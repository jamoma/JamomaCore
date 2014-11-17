/** @file
 *
 * @ingroup foundationLibrary
 *
 * @brief #TTListTest is an class used for unit tests of the #TTList class.
 *
 * @details
 *
 * @author Théo de la Hogue, Tim Place
 *
 * @copyright Copyright © 2013, Théo de la Hogue, Tim Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#ifndef __TT_LISTTEST_H__
#define __TT_LISTTEST_H__

#include "TTDataObjectBase.h"
#include "TTUnitTest.h"

/**	Provide unit tests for #TTValue */
class TTListTest : public TTDataObjectBase {
	TTCLASS_SETUP(TTListTest)
		
	virtual TTErr test(TTValue& returnedTestInfo);
};


#endif // __TT_LISTTEST_H__
