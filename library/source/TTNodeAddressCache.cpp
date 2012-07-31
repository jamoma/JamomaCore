/* 
 * TTBlue Class for caching common address for speed
 * Copyright © 2011, Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef DISABLE_NODELIB

#include "TTNodeAddressCache.h"

TTFOUNDATION_EXPORT TTNodeAddressPtr kTTAdrsEmpty;
TTFOUNDATION_EXPORT TTNodeAddressPtr kTTAdrsRoot;
TTFOUNDATION_EXPORT TTNodeAddressPtr kTTAdrsZero;

void TTNodeAddressCacheInit()
{
	kTTAdrsEmpty				= TTADRS("");
	kTTAdrsRoot					= TTADRS("/");
	kTTAdrsZero					= TTADRS("0");
}

#endif
