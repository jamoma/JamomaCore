/* 
 * TTBlue Class for caching common symbols for speed
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTValueCache.h"
#include "TTSymbolTable.h"
#include "TTSymbolCache.h"


TTFOUNDATION_EXPORT TTSymbolPtr	kTTSymEmpty;
TTFOUNDATION_EXPORT TTSymbolPtr	kTTSymSlash;
TTFOUNDATION_EXPORT TTSymbolPtr	kTTSymDot;
TTFOUNDATION_EXPORT TTSymbolPtr	kTTSymColon;
TTFOUNDATION_EXPORT TTSymbolPtr	kTTSymStar;

TTFOUNDATION_EXPORT TTSymbolPtr	kTTSym_setVector32;
TTFOUNDATION_EXPORT TTSymbolPtr	kTTSym_getVector32;
TTFOUNDATION_EXPORT TTSymbolPtr	kTTSym_setVector64;
TTFOUNDATION_EXPORT TTSymbolPtr	kTTSym_getVector64;

TTFOUNDATION_EXPORT TTSymbolPtr	kTTSym_alloc;
TTFOUNDATION_EXPORT TTSymbolPtr	kTTSym_audioEngineWillProcess;
TTFOUNDATION_EXPORT TTSymbolPtr	kTTSym_baton;
TTFOUNDATION_EXPORT TTSymbolPtr	kTTSym_both;
TTFOUNDATION_EXPORT TTSymbolPtr	kTTSym_bypass;
TTFOUNDATION_EXPORT TTSymbolPtr	kTTSym_clear;
TTFOUNDATION_EXPORT TTSymbolPtr	kTTSym_clipmode;
TTFOUNDATION_EXPORT TTSymbolPtr	kTTSym_fold;
TTFOUNDATION_EXPORT TTSymbolPtr	kTTSym_function;
TTFOUNDATION_EXPORT TTSymbolPtr	kTTSym_high;
TTFOUNDATION_EXPORT TTSymbolPtr	kTTSym_low;
TTFOUNDATION_EXPORT TTSymbolPtr	kTTSym_maxNumChannels;
TTFOUNDATION_EXPORT TTSymbolPtr	kTTSym_notify;
TTFOUNDATION_EXPORT TTSymbolPtr	kTTSym_numChannels;
TTFOUNDATION_EXPORT TTSymbolPtr	kTTSym_processInPlace;
TTFOUNDATION_EXPORT TTSymbolPtr	kTTSym_range;
TTFOUNDATION_EXPORT TTSymbolPtr	kTTSym_resonance;
TTFOUNDATION_EXPORT TTSymbolPtr	kTTSym_sr;
TTFOUNDATION_EXPORT TTSymbolPtr	kTTSym_updateMaxNumChannels;
TTFOUNDATION_EXPORT TTSymbolPtr	kTTSym_updateSampleRate;
TTFOUNDATION_EXPORT TTSymbolPtr	kTTSym_value;
TTFOUNDATION_EXPORT TTSymbolPtr	kTTSym_vectorSize;
TTFOUNDATION_EXPORT TTSymbolPtr	kTTSym_sampleRate;

TTFOUNDATION_EXPORT TTSymbolPtr	kTTSym_tcp;
TTFOUNDATION_EXPORT TTSymbolPtr	kTTSym_udp;

TTFOUNDATION_EXPORT TTSymbolPtr	kTTSym_sine;
TTFOUNDATION_EXPORT TTSymbolPtr	kTTSym_sineMod;
TTFOUNDATION_EXPORT TTSymbolPtr	kTTSym_cosine;
TTFOUNDATION_EXPORT TTSymbolPtr	kTTSym_cosineMod;
TTFOUNDATION_EXPORT TTSymbolPtr	kTTSym_square;
TTFOUNDATION_EXPORT TTSymbolPtr	kTTSym_squareMod;
TTFOUNDATION_EXPORT TTSymbolPtr	kTTSym_triangle;
TTFOUNDATION_EXPORT TTSymbolPtr	kTTSym_triangleMod;
TTFOUNDATION_EXPORT TTSymbolPtr	kTTSym_ramp;
TTFOUNDATION_EXPORT TTSymbolPtr	kTTSym_rampMod;
TTFOUNDATION_EXPORT TTSymbolPtr	kTTSym_sawtooth;
TTFOUNDATION_EXPORT TTSymbolPtr	kTTSym_sawtoothMod;

TTFOUNDATION_EXPORT TTSymbolPtr	kTTSym_adsr;
TTFOUNDATION_EXPORT TTSymbolPtr	kTTSym_audiosignal;
TTFOUNDATION_EXPORT TTSymbolPtr	kTTSym_audiosignalarray;
TTFOUNDATION_EXPORT TTSymbolPtr	kTTSym_dcblock;
TTFOUNDATION_EXPORT TTSymbolPtr	kTTSym_gain;
TTFOUNDATION_EXPORT TTSymbolPtr	kTTSym_operator;
TTFOUNDATION_EXPORT TTSymbolPtr	kTTSym_phasor;


void TTSymbolCacheInit()
{
	kTTSymEmpty						= TT("");
	kTTSymSlash						= TT("/");
	kTTSymDot						= TT(".");
	kTTSymColon						= TT(":");
	kTTSymStar						= TT("*");

	kTTSym_setVector32				= TT("setVector32");
	kTTSym_getVector32				= TT("getVector32");
	kTTSym_setVector64				= TT("setVector64");
	kTTSym_getVector64				= TT("getVector64");

	kTTSym_alloc					= TT("alloc");
	kTTSym_audioEngineWillProcess	= TT("audioEngineWillProcess");
	kTTSym_baton					= TT("baton");
	kTTSym_both						= TT("both");
	kTTSym_bypass					= TT("bypass");
	kTTSym_clear					= TT("clear");
	kTTSym_clipmode					= TT("clipmode");
	kTTSym_fold						= TT("fold");
	kTTSym_function					= TT("function");
	kTTSym_high						= TT("high");
	kTTSym_low						= TT("low");
	kTTSym_maxNumChannels			= TT("maxNumChannels");
	kTTSym_notify					= TT("notify");
	kTTSym_numChannels				= TT("numChannels");
	kTTSym_processInPlace			= TT("processInPlace");
	kTTSym_range					= TT("range");
	kTTSym_resonance				= TT("resonance");
	kTTSym_sr						= TT("sr");
	kTTSym_updateMaxNumChannels		= TT("updateMaxNumChannels");
	kTTSym_updateSampleRate			= TT("updateSampleRate");
	kTTSym_value					= TT("value");
	kTTSym_vectorSize				= TT("vectorSize");
	kTTSym_sampleRate				= TT("sampleRate");

	kTTSym_tcp						= TT("tcp");
	kTTSym_udp						= TT("udp");

	kTTSym_sine						= TT("sine");
	kTTSym_sineMod					= TT("sineMod");
	kTTSym_cosine					= TT("cosine");
	kTTSym_cosineMod				= TT("cosineMod");
	kTTSym_square					= TT("square");
	kTTSym_squareMod				= TT("squareMod");
	kTTSym_triangle					= TT("triangle");
	kTTSym_triangleMod				= TT("triangleMod");
	kTTSym_ramp						= TT("ramp");
	kTTSym_rampMod					= TT("rampMod");
	kTTSym_sawtooth					= TT("sawtooth");
	kTTSym_sawtoothMod				= TT("sawtoothMod");
	
	kTTSym_adsr						= TT("adsr");
	kTTSym_audiosignal				= TT("audiosignal");
	kTTSym_audiosignalarray			= TT("audiosignalarray");
	kTTSym_dcblock					= TT("dcblock");
	kTTSym_gain						= TT("gain");
	kTTSym_operator					= TT("operator");
	kTTSym_phasor					= TT("phasor");
}
