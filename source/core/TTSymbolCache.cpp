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


TTEXPORT TTSymbol*	kTTSymEmpty;

TTEXPORT TTSymbol*	kTTSym_both;
TTEXPORT TTSymbol*	kTTSym_bypass;
TTEXPORT TTSymbol*	kTTSym_clipmode;
TTEXPORT TTSymbol*	kTTSym_high;
TTEXPORT TTSymbol*	kTTSym_maxNumChannels;
TTEXPORT TTSymbol*	kTTSym_low;
TTEXPORT TTSymbol*	kTTSym_processInPlace;
TTEXPORT TTSymbol*	kTTSym_range;
TTEXPORT TTSymbol*	kTTSym_resonance;
TTEXPORT TTSymbol*	kTTSym_sr;
TTEXPORT TTSymbol*	kTTSym_updateMaxNumChannels;
TTEXPORT TTSymbol*	kTTSym_updateSr;

TTEXPORT TTSymbol*	kTTSym_sine;
TTEXPORT TTSymbol*	kTTSym_sineMod;
TTEXPORT TTSymbol*	kTTSym_cosine;
TTEXPORT TTSymbol*	kTTSym_cosineMod;
TTEXPORT TTSymbol*	kTTSym_square;
TTEXPORT TTSymbol*	kTTSym_squareMod;
TTEXPORT TTSymbol*	kTTSym_triangle;
TTEXPORT TTSymbol*	kTTSym_triangleMod;
TTEXPORT TTSymbol*	kTTSym_ramp;
TTEXPORT TTSymbol*	kTTSym_rampMod;
TTEXPORT TTSymbol*	kTTSym_sawtooth;
TTEXPORT TTSymbol*	kTTSym_sawtoothMod;


void TTSymbolCacheInit()
{
	kTTSymEmpty						= TT("");

	kTTSym_both						= TT("both");
	kTTSym_bypass					= TT("bypass");
	kTTSym_clipmode					= TT("clipmode");
	kTTSym_high						= TT("high");
	kTTSym_maxNumChannels			= TT("maxNumChannels");
	kTTSym_low						= TT("low");
	kTTSym_processInPlace			= TT("processInPlace");
	kTTSym_range					= TT("range");
	kTTSym_resonance				= TT("resonance");
	kTTSym_sr						= TT("sr");
	kTTSym_updateMaxNumChannels		= TT("updateMaxNumChannels");
	kTTSym_updateSr					= TT("updateSr");
	
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
	
}
