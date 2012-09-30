/* 
 * TTBlue Class for caching common address for speed
 * Copyright © 2011, Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef DISABLE_NODELIB

#include "TTAddressCache.h"


TTFOUNDATION_EXPORT TTAddressTable	gTTAddressTable;

TTFOUNDATION_EXPORT TTAddressPtr	kTTAdrsEmpty;
TTFOUNDATION_EXPORT TTAddressPtr	kTTAdrsRoot;
TTFOUNDATION_EXPORT TTAddressPtr	kTTAdrsZero;

void TTAddressCacheInit()
{
	kTTAdrsEmpty				= TTADRS("");
	kTTAdrsRoot					= TTADRS("/");
	kTTAdrsZero					= TTADRS("0");
}

#endif
