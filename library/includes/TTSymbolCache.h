/* 
 * TTBlue Class for caching common symbols for speed
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_SYMBOL_CACHE_H__
#define __TT_SYMBOL_CACHE_H__

#include "TTSymbol.h"


extern TTFOUNDATION_EXPORT TTSymbolRef	kTTSymEmpty;
extern TTFOUNDATION_EXPORT TTSymbolRef	kTTSymSlash;
extern TTFOUNDATION_EXPORT TTSymbolRef	kTTSymDot;
extern TTFOUNDATION_EXPORT TTSymbolRef	kTTSymColon;
extern TTFOUNDATION_EXPORT TTSymbolRef	kTTSymStar;

extern TTFOUNDATION_EXPORT TTSymbolRef kTTSym_setVector32;
extern TTFOUNDATION_EXPORT TTSymbolRef kTTSym_getVector32;
extern TTFOUNDATION_EXPORT TTSymbolRef kTTSym_setVector64;
extern TTFOUNDATION_EXPORT TTSymbolRef kTTSym_getVector64;

extern TTFOUNDATION_EXPORT TTSymbolRef	kTTSym_alloc;
extern TTFOUNDATION_EXPORT TTSymbolRef	kTTSym_attribute;
extern TTFOUNDATION_EXPORT TTSymbolRef	kTTSym_audioEngineWillProcess;
extern TTFOUNDATION_EXPORT TTSymbolRef	kTTSym_baton;
extern TTFOUNDATION_EXPORT TTSymbolRef	kTTSym_both;
extern TTFOUNDATION_EXPORT TTSymbolRef	kTTSym_bypass;
extern TTFOUNDATION_EXPORT TTSymbolRef	kTTSym_clear;
extern TTFOUNDATION_EXPORT TTSymbolRef	kTTSym_clipmode;
extern TTFOUNDATION_EXPORT TTSymbolRef	kTTSym_clip;
extern TTFOUNDATION_EXPORT TTSymbolRef	kTTSym_exclude;
extern TTFOUNDATION_EXPORT TTSymbolRef	kTTSym_wrap;
extern TTFOUNDATION_EXPORT TTSymbolRef	kTTSym_fold;
extern TTFOUNDATION_EXPORT TTSymbolRef	kTTSym_function;
extern TTFOUNDATION_EXPORT TTSymbolRef	kTTSym_high;
extern TTFOUNDATION_EXPORT TTSymbolRef	kTTSym_include;
extern TTFOUNDATION_EXPORT TTSymbolRef	kTTSym_instance;
extern TTFOUNDATION_EXPORT TTSymbolRef	kTTSym_low;
extern TTFOUNDATION_EXPORT TTSymbolRef	kTTSym_maxNumChannels;
extern TTFOUNDATION_EXPORT TTSymbolRef	kTTSym_mode;
extern TTFOUNDATION_EXPORT TTSymbolRef	kTTSym_name;
extern TTFOUNDATION_EXPORT TTSymbolRef	kTTSym_none;
extern TTFOUNDATION_EXPORT TTSymbolRef	kTTSym_notify;
extern TTFOUNDATION_EXPORT TTSymbolRef	kTTSym_numChannels;
extern TTFOUNDATION_EXPORT TTSymbolRef	kTTSym_object;
extern TTFOUNDATION_EXPORT TTSymbolRef	kTTSym_parent;
extern TTFOUNDATION_EXPORT TTSymbolRef	kTTSym_part;
extern TTFOUNDATION_EXPORT TTSymbolRef	kTTSym_processInPlace;
extern TTFOUNDATION_EXPORT TTSymbolRef	kTTSym_range;
extern TTFOUNDATION_EXPORT TTSymbolRef	kTTSym_resonance;
extern TTFOUNDATION_EXPORT TTSymbolRef	kTTSym_restrict;
extern TTFOUNDATION_EXPORT TTSymbolRef	kTTSym_updateMaxNumChannels;
extern TTFOUNDATION_EXPORT TTSymbolRef	kTTSym_updateSampleRate;
extern TTFOUNDATION_EXPORT TTSymbolRef	kTTSym_value;
extern TTFOUNDATION_EXPORT TTSymbolRef	kTTSym_vectorSize;
extern TTFOUNDATION_EXPORT TTSymbolRef	kTTSym_sampleRate;

extern TTFOUNDATION_EXPORT TTSymbolRef	kTTSym_tcp;
extern TTFOUNDATION_EXPORT TTSymbolRef	kTTSym_udp;

// waveforms
extern TTFOUNDATION_EXPORT TTSymbolRef	kTTSym_sine;
extern TTFOUNDATION_EXPORT TTSymbolRef	kTTSym_sineMod;
extern TTFOUNDATION_EXPORT TTSymbolRef	kTTSym_cosine;
extern TTFOUNDATION_EXPORT TTSymbolRef	kTTSym_cosineMod;
extern TTFOUNDATION_EXPORT TTSymbolRef	kTTSym_square;
extern TTFOUNDATION_EXPORT TTSymbolRef	kTTSym_squareMod;
extern TTFOUNDATION_EXPORT TTSymbolRef	kTTSym_triangle;
extern TTFOUNDATION_EXPORT TTSymbolRef	kTTSym_triangleMod;
extern TTFOUNDATION_EXPORT TTSymbolRef	kTTSym_ramp;
extern TTFOUNDATION_EXPORT TTSymbolRef	kTTSym_rampMod;
extern TTFOUNDATION_EXPORT TTSymbolRef	kTTSym_sawtooth;
extern TTFOUNDATION_EXPORT TTSymbolRef	kTTSym_sawtoothMod;

// object names
extern TTFOUNDATION_EXPORT TTSymbolRef	kTTSym_adsr;
extern TTFOUNDATION_EXPORT TTSymbolRef	kTTSym_audiosignal;
extern TTFOUNDATION_EXPORT TTSymbolRef	kTTSym_audiosignalarray;
extern TTFOUNDATION_EXPORT TTSymbolRef	kTTSym_dcblock;
extern TTFOUNDATION_EXPORT TTSymbolRef	kTTSym_gain;
extern TTFOUNDATION_EXPORT TTSymbolRef	kTTSym_operator;
extern TTFOUNDATION_EXPORT TTSymbolRef	kTTSym_phasor;

// matrix related
extern TTFOUNDATION_EXPORT TTSymbolRef	kTTSym_matrix;
extern TTFOUNDATION_EXPORT TTSymbolRef	kTTSym_matrixarray;
extern TTFOUNDATION_EXPORT TTSymbolRef	kTTSym_dimensions;
extern TTFOUNDATION_EXPORT TTSymbolRef	kTTSym_type;
extern TTFOUNDATION_EXPORT TTSymbolRef	kTTSym_elementCount;
extern TTFOUNDATION_EXPORT TTSymbolRef	kTTSym_uint8;
extern TTFOUNDATION_EXPORT TTSymbolRef	kTTSym_int32;
extern TTFOUNDATION_EXPORT TTSymbolRef	kTTSym_float32;
extern TTFOUNDATION_EXPORT TTSymbolRef	kTTSym_float64;


#endif // __TT_SYMBOL_CACHE_H__

