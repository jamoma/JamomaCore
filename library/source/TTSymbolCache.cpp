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


TTFOUNDATION_EXPORT TTSymbolRef	kTTSymEmpty;
TTFOUNDATION_EXPORT TTSymbolRef	kTTSymSlash;
TTFOUNDATION_EXPORT TTSymbolRef	kTTSymDot;
TTFOUNDATION_EXPORT TTSymbolRef	kTTSymColon;
TTFOUNDATION_EXPORT TTSymbolRef	kTTSymStar;

TTFOUNDATION_EXPORT TTSymbolRef	kTTSym_setVector32;
TTFOUNDATION_EXPORT TTSymbolRef	kTTSym_getVector32;
TTFOUNDATION_EXPORT TTSymbolRef	kTTSym_setVector64;
TTFOUNDATION_EXPORT TTSymbolRef	kTTSym_getVector64;

TTFOUNDATION_EXPORT TTSymbolRef	kTTSym_alloc;
TTFOUNDATION_EXPORT TTSymbolRef	kTTSym_attribute;
TTFOUNDATION_EXPORT TTSymbolRef	kTTSym_audioEngineWillProcess;
TTFOUNDATION_EXPORT TTSymbolRef	kTTSym_baton;
TTFOUNDATION_EXPORT TTSymbolRef	kTTSym_both;
TTFOUNDATION_EXPORT TTSymbolRef	kTTSym_bypass;
TTFOUNDATION_EXPORT TTSymbolRef	kTTSym_clear;
TTFOUNDATION_EXPORT TTSymbolRef	kTTSym_clipmode;
TTFOUNDATION_EXPORT TTSymbolRef	kTTSym_clip;
TTFOUNDATION_EXPORT TTSymbolRef	kTTSym_exclude;
TTFOUNDATION_EXPORT TTSymbolRef	kTTSym_wrap;
TTFOUNDATION_EXPORT TTSymbolRef	kTTSym_fold;
TTFOUNDATION_EXPORT TTSymbolRef	kTTSym_function;
TTFOUNDATION_EXPORT TTSymbolRef	kTTSym_high;
TTFOUNDATION_EXPORT TTSymbolRef	kTTSym_include;
TTFOUNDATION_EXPORT TTSymbolRef	kTTSym_instance;
TTFOUNDATION_EXPORT TTSymbolRef	kTTSym_low;
TTFOUNDATION_EXPORT TTSymbolRef	kTTSym_maxNumChannels;
TTFOUNDATION_EXPORT TTSymbolRef	kTTSym_mode;
TTFOUNDATION_EXPORT TTSymbolRef	kTTSym_name;
TTFOUNDATION_EXPORT TTSymbolRef	kTTSym_none;
TTFOUNDATION_EXPORT TTSymbolRef	kTTSym_notify;
TTFOUNDATION_EXPORT TTSymbolRef	kTTSym_numChannels;
TTFOUNDATION_EXPORT TTSymbolRef	kTTSym_object;
TTFOUNDATION_EXPORT TTSymbolRef	kTTSym_parent;
TTFOUNDATION_EXPORT TTSymbolRef	kTTSym_part;
TTFOUNDATION_EXPORT TTSymbolRef	kTTSym_processInPlace;
TTFOUNDATION_EXPORT TTSymbolRef	kTTSym_range;
TTFOUNDATION_EXPORT TTSymbolRef	kTTSym_resonance;
TTFOUNDATION_EXPORT TTSymbolRef	kTTSym_restrict;
TTFOUNDATION_EXPORT TTSymbolRef	kTTSym_sr;
TTFOUNDATION_EXPORT TTSymbolRef	kTTSym_updateMaxNumChannels;
TTFOUNDATION_EXPORT TTSymbolRef	kTTSym_updateSampleRate;
TTFOUNDATION_EXPORT TTSymbolRef	kTTSym_value;
TTFOUNDATION_EXPORT TTSymbolRef	kTTSym_vectorSize;
TTFOUNDATION_EXPORT TTSymbolRef	kTTSym_sampleRate;

TTFOUNDATION_EXPORT TTSymbolRef	kTTSym_tcp;
TTFOUNDATION_EXPORT TTSymbolRef	kTTSym_udp;

