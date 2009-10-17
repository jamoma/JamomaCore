/* 
 * TTBlue Class for caching common values for speed
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
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
	kTTBoolNo = *new TTValue(TTBoolean(NO));
	kTTBoolYes = *new TTValue(TTBoolean(YES));

	kTTValNONE = *new TTValue;
	kTTValNONE.clear();
	
	kTTVal0 = *new TTValue(0);
	kTTVal1 = *new TTValue(1);
	kTTVal0_pt_0 = *new TTValue(double(0.0));
}
