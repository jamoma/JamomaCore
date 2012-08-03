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


TTFOUNDATION_EXPORT TTSymbolRef		kTTSymEmpty						(TT(""));
TTFOUNDATION_EXPORT TTSymbolRef		kTTSymSlash						(TT("/"));
TTFOUNDATION_EXPORT TTSymbolRef		kTTSymDot						(TT("."));
TTFOUNDATION_EXPORT TTSymbolRef		kTTSymColon						(TT(":"));
TTFOUNDATION_EXPORT TTSymbolRef		kTTSymStar						(TT("*"));
TTFOUNDATION_EXPORT TTSymbolRef		kTTSym_setVector32				(TT("setVector32"));
TTFOUNDATION_EXPORT TTSymbolRef		kTTSym_getVector32				(TT("getVector32"));
TTFOUNDATION_EXPORT TTSymbolRef		kTTSym_setVector64				(TT("setVector64"));
TTFOUNDATION_EXPORT TTSymbolRef		kTTSym_getVector64				(TT("getVector64"));
TTFOUNDATION_EXPORT TTSymbolRef		kTTSym_alloc					(TT("alloc"));
TTFOUNDATION_EXPORT TTSymbolRef		kTTSym_attribute				(TT("attribute"));
TTFOUNDATION_EXPORT TTSymbolRef		kTTSym_audioEngineWillProcess	(TT("audioEngineWillProcess"));
TTFOUNDATION_EXPORT TTSymbolRef		kTTSym_baton					(TT("baton"));
TTFOUNDATION_EXPORT TTSymbolRef		kTTSym_both						(TT("both"));
TTFOUNDATION_EXPORT TTSymbolRef		kTTSym_bypass					(TT("bypass"));
TTFOUNDATION_EXPORT TTSymbolRef		kTTSym_clear					(TT("clear"));
TTFOUNDATION_EXPORT TTSymbolRef		kTTSym_clipmode					(TT("clipmode"));
TTFOUNDATION_EXPORT TTSymbolRef		kTTSym_clip						(TT("clip"));
TTFOUNDATION_EXPORT TTSymbolRef		kTTSym_exclude					(TT("exclude"));
TTFOUNDATION_EXPORT TTSymbolRef		kTTSym_wrap						(TT("wrap"));
TTFOUNDATION_EXPORT TTSymbolRef		kTTSym_fold						(TT("fold"));
TTFOUNDATION_EXPORT TTSymbolRef		kTTSym_function					(TT("function"));
TTFOUNDATION_EXPORT TTSymbolRef		kTTSym_high						(TT("high"));
TTFOUNDATION_EXPORT TTSymbolRef		kTTSym_include					(TT("include"));
TTFOUNDATION_EXPORT TTSymbolRef		kTTSym_instance					(TT("instance"));
TTFOUNDATION_EXPORT TTSymbolRef		kTTSym_low						(TT("low"));
TTFOUNDATION_EXPORT TTSymbolRef		kTTSym_maxNumChannels			(TT("maxNumChannels"));
TTFOUNDATION_EXPORT TTSymbolRef		kTTSym_mode						(TT("mode"));
TTFOUNDATION_EXPORT TTSymbolRef		kTTSym_name						(TT("name"));
TTFOUNDATION_EXPORT TTSymbolRef		kTTSym_none						(TT("none"));
TTFOUNDATION_EXPORT TTSymbolRef		kTTSym_notify					(TT("notify"));
TTFOUNDATION_EXPORT TTSymbolRef		kTTSym_numChannels				(TT("numChannels"));
TTFOUNDATION_EXPORT TTSymbolRef		kTTSym_object					(TT("object"));
TTFOUNDATION_EXPORT TTSymbolRef		kTTSym_parent					(TT("parent"));
TTFOUNDATION_EXPORT TTSymbolRef		kTTSym_part						(TT("part"));
TTFOUNDATION_EXPORT TTSymbolRef		kTTSym_processInPlace			(TT("processInPlace"));
TTFOUNDATION_EXPORT TTSymbolRef		kTTSym_range					(TT("range"));
TTFOUNDATION_EXPORT TTSymbolRef		kTTSym_resonance				(TT("resonance"));
TTFOUNDATION_EXPORT TTSymbolRef		kTTSym_restrict					(TT("restrict"));
TTFOUNDATION_EXPORT TTSymbolRef		kTTSym_updateMaxNumChannels		(TT("updateMaxNumChannels"));
TTFOUNDATION_EXPORT TTSymbolRef		kTTSym_updateSampleRate			(TT("updateSampleRate"));
TTFOUNDATION_EXPORT TTSymbolRef		kTTSym_value					(TT("value"));
TTFOUNDATION_EXPORT TTSymbolRef		kTTSym_vectorSize				(TT("vectorSize"));
TTFOUNDATION_EXPORT TTSymbolRef		kTTSym_sampleRate				(TT("sampleRate"));
TTFOUNDATION_EXPORT TTSymbolRef		kTTSym_tcp						(TT("tcp"));
TTFOUNDATION_EXPORT TTSymbolRef		kTTSym_udp						(TT("udp"));
TTFOUNDATION_EXPORT TTSymbolRef		kTTSym_sine						(TT("sine"));
TTFOUNDATION_EXPORT TTSymbolRef		kTTSym_sineMod					(TT("sineMod"));
TTFOUNDATION_EXPORT TTSymbolRef		kTTSym_cosine					(TT("cosine"));
TTFOUNDATION_EXPORT TTSymbolRef		kTTSym_cosineMod				(TT("cosineMod"));
TTFOUNDATION_EXPORT TTSymbolRef		kTTSym_square					(TT("square"));
TTFOUNDATION_EXPORT TTSymbolRef		kTTSym_squareMod				(TT("squareMod"));
TTFOUNDATION_EXPORT TTSymbolRef		kTTSym_triangle					(TT("triangle"));
TTFOUNDATION_EXPORT TTSymbolRef		kTTSym_triangleMod				(TT("triangleMod"));
TTFOUNDATION_EXPORT TTSymbolRef		kTTSym_ramp						(TT("ramp"));
TTFOUNDATION_EXPORT TTSymbolRef		kTTSym_rampMod					(TT("rampMod"));
TTFOUNDATION_EXPORT TTSymbolRef		kTTSym_sawtooth					(TT("sawtooth"));
TTFOUNDATION_EXPORT TTSymbolRef		kTTSym_sawtoothMod				(TT("sawtoothMod"));
TTFOUNDATION_EXPORT TTSymbolRef		kTTSym_adsr						(TT("adsr"));
TTFOUNDATION_EXPORT TTSymbolRef		kTTSym_audiosignal				(TT("audiosignal"));
TTFOUNDATION_EXPORT TTSymbolRef		kTTSym_audiosignalarray			(TT("audiosignalarray"));
TTFOUNDATION_EXPORT TTSymbolRef		kTTSym_dcblock					(TT("dcblock"));
TTFOUNDATION_EXPORT TTSymbolRef		kTTSym_gain						(TT("gain"));
TTFOUNDATION_EXPORT TTSymbolRef		kTTSym_operator					(TT("operator"));
TTFOUNDATION_EXPORT TTSymbolRef		kTTSym_phasor					(TT("phasor"));
TTFOUNDATION_EXPORT TTSymbolRef		kTTSym_matrix					(TT("matrix"));
TTFOUNDATION_EXPORT TTSymbolRef		kTTSym_matrixarray				(TT("matrixarray"));
TTFOUNDATION_EXPORT TTSymbolRef		kTTSym_dimensions				(TT("dimensions"));
TTFOUNDATION_EXPORT TTSymbolRef		kTTSym_type						(TT("type"));
TTFOUNDATION_EXPORT TTSymbolRef		kTTSym_elementCount				(TT("elementCount"));
TTFOUNDATION_EXPORT TTSymbolRef		kTTSym_uint8					(TT("uint8"));
TTFOUNDATION_EXPORT TTSymbolRef		kTTSym_int32					(TT("int32"));
TTFOUNDATION_EXPORT TTSymbolRef		kTTSym_float32					(TT("float32"));
TTFOUNDATION_EXPORT TTSymbolRef		kTTSym_float64					(TT("float64"));

