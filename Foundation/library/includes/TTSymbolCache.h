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


extern TTFOUNDATION_EXPORT TTSymbolTable	gTTSymbolTable;

extern TTFOUNDATION_EXPORT TTSymbol	kTTSymEmpty;
extern TTFOUNDATION_EXPORT TTSymbol	kTTSymSlash;
extern TTFOUNDATION_EXPORT TTSymbol	kTTSymDot;
extern TTFOUNDATION_EXPORT TTSymbol	kTTSymColon;
extern TTFOUNDATION_EXPORT TTSymbol	kTTSymStar;

extern TTFOUNDATION_EXPORT TTSymbol kTTSym_setVector32;
extern TTFOUNDATION_EXPORT TTSymbol kTTSym_getVector32;
extern TTFOUNDATION_EXPORT TTSymbol kTTSym_setVector64;
extern TTFOUNDATION_EXPORT TTSymbol kTTSym_getVector64;

extern TTFOUNDATION_EXPORT TTSymbol	kTTSym_alloc;
extern TTFOUNDATION_EXPORT TTSymbol	kTTSym_attribute;
extern TTFOUNDATION_EXPORT TTSymbol	kTTSym_baton;
extern TTFOUNDATION_EXPORT TTSymbol	kTTSym_both;
extern TTFOUNDATION_EXPORT TTSymbol	kTTSym_bypass;
extern TTFOUNDATION_EXPORT TTSymbol	kTTSym_clear;
extern TTFOUNDATION_EXPORT TTSymbol	kTTSym_clipmode;
extern TTFOUNDATION_EXPORT TTSymbol	kTTSym_clip;
extern TTFOUNDATION_EXPORT TTSymbol	kTTSym_cliplow;
extern TTFOUNDATION_EXPORT TTSymbol	kTTSym_cliphigh;
extern TTFOUNDATION_EXPORT TTSymbol	kTTSym_exclude;
extern TTFOUNDATION_EXPORT TTSymbol	kTTSym_wrap;
extern TTFOUNDATION_EXPORT TTSymbol	kTTSym_fold;
extern TTFOUNDATION_EXPORT TTSymbol	kTTSym_function;
extern TTFOUNDATION_EXPORT TTSymbol	kTTSym_high;
extern TTFOUNDATION_EXPORT TTSymbol	kTTSym_include;
extern TTFOUNDATION_EXPORT TTSymbol	kTTSym_instance;
extern TTFOUNDATION_EXPORT TTSymbol	kTTSym_low;
extern TTFOUNDATION_EXPORT TTSymbol	kTTSym_maxNumChannels;
extern TTFOUNDATION_EXPORT TTSymbol	kTTSym_mode;
extern TTFOUNDATION_EXPORT TTSymbol	kTTSym_name;
extern TTFOUNDATION_EXPORT TTSymbol	kTTSym_none;
extern TTFOUNDATION_EXPORT TTSymbol	kTTSym_notification;
extern TTFOUNDATION_EXPORT TTSymbol	kTTSym_notify;
extern TTFOUNDATION_EXPORT TTSymbol	kTTSym_numChannels;
extern TTFOUNDATION_EXPORT TTSymbol	kTTSym_object;
extern TTFOUNDATION_EXPORT TTSymbol	kTTSym_parent;
extern TTFOUNDATION_EXPORT TTSymbol	kTTSym_part;
extern TTFOUNDATION_EXPORT TTSymbol	kTTSym_priority;
extern TTFOUNDATION_EXPORT TTSymbol	kTTSym_processInPlace;
extern TTFOUNDATION_EXPORT TTSymbol	kTTSym_range;
extern TTFOUNDATION_EXPORT TTSymbol	kTTSym_resonance;
extern TTFOUNDATION_EXPORT TTSymbol	kTTSym_restrict;
extern TTFOUNDATION_EXPORT TTSymbol	kTTSym_updateMaxNumChannels;
extern TTFOUNDATION_EXPORT TTSymbol	kTTSym_updateSampleRate;
extern TTFOUNDATION_EXPORT TTSymbol	kTTSym_value;
extern TTFOUNDATION_EXPORT TTSymbol	kTTSym_vectorSize;
extern TTFOUNDATION_EXPORT TTSymbol	kTTSym_sampleRate;
extern TTFOUNDATION_EXPORT TTSymbol	kTTSym_schema;

