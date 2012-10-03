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

// object classe name
TTMODULAR_EXPORT TTSymbol	kTTSym_Application;
TTMODULAR_EXPORT TTSymbol	kTTSym_ApplicationManager;
TTMODULAR_EXPORT TTSymbol	kTTSym_Container;
TTMODULAR_EXPORT TTSymbol	kTTSym_Cue;
TTMODULAR_EXPORT TTSymbol	kTTSym_CueManager;
TTMODULAR_EXPORT TTSymbol	kTTSym_Data;
TTMODULAR_EXPORT TTSymbol	kTTSym_Explorer;
TTMODULAR_EXPORT TTSymbol	kTTSym_Input;
TTMODULAR_EXPORT TTSymbol	kTTSym_Mapper;
TTMODULAR_EXPORT TTSymbol	kTTSym_MapperManager;
TTMODULAR_EXPORT TTSymbol	kTTSym_Mirror;
TTMODULAR_EXPORT TTSymbol	kTTSym_OpmlHandler;
TTMODULAR_EXPORT TTSymbol	kTTSym_Output;
TTMODULAR_EXPORT TTSymbol	kTTSym_Preset;
TTMODULAR_EXPORT TTSymbol	kTTSym_PresetManager;
TTMODULAR_EXPORT TTSymbol	kTTSym_Receiver;
TTMODULAR_EXPORT TTSymbol	kTTSym_Sender;
TTMODULAR_EXPORT TTSymbol	kTTSym_Script;
TTMODULAR_EXPORT TTSymbol	kTTSym_Subscriber;
TTMODULAR_EXPORT TTSymbol	kTTSym_TextHandler;
TTMODULAR_EXPORT TTSymbol	kTTSym_Viewer;
TTMODULAR_EXPORT TTSymbol	kTTSym_XmlHandler;

// attribute, message or any word often used
TTMODULAR_EXPORT TTSymbol	kTTSym_activity;
TTMODULAR_EXPORT TTSymbol	kTTSym_activityIn;
TTMODULAR_EXPORT TTSymbol	kTTSym_activityOut;
TTMODULAR_EXPORT TTSymbol	kTTSym_address;
TTMODULAR_EXPORT TTSymbol	kTTSym_addresses;
TTMODULAR_EXPORT TTSymbol	kTTSym_alias;
TTMODULAR_EXPORT TTSymbol	kTTSym_alphabetic;
TTMODULAR_EXPORT TTSymbol	kTTSym_attributes;
TTMODULAR_EXPORT TTSymbol	kTTSym_array;

TTMODULAR_EXPORT TTSymbol	kTTSym_boolean;
TTMODULAR_EXPORT TTSymbol	kTTSym_brothers;

TTMODULAR_EXPORT TTSymbol	kTTSym_children;
TTMODULAR_EXPORT TTSymbol	kTTSym_command;
TTMODULAR_EXPORT TTSymbol	kTTSym_Command;
TTMODULAR_EXPORT TTSymbol	kTTSym_comment;
TTMODULAR_EXPORT TTSymbol	kTTSym_ConvertToAppName;
TTMODULAR_EXPORT TTSymbol	kTTSym_ConvertToTTName;
TTMODULAR_EXPORT TTSymbol	kTTSym_created;

TTMODULAR_EXPORT TTSymbol	kTTSym_dash;
TTMODULAR_EXPORT TTSymbol	kTTSym_dataspace;
TTMODULAR_EXPORT TTSymbol	kTTSym_dataspaceUnit;
TTMODULAR_EXPORT TTSymbol	kTTSym_debug;
TTMODULAR_EXPORT TTSymbol	kTTSym_decimal;
TTMODULAR_EXPORT TTSymbol	kTTSym_descendants;
TTMODULAR_EXPORT TTSymbol	kTTSym_description;
TTMODULAR_EXPORT TTSymbol	kTTSym_destroyed;
TTMODULAR_EXPORT TTSymbol	kTTSym_directory;

TTMODULAR_EXPORT TTSymbol	kTTSym_enable;
TTMODULAR_EXPORT TTSymbol	kTTSym_end;

TTMODULAR_EXPORT TTSymbol	kTTSym_Fill;
TTMODULAR_EXPORT TTSymbol	kTTSym_filter;
TTMODULAR_EXPORT TTSymbol	kTTSym_flag;
TTMODULAR_EXPORT TTSymbol	kTTSym_freeze;

TTMODULAR_EXPORT TTSymbol	kTTSym_generic;
TTMODULAR_EXPORT TTSymbol	kTTSym_Get;
TTMODULAR_EXPORT TTSymbol	kTTSym_global;

TTMODULAR_EXPORT TTSymbol	kTTSym_highlight;

TTMODULAR_EXPORT TTSymbol	kTTSym_Init;
TTMODULAR_EXPORT TTSymbol	kTTSym_initialized;
TTMODULAR_EXPORT TTSymbol	kTTSym_instances;
TTMODULAR_EXPORT TTSymbol	kTTSym_integer;

