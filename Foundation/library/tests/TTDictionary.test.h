/** @file
 *
 * @ingroup foundationLibrary
 *
 * @brief #TTDictionaryTest is an class used for unit tests of the #TTDictionary class.
 *
 * @details
 *
 * @authors Théo de la Hogue, Tim Place
 *
 * @copyright Copyright © 2013, Théo de la Hogue, Tim Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#ifndef __TT_DICTIONARYTEST_H__
#define __TT_DICTIONARYTEST_H__

#include "TTDataObjectBase.h"
#include "TTUnitTest.h"

/**	Provide unit tests for #TTValue */
class TTDictionaryTest : public TTDataObjectBase {
	TTCLASS_SETUP(TTDictionaryTest)
		
	virtual TTErr test(TTValue& returnedTestInfo);
};


#endif // __TT_DICTIONARYTEST_H__
