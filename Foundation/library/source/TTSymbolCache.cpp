/* 
 * TTBlue Class for caching common symbols for speed
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTSymbolTable.h"
#include "TTSymbolCache.h"


TTFOUNDATION_EXPORT TTSymbolTable	gTTSymbolTable;

TTFOUNDATION_EXPORT TTSymbol		kTTSymEmpty						((""));
TTFOUNDATION_EXPORT TTSymbol		kTTSymSlash						(("/"));
TTFOUNDATION_EXPORT TTSymbol		kTTSymDot						(("."));
TTFOUNDATION_EXPORT TTSymbol		kTTSymColon						((":"));
TTFOUNDATION_EXPORT TTSymbol		kTTSymStar						(("*"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_setVector32				(("setVector32"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_getVector32				(("getVector32"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_setVector64				(("setVector64"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_getVector64				(("getVector64"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_alloc					(("alloc"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_attribute				(("attribute"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_audioEngineWillProcess	(("audioEngineWillProcess"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_baton					(("baton"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_both						(("both"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_bypass					(("bypass"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_clear					(("clear"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_clipmode					(("clipmode"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_clip						(("clip"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_cliplow					(("cliplow"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_cliphigh					(("cliphigh"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_exclude					(("exclude"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_wrap						(("wrap"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_fold						(("fold"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_function					(("function"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_high						(("high"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_include					(("include"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_instance					(("instance"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_low						(("low"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_maxNumChannels			(("maxNumChannels"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_mode						(("mode"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_name						(("name"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_none						(("none"));
TTFOUNDATION_EXPORT TTSymbol        kTTSym_notification             (("notification"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_notify					(("notify"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_numChannels				(("numChannels"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_object					(("object"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_parent					(("parent"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_part						(("part"));
TTFOUNDATION_EXPORT TTSymbol        kTTSym_priority                 (("priority"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_processInPlace			(("processInPlace"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_range					(("range"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_resonance				(("resonance"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_restrict					(("restrict"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_updateMaxNumChannels		(("updateMaxNumChannels"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_updateSampleRate			(("updateSampleRate"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_value					(("value"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_vectorSize				(("vectorSize"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_sampleRate				(("sampleRate"));
TTFOUNDATION_EXPORT TTSymbol        kTTSym_schema                   (("schema"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_tcp						(("tcp"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_udp						(("udp"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_sine						(("sine"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_sineMod					(("sineMod"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_cosine					(("cosine"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_cosineMod				(("cosineMod"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_square					(("square"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_squareMod				(("squareMod"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_triangle					(("triangle"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_triangleMod				(("triangleMod"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_ramp						(("ramp"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_rampMod					(("rampMod"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_sawtooth					(("sawtooth"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_sawtoothMod				(("sawtoothMod"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_adsr						(("adsr"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_audiosignal				(("audiosignal"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_audiosignalarray			(("audiosignalarray"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_dcblock					(("dcblock"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_gain						(("gain"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_operator					(("operator"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_phasor					(("phasor"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_matrix					(("matrix"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_matrixarray				(("matrixarray"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_dimensions				(("dimensions"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_type						(("type"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_elementCount				(("elementCount"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_samplematrix				(("samplematrix"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_buffer                   (("buffer"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_float32					(("float32"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_float64					(("float64"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_int8						(("int8"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_uint8					(("uint8"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_int16					(("int16"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_uint16					(("uint16"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_int32					(("int32"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_uint32					(("uint32"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_int64					(("int64"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_uint64					(("uint64"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_boolean					(("boolean"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_symbol					(("symbol"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_pointer					(("pointer"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_string					(("string"));
