/* 
 * TTBlue Class for caching common symbols for speed
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTSymbolTable.h"
#include "TTSymbolCache.h"


TTFOUNDATION_EXPORT TTSymbolTable	gTTSymbolTable;

// osc namespace
TTFOUNDATION_EXPORT TTSymbol		kTTSymEmpty						((""));
TTFOUNDATION_EXPORT TTSymbol		kTTSymSlash						(("/"));
TTFOUNDATION_EXPORT TTSymbol		kTTSymDot						(("."));
TTFOUNDATION_EXPORT TTSymbol		kTTSymColon						((":"));
TTFOUNDATION_EXPORT TTSymbol		kTTSymStar						(("*"));

// vectors
TTFOUNDATION_EXPORT TTSymbol		kTTSym_setVector32				(("setVector32"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_getVector32				(("getVector32"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_setVector64				(("setVector64"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_getVector64				(("getVector64"));

TTFOUNDATION_EXPORT TTSymbol		kTTSym_alloc					(("alloc"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_attribute				(("attribute"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_audioEngineWillProcess	(("audioEngineWillProcess"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_baton					(("baton"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_both						(("both"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_bypass					(("bypass"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_clear					(("clear"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_clipmode					(("clipmode"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_clip						(("clip"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_cliplow					(("cliplow"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_cliphigh					(("cliphigh"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_exclude					(("exclude"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_wrap						(("wrap"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_fold						(("fold"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_function					(("function"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_high						(("high"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_include					(("include"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_instance					(("instance"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_low						(("low"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_maxNumChannels			(("maxNumChannels"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_mode						(("mode"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_name						(("name"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_none						(("none"));
TTFOUNDATION_EXPORT TTSymbol        kTTSym_notification             (("notification"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_notify					(("notify"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_numChannels				(("numChannels"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_object					(("object"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_parent					(("parent"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_part						(("part"));
TTFOUNDATION_EXPORT TTSymbol        kTTSym_priority                 (("priority"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_processInPlace			(("processInPlace"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_range					(("range"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_resonance				(("resonance"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_restrict					(("restrict"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_updateMaxNumChannels		(("updateMaxNumChannels"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_updateSampleRate			(("updateSampleRate"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_value					(("value"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_vectorSize				(("vectorSize"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_sampleRate				(("sampleRate"));
TTFOUNDATION_EXPORT TTSymbol        kTTSym_schema                   (("schema"));

// networking
TTFOUNDATION_EXPORT TTSymbol		kTTSym_tcp						(("tcp"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_udp						(("udp"));

// waveforms
TTFOUNDATION_EXPORT TTSymbol		kTTSym_sine						(("sine"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_sineMod					(("sineMod"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_cosine					(("cosine"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_cosineMod				(("cosineMod"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_square					(("square"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_squareMod				(("squareMod"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_triangle					(("triangle"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_triangleMod				(("triangleMod"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_ramp						(("ramp"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_rampMod					(("rampMod"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_sawtooth					(("sawtooth"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_sawtoothMod				(("sawtoothMod"));

// object names
TTFOUNDATION_EXPORT TTSymbol		kTTSym_adsr						(("adsr"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_audiosignal				(("audiosignal"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_audiosignalarray			(("audiosignalarray"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_dcblock					(("dcblock"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_gain						(("gain"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_operator					(("operator"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_phasor					(("phasor"));

// matrix related
TTFOUNDATION_EXPORT TTSymbol		kTTSym_matrix					(("matrix"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_matrixarray				(("matrixarray"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_dimensions				(("dimensions"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_type						(("type"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_elementCount				(("elementCount"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_samplematrix				(("samplematrix"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_buffer                   (("buffer"));

// data types - 3 defined above: none, object, value
TTFOUNDATION_EXPORT TTSymbol		kTTSym_float32					(("float32"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_float64					(("float64"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_int8						(("int8"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_uint8					(("uint8"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_int16					(("int16"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_uint16					(("uint16"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_int32					(("int32"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_uint32					(("uint32"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_int64					(("int64"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_uint64					(("uint64"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_boolean					(("boolean"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_symbol					(("symbol"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_pointer					(("pointer"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_string					(("string"));

#if 0
#pragma mark -
#pragma mark Modular symbols
#endif

// object classe name
TTFOUNDATION_EXPORT TTSymbol       kTTSym_Application                      (("Application"));
TTFOUNDATION_EXPORT TTSymbol       kTTSym_ApplicationManager				(("ApplicationManager"));
TTFOUNDATION_EXPORT TTSymbol       kTTSym_Container                        (("Container"));
TTFOUNDATION_EXPORT TTSymbol       kTTSym_Cue                              (("Cue"));
TTFOUNDATION_EXPORT TTSymbol       kTTSym_CueManager                       (("CueManager"));
TTFOUNDATION_EXPORT TTSymbol       kTTSym_Data                             (("Data"));
TTFOUNDATION_EXPORT TTSymbol       kTTSym_Explorer                         (("Explorer"));
TTFOUNDATION_EXPORT TTSymbol       kTTSym_Input                            (("Input"));
TTFOUNDATION_EXPORT TTSymbol       kTTSym_InputAudio                       (("Input.audio"));
TTFOUNDATION_EXPORT TTSymbol       kTTSym_Mapper                           (("Mapper"));
TTFOUNDATION_EXPORT TTSymbol       kTTSym_MapperManager					(("MapperManager"));
TTFOUNDATION_EXPORT TTSymbol       kTTSym_Mirror                           (("Mirror"));
TTFOUNDATION_EXPORT TTSymbol       kTTSym_NodeInfo                         (("NodeInfo"));
TTFOUNDATION_EXPORT TTSymbol       kTTSym_OpmlHandler                      (("OpmlHandler"));
TTFOUNDATION_EXPORT TTSymbol       kTTSym_Output                           (("Output"));
TTFOUNDATION_EXPORT TTSymbol       kTTSym_OutputAudio                      (("Output.audio"));
TTFOUNDATION_EXPORT TTSymbol       kTTSym_Preset                           (("Preset"));
TTFOUNDATION_EXPORT TTSymbol       kTTSym_PresetManager					(("PresetManager"));
TTFOUNDATION_EXPORT TTSymbol       kTTSym_Ramp                             (("Ramp"));
TTFOUNDATION_EXPORT TTSymbol       kTTSym_Receiver                         (("Receiver"));
TTFOUNDATION_EXPORT TTSymbol       kTTSym_Sender                           (("Sender"));
TTFOUNDATION_EXPORT TTSymbol       kTTSym_Script                           (("Script"));
TTFOUNDATION_EXPORT TTSymbol       kTTSym_Subscriber                       (("Subscriber"));
TTFOUNDATION_EXPORT TTSymbol       kTTSym_TextHandler                      (("TextHandler"));
TTFOUNDATION_EXPORT TTSymbol       kTTSym_Viewer                           (("Viewer"));
TTFOUNDATION_EXPORT TTSymbol       kTTSym_XmlHandler                       (("XmlHandler"));

// notifications
TTFOUNDATION_EXPORT TTSymbol       kTTSym_ClockDurationChanged         (("ClockDurationChanged"));
TTFOUNDATION_EXPORT TTSymbol       kTTSym_ClockOffsetChanged           (("ClockOffsetChanged"));
TTFOUNDATION_EXPORT TTSymbol       kTTSym_ClockSpeedChanged            (("ClockSpeedChanged"));
TTFOUNDATION_EXPORT TTSymbol       kTTSym_ClockRunningChanged          (("ClockRunningChanged"));
TTFOUNDATION_EXPORT TTSymbol       kTTSym_ClockTicked                  (("ClockTicked"));

// attribute, message or any word often used
TTFOUNDATION_EXPORT TTSymbol       kTTSym_active                           (("active"));
TTFOUNDATION_EXPORT TTSymbol       kTTSym_activity                         (("activity"));
TTFOUNDATION_EXPORT TTSymbol       kTTSym_activityIn                       (("activityIn"));
TTFOUNDATION_EXPORT TTSymbol       kTTSym_activityOut                      (("activityOut"));
TTFOUNDATION_EXPORT TTSymbol       kTTSym_address                          (("address"));
TTFOUNDATION_EXPORT TTSymbol       kTTSym_addresses                        (("addresses"));
TTFOUNDATION_EXPORT TTSymbol       kTTSym_alias                            (("alias"));
TTFOUNDATION_EXPORT TTSymbol       kTTSym_alphabetic                       (("alphabetic"));
TTFOUNDATION_EXPORT TTSymbol       kTTSym_attributes                       (("attributes"));
TTFOUNDATION_EXPORT TTSymbol       kTTSym_array                            (("array"));

TTFOUNDATION_EXPORT TTSymbol       kTTSym_brothers                         (("brothers"));

TTFOUNDATION_EXPORT TTSymbol       kTTSym_children                         (("children"));
TTFOUNDATION_EXPORT TTSymbol       kTTSym_command                          (("command"));
TTFOUNDATION_EXPORT TTSymbol       kTTSym_Command                          (("Command"));
TTFOUNDATION_EXPORT TTSymbol       kTTSym_comment                          (("comment"));
TTFOUNDATION_EXPORT TTSymbol       kTTSym_content                          (("content"));
TTFOUNDATION_EXPORT TTSymbol       kTTSym_ConvertToAppName					(("ConvertToAppName"));
TTFOUNDATION_EXPORT TTSymbol       kTTSym_ConvertToTTName                  (("ConvertToTTName"));
TTFOUNDATION_EXPORT TTSymbol       kTTSym_created                          (("created"));

TTFOUNDATION_EXPORT TTSymbol       kTTSym_dash                             (("-"));
TTFOUNDATION_EXPORT TTSymbol       kTTSym_dataspace                        (("dataspace"));
TTFOUNDATION_EXPORT TTSymbol       kTTSym_dataspaceUnit					(("dataspaceUnit"));
TTFOUNDATION_EXPORT TTSymbol       kTTSym_debug                            (("debug"));
TTFOUNDATION_EXPORT TTSymbol       kTTSym_decimal                          (("decimal"));
TTFOUNDATION_EXPORT TTSymbol       kTTSym_descendants                      (("descendants"));
TTFOUNDATION_EXPORT TTSymbol       kTTSym_description                      (("description"));
TTFOUNDATION_EXPORT TTSymbol       kTTSym_destroyed                        (("destroyed"));
TTFOUNDATION_EXPORT TTSymbol       kTTSym_directory                        (("directory"));
TTFOUNDATION_EXPORT TTSymbol       kTTSym_Dump                             (("Dump"));

TTFOUNDATION_EXPORT TTSymbol       kTTSym_end                              (("end"));
TTFOUNDATION_EXPORT TTSymbol       kTTSym_external                         (("external"));

TTFOUNDATION_EXPORT TTSymbol       kTTSym_Fill                             (("Fill"));
TTFOUNDATION_EXPORT TTSymbol       kTTSym_filter                           (("filter"));
TTFOUNDATION_EXPORT TTSymbol       kTTSym_flag                             (("flag"));
TTFOUNDATION_EXPORT TTSymbol       kTTSym_Flatten                          (("Flatten"));
TTFOUNDATION_EXPORT TTSymbol       kTTSym_flattened                        (("flattened"));
TTFOUNDATION_EXPORT TTSymbol       kTTSym_freeze                           (("freeze"));

TTFOUNDATION_EXPORT TTSymbol       kTTSym_generic                          (("generic"));
TTFOUNDATION_EXPORT TTSymbol       kTTSym_Get                              (("Get"));
TTFOUNDATION_EXPORT TTSymbol       kTTSym_global                           (("global"));
TTFOUNDATION_EXPORT TTSymbol       kTTSym_Go                               (("Go"));
TTFOUNDATION_EXPORT TTSymbol       kTTSym_Grab                             (("Grab"));

TTFOUNDATION_EXPORT TTSymbol       kTTSym_highlight                        (("highlight"));

TTFOUNDATION_EXPORT TTSymbol       kTTSym_Init                             (("Init"));
TTFOUNDATION_EXPORT TTSymbol       kTTSym_initialized                      (("initialized"));
TTFOUNDATION_EXPORT TTSymbol       kTTSym_inputUnit                        (("inputUnit"));
TTFOUNDATION_EXPORT TTSymbol       kTTSym_outputUnit                       (("outputUnit"));
TTFOUNDATION_EXPORT TTSymbol       kTTSym_instances                        (("instances"));
TTFOUNDATION_EXPORT TTSymbol       kTTSym_integer                          (("integer"));

TTFOUNDATION_EXPORT TTSymbol       kTTSym_life                             (("life"));
TTFOUNDATION_EXPORT TTSymbol       kTTSym_lines                            (("lines"));
TTFOUNDATION_EXPORT TTSymbol       kTTSym_local                            (("local"));
TTFOUNDATION_EXPORT TTSymbol       kTTSym_lookfor                          (("lookfor"));

TTFOUNDATION_EXPORT TTSymbol       kTTSym_Map                              (("Map"));
TTFOUNDATION_EXPORT TTSymbol       kTTSym_message                          (("message"));
TTFOUNDATION_EXPORT TTSymbol       kTTSym_mix                              (("mix"));
TTFOUNDATION_EXPORT TTSymbol       kTTSym_mirror                           (("mirror"));
TTFOUNDATION_EXPORT TTSymbol       kTTSym_model                            (("model"));
TTFOUNDATION_EXPORT TTSymbol       kTTSym_mute                             (("mute"));

TTFOUNDATION_EXPORT TTSymbol       kTTSym_names                            (("names"));
TTFOUNDATION_EXPORT TTSymbol       kTTSym_namespace                        (("namespace"));
TTFOUNDATION_EXPORT TTSymbol       kTTSym_nodeAddress                      (("nodeAddress"));

TTFOUNDATION_EXPORT TTSymbol       kTTSym_objectCache                      (("objectCache"));
TTFOUNDATION_EXPORT TTSymbol       kTTSym_offset                           (("offset"));

TTFOUNDATION_EXPORT TTSymbol       kTTSym_parameter                        (("parameter"));
TTFOUNDATION_EXPORT TTSymbol       kTTSym_preview                          (("preview"));
TTFOUNDATION_EXPORT TTSymbol       kTTSym_proxy                            (("proxy"));

TTFOUNDATION_EXPORT TTSymbol       kTTSym_rangeBounds                      (("rangeBounds"));
TTFOUNDATION_EXPORT TTSymbol       kTTSym_rangeClipmode					(("rangeClipmode"));
TTFOUNDATION_EXPORT TTSymbol       kTTSym_rampDrive                        (("rampDrive"));
TTFOUNDATION_EXPORT TTSymbol       kTTSym_rampFunction                     (("rampFunction"));
TTFOUNDATION_EXPORT TTSymbol       kTTSym_RampGo                           (("RampGo"));
TTFOUNDATION_EXPORT TTSymbol       kTTSym_RampSet                          (("RampSet"));
TTFOUNDATION_EXPORT TTSymbol       kTTSym_RampSlide                        (("RampSlide"));
TTFOUNDATION_EXPORT TTSymbol		kTTSym_rampStatus						(("rampStatus"));
TTFOUNDATION_EXPORT TTSymbol       kTTSym_RampTarget                       (("RampTarget"));
TTFOUNDATION_EXPORT TTSymbol       kTTSym_Read                             (("Read"));
TTFOUNDATION_EXPORT TTSymbol       kTTSym_ReadAgain                        (("ReadAgain"));
TTFOUNDATION_EXPORT TTSymbol       kTTSym_readonly                         (("readonly"));
TTFOUNDATION_EXPORT TTSymbol       kTTSym_Recall                           (("Recall"));
TTFOUNDATION_EXPORT TTSymbol       kTTSym_receiver                         (("receiver"));
TTFOUNDATION_EXPORT TTSymbol       kTTSym_repetitionsFilter				(("repetitionsFilter"));
TTFOUNDATION_EXPORT TTSymbol       kTTSym_return                           (("return"));
TTFOUNDATION_EXPORT TTSymbol       kTTSym_returnedValue					(("returnedValue"));
TTFOUNDATION_EXPORT TTSymbol       kTTSym_Run                              (("Run"));
TTFOUNDATION_EXPORT TTSymbol        kTTSym_running                      (("running"));

TTFOUNDATION_EXPORT TTSymbol        kTTSym_SelectionRefresh             (("SelectionRefresh"));
TTFOUNDATION_EXPORT TTSymbol       kTTSym_Send                             (("Send"));
TTFOUNDATION_EXPORT TTSymbol       kTTSym_script                           (("script"));
TTFOUNDATION_EXPORT TTSymbol       kTTSym_service                          (("service"));
TTFOUNDATION_EXPORT TTSymbol       kTTSym_sharp                            (("#"));
TTFOUNDATION_EXPORT TTSymbol       kTTSym_signal                           (("signal"));
TTFOUNDATION_EXPORT TTSymbol       kTTSym_start                            (("start"));
TTFOUNDATION_EXPORT TTSymbol       kTTSym_stop                             (("stop"));
TTFOUNDATION_EXPORT TTSymbol       kTTSym_Stop                             (("Stop"));
TTFOUNDATION_EXPORT TTSymbol       kTTSym_Subscribe                        (("Subscribe"));

TTFOUNDATION_EXPORT TTSymbol       kTTSym_tags                              (("tags"));
TTFOUNDATION_EXPORT TTSymbol       kTTSym_target                           (("target"));
TTFOUNDATION_EXPORT TTSymbol       kTTSym_Tick                             (("Tick"));

TTFOUNDATION_EXPORT TTSymbol       kTTSym_unit                             (("unit"));
TTFOUNDATION_EXPORT TTSymbol       kTTSym_Update                           (("Update"));

TTFOUNDATION_EXPORT TTSymbol       kTTSym_valueDefault                     (("valueDefault"));
TTFOUNDATION_EXPORT TTSymbol       kTTSym_valueStepsize					(("valueStepsize"));
TTFOUNDATION_EXPORT TTSymbol       kTTSym_viewFreeze                       (("viewFreeze"));
TTFOUNDATION_EXPORT TTSymbol       kTTSym_view                             (("view"));

TTFOUNDATION_EXPORT TTSymbol       kTTSym_Write                            (("Write"));
TTFOUNDATION_EXPORT TTSymbol       kTTSym_WriteAgain                       (("WriteAgain"));

TTFOUNDATION_EXPORT TTSymbol       kTTSym_xmlHandlerReadingComment         (("xmlHandlerReadingComment"));
TTFOUNDATION_EXPORT TTSymbol       kTTSym_xmlHandlerReadingEnds            (("xmlHandlerReadingEnds"));
TTFOUNDATION_EXPORT TTSymbol       kTTSym_xmlHandlerReadingStarts          (("xmlHandlerReadingStarts"));

// Symbols used for the Score project
// théo : they used to be stored inside a dedicated symbol cache but it is not possible to do that anymore.
// TODO : sort them with the other symbol above

// object classe name
TTFOUNDATION_EXPORT TTSymbol        kTTSym_TimeEvent                        (("TimeEvent"));

// notifications
TTFOUNDATION_EXPORT TTSymbol        kTTSym_ConditionReadyChanged            (("ConditionReadyChanged"));
TTFOUNDATION_EXPORT TTSymbol        kTTSym_EventDateChanged                 (("EventDateChanged"));
TTFOUNDATION_EXPORT TTSymbol        kTTSym_EventStatusChanged               (("EventStatusChanged"));
TTFOUNDATION_EXPORT TTSymbol        kTTSym_ProcessStarted                   (("ProcessStarted"));
TTFOUNDATION_EXPORT TTSymbol        kTTSym_ProcessEnded                     (("ProcessEnded"));
TTFOUNDATION_EXPORT TTSymbol        kTTSym_ProcessDisposed                  (("ProcessDisposed"));
TTFOUNDATION_EXPORT TTSymbol        kTTSym_ProcessDurationMinReached        (("ProcessDurationMinReached"));

// message name
TTFOUNDATION_EXPORT TTSymbol         kTTSym_case                           (("case"));
TTFOUNDATION_EXPORT TTSymbol         kTTSym_color                          (("color"));
TTFOUNDATION_EXPORT TTSymbol         kTTSym_Compile                        (("Compile"));
TTFOUNDATION_EXPORT TTSymbol         kTTSym_compiled                       (("compiled"));
TTFOUNDATION_EXPORT TTSymbol         kTTSym_condition                      (("condition"));
TTFOUNDATION_EXPORT TTSymbol         kTTSym_date                           (("date"));
TTFOUNDATION_EXPORT TTSymbol         kTTSym_Dispose                        (("Dispose"));
TTFOUNDATION_EXPORT TTSymbol         kTTSym_duration                       (("duration"));
TTFOUNDATION_EXPORT TTSymbol         kTTSym_durationMin                    (("durationMin"));
TTFOUNDATION_EXPORT TTSymbol         kTTSym_durationMax                    (("durationMax"));
TTFOUNDATION_EXPORT TTSymbol         kTTSym_endDate                        (("endDate"));
TTFOUNDATION_EXPORT TTSymbol         kTTSym_event                          (("event"));
TTFOUNDATION_EXPORT TTSymbol         kTTSym_eventDisposed                  (("eventDisposed"));
TTFOUNDATION_EXPORT TTSymbol         kTTSym_eventHappened                  (("eventHappened"));
TTFOUNDATION_EXPORT TTSymbol         kTTSym_eventPending                   (("eventPending"));
TTFOUNDATION_EXPORT TTSymbol         kTTSym_eventWaiting                   (("eventWaiting"));
TTFOUNDATION_EXPORT TTSymbol         kTTSym_expression                     (("expression"));
TTFOUNDATION_EXPORT TTSymbol         kTTSym_Goto                           (("Goto"));
TTFOUNDATION_EXPORT TTSymbol         kTTSym_Happen                         (("Happen"));
TTFOUNDATION_EXPORT TTSymbol         kTTSym_Limit                          (("Limit"));
TTFOUNDATION_EXPORT TTSymbol         kTTSym_Move                           (("Move"));
TTFOUNDATION_EXPORT TTSymbol         kTTSym_Pause                          (("Pause"));
TTFOUNDATION_EXPORT TTSymbol         kTTSym_Process                        (("Process"));
TTFOUNDATION_EXPORT TTSymbol         kTTSym_ProcessStart                   (("ProcessStart"));
TTFOUNDATION_EXPORT TTSymbol         kTTSym_ProcessEnd                     (("ProcessEnd"));
TTFOUNDATION_EXPORT TTSymbol         kTTSym_ready                          (("ready"));
TTFOUNDATION_EXPORT TTSymbol         kTTSym_redundancy                     (("redundancy"));
TTFOUNDATION_EXPORT TTSymbol         kTTSym_Resume                         (("Resume"));
TTFOUNDATION_EXPORT TTSymbol         kTTSym_recorded                       (("recorded"));
TTFOUNDATION_EXPORT TTSymbol         kTTSym_rigid                          (("rigid"));
TTFOUNDATION_EXPORT TTSymbol         kTTSym_sampled                        (("sampled"));
TTFOUNDATION_EXPORT TTSymbol         kTTSym_samples                        (("samples"));
TTFOUNDATION_EXPORT TTSymbol         kTTSym_speed                          (("speed"));
TTFOUNDATION_EXPORT TTSymbol         kTTSym_startDate                      (("startDate"));
TTFOUNDATION_EXPORT TTSymbol         kTTSym_status                         (("status"));
TTFOUNDATION_EXPORT TTSymbol         kTTSym_Trigger                        (("Trigger"));
TTFOUNDATION_EXPORT TTSymbol         kTTSym_verticalPosition               (("verticalPosition"));
TTFOUNDATION_EXPORT TTSymbol         kTTSym_verticalSize                   (("verticalSize"));
TTFOUNDATION_EXPORT TTSymbol         kTTSym_viewPosition                   (("viewPosition"));
TTFOUNDATION_EXPORT TTSymbol         kTTSym_viewZoom                       (("viewZoom"));



