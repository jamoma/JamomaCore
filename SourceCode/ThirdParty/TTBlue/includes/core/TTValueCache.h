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

class TTAttribute;
extern TTAttribute* kTTAttr;	///< bogus attribute for direct accessor calls
#define TTATTR *kTTAttr

extern TTValue*	kTTBoolNo;
extern TTValue*	kTTBoolYes;

extern TTValue*	kTTVal0;
extern TTValue*	kTTVal1;


void TTValueCacheInit();

#endif // __TT_VALUE_CACHE_H__

