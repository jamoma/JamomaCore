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
}
