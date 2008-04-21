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


const TTBLUE_DLL TTSymbol*	kTTSymEmpty;

const TTBLUE_DLL TTSymbol*	kTTSym_both;
const TTBLUE_DLL TTSymbol*	kTTSym_bypass;
const TTBLUE_DLL TTSymbol*	kTTSym_clipmode;
const TTBLUE_DLL TTSymbol*	kTTSym_high;
const TTBLUE_DLL TTSymbol*	kTTSym_maxNumChannels;
const TTBLUE_DLL TTSymbol*	kTTSym_low;
const TTBLUE_DLL TTSymbol*	kTTSym_processInPlace;
const TTBLUE_DLL TTSymbol*	kTTSym_range;
const TTBLUE_DLL TTSymbol*	kTTSym_resonance;
const TTBLUE_DLL TTSymbol*	kTTSym_sr;
const TTBLUE_DLL TTSymbol*	kTTSym_updateMaxNumChannels;
const TTBLUE_DLL TTSymbol*	kTTSym_updateSr;


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
