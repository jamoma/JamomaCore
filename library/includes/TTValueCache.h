/* 
 * TTBlue Class for caching common values for speed
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_VALUE_CACHE_H__
#define __TT_VALUE_CACHE_H__

#include "TTValue.h"


extern TTFOUNDATION_EXPORT TTValue	kTTBoolNo;
extern TTFOUNDATION_EXPORT TTValue	kTTBoolYes;

extern TTFOUNDATION_EXPORT TTValue	kTTValNONE;
extern TTFOUNDATION_EXPORT TTValue	kTTVal0;
extern TTFOUNDATION_EXPORT TTValue	kTTVal1;
extern TTFOUNDATION_EXPORT TTValue	kTTVal0_pt_0;

void TTValueCacheInit();

#endif // __TT_VALUE_CACHE_H__

