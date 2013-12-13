/** @file
 *
 * @ingroup modularLibrary
 *
 * @brief TTBlue Class for caching common symbols for speed
 *
 * @details
 *
 * @authors Théo de la Hogue
 *
 * @copyright Copyright © 2010, Théo de la Hogue @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */
#include "TTModular.h"
#include "TTSymbolTable.h"
#include "TTModularSymbolCache.h"

// object classe name
TTMODULAR_EXPORT TTSymbol       kTTSym_Application                      (("Application"));
TTMODULAR_EXPORT TTSymbol       kTTSym_ApplicationManager				(("ApplicationManager"));
TTMODULAR_EXPORT TTSymbol       kTTSym_Container                        (("Container"));
TTMODULAR_EXPORT TTSymbol       kTTSym_Cue                              (("Cue"));
TTMODULAR_EXPORT TTSymbol       kTTSym_CueManager                       (("CueManager"));
TTMODULAR_EXPORT TTSymbol       kTTSym_Data                             (("Data"));
TTMODULAR_EXPORT TTSymbol       kTTSym_Explorer                         (("Explorer"));
TTMODULAR_EXPORT TTSymbol       kTTSym_Input                            (("Input"));
TTMODULAR_EXPORT TTSymbol       kTTSym_InputAudio                       (("Input.audio"));
TTMODULAR_EXPORT TTSymbol       kTTSym_Mapper                           (("Mapper"));
TTMODULAR_EXPORT TTSymbol       kTTSym_MapperManager					(("MapperManager"));
TTMODULAR_EXPORT TTSymbol       kTTSym_Mirror                           (("Mirror"));
TTMODULAR_EXPORT TTSymbol       kTTSym_OpmlHandler                      (("OpmlHandler"));
TTMODULAR_EXPORT TTSymbol       kTTSym_Output                           (("Output"));
TTMODULAR_EXPORT TTSymbol       kTTSym_OutputAudio                      (("Output.audio"));
TTMODULAR_EXPORT TTSymbol       kTTSym_Preset                           (("Preset"));
TTMODULAR_EXPORT TTSymbol       kTTSym_PresetManager					(("PresetManager"));
TTMODULAR_EXPORT TTSymbol       kTTSym_Ramp                             (("Ramp"));
TTMODULAR_EXPORT TTSymbol       kTTSym_Receiver                         (("Receiver"));
TTMODULAR_EXPORT TTSymbol       kTTSym_Sender                           (("Sender"));
TTMODULAR_EXPORT TTSymbol       kTTSym_Script                           (("Script"));
TTMODULAR_EXPORT TTSymbol       kTTSym_Subscriber                       (("Subscriber"));
TTMODULAR_EXPORT TTSymbol       kTTSym_TextHandler                      (("TextHandler"));
TTMODULAR_EXPORT TTSymbol       kTTSym_Viewer                           (("Viewer"));
TTMODULAR_EXPORT TTSymbol       kTTSym_XmlHandler                       (("XmlHandler"));

// notifications
TTMODULAR_EXPORT TTSymbol       kTTSym_SchedulerDurationChanged         (("SchedulerDurationChanged"));
TTMODULAR_EXPORT TTSymbol       kTTSym_SchedulerOffsetChanged           (("SchedulerOffsetChanged"));
TTMODULAR_EXPORT TTSymbol       kTTSym_SchedulerSpeedChanged            (("SchedulerSpeedChanged"));
TTMODULAR_EXPORT TTSymbol       kTTSym_SchedulerRunningChanged          (("SchedulerRunningChanged"));
TTMODULAR_EXPORT TTSymbol       kTTSym_SchedulerTicked                  (("SchedulerTicked"));

// attribute, message or any word often used
TTMODULAR_EXPORT TTSymbol       kTTSym_active                           (("active"));
TTMODULAR_EXPORT TTSymbol       kTTSym_activity                         (("activity"));
TTMODULAR_EXPORT TTSymbol       kTTSym_activityIn                       (("activityIn"));
TTMODULAR_EXPORT TTSymbol       kTTSym_activityOut                      (("activityOut"));
TTMODULAR_EXPORT TTSymbol       kTTSym_address                          (("address"));
TTMODULAR_EXPORT TTSymbol       kTTSym_addresses                        (("addresses"));
TTMODULAR_EXPORT TTSymbol       kTTSym_alias                            (("alias"));
TTMODULAR_EXPORT TTSymbol       kTTSym_alphabetic                       (("alphabetic"));
TTMODULAR_EXPORT TTSymbol       kTTSym_attributes                       (("attributes"));
TTMODULAR_EXPORT TTSymbol       kTTSym_array                            (("array"));

TTMODULAR_EXPORT TTSymbol       kTTSym_boolean                          (("boolean"));
TTMODULAR_EXPORT TTSymbol       kTTSym_brothers                         (("brothers"));

