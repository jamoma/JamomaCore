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

extern TTMODULAR_EXPORT TTSymbolPtr	kTTSym_address;
extern TTMODULAR_EXPORT TTSymbolPtr	kTTSym_addresses;
extern TTMODULAR_EXPORT TTSymbolPtr kTTSym_attributes;
extern TTMODULAR_EXPORT TTSymbolPtr	kTTSym_array;

extern TTMODULAR_EXPORT TTSymbolPtr	kTTSym_boolean;

extern TTMODULAR_EXPORT TTSymbolPtr kTTSym_children;
extern TTMODULAR_EXPORT TTSymbolPtr	kTTSym_Command;
extern TTMODULAR_EXPORT TTSymbolPtr	kTTSym_ConvertToAppName;
extern TTMODULAR_EXPORT TTSymbolPtr	kTTSym_ConvertToTTName;
extern TTMODULAR_EXPORT TTSymbolPtr	kTTSym_created;

extern TTMODULAR_EXPORT TTSymbolPtr	kTTSym_dataspace;
extern TTMODULAR_EXPORT TTSymbolPtr	kTTSym_dataspaceUnit;
extern TTMODULAR_EXPORT TTSymbolPtr	kTTSym_decimal;
extern TTMODULAR_EXPORT TTSymbolPtr	kTTSym_description;
extern TTMODULAR_EXPORT TTSymbolPtr	kTTSym_destroyed;
extern TTMODULAR_EXPORT TTSymbolPtr	kTTSym_directory;

extern TTMODULAR_EXPORT TTSymbolPtr	kTTSym_enable;

extern TTMODULAR_EXPORT TTSymbolPtr	kTTSym_Fill;
extern TTMODULAR_EXPORT TTSymbolPtr	kTTSym_freeze;

extern TTMODULAR_EXPORT TTSymbolPtr	kTTSym_generic;
extern TTMODULAR_EXPORT TTSymbolPtr	kTTSym_Get;
extern TTMODULAR_EXPORT TTSymbolPtr	kTTSym_global;

extern TTMODULAR_EXPORT TTSymbolPtr	kTTSym_initialized;
extern TTMODULAR_EXPORT TTSymbolPtr kTTSym_instances;
extern TTMODULAR_EXPORT TTSymbolPtr	kTTSym_integer;

extern TTMODULAR_EXPORT TTSymbolPtr	kTTSym_life;
extern TTMODULAR_EXPORT TTSymbolPtr	kTTSym_local;
extern TTMODULAR_EXPORT TTSymbolPtr	kTTSym_lookfor;

extern TTMODULAR_EXPORT TTSymbolPtr	kTTSym_Map;
extern TTMODULAR_EXPORT TTSymbolPtr	kTTSym_message;
extern TTMODULAR_EXPORT TTSymbolPtr	kTTSym_mix;
extern TTMODULAR_EXPORT TTSymbolPtr	kTTSym_model;
extern TTMODULAR_EXPORT TTSymbolPtr	kTTSym_mute;

extern TTMODULAR_EXPORT TTSymbolPtr	kTTSym_name;
extern TTMODULAR_EXPORT TTSymbolPtr	kTTSym_names;
extern TTMODULAR_EXPORT TTSymbolPtr	kTTSym_none;

extern TTMODULAR_EXPORT TTSymbolPtr	kTTSym_object;

extern TTMODULAR_EXPORT TTSymbolPtr	kTTSym_parameter;
extern TTMODULAR_EXPORT TTSymbolPtr	kTTSym_preview;
extern TTMODULAR_EXPORT TTSymbolPtr	kTTSym_priority;

extern TTMODULAR_EXPORT TTSymbolPtr	kTTSym_rangeBounds;
extern TTMODULAR_EXPORT TTSymbolPtr	kTTSym_rangeClipmode;
extern TTMODULAR_EXPORT TTSymbolPtr	kTTSym_rampDrive;
extern TTMODULAR_EXPORT TTSymbolPtr	kTTSym_rampFunction;
extern TTMODULAR_EXPORT TTSymbolPtr	kTTSym_readonly;
extern TTMODULAR_EXPORT TTSymbolPtr	kTTSym_receiver;
extern TTMODULAR_EXPORT TTSymbolPtr	kTTSym_Refresh;
extern TTMODULAR_EXPORT TTSymbolPtr	kTTSym_repetitionsAllow;
extern TTMODULAR_EXPORT TTSymbolPtr	kTTSym_return;
extern TTMODULAR_EXPORT TTSymbolPtr	kTTSym_returnedValue;

extern TTMODULAR_EXPORT TTSymbolPtr	kTTSym_Send;
extern TTMODULAR_EXPORT TTSymbolPtr kTTSym_selected;
extern TTMODULAR_EXPORT TTSymbolPtr	kTTSym_service;
extern TTMODULAR_EXPORT TTSymbolPtr	kTTSym_string;

extern TTMODULAR_EXPORT TTSymbolPtr	kTTSym_tag;
extern TTMODULAR_EXPORT TTSymbolPtr	kTTSym_type;

extern TTMODULAR_EXPORT TTSymbolPtr	kTTSym_valueDefault;
extern TTMODULAR_EXPORT TTSymbolPtr	kTTSym_valueStepsize;
extern TTMODULAR_EXPORT TTSymbolPtr	kTTSym_viewFreeze;
extern TTMODULAR_EXPORT TTSymbolPtr	kTTSym_view;

void TTModularSymbolCacheInit();

#endif // __TT_MODULAR_SYMBOL_CACHE_H__

