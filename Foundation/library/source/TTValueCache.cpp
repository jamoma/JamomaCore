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

TTFOUNDATION_EXPORT const TTValue	kTTBoolNo(NO);
TTFOUNDATION_EXPORT const TTValue	kTTBoolYes(YES);

TTFOUNDATION_EXPORT const TTValue	kTTValNONE;
TTFOUNDATION_EXPORT const TTValue	kTTVal0(0);
TTFOUNDATION_EXPORT const TTValue	kTTVal1(1);
TTFOUNDATION_EXPORT const TTValue	kTTVal0_pt_0(0.0);