TTMODULAR_EXPORT TTSymbol       kTTSym_children                         (("children"));
TTMODULAR_EXPORT TTSymbol       kTTSym_command                          (("command"));
TTMODULAR_EXPORT TTSymbol       kTTSym_Command                          (("Command"));
TTMODULAR_EXPORT TTSymbol       kTTSym_comment                          (("comment"));
TTMODULAR_EXPORT TTSymbol       kTTSym_content                          (("content"));
TTMODULAR_EXPORT TTSymbol       kTTSym_ConvertToAppName					(("ConvertToAppName"));
TTMODULAR_EXPORT TTSymbol       kTTSym_ConvertToTTName                  (("ConvertToTTName"));
TTMODULAR_EXPORT TTSymbol       kTTSym_created                          (("created"));

TTMODULAR_EXPORT TTSymbol       kTTSym_dash                             (("-"));
TTMODULAR_EXPORT TTSymbol       kTTSym_dataspace                        (("dataspace"));
TTMODULAR_EXPORT TTSymbol       kTTSym_dataspaceUnit					(("dataspaceUnit"));
TTMODULAR_EXPORT TTSymbol       kTTSym_debug                            (("debug"));
TTMODULAR_EXPORT TTSymbol       kTTSym_decimal                          (("decimal"));
TTMODULAR_EXPORT TTSymbol       kTTSym_descendants                      (("descendants"));
TTMODULAR_EXPORT TTSymbol       kTTSym_description                      (("description"));
TTMODULAR_EXPORT TTSymbol       kTTSym_destroyed                        (("destroyed"));
TTMODULAR_EXPORT TTSymbol       kTTSym_directory                        (("directory"));
TTMODULAR_EXPORT TTSymbol       kTTSym_Dump                             (("Dump"));

TTMODULAR_EXPORT TTSymbol       kTTSym_end                              (("end"));
TTMODULAR_EXPORT TTSymbol       kTTSym_external                         (("external"));

TTMODULAR_EXPORT TTSymbol       kTTSym_Fill                             (("Fill"));
TTMODULAR_EXPORT TTSymbol       kTTSym_filter                           (("filter"));
TTMODULAR_EXPORT TTSymbol       kTTSym_flag                             (("flag"));
TTMODULAR_EXPORT TTSymbol       kTTSym_Flatten                          (("Flatten"));
TTMODULAR_EXPORT TTSymbol       kTTSym_flattened                        (("flattened"));
TTMODULAR_EXPORT TTSymbol       kTTSym_freeze                           (("freeze"));

TTMODULAR_EXPORT TTSymbol       kTTSym_generic                          (("generic"));
TTMODULAR_EXPORT TTSymbol       kTTSym_Get                              (("Get"));
TTMODULAR_EXPORT TTSymbol       kTTSym_global                           (("global"));
TTMODULAR_EXPORT TTSymbol       kTTSym_Go                               (("Go"));

TTMODULAR_EXPORT TTSymbol       kTTSym_highlight                        (("highlight"));

TTMODULAR_EXPORT TTSymbol       kTTSym_Init                             (("Init"));
TTMODULAR_EXPORT TTSymbol       kTTSym_initialized                      (("initialized"));
TTMODULAR_EXPORT TTSymbol       kTTSym_inputUnit                        (("inputUnit"));
TTMODULAR_EXPORT TTSymbol       kTTSym_instances                        (("instances"));
TTMODULAR_EXPORT TTSymbol       kTTSym_integer                          (("integer"));

TTMODULAR_EXPORT TTSymbol       kTTSym_life                             (("life"));
TTMODULAR_EXPORT TTSymbol       kTTSym_lines                            (("lines"));
TTMODULAR_EXPORT TTSymbol       kTTSym_local                            (("local"));
TTMODULAR_EXPORT TTSymbol       kTTSym_lookfor                          (("lookfor"));

TTMODULAR_EXPORT TTSymbol       kTTSym_Map                              (("Map"));
TTMODULAR_EXPORT TTSymbol       kTTSym_message                          (("message"));
TTMODULAR_EXPORT TTSymbol       kTTSym_mix                              (("mix"));
TTMODULAR_EXPORT TTSymbol       kTTSym_mirror                           (("mirror"));
TTMODULAR_EXPORT TTSymbol       kTTSym_model                            (("model"));
TTMODULAR_EXPORT TTSymbol       kTTSym_mute                             (("mute"));

TTMODULAR_EXPORT TTSymbol       kTTSym_names                            (("names"));
TTMODULAR_EXPORT TTSymbol       kTTSym_namespace                        (("namespace"));
TTMODULAR_EXPORT TTSymbol       kTTSym_nodeAddress                      (("nodeAddress"));

