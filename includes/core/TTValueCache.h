/* 
 * TTBlue Class for caching common values for speed
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __TT_VALUE_CACHE_H__
#define __TT_VALUE_CACHE_H__

#include "TTValue.h"


extern TTValuePtr	kTTBoolNo;
extern TTValuePtr	kTTBoolYes;

extern TTValuePtr	kTTVal0;
extern TTValuePtr	kTTVal1;
extern TTValuePtr	kTTVal0_pt_0;

void TTValueCacheInit();

#endif // __TT_VALUE_CACHE_H__

