/* 
 * TTBlue Class for caching common symbols for speed
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTValueCache.h"
#include "TTSymbolTable.h"
#include "TTModular.h"
#include "TTModularSymbolCache.h"


TTMODULAR_EXPORT TTSymbolPtr	kTTSym_array;

TTMODULAR_EXPORT TTSymbolPtr	kTTSym_boolean;

TTMODULAR_EXPORT TTSymbolPtr	kTTSym_Command;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_created;

TTMODULAR_EXPORT TTSymbolPtr	kTTSym_Dataspace;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_DataspaceUnitActive;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_DataspaceUnitDisplay;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_DataspaceUnitNative;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_decimal;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_Description;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_destroyed;

TTMODULAR_EXPORT TTSymbolPtr	kTTSym_generic;

TTMODULAR_EXPORT TTSymbolPtr	kTTSym_initialized;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_integer;

TTMODULAR_EXPORT TTSymbolPtr	kTTSym_none;

TTMODULAR_EXPORT TTSymbolPtr	kTTSym_Priority;

TTMODULAR_EXPORT TTSymbolPtr	kTTSym_RangeBounds;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_RangeClipmode;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_RampDrive;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_RampFunction;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_Readonly;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_RepetitionsAllow;

TTMODULAR_EXPORT TTSymbolPtr	kTTSym_Send;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_string;

TTMODULAR_EXPORT TTSymbolPtr	kTTSym_Type;

TTMODULAR_EXPORT TTSymbolPtr	kTTSym_Value;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_ValueDefault;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_ValueStepsize;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_ViewFreeze;


void TTModularSymbolCacheInit()
{
	kTTSym_array					= TT("array");
	
	kTTSym_boolean					= TT("boolean");
	
	kTTSym_Command					= TT("Command");
	kTTSym_created					= TT("created");
	
	kTTSym_Dataspace				= TT("Dataspace");
	kTTSym_DataspaceUnitActive		= TT("DataspaceUnitActive");
	kTTSym_DataspaceUnitDisplay		= TT("DataspaceUnitDisplay");
	kTTSym_DataspaceUnitNative		= TT("DataspaceUnitNative");
	kTTSym_decimal					= TT("decimal");
	kTTSym_Description				= TT("Description");
	kTTSym_destroyed				= TT("destroyed");
	
	kTTSym_generic					= TT("generic");
	
	kTTSym_initialized				= TT("initialized");
	kTTSym_integer					= TT("integer");
	
	kTTSym_none						= TT("none");
	
	kTTSym_Priority					= TT("Priority");
	
	kTTSym_RangeBounds				= TT("RangeBounds");
	kTTSym_RangeClipmode			= TT("RangeClipmode");
	kTTSym_RampDrive				= TT("RampDrive");
	kTTSym_RampFunction				= TT("RampFunction");
	kTTSym_Readonly					= TT("Readonly");
	kTTSym_RepetitionsAllow			= TT("RepetitionsAllow");
	
	kTTSym_Send						= TT("Send");
	kTTSym_string					= TT("string");

	kTTSym_Type						= TT("Type");
	
	kTTSym_Value					= TT("Value");
	kTTSym_ValueDefault				= TT("ValueDefault");
	kTTSym_ValueStepsize			= TT("ValueStepsize");
	kTTSym_ViewFreeze				= TT("ViewFreeze");
}

