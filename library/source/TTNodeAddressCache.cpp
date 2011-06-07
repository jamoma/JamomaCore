/* 
 * TTBlue Class for caching common address for speed
 * Copyright © 2011, Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */


#include "TTNodeAddressCache.h"

TTFOUNDATION_EXPORT TTNodeAddressPtr kTTAdrsEmpty;
TTFOUNDATION_EXPORT TTNodeAddressPtr kTTAdrsRoot;

void TTNodeAddressCacheInit()
{
	kTTAdrsEmpty				= TTADRS("");
	kTTAdrsRoot					= TTADRS("/");
}