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
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_Application;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_ApplicationManager;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_Container;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_Cue;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_CueManager;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_Data;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_Explorer;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_Input;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_Mapper;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_MapperManager;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_Mirror;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_OpmlHandler;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_Output;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_Preset;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_PresetManager;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_Receiver;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_Sender;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_Script;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_Subscriber;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_TextHandler;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_Viewer;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_XmlHandler;

// attribute, message or any word often used
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_activity;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_activityIn;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_activityOut;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_address;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_addresses;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_alias;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_alphabetic;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_attributes;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_array;

TTMODULAR_EXPORT TTSymbolPtr	kTTSym_boolean;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_brothers;

TTMODULAR_EXPORT TTSymbolPtr	kTTSym_children;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_command;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_Command;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_comment;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_ConvertToAppName;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_ConvertToTTName;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_created;

TTMODULAR_EXPORT TTSymbolPtr	kTTSym_dash;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_dataspace;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_dataspaceUnit;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_debug;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_decimal;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_descendants;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_description;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_destroyed;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_directory;

TTMODULAR_EXPORT TTSymbolPtr	kTTSym_enable;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_end;

TTMODULAR_EXPORT TTSymbolPtr	kTTSym_Fill;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_filter;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_flag;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_freeze;

TTMODULAR_EXPORT TTSymbolPtr	kTTSym_generic;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_Get;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_global;

TTMODULAR_EXPORT TTSymbolPtr	kTTSym_highlight;

TTMODULAR_EXPORT TTSymbolPtr	kTTSym_Init;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_initialized;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_instances;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_integer;

TTMODULAR_EXPORT TTSymbolPtr	kTTSym_life;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_lookfor;

TTMODULAR_EXPORT TTSymbolPtr	kTTSym_Map;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_message;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_mix;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_model;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_mute;

TTMODULAR_EXPORT TTSymbolPtr	kTTSym_namespace;

TTMODULAR_EXPORT TTSymbolPtr	kTTSym_object;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_objectCache;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_order;

TTMODULAR_EXPORT TTSymbolPtr	kTTSym_parameter;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_preview;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_priority;

TTMODULAR_EXPORT TTSymbolPtr	kTTSym_rangeBounds;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_rangeClipmode;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_rampDrive;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_rampFunction;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_rampStatus;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_Read;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_ReadAgain;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_readonly;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_Recall;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_receiver;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_Refresh;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_repetitionsAllow;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_return;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_returnedValue;

TTMODULAR_EXPORT TTSymbolPtr	kTTSym_Send;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_script;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_service;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_sharp;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_signal;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_start;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_stop;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_string;

TTMODULAR_EXPORT TTSymbolPtr	kTTSym_tag;

TTMODULAR_EXPORT TTSymbolPtr	kTTSym_unit;

TTMODULAR_EXPORT TTSymbolPtr	kTTSym_valueDefault;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_valueStepsize;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_viewFreeze;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_view;

TTMODULAR_EXPORT TTSymbolPtr	kTTSym_Write;
TTMODULAR_EXPORT TTSymbolPtr	kTTSym_WriteAgain;