TTMODULAR_EXPORT TTSymbol	kTTSym_life;
TTMODULAR_EXPORT TTSymbol	kTTSym_lookfor;

TTMODULAR_EXPORT TTSymbol	kTTSym_Map;
TTMODULAR_EXPORT TTSymbol	kTTSym_message;
TTMODULAR_EXPORT TTSymbol	kTTSym_mix;
TTMODULAR_EXPORT TTSymbol	kTTSym_model;
TTMODULAR_EXPORT TTSymbol	kTTSym_mute;

TTMODULAR_EXPORT TTSymbol	kTTSym_namespace;

TTMODULAR_EXPORT TTSymbol	kTTSym_object;
TTMODULAR_EXPORT TTSymbol	kTTSym_objectCache;
TTMODULAR_EXPORT TTSymbol	kTTSym_order;

TTMODULAR_EXPORT TTSymbol	kTTSym_parameter;
TTMODULAR_EXPORT TTSymbol	kTTSym_preview;
TTMODULAR_EXPORT TTSymbol	kTTSym_priority;

TTMODULAR_EXPORT TTSymbol	kTTSym_rangeBounds;
TTMODULAR_EXPORT TTSymbol	kTTSym_rangeClipmode;
TTMODULAR_EXPORT TTSymbol	kTTSym_rampDrive;
TTMODULAR_EXPORT TTSymbol	kTTSym_rampFunction;
TTMODULAR_EXPORT TTSymbol	kTTSym_Read;
TTMODULAR_EXPORT TTSymbol	kTTSym_ReadAgain;
TTMODULAR_EXPORT TTSymbol	kTTSym_readonly;
TTMODULAR_EXPORT TTSymbol	kTTSym_Recall;
TTMODULAR_EXPORT TTSymbol	kTTSym_receiver;
TTMODULAR_EXPORT TTSymbol	kTTSym_Refresh;
TTMODULAR_EXPORT TTSymbol	kTTSym_repetitionsAllow;
TTMODULAR_EXPORT TTSymbol	kTTSym_return;
TTMODULAR_EXPORT TTSymbol	kTTSym_returnedValue;

TTMODULAR_EXPORT TTSymbol	kTTSym_Send;
TTMODULAR_EXPORT TTSymbol	kTTSym_script;
TTMODULAR_EXPORT TTSymbol	kTTSym_service;
TTMODULAR_EXPORT TTSymbol	kTTSym_sharp;
TTMODULAR_EXPORT TTSymbol	kTTSym_signal;
TTMODULAR_EXPORT TTSymbol	kTTSym_start;
TTMODULAR_EXPORT TTSymbol	kTTSym_stop;
TTMODULAR_EXPORT TTSymbol	kTTSym_string;

TTMODULAR_EXPORT TTSymbol	kTTSym_tag;

TTMODULAR_EXPORT TTSymbol	kTTSym_unit;

TTMODULAR_EXPORT TTSymbol	kTTSym_valueDefault;
TTMODULAR_EXPORT TTSymbol	kTTSym_valueStepsize;
TTMODULAR_EXPORT TTSymbol	kTTSym_viewFreeze;
TTMODULAR_EXPORT TTSymbol	kTTSym_view;

TTMODULAR_EXPORT TTSymbol	kTTSym_Write;
TTMODULAR_EXPORT TTSymbol	kTTSym_WriteAgain;


