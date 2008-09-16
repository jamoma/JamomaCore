/* 
 * TTBlue Class for caching common values for speed
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTValueCache.h"
#include "TTObject.h"

TTEXPORT TTValuePtr	kTTBoolNo;
TTEXPORT TTValuePtr	kTTBoolYes;

TTEXPORT TTValuePtr	kTTVal0;
TTEXPORT TTValuePtr	kTTVal1;
TTEXPORT TTValuePtr	kTTVal0_pt_0;


void TTValueCacheInit()
{
	kTTBoolNo = new TTValue(TTBoolean(NO));
	kTTBoolYes = new TTValue(TTBoolean(YES));

	kTTVal0 = new TTValue(TTInt32(0));
	kTTVal1 = new TTValue(TTInt32(1));
	kTTVal0_pt_0 = new TTValue(double(0.0));
}
