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

extern TTEXPORT TTSymbol*	kTTSymEmpty;

extern TTEXPORT TTSymbol*	kTTSym_both;
extern TTEXPORT TTSymbol*	kTTSym_bypass;
extern TTEXPORT TTSymbol*	kTTSym_clipmode;
extern TTEXPORT TTSymbol*	kTTSym_high;
extern TTEXPORT TTSymbol*	kTTSym_maxNumChannels;
extern TTEXPORT TTSymbol*	kTTSym_low;
extern TTEXPORT TTSymbol*	kTTSym_processInPlace;
extern TTEXPORT TTSymbol*	kTTSym_range;
extern TTEXPORT TTSymbol*	kTTSym_resonance;
extern TTEXPORT TTSymbol*	kTTSym_sr;
extern TTEXPORT TTSymbol*	kTTSym_updateMaxNumChannels;
extern TTEXPORT TTSymbol*	kTTSym_updateSr;


void TTSymbolCacheInit();

#endif // __TT_SYMBOL_CACHE_H__