TTMODULAR_EXPORT TTSymbol       kTTSym_object                           (("object"));
TTMODULAR_EXPORT TTSymbol       kTTSym_objectCache                      (("objectCache"));
TTMODULAR_EXPORT TTSymbol       kTTSym_offset                           (("offset"));

TTMODULAR_EXPORT TTSymbol       kTTSym_parameter                        (("parameter"));
TTMODULAR_EXPORT TTSymbol       kTTSym_preview                          (("preview"));
TTMODULAR_EXPORT TTSymbol       kTTSym_proxy                            (("proxy"));

TTMODULAR_EXPORT TTSymbol       kTTSym_rangeBounds                      (("rangeBounds"));
TTMODULAR_EXPORT TTSymbol       kTTSym_rangeClipmode					(("rangeClipmode"));
TTMODULAR_EXPORT TTSymbol       kTTSym_rampDrive                        (("rampDrive"));
TTMODULAR_EXPORT TTSymbol       kTTSym_rampFunction                     (("rampFunction"));
TTMODULAR_EXPORT TTSymbol       kTTSym_RampGo                           (("RampGo"));
TTMODULAR_EXPORT TTSymbol       kTTSym_RampSet                          (("RampSet"));
TTMODULAR_EXPORT TTSymbol       kTTSym_RampSlide                        (("RampSlide"));
TTMODULAR_EXPORT TTSymbol		kTTSym_rampStatus						(("rampStatus"));
TTMODULAR_EXPORT TTSymbol       kTTSym_RampTarget                       (("RampTarget"));
TTMODULAR_EXPORT TTSymbol       kTTSym_Read                             (("Read"));
TTMODULAR_EXPORT TTSymbol       kTTSym_ReadAgain                        (("ReadAgain"));
TTMODULAR_EXPORT TTSymbol       kTTSym_readonly                         (("readonly"));
TTMODULAR_EXPORT TTSymbol       kTTSym_Recall                           (("Recall"));
TTMODULAR_EXPORT TTSymbol       kTTSym_receiver                         (("receiver"));
TTMODULAR_EXPORT TTSymbol       kTTSym_repetitionsFilter				(("repetitionsFilter"));
TTMODULAR_EXPORT TTSymbol       kTTSym_return                           (("return"));
TTMODULAR_EXPORT TTSymbol       kTTSym_returnedValue					(("returnedValue"));
TTMODULAR_EXPORT TTSymbol       kTTSym_Run                              (("Run"));
        
TTMODULAR_EXPORT TTSymbol       kTTSym_Send                             (("Send"));
TTMODULAR_EXPORT TTSymbol       kTTSym_script                           (("script"));
TTMODULAR_EXPORT TTSymbol       kTTSym_service                          (("service"));
TTMODULAR_EXPORT TTSymbol       kTTSym_sharp                            (("#"));
TTMODULAR_EXPORT TTSymbol       kTTSym_signal                           (("signal"));
TTMODULAR_EXPORT TTSymbol       kTTSym_start                            (("start"));
TTMODULAR_EXPORT TTSymbol       kTTSym_stop                             (("stop"));
TTMODULAR_EXPORT TTSymbol       kTTSym_Stop                             (("Stop"));
TTMODULAR_EXPORT TTSymbol       kTTSym_Subscribe                        (("Subscribe"));

TTMODULAR_EXPORT TTSymbol       kTTSym_tag                              (("tag"));
TTMODULAR_EXPORT TTSymbol       kTTSym_target                           (("target"));
TTMODULAR_EXPORT TTSymbol       kTTSym_Tick                             (("Tick"));

TTMODULAR_EXPORT TTSymbol       kTTSym_unit                             (("unit"));
TTMODULAR_EXPORT TTSymbol       kTTSym_Update                           (("Update"));

TTMODULAR_EXPORT TTSymbol       kTTSym_value                            (("value"));
TTMODULAR_EXPORT TTSymbol       kTTSym_valueDefault                     (("valueDefault"));
TTMODULAR_EXPORT TTSymbol       kTTSym_valueStepsize					(("valueStepsize"));
TTMODULAR_EXPORT TTSymbol       kTTSym_viewFreeze                       (("viewFreeze"));
TTMODULAR_EXPORT TTSymbol       kTTSym_view                             (("view"));

TTMODULAR_EXPORT TTSymbol       kTTSym_Write                            (("Write"));
TTMODULAR_EXPORT TTSymbol       kTTSym_WriteAgain                       (("WriteAgain"));

TTMODULAR_EXPORT TTSymbol       kTTSym_xmlHandlerReadingComment         (("xmlHandlerReadingComment"));
TTMODULAR_EXPORT TTSymbol       kTTSym_xmlHandlerReadingEnds            (("xmlHandlerReadingEnds"));
TTMODULAR_EXPORT TTSymbol       kTTSym_xmlHandlerReadingStarts          (("xmlHandlerReadingStarts"));

