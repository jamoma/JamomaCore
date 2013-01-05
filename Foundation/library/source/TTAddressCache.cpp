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

// TODO: rename these to, e.g. kTTAddressEmpty
TTFOUNDATION_EXPORT TTAddress	kTTAdrsEmpty("");
TTFOUNDATION_EXPORT TTAddress	kTTAdrsRoot("/");
TTFOUNDATION_EXPORT TTAddress	kTTAdrsZero("0");

#endif
