/* 
 * TTBlue Class for caching common address for speed
 * Copyright © 2011, Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_NODE_ADDRESS_CACHE_H__
#define __TT_NODE_ADDRESS_CACHE_H__

#include "TTNodeAddress.h"
#include "TTNodeAddressTable.h"

extern TTFOUNDATION_EXPORT TTNodeAddressPtr	kTTAdrsEmpty;
extern TTFOUNDATION_EXPORT TTNodeAddressPtr	kTTAdrsRoot;

void TTNodeAddressCacheInit();

#endif // __TT_NODE_ADDRESS_CACHE_H__

