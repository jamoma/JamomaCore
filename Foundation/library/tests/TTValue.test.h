/** @file
 *
 * @ingroup foundationLibrary
 *
 * @brief #TTValueTest is an class used for unit tests of the #TTValue class.
 *
 * @details
 *
 * @authors Tim Place, Théo de la Hogue, Nathan Wolek, Julien Rabin, Nils Peters, Trond Lossius
 *
 * @copyright Copyright © 2011, Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#ifndef __TT_VALUETEST_H__
#define __TT_VALUETEST_H__

#include "TTDataObjectBase.h"
#include "TTUnitTest.h"

/**	Provide unit tests for #TTValue */
class TTValueTest : public TTDataObjectBase {
	TTCLASS_SETUP(TTValueTest)
		
	virtual TTErr test(TTValue& returnedTestInfo);
};


#endif // __TT_VALUETEST_H__