void TTModularSymbolCacheInit()
{
	// object classe name
	kTTSym_Application				= TT("Application");
	kTTSym_ApplicationManager		= TT("ApplicationManager");	
	kTTSym_Container				= TT("Container");		
	kTTSym_Cue						= TT("Cue");					
	kTTSym_CueManager				= TT("CueManager");			
	kTTSym_Data						= TT("Data");					
	kTTSym_Explorer					= TT("Explorer");				
	kTTSym_Input					= TT("Input");				
	kTTSym_Mapper					= TT("Mapper");				
	kTTSym_MapperManager			= TT("MapperManager");		
	kTTSym_Mirror					= TT("Mirror");				
	kTTSym_OpmlHandler				= TT("OpmlHandler");			
	kTTSym_Output					= TT("Output");				
	kTTSym_Preset					= TT("Preset");				
	kTTSym_PresetManager			= TT("PresetManager");		
	kTTSym_Receiver					= TT("Receiver");				
	kTTSym_Sender					= TT("Sender");				
	kTTSym_Script					= TT("Script");				
	kTTSym_Subscriber				= TT("Subscriber");			
	kTTSym_TextHandler				= TT("TextHandler");			
	kTTSym_Viewer					= TT("Viewer");				
	kTTSym_XmlHandler				= TT("XmlHandler");

	// attribute, message or any word often used
	kTTSym_activity					= TT("activity");
	kTTSym_activityIn				= TT("activityIn");
	kTTSym_activityOut				= TT("activityOut");
	kTTSym_address					= TT("address");
	kTTSym_addresses				= TT("addresses");
	kTTSym_alias					= TT("alias");
	kTTSym_alphabetic				= TT("alphabetic");
	kTTSym_attributes				= TT("attributes");
	kTTSym_array					= TT("array");
	
	kTTSym_boolean					= TT("boolean");
	kTTSym_brothers					= TT("brothers");
	
	kTTSym_children					= TT("children");
	kTTSym_command					= TT("command");
	kTTSym_Command					= TT("Command");
	kTTSym_comment					= TT("comment");
	kTTSym_ConvertToAppName			= TT("ConvertToAppName");
	kTTSym_ConvertToTTName			= TT("ConvertToTTName");
	kTTSym_created					= TT("created");
	
	kTTSym_dash						= TT("-");
	kTTSym_dataspace				= TT("dataspace");
	kTTSym_dataspaceUnit			= TT("dataspaceUnit");
	kTTSym_debug					= TT("debug");
	kTTSym_decimal					= TT("decimal");
	kTTSym_descendants				= TT("descendants");
	kTTSym_description				= TT("description");
	kTTSym_destroyed				= TT("destroyed");
	kTTSym_directory				= TT("directory");
	
	kTTSym_enable					= TT("enable");
	kTTSym_end						= TT("end");
	
	kTTSym_Fill						= TT("Fill");
	kTTSym_filter					= TT("filter");
	kTTSym_flag						= TT("flag");
	kTTSym_freeze					= TT("freeze");
	
	kTTSym_generic					= TT("generic");
	kTTSym_Get						= TT("Get");
	kTTSym_global					= TT("global");
	
	kTTSym_highlight				= TT("highlight");
	
	kTTSym_Init						= TT("Init");
	kTTSym_initialized				= TT("initialized");
	kTTSym_instances				= TT("instances");
	kTTSym_integer					= TT("integer");
	
	kTTSym_life						= TT("life");
	kTTSym_lookfor					= TT("lookfor");
	
	kTTSym_Map						= TT("Map");
	kTTSym_message					= TT("message");
	kTTSym_mix						= TT("mix");
	kTTSym_model					= TT("model");
	kTTSym_mute						= TT("mute");
	
	kTTSym_namespace				= TT("namespace");
	
	kTTSym_object					= TT("object");
	kTTSym_objectCache				= TT("objectCache");
	kTTSym_order					= TT("order");
	
	kTTSym_parameter				= TT("parameter");
	kTTSym_preview					= TT("preview");
	kTTSym_priority					= TT("priority");
	
	kTTSym_rangeBounds				= TT("rangeBounds");
	kTTSym_rangeClipmode			= TT("rangeClipmode");
	kTTSym_rampDrive				= TT("rampDrive");
	kTTSym_rampFunction				= TT("rampFunction");
	kTTSym_rampStatus				= TT("rampStatus");
	kTTSym_Read						= TT("Read");
	kTTSym_ReadAgain				= TT("ReadAgain");
	kTTSym_readonly					= TT("readonly");
	kTTSym_Recall					= TT("Recall");
	kTTSym_receiver					= TT("receiver");
	kTTSym_Refresh					= TT("Refresh");
	kTTSym_repetitionsAllow			= TT("repetitionsAllow");
	kTTSym_return					= TT("return");
	kTTSym_returnedValue			= TT("returnedValue");
	
	kTTSym_Send						= TT("Send");
	kTTSym_script					= TT("script");
	kTTSym_service					= TT("service");
	kTTSym_sharp					= TT("#");
	kTTSym_signal					= TT("signal");
	kTTSym_start					= TT("start");
	kTTSym_stop						= TT("stop");
	kTTSym_string					= TT("string");

	kTTSym_tag						= TT("tag");
	
	kTTSym_unit						= TT("unit");
	
	kTTSym_value					= TT("value");
	kTTSym_valueDefault				= TT("valueDefault");
	kTTSym_valueStepsize			= TT("valueStepsize");
	kTTSym_viewFreeze				= TT("viewFreeze");
	kTTSym_view						= TT("view");
	
	kTTSym_Write					= TT("Write");
	kTTSym_WriteAgain				= TT("WriteAgain");
}

