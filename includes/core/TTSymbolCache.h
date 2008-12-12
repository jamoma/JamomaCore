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

// high-performance (these are defined first so that they are found fast)
extern TTEXPORT TTSymbolPtr	kTTSymEmpty;
extern TTEXPORT TTSymbolPtr kTTSym_setVector32;
extern TTEXPORT TTSymbolPtr kTTSym_getVector32;
extern TTEXPORT TTSymbolPtr kTTSym_setVector64;
extern TTEXPORT TTSymbolPtr kTTSym_getVector64;

extern TTEXPORT TTSymbolPtr	kTTSym_alloc;
extern TTEXPORT TTSymbolPtr	kTTSym_audioEngineWillProcess;
extern TTEXPORT TTSymbolPtr	kTTSym_both;
extern TTEXPORT TTSymbolPtr	kTTSym_bypass;
extern TTEXPORT TTSymbolPtr	kTTSym_clipmode;
extern TTEXPORT TTSymbolPtr	kTTSym_high;
extern TTEXPORT TTSymbolPtr	kTTSym_low;
extern TTEXPORT TTSymbolPtr	kTTSym_maxNumChannels;
extern TTEXPORT TTSymbolPtr	kTTSym_numChannels;
extern TTEXPORT TTSymbolPtr	kTTSym_processInPlace;
extern TTEXPORT TTSymbolPtr	kTTSym_range;
extern TTEXPORT TTSymbolPtr	kTTSym_resonance;
extern TTEXPORT TTSymbolPtr	kTTSym_sr;
extern TTEXPORT TTSymbolPtr	kTTSym_updateMaxNumChannels;
extern TTEXPORT TTSymbolPtr	kTTSym_updateSr;
extern TTEXPORT TTSymbolPtr	kTTSym_vectorSize;

// waveforms
extern TTEXPORT TTSymbolPtr	kTTSym_sine;
extern TTEXPORT TTSymbolPtr	kTTSym_sineMod;
extern TTEXPORT TTSymbolPtr	kTTSym_cosine;
extern TTEXPORT TTSymbolPtr	kTTSym_cosineMod;
extern TTEXPORT TTSymbolPtr	kTTSym_square;
extern TTEXPORT TTSymbolPtr	kTTSym_squareMod;
extern TTEXPORT TTSymbolPtr	kTTSym_triangle;
extern TTEXPORT TTSymbolPtr	kTTSym_triangleMod;
extern TTEXPORT TTSymbolPtr	kTTSym_ramp;
extern TTEXPORT TTSymbolPtr	kTTSym_rampMod;
extern TTEXPORT TTSymbolPtr	kTTSym_sawtooth;
extern TTEXPORT TTSymbolPtr	kTTSym_sawtoothMod;

// object names
extern TTEXPORT TTSymbolPtr	kTTSym_adsr;
extern TTEXPORT TTSymbolPtr	kTTSym_audiosignal;
extern TTEXPORT TTSymbolPtr	kTTSym_dcblock;
extern TTEXPORT TTSymbolPtr	kTTSym_gain;
extern TTEXPORT TTSymbolPtr	kTTSym_operator;
extern TTEXPORT TTSymbolPtr	kTTSym_phasor;

void TTSymbolCacheInit();

#endif // __TT_SYMBOL_CACHE_H__

