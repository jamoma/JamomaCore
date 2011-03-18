/* 
 * TTBlue Class for caching common symbols for speed
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTValueCache.h"
#include "TTSymbolTable.h"
#include "TTModular.h"
#include "TTModularSymbolCache.h"


TTMODULAR_EXPORT TTSymbolPtr	kTTSym_address;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_addresses;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_attributes;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_array;

TTMODULAR_EXPORT TTSymbolPtr	kTTSym_boolean;

TTMODULAR_EXPORT TTSymbolPtr	kTTSym_children;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_Command;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_ConvertToAppName;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_ConvertToTTName;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_created;

TTMODULAR_EXPORT TTSymbolPtr	kTTSym_dataspace;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_dataspaceUnit;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_decimal;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_description;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_destroyed;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_directory;

TTMODULAR_EXPORT TTSymbolPtr	kTTSym_enable;

TTMODULAR_EXPORT TTSymbolPtr	kTTSym_Fill;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_freeze;

TTMODULAR_EXPORT TTSymbolPtr	kTTSym_generic;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_Get;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_global;

TTMODULAR_EXPORT TTSymbolPtr	kTTSym_initialized;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_instances;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_integer;

TTMODULAR_EXPORT TTSymbolPtr	kTTSym_life;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_local;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_lookfor;

TTMODULAR_EXPORT TTSymbolPtr	kTTSym_Map;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_message;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_mix;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_model;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_mute;

TTMODULAR_EXPORT TTSymbolPtr	kTTSym_name;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_names;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_none;

TTMODULAR_EXPORT TTSymbolPtr	kTTSym_object;

TTMODULAR_EXPORT TTSymbolPtr	kTTSym_parameter;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_preview;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_priority;

TTMODULAR_EXPORT TTSymbolPtr	kTTSym_rangeBounds;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_rangeClipmode;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_rampDrive;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_rampFunction;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_readonly;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_receiver;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_Refresh;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_repetitionsAllow;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_return;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_returnedValue;

TTMODULAR_EXPORT TTSymbolPtr	kTTSym_Send;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_selected;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_service;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_string;

TTMODULAR_EXPORT TTSymbolPtr	kTTSym_tag;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_type;

TTMODULAR_EXPORT TTSymbolPtr	kTTSym_valueDefault;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_valueStepsize;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_viewFreeze;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_view;


void TTModularSymbolCacheInit()
{
	kTTSym_address					= TT("address");
	kTTSym_addresses				= TT("addresses");
	kTTSym_attributes				= TT("attributes");
	kTTSym_array					= TT("array");
	
	kTTSym_boolean					= TT("boolean");
	
	kTTSym_children					= TT("children");
	kTTSym_Command					= TT("Command");
	kTTSym_ConvertToAppName			= TT("ConvertToAppName");
	kTTSym_ConvertToTTName			= TT("ConvertToTTName");
	kTTSym_created					= TT("created");
	
	kTTSym_dataspace				= TT("dataspace");
	kTTSym_dataspaceUnit			= TT("dataspaceUnit");
	kTTSym_decimal					= TT("decimal");
	kTTSym_description				= TT("description");
	kTTSym_destroyed				= TT("destroyed");
	kTTSym_directory				= TT("directory");
	
	kTTSym_enable					= TT("enable");
	
	kTTSym_Fill						= TT("Fill");
	kTTSym_freeze					= TT("freeze");
	
	kTTSym_generic					= TT("generic");
	kTTSym_Get						= TT("Get");
	kTTSym_global					= TT("global");
	
	kTTSym_initialized				= TT("initialized");
	kTTSym_instances				= TT("instances");
	kTTSym_integer					= TT("integer");
	
	kTTSym_life						= TT("life");
	kTTSym_local					= TT("local");
	kTTSym_lookfor					= TT("lookfor");
	
	kTTSym_Map						= TT("Map");
	kTTSym_message					= TT("message");
	kTTSym_mix						= TT("mix");
	kTTSym_model					= TT("model");
	kTTSym_mute						= TT("mute");
	
	kTTSym_name						= TT("name");
	kTTSym_names					= TT("names");
	kTTSym_none						= TT("none");
	
	kTTSym_object					= TT("object");
	
	kTTSym_parameter				= TT("parameter");
	kTTSym_preview					= TT("preview");
	kTTSym_priority					= TT("priority");
	
	kTTSym_rangeBounds				= TT("rangeBounds");
	kTTSym_rangeClipmode			= TT("rangeClipmode");
	kTTSym_rampDrive				= TT("rampDrive");
	kTTSym_rampFunction				= TT("rampFunction");
	kTTSym_readonly					= TT("readonly");
	kTTSym_receiver					= TT("receiver");
	kTTSym_Refresh					= TT("Refresh");
	kTTSym_repetitionsAllow			= TT("repetitionsAllow");
	kTTSym_return					= TT("return");
	kTTSym_returnedValue			= TT("returnedValue");
	
	kTTSym_Send						= TT("Send");
	kTTSym_selected					= TT("selected");
	kTTSym_service					= TT("service");
	kTTSym_string					= TT("string");

	kTTSym_tag						= TT("tag");
	kTTSym_type						= TT("type");
	
	kTTSym_value					= TT("value");
	kTTSym_valueDefault				= TT("valueDefault");
	kTTSym_valueStepsize			= TT("valueStepsize");
	kTTSym_viewFreeze				= TT("viewFreeze");
	kTTSym_view						= TT("view");
}