void TTModularSymbolCacheInit()
{
	// object classe name
	kTTSym_Application				= TTSymbol("Application");
	kTTSym_ApplicationManager		= TTSymbol("ApplicationManager");	
	kTTSym_Container				= TTSymbol("Container");		
	kTTSym_Cue						= TTSymbol("Cue");					
	kTTSym_CueManager				= TTSymbol("CueManager");			
	kTTSym_Data						= TTSymbol("Data");					
	kTTSym_Explorer					= TTSymbol("Explorer");				
	kTTSym_Input					= TTSymbol("Input");				
	kTTSym_Mapper					= TTSymbol("Mapper");				
	kTTSym_MapperManager			= TTSymbol("MapperManager");		
	kTTSym_Mirror					= TTSymbol("Mirror");				
	kTTSym_OpmlHandler				= TTSymbol("OpmlHandler");			
	kTTSym_Output					= TTSymbol("Output");				
	kTTSym_Preset					= TTSymbol("Preset");				
	kTTSym_PresetManager			= TTSymbol("PresetManager");		
	kTTSym_Receiver					= TTSymbol("Receiver");				
	kTTSym_Sender					= TTSymbol("Sender");				
	kTTSym_Script					= TTSymbol("Script");				
	kTTSym_Subscriber				= TTSymbol("Subscriber");			
	kTTSym_TextHandler				= TTSymbol("TextHandler");			
	kTTSym_Viewer					= TTSymbol("Viewer");				
	kTTSym_XmlHandler				= TTSymbol("XmlHandler");

	// attribute, message or any word often used
	kTTSym_activity					= TTSymbol("activity");
	kTTSym_activityIn				= TTSymbol("activityIn");
	kTTSym_activityOut				= TTSymbol("activityOut");
	kTTSym_address					= TTSymbol("address");
	kTTSym_addresses				= TTSymbol("addresses");
	kTTSym_alias					= TTSymbol("alias");
	kTTSym_alphabetic				= TTSymbol("alphabetic");
	kTTSym_attributes				= TTSymbol("attributes");
	kTTSym_array					= TTSymbol("array");
	
	kTTSym_boolean					= TTSymbol("boolean");
	kTTSym_brothers					= TTSymbol("brothers");
	
	kTTSym_children					= TTSymbol("children");
	kTTSym_command					= TTSymbol("command");
	kTTSym_Command					= TTSymbol("Command");
	kTTSym_comment					= TTSymbol("comment");
	kTTSym_ConvertToAppName			= TTSymbol("ConvertToAppName");
	kTTSym_ConvertToTTName			= TTSymbol("ConvertToTTName");
	kTTSym_created					= TTSymbol("created");
	
	kTTSym_dash						= TTSymbol("-");
	kTTSym_dataspace				= TTSymbol("dataspace");
	kTTSym_dataspaceUnit			= TTSymbol("dataspaceUnit");
	kTTSym_debug					= TTSymbol("debug");
	kTTSym_decimal					= TTSymbol("decimal");
	kTTSym_descendants				= TTSymbol("descendants");
	kTTSym_description				= TTSymbol("description");
	kTTSym_destroyed				= TTSymbol("destroyed");
	kTTSym_directory				= TTSymbol("directory");
	
	kTTSym_enable					= TTSymbol("enable");
	kTTSym_end						= TTSymbol("end");
	
	kTTSym_Fill						= TTSymbol("Fill");
	kTTSym_filter					= TTSymbol("filter");
	kTTSym_flag						= TTSymbol("flag");
	kTTSym_freeze					= TTSymbol("freeze");
	
	kTTSym_generic					= TTSymbol("generic");
	kTTSym_Get						= TTSymbol("Get");
	kTTSym_global					= TTSymbol("global");
	
	kTTSym_highlight				= TTSymbol("highlight");
	
	kTTSym_Init						= TTSymbol("Init");
	kTTSym_initialized				= TTSymbol("initialized");
	kTTSym_instances				= TTSymbol("instances");
	kTTSym_integer					= TTSymbol("integer");
	
	kTTSym_life						= TTSymbol("life");
	kTTSym_lookfor					= TTSymbol("lookfor");
	
	kTTSym_Map						= TTSymbol("Map");
	kTTSym_message					= TTSymbol("message");
	kTTSym_mix						= TTSymbol("mix");
	kTTSym_model					= TTSymbol("model");
	kTTSym_mute						= TTSymbol("mute");
	
	kTTSym_namespace				= TTSymbol("namespace");
	
	kTTSym_object					= TTSymbol("object");
	kTTSym_objectCache				= TTSymbol("objectCache");
	kTTSym_order					= TTSymbol("order");
	
	kTTSym_parameter				= TTSymbol("parameter");
	kTTSym_preview					= TTSymbol("preview");
	kTTSym_priority					= TTSymbol("priority");
	
	kTTSym_rangeBounds				= TTSymbol("rangeBounds");
	kTTSym_rangeClipmode			= TTSymbol("rangeClipmode");
	kTTSym_rampDrive				= TTSymbol("rampDrive");
	kTTSym_rampFunction				= TTSymbol("rampFunction");
	kTTSym_Read						= TTSymbol("Read");
	kTTSym_ReadAgain				= TTSymbol("ReadAgain");
	kTTSym_readonly					= TTSymbol("readonly");
	kTTSym_Recall					= TTSymbol("Recall");
	kTTSym_receiver					= TTSymbol("receiver");
	kTTSym_Refresh					= TTSymbol("Refresh");
	kTTSym_repetitionsAllow			= TTSymbol("repetitionsAllow");
	kTTSym_return					= TTSymbol("return");
	kTTSym_returnedValue			= TTSymbol("returnedValue");
	
	kTTSym_Send						= TTSymbol("Send");
	kTTSym_script					= TTSymbol("script");
	kTTSym_service					= TTSymbol("service");
	kTTSym_sharp					= TTSymbol("#");
	kTTSym_signal					= TTSymbol("signal");
	kTTSym_start					= TTSymbol("start");
	kTTSym_stop						= TTSymbol("stop");
	kTTSym_string					= TTSymbol("string");

	kTTSym_tag						= TTSymbol("tag");
	
	kTTSym_unit						= TTSymbol("unit");
	
	kTTSym_value					= TTSymbol("value");
	kTTSym_valueDefault				= TTSymbol("valueDefault");
	kTTSym_valueStepsize			= TTSymbol("valueStepsize");
	kTTSym_viewFreeze				= TTSymbol("viewFreeze");
	kTTSym_view						= TTSymbol("view");
	
	kTTSym_Write					= TTSymbol("Write");
	kTTSym_WriteAgain				= TTSymbol("WriteAgain");
}