TTFOUNDATION_EXPORT TTSymbolRef	kTTSym_sine;
TTFOUNDATION_EXPORT TTSymbolRef	kTTSym_sineMod;
TTFOUNDATION_EXPORT TTSymbolRef	kTTSym_cosine;
TTFOUNDATION_EXPORT TTSymbolRef	kTTSym_cosineMod;
TTFOUNDATION_EXPORT TTSymbolRef	kTTSym_square;
TTFOUNDATION_EXPORT TTSymbolRef	kTTSym_squareMod;
TTFOUNDATION_EXPORT TTSymbolRef	kTTSym_triangle;
TTFOUNDATION_EXPORT TTSymbolRef	kTTSym_triangleMod;
TTFOUNDATION_EXPORT TTSymbolRef	kTTSym_ramp;
TTFOUNDATION_EXPORT TTSymbolRef	kTTSym_rampMod;
TTFOUNDATION_EXPORT TTSymbolRef	kTTSym_sawtooth;
TTFOUNDATION_EXPORT TTSymbolRef	kTTSym_sawtoothMod;

TTFOUNDATION_EXPORT TTSymbolRef	kTTSym_adsr;
TTFOUNDATION_EXPORT TTSymbolRef	kTTSym_audiosignal;
TTFOUNDATION_EXPORT TTSymbolRef	kTTSym_audiosignalarray;
TTFOUNDATION_EXPORT TTSymbolRef	kTTSym_dcblock;
TTFOUNDATION_EXPORT TTSymbolRef	kTTSym_gain;
TTFOUNDATION_EXPORT TTSymbolRef	kTTSym_operator;
TTFOUNDATION_EXPORT TTSymbolRef	kTTSym_phasor;

// matrix related
TTFOUNDATION_EXPORT TTSymbolRef	kTTSym_matrix;
TTFOUNDATION_EXPORT TTSymbolRef	kTTSym_matrixarray;
TTFOUNDATION_EXPORT TTSymbolRef	kTTSym_dimensions;
TTFOUNDATION_EXPORT TTSymbolRef	kTTSym_type;
TTFOUNDATION_EXPORT TTSymbolRef	kTTSym_elementCount;
TTFOUNDATION_EXPORT TTSymbolRef	kTTSym_uint8;
TTFOUNDATION_EXPORT TTSymbolRef	kTTSym_int32;
TTFOUNDATION_EXPORT TTSymbolRef	kTTSym_float32;
TTFOUNDATION_EXPORT TTSymbolRef	kTTSym_float64;


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
	kTTSym_attribute				= TT("attribute");
	kTTSym_audioEngineWillProcess	= TT("audioEngineWillProcess");
	kTTSym_baton					= TT("baton");
	kTTSym_both						= TT("both");
	kTTSym_bypass					= TT("bypass");
	kTTSym_clear					= TT("clear");
	kTTSym_clipmode					= TT("clipmode");
	kTTSym_clip						= TT("clip");
	kTTSym_exclude					= TT("exclude");
	kTTSym_wrap						= TT("wrap");
	kTTSym_fold						= TT("fold");
	kTTSym_function					= TT("function");
	kTTSym_high						= TT("high");
	kTTSym_include					= TT("include");
	kTTSym_instance					= TT("instance");
	kTTSym_low						= TT("low");
	kTTSym_maxNumChannels			= TT("maxNumChannels");
	kTTSym_mode						= TT("mode");
	kTTSym_name						= TT("name");
	kTTSym_none						= TT("none");
	kTTSym_notify					= TT("notify");
	kTTSym_numChannels				= TT("numChannels");
	kTTSym_object					= TT("object");
	kTTSym_parent					= TT("parent");
	kTTSym_part						= TT("part");
	kTTSym_processInPlace			= TT("processInPlace");
	kTTSym_range					= TT("range");
	kTTSym_resonance				= TT("resonance");
	kTTSym_restrict					= TT("restrict");
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
	
	kTTSym_matrix					= TT("matrix");
	kTTSym_matrixarray				= TT("matrixarray");
	kTTSym_dimensions				= TT("dimensions");
	kTTSym_type						= TT("type");
	kTTSym_elementCount				= TT("elementCount");
	kTTSym_uint8					= TT("uint8");
	kTTSym_int32					= TT("int32");
	kTTSym_float32					= TT("float32");
	kTTSym_float64					= TT("float64");
	
}
