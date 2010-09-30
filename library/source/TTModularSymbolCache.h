/* 
 * TTBlue Class for caching common symbols for speed
 * Copyright © 2010, Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_MODULAR_SYMBOL_CACHE_H__
#define __TT_MODULAR_SYMBOL_CACHE_H__

#include "TTSymbol.h"

extern TTMODULAR_EXPORT TTSymbolPtr	kTTSym_Address;
extern TTMODULAR_EXPORT TTSymbolPtr	kTTSym_array;

extern TTMODULAR_EXPORT TTSymbolPtr	kTTSym_boolean;

extern TTMODULAR_EXPORT TTSymbolPtr	kTTSym_command;
extern TTMODULAR_EXPORT TTSymbolPtr	kTTSym_Created;

extern TTMODULAR_EXPORT TTSymbolPtr	kTTSym_Dataspace;
extern TTMODULAR_EXPORT TTSymbolPtr	kTTSym_DataspaceUnitActive;
extern TTMODULAR_EXPORT TTSymbolPtr	kTTSym_DataspaceUnitDisplay;
extern TTMODULAR_EXPORT TTSymbolPtr	kTTSym_DataspaceUnitNative;
extern TTMODULAR_EXPORT TTSymbolPtr	kTTSym_decimal;
extern TTMODULAR_EXPORT TTSymbolPtr	kTTSym_Description;
extern TTMODULAR_EXPORT TTSymbolPtr	kTTSym_Destroyed;

extern TTMODULAR_EXPORT TTSymbolPtr	kTTSym_Freeze;

extern TTMODULAR_EXPORT TTSymbolPtr	kTTSym_generic;

extern TTMODULAR_EXPORT TTSymbolPtr	kTTSym_Initialized;
extern TTMODULAR_EXPORT TTSymbolPtr	kTTSym_integer;

extern TTMODULAR_EXPORT TTSymbolPtr	kTTSym_map;
extern TTMODULAR_EXPORT TTSymbolPtr	kTTSym_message;

extern TTMODULAR_EXPORT TTSymbolPtr	kTTSym_none;

extern TTMODULAR_EXPORT TTSymbolPtr	kTTSym_parameter;
extern TTMODULAR_EXPORT TTSymbolPtr	kTTSym_Priority;

extern TTMODULAR_EXPORT TTSymbolPtr	kTTSym_RangeBounds;
extern TTMODULAR_EXPORT TTSymbolPtr	kTTSym_RangeClipmode;
extern TTMODULAR_EXPORT TTSymbolPtr	kTTSym_RampDrive;
extern TTMODULAR_EXPORT TTSymbolPtr	kTTSym_RampFunction;
extern TTMODULAR_EXPORT TTSymbolPtr	kTTSym_Readonly;
extern TTMODULAR_EXPORT TTSymbolPtr	kTTSym_Receiver;
extern TTMODULAR_EXPORT TTSymbolPtr	kTTSym_Refresh;
extern TTMODULAR_EXPORT TTSymbolPtr	kTTSym_RepetitionsAllow;
extern TTMODULAR_EXPORT TTSymbolPtr	kTTSym_return;

extern TTMODULAR_EXPORT TTSymbolPtr	kTTSym_send;
extern TTMODULAR_EXPORT TTSymbolPtr	kTTSym_service;
extern TTMODULAR_EXPORT TTSymbolPtr	kTTSym_string;

extern TTMODULAR_EXPORT TTSymbolPtr	kTTSym_Type;

extern TTMODULAR_EXPORT TTSymbolPtr	kTTSym_Value;
extern TTMODULAR_EXPORT TTSymbolPtr	kTTSym_ValueDefault;
extern TTMODULAR_EXPORT TTSymbolPtr	kTTSym_ValueStepsize;
extern TTMODULAR_EXPORT TTSymbolPtr	kTTSym_ViewFreeze;


void TTModularSymbolCacheInit();

#endif // __TT_MODULAR_SYMBOL_CACHE_H__

