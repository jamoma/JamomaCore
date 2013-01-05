/** @file
 *
 * @ingroup foundationLibrary
 *
 * @brief Jamoma Foundation : Caching common values for speed
 *
 * @details
 *
 * @authors Tim Place, Théo de la Hogue, Trond Lossius
 *
 * @copyright Copyright © 2008, Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#include "TTValueCache.h"
#include "TTObject.h"

TTFOUNDATION_EXPORT TTValue	kTTBoolNo;
TTFOUNDATION_EXPORT TTValue	kTTBoolYes;

TTFOUNDATION_EXPORT TTValue	kTTValNONE;
TTFOUNDATION_EXPORT TTValue	kTTVal0;
TTFOUNDATION_EXPORT TTValue	kTTVal1;
TTFOUNDATION_EXPORT TTValue	kTTVal0_pt_0;


void TTValueCacheInit()
{
	kTTBoolNo = TTBoolean(NO);
	kTTBoolYes = TTBoolean(YES);

	kTTValNONE.clear();
	
	kTTVal0 = 0;
	kTTVal1 = 1;
	kTTVal0_pt_0 = 0.0;
}