extern TTFOUNDATION_EXPORT TTSymbol	kTTSym_tcp;
extern TTFOUNDATION_EXPORT TTSymbol	kTTSym_udp;

// waveforms
extern TTFOUNDATION_EXPORT TTSymbol	kTTSym_sine;
extern TTFOUNDATION_EXPORT TTSymbol	kTTSym_sineMod;
extern TTFOUNDATION_EXPORT TTSymbol	kTTSym_cosine;
extern TTFOUNDATION_EXPORT TTSymbol	kTTSym_cosineMod;
extern TTFOUNDATION_EXPORT TTSymbol	kTTSym_square;
extern TTFOUNDATION_EXPORT TTSymbol	kTTSym_squareMod;
extern TTFOUNDATION_EXPORT TTSymbol	kTTSym_triangle;
extern TTFOUNDATION_EXPORT TTSymbol	kTTSym_triangleMod;
extern TTFOUNDATION_EXPORT TTSymbol	kTTSym_ramp;
extern TTFOUNDATION_EXPORT TTSymbol	kTTSym_rampMod;
extern TTFOUNDATION_EXPORT TTSymbol	kTTSym_sawtooth;
extern TTFOUNDATION_EXPORT TTSymbol	kTTSym_sawtoothMod;

// object names
extern TTFOUNDATION_EXPORT TTSymbol	kTTSym_adsr;
extern TTFOUNDATION_EXPORT TTSymbol	kTTSym_audiosignal;
extern TTFOUNDATION_EXPORT TTSymbol	kTTSym_audiosignalarray;
extern TTFOUNDATION_EXPORT TTSymbol	kTTSym_dcblock;
extern TTFOUNDATION_EXPORT TTSymbol	kTTSym_gain;
extern TTFOUNDATION_EXPORT TTSymbol	kTTSym_operator;
extern TTFOUNDATION_EXPORT TTSymbol	kTTSym_phasor;

// matrix related
extern TTFOUNDATION_EXPORT TTSymbol	kTTSym_matrix;
extern TTFOUNDATION_EXPORT TTSymbol	kTTSym_matrixarray;
extern TTFOUNDATION_EXPORT TTSymbol	kTTSym_dimensions;
extern TTFOUNDATION_EXPORT TTSymbol	kTTSym_type;
extern TTFOUNDATION_EXPORT TTSymbol	kTTSym_elementCount;
extern TTFOUNDATION_EXPORT TTSymbol	kTTSym_samplematrix;
extern TTFOUNDATION_EXPORT TTSymbol	kTTSym_buffer;

// data types - 3 defined above: none, object, value
extern TTFOUNDATION_EXPORT TTSymbol	kTTSym_float32;
extern TTFOUNDATION_EXPORT TTSymbol	kTTSym_float64;
extern TTFOUNDATION_EXPORT TTSymbol	kTTSym_int8;
extern TTFOUNDATION_EXPORT TTSymbol	kTTSym_uint8;
extern TTFOUNDATION_EXPORT TTSymbol	kTTSym_int16;
extern TTFOUNDATION_EXPORT TTSymbol	kTTSym_uint16;
extern TTFOUNDATION_EXPORT TTSymbol	kTTSym_int32;
extern TTFOUNDATION_EXPORT TTSymbol	kTTSym_uint32;
extern TTFOUNDATION_EXPORT TTSymbol	kTTSym_int64;
extern TTFOUNDATION_EXPORT TTSymbol	kTTSym_uint64;
extern TTFOUNDATION_EXPORT TTSymbol	kTTSym_boolean;
extern TTFOUNDATION_EXPORT TTSymbol	kTTSym_symbol;
extern TTFOUNDATION_EXPORT TTSymbol	kTTSym_pointer;
extern TTFOUNDATION_EXPORT TTSymbol	kTTSym_string;


#endif // __TT_SYMBOL_CACHE_H__

