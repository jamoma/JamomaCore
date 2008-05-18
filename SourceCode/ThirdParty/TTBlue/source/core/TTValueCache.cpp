/* 
 * TTBlue Class for caching common values for speed
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTValueCache.h"
#include "TTObject.h"

TTValue*	kTTBoolNo;
TTValue*	kTTBoolYes;

TTValue*	kTTVal0;
TTValue*	kTTVal1;

TTAttribute* kTTAttr;


void TTValueCacheInit()
{
	kTTBoolNo = new TTValue(TTBoolean(NO));
	kTTBoolYes = new TTValue(TTBoolean(YES));

	kTTVal0 = new TTValue(TTInt32(0));
	kTTVal1 = new TTValue(TTInt32(1));

	kTTAttr = new TTAttribute(*kTTSymEmpty, kTypeSymbol, NULL);
}
