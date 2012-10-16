/* 
 * TTBlue Class for caching common values for speed
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
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
	
	kTTVal0 = 0l;
	kTTVal1 = 1l;
	kTTVal0_pt_0 = 0.0;
}
