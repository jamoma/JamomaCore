/* 
 * TTBlue Class for caching common symbols for speed
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTValueCache.h"
#include "TTSymbolTable.h"
#include "TTSymbolCache.h"


TTEXPORT TTSymbolPtr	kTTSymEmpty;
TTEXPORT TTSymbolPtr	kTTSym_setVector32;
TTEXPORT TTSymbolPtr	kTTSym_getVector32;
TTEXPORT TTSymbolPtr	kTTSym_setVector64;
TTEXPORT TTSymbolPtr	kTTSym_getVector64;

TTEXPORT TTSymbolPtr	kTTSym_alloc;
TTEXPORT TTSymbolPtr	kTTSym_audioEngineWillProcess;
TTEXPORT TTSymbolPtr	kTTSym_both;
TTEXPORT TTSymbolPtr	kTTSym_bypass;
TTEXPORT TTSymbolPtr	kTTSym_clipmode;
TTEXPORT TTSymbolPtr	kTTSym_high;
TTEXPORT TTSymbolPtr	kTTSym_low;
TTEXPORT TTSymbolPtr	kTTSym_maxNumChannels;
TTEXPORT TTSymbolPtr	kTTSym_numChannels;
TTEXPORT TTSymbolPtr	kTTSym_processInPlace;
TTEXPORT TTSymbolPtr	kTTSym_range;
TTEXPORT TTSymbolPtr	kTTSym_resonance;
TTEXPORT TTSymbolPtr	kTTSym_sr;
TTEXPORT TTSymbolPtr	kTTSym_updateMaxNumChannels;
TTEXPORT TTSymbolPtr	kTTSym_updateSr;
TTEXPORT TTSymbolPtr	kTTSym_vectorSize;

TTEXPORT TTSymbolPtr	kTTSym_sine;
TTEXPORT TTSymbolPtr	kTTSym_sineMod;
TTEXPORT TTSymbolPtr	kTTSym_cosine;
TTEXPORT TTSymbolPtr	kTTSym_cosineMod;
TTEXPORT TTSymbolPtr	kTTSym_square;
TTEXPORT TTSymbolPtr	kTTSym_squareMod;
TTEXPORT TTSymbolPtr	kTTSym_triangle;
TTEXPORT TTSymbolPtr	kTTSym_triangleMod;
TTEXPORT TTSymbolPtr	kTTSym_ramp;
TTEXPORT TTSymbolPtr	kTTSym_rampMod;
TTEXPORT TTSymbolPtr	kTTSym_sawtooth;
TTEXPORT TTSymbolPtr	kTTSym_sawtoothMod;

TTEXPORT TTSymbolPtr	kTTSym_adsr;
TTEXPORT TTSymbolPtr	kTTSym_audiosignal;
TTEXPORT TTSymbolPtr	kTTSym_dcblock;
TTEXPORT TTSymbolPtr	kTTSym_gain;
TTEXPORT TTSymbolPtr	kTTSym_operator;
TTEXPORT TTSymbolPtr	kTTSym_phasor;


void TTSymbolCacheInit()
{
	kTTSymEmpty						= TT("");
	kTTSym_setVector32				= TT("setVector32");
	kTTSym_getVector32				= TT("getVector32");
	kTTSym_setVector64				= TT("setVector64");
	kTTSym_getVector64				= TT("getVector64");

	kTTSym_alloc					= TT("alloc");
	kTTSym_audioEngineWillProcess	= TT("audioEngineWillProcess");
	kTTSym_both						= TT("both");
	kTTSym_bypass					= TT("bypass");
	kTTSym_clipmode					= TT("clipmode");
	kTTSym_high						= TT("high");
	kTTSym_low						= TT("low");
	kTTSym_maxNumChannels			= TT("maxNumChannels");
	kTTSym_numChannels				= TT("numChannels");
	kTTSym_processInPlace			= TT("processInPlace");
	kTTSym_range					= TT("range");
	kTTSym_resonance				= TT("resonance");
	kTTSym_sr						= TT("sr");
	kTTSym_updateMaxNumChannels		= TT("updateMaxNumChannels");
	kTTSym_updateSr					= TT("updateSr");
	kTTSym_vectorSize				= TT("vectorSize");
	
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
	kTTSym_dcblock					= TT("dcblock");
	kTTSym_gain						= TT("gain");
	kTTSym_operator					= TT("operator");
	kTTSym_phasor					= TT("phasor");
}
