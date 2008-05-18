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


const TTEXPORT TTSymbol*	kTTSymEmpty;

const TTEXPORT TTSymbol*	kTTSym_both;
const TTEXPORT TTSymbol*	kTTSym_bypass;
const TTEXPORT TTSymbol*	kTTSym_clipmode;
const TTEXPORT TTSymbol*	kTTSym_high;
const TTEXPORT TTSymbol*	kTTSym_maxNumChannels;
const TTEXPORT TTSymbol*	kTTSym_low;
const TTEXPORT TTSymbol*	kTTSym_processInPlace;
const TTEXPORT TTSymbol*	kTTSym_range;
const TTEXPORT TTSymbol*	kTTSym_resonance;
const TTEXPORT TTSymbol*	kTTSym_sr;
const TTEXPORT TTSymbol*	kTTSym_updateMaxNumChannels;
const TTEXPORT TTSymbol*	kTTSym_updateSr;


void TTSymbolCacheInit()
{
	kTTSymEmpty						= &TT("");

	kTTSym_both						= &TT("both");
	kTTSym_bypass					= &TT("bypass");
	kTTSym_clipmode					= &TT("clipmode");
	kTTSym_high						= &TT("high");
	kTTSym_maxNumChannels			= &TT("maxNumChannels");
	kTTSym_low						= &TT("low");
	kTTSym_processInPlace			= &TT("processInPlace");
	kTTSym_range					= &TT("range");
	kTTSym_resonance				= &TT("resonance");
	kTTSym_sr						= &TT("sr");
	kTTSym_updateMaxNumChannels		= &TT("updateMaxNumChannels");
	kTTSym_updateSr					= &TT("updateSr");
}
