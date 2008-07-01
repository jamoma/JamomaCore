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

extern TTEXPORT TTSymbol*	kTTSym_sine;
extern TTEXPORT TTSymbol*	kTTSym_sineMod;
extern TTEXPORT TTSymbol*	kTTSym_cosine;
extern TTEXPORT TTSymbol*	kTTSym_cosineMod;
extern TTEXPORT TTSymbol*	kTTSym_square;
extern TTEXPORT TTSymbol*	kTTSym_squareMod;
extern TTEXPORT TTSymbol*	kTTSym_triangle;
extern TTEXPORT TTSymbol*	kTTSym_triangleMod;
extern TTEXPORT TTSymbol*	kTTSym_ramp;
extern TTEXPORT TTSymbol*	kTTSym_rampMod;
extern TTEXPORT TTSymbol*	kTTSym_sawtooth;
extern TTEXPORT TTSymbol*	kTTSym_sawtoothMod;

void TTSymbolCacheInit();

#endif // __TT_SYMBOL_CACHE_H__

