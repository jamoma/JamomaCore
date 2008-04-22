/* 
 * TTBlue Class for caching common symbols for speed
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __TT_SYMBOL_CACHE_H__
#define __TT_SYMBOL_CACHE_H__

#include "TTSymbol.h"

extern const TTEXPORT TTSymbol*	kTTSymEmpty;

extern const TTEXPORT TTSymbol*	kTTSym_both;
extern const TTEXPORT TTSymbol*	kTTSym_bypass;
extern const TTEXPORT TTSymbol*	kTTSym_clipmode;
extern const TTEXPORT TTSymbol*	kTTSym_high;
extern const TTEXPORT TTSymbol*	kTTSym_maxNumChannels;
extern const TTEXPORT TTSymbol*	kTTSym_low;
extern const TTEXPORT TTSymbol*	kTTSym_processInPlace;
extern const TTEXPORT TTSymbol*	kTTSym_range;
extern const TTEXPORT TTSymbol*	kTTSym_resonance;
extern const TTEXPORT TTSymbol*	kTTSym_sr;
extern const TTEXPORT TTSymbol*	kTTSym_updateMaxNumChannels;
extern const TTEXPORT TTSymbol*	kTTSym_updateSr;


void TTSymbolCacheInit();

#endif // __TT_SYMBOL_CACHE_H__

