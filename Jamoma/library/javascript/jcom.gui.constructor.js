// Javascript for Jamoma: assemble the gui component
// By Timothy Place, Copyright © 2005
// License: GNU LGPL


/*******************************************************************
 * SETUP
 *******************************************************************/

// CONSTANTS
const HEIGHT_1U = 60;						// pixel dimensions
const WIDTH_HALF = 255;						// ...
const NUM_DEFAULT_INLETS_AND_OUTLETS = 32;	// number of these in the jcom.gui

// GLOBALS
var attr_module_type = "audio";
var attr_skin = "default";
var attr_inspector = 0;
var attr_displayfreeze_toggle = 0;
var attr_meterfreeze_toggle = 0;
var attr_preview = 0;						// preview is not turned on by default
var attr_bypass = 0;
var attr_mute = 0;
var attr_freeze = 0;
var attr_size = "1Uh";
var height = 1;
var width = "half";
var	p = this.patcher;
var offset_x = 0;
var offset_y = 0;
var menu_items = new Array();
var menu_num_presets = 0;
var has_run = 0;				// flag indicating that this module has previously been built
var grandparent_name;			// this is the scripting name of the object box hosting the module's patch


// CONFIGURATION
inlets = 1;
outlets = 5;


// INITIALIZATION
function init()
{
	// set up assistance strings
	setinletassist(0, "set attributes, etc.");
	setoutletassist(0, "connect to a thispatcher object");
	setoutletassist(1, "connect to a bg pictctrl");
	setoutletassist(2, "unused");
	setoutletassist(3, "connect to the module's umenu");
	setoutletassist(4, "messages to be sent to the module's hub");
}
init.local = 1;		// hide the init function
init();			// run the init function


// This is run at the loadbang time...
function loadbang()
{
	var gui = this.patcher.wind.assoc.box;
	this.patcher.parentpatcher.sendtoback(gui);
}


// Respond to global jcom.init initialization
function jmod_init()
{
/*	if(this.patcher.parentpatcher.box){
		grandparent_name = this.patcher.parentpatcher.box.varname;
		if(grandparent_name){
			outlet(4, "MODULE_TITLE", grandparent_name);
		}
	}
	else{
		outlet(4, "MODULE_TITLE", "editing_this_module");
	}
*/	
	// This should send the gui bpatcher in a module to the back
	// 	hopefully this will then keep everything else on top of 
	//	it visible...
	var gui = this.patcher.wind.assoc.box;
	this.patcher.parentpatcher.sendtoback(gui);
}


/*******************************************************************
 * METHODS
 *******************************************************************/
 
/* BANG: build the gui component
 *
 *	There are some things here that may not seem very elegant.  As of
 *	Max 4.5.4, New items scripted into a patch, that is loaded in a
 *	bpatcher within a bpatcher (such as jcom.gui), are scripted into place
 *	using the coordinates of the patcher window - not the bpatcher's 
 *	viewable region.  This means that a number of objects are pre-included
 *	in the jcom.gui patch and then deleted or moved dynamically, rather than
 *	creating what is needed.
 */
function bang()
{
	// Choose the skin, if needed
	if(attr_skin == "default"){
		if((attr_module_type == "audio") || (attr_module_type == "audio.no_panel") || (attr_module_type == "audio.ambisonic"))
			attr_skin = "metal.black";
		else if(attr_module_type == "video")
			attr_skin = "metal";
		else if(attr_module_type == "control")
			attr_skin = "metal.blue";
	}
	
	// Change the background graphic to match the skin (object autosizes to match it)
	outlet(1, "picture", "jcom.bg." + attr_skin + "." + attr_size + ".pct");

	if((attr_module_type == "audio") || (attr_module_type == "audio.no_panel") || (attr_module_type == "audio.ambisonic")){	
		if(has_run == 0){
			if(attr_module_type == "audio.ambisonic"){	
				// Replace the panel with a specific ambisonic panel
				// Position determined according to current position of the "controls" panel.
				outlet(0, "script", "replace", "controls", "bpatcher", this.patcher.getnamed("controls").rect, 0, -190, "jcom.gui.ambi-component.mxt", 0);
			}
			else if(attr_module_type == "audio.no_panel"){
				outlet(0, "script", "delete", "controls");
			}
			
			// move the controls if neccessary
			if((width == 1) && (attr_module_type != "audio.no_panel"))
				outlet(0, "script", "offset", "controls", -255, 0);
		
			// delete the video preview window
			outlet(0, "script", "delete", "pwindow");
		
			// Setup the Menu
			menu_clear();
			menu_add("Disable UI Updates");
			menu_add("Refresh UI");
			menu_add("Disable Signal Meters");
			menu_add("Clear Signal Meters");
			menu_add("-");
			menu_add("Load Settings...");
			menu_add("Save Settings...");
			menu_add("Restore Default Settings");
			menu_add("-");
			menu_add("Open Online Reference");
			menu_add("Open Help Patch");
			menu_add("View Internal Components");
			
			// Handle the Inspector Button
			inspector_button(attr_inspector);
		}		
	}
	else if(attr_module_type == "video"){
		if(has_run == 0){
			// Delete the audio controls
			outlet(0, "script", "delete", "controls");
			
			// move the preview window if neccessary
			if(width == 1)
				outlet(0, "script", "offset", "pwindow", -255, 0);
			
			// Setup the Menu
			menu_clear();
			menu_add("Disable UI Updates");
			menu_add("Refresh UI");
			menu_add("Preview Output");
			menu_add("Force a Frame of Output");
			menu_add("-");
			menu_add("Bypass");
			menu_add("Freeze");
			menu_add("Mute");
			menu_add("-");
			menu_add("Load Settings...");
			menu_add("Save Settings...");
			menu_add("Restore Default Settings");
			menu_add("-");
			menu_add("Open Online Reference");
			menu_add("Open Help Patch");
			menu_add("View Internal Components");
			
			// Handle the Inspector Button
			inspector_button(attr_inspector);
		}
	}
	else{	// attr_module_type == "control"
		if(has_run == 0){
			// Delete the audio controls 
			outlet(0, "script", "delete", "controls");
	
			// delete the video preview window
			outlet(0, "script", "delete", "pwindow");
		
			// Setup the Menu
			menu_clear();
			menu_add("Disable UI Updates");
			menu_add("Refresh UI");
			menu_add("-");
			menu_add("Load Settings...");
			menu_add("Save Settings...");
			menu_add("Restore Default Settings");
			menu_add("-");
			menu_add("Open Online Reference");
			menu_add("Open Help Patch");
			menu_add("View Internal Components");
			
			// Handle the Inspector Button
			inspector_button(attr_inspector);
		}
	}
	
	// build the module menu
	menu_build();
	
	// make sure everything is visible within the gui
	outlet(0, "script", "sendtoback", "background");
	outlet(0, "script", "sendtoback", "menu");
	outlet(0, "script", "sendtoback", "param_reference");

	// send the gui itself to the back of the module patch
	var gui = this.patcher.wind.assoc.box;
	this.patcher.parentpatcher.sendtoback(gui);
	
	has_run = 1;
}


// PRIVATE METHOD: handle the inspector button
function inspector_button(value)
{
	if(value == 0){
		outlet(0, "script", "delete", "inspector_button"); 		// delete the button
		outlet(0, "script", "delete", "inspector_message");		// delete the message
	}
	else{
		if((attr_module_type == "audio") || (attr_module_type == "audio.ambisonic")){
			outlet(0, "script", "offset", "controls", -13, 0);
		}
		if(width == 1){
			outlet(0, "script", "offset", "inspector_button", -255, 0)
		}
	}			
}
inspector_button.local = 1;


// Method: INT - input from the menu!
function msg_int(value)
{
	if((attr_module_type == "audio") || (attr_module_type == "audio.no_panel") || (attr_module_type == "audio.ambisonic")){
		switch(value){
			case 0: 
				if(attr_displayfreeze_toggle == 1) attr_displayfreeze_toggle = 0;
				else if(attr_displayfreeze_toggle == 0) attr_displayfreeze_toggle = 1;
				outlet(4, "/ui/freeze", attr_displayfreeze_toggle); 
				outlet(3, "checkitem", 0, attr_displayfreeze_toggle);
				break;
			case 1: outlet(4, "/ui/refresh"); break;
			case 2: 
				if(attr_meterfreeze_toggle == 1)
					attr_meterfreeze_toggle = 0;
				else if(attr_meterfreeze_toggle == 0)
					attr_meterfreeze_toggle = 1;
				outlet(4, "/audio/meters/freeze", attr_meterfreeze_toggle); 
				outlet(3, "checkitem", 2, attr_meterfreeze_toggle); 
				break;
			case 3: outlet(4, "/audio/meters/clear"); break;
			case 5: outlet(4, "/preset/load"); break;
			case 6: outlet(4, "/preset/save"); break;
			case 7: outlet(4, "/preset/default"); break;
			case 9: outlet(4, "/documentation/html"); break;
			case 10: outlet(4, "/documentation/help"); break;
			case 11: outlet(4, "/module/view_internals"); break;
			default: outlet(4, "/preset/recall", value - (menu_items.length - menu_num_presets)) - 1; break;
		}
	}
	else if(attr_module_type == "video"){
		switch(value){
			case 0:
				if(attr_displayfreeze_toggle == 1) attr_displayfreeze_toggle = 0;
				else if(attr_displayfreeze_toggle == 0) attr_displayfreeze_toggle = 1;
				outlet(4, "/ui/freeze", attr_displayfreeze_toggle); 
				outlet(3, "checkitem", 0, attr_displayfreeze_toggle); 
				break;
			case 1: outlet(4, "/ui/refresh"); break;
			case 2: 
				if(attr_preview == 1) attr_preview = 0;
				else if(attr_preview == 0) attr_preview = 1;
				outlet(4, "/video/preview", attr_preview); 
				outlet(3, "checkitem", 2, attr_preview); 
				break;
			case 3: outlet(4, "/genframe"); break;	
			case 5:
				if(attr_bypass == 1) attr_bypass = 0;
				else if(attr_bypass == 0){
					attr_bypass = 1;
					attr_freeze = 0;
					attr_mute = 0;
				}
				outlet(4, "/video/bypass", attr_bypass); 
				break;
			case 6:
				if(attr_freeze == 1) attr_freeze = 0;
				else if(attr_freeze == 0){
					attr_bypass = 0;
					attr_freeze = 1;
					attr_mute = 0;
				}
				outlet(4, "/video/freeze", attr_freeze); 
				break;
			case 7:
				if(attr_mute == 1) attr_mute = 0;
				else if(attr_mute == 0){
					attr_bypass = 0;
					attr_freeze = 0;
					attr_mute = 1;
				}
				outlet(4, "/video/mute", attr_mute); 
				break;
			case 9: outlet(4, "/preset/load"); break;			
			case 10: outlet(4, "/preset/save"); break;
			case 11: outlet(4, "/preset/default"); break;
			case 13: outlet(4, "/documentation/html"); break;
			case 14: outlet(4, "/documentation/help"); break;
			case 15: outlet(4, "/module/view_internals"); break;		
			default: outlet(4, "/preset/recall", value - (menu_items.length - menu_num_presets)) - 1; break;
		}
		outlet(3, "checkitem", 5, attr_bypass);
		outlet(3, "checkitem", 6, attr_freeze);
		outlet(3, "checkitem", 7, attr_mute);
	}
	else if(attr_module_type == "control"){
		switch(value){
			case 0:
				if(attr_displayfreeze_toggle == 1) attr_displayfreeze_toggle = 0;
				else if(attr_displayfreeze_toggle == 0) attr_displayfreeze_toggle = 1;
				outlet(4, "/ui/freeze", attr_displayfreeze_toggle); 
				outlet(3, "checkitem", 0, attr_displayfreeze_toggle); 
				break;
			case 1: outlet(4, "/ui/refresh"); break;
			case 3: outlet(4, "/preset/load"); break;
			case 4: outlet(4, "/preset/save"); break;
			case 5: outlet(4, "/preset/default"); break;
			case 7: outlet(4, "/documentation/html"); break;
			case 8: outlet(4, "/documentation/help"); break;
			case 9: outlet(4, "/module/view_internals"); break;
			
			default: outlet(4, "/preset/recall", value - (menu_items.length - menu_num_presets)) - 1; break;
		}
	}
}


// Set attribute
function module_type(message)
{
	attr_module_type = message;
}


// Set attribute
function skin(message)
{
	attr_skin = message;
}


// Set attribute
function size(message)
{
	attr_size = message;			// store the string permanently
	message.match(/(.).*/).$1;		// find the number of rack units high the module is
	height = RegExp.$1 * 60;		// 60 pixels per rack unit	
	if(attr_size.match(/-half/))	// is this full width or half-width
		width = 1;
	else
		width = 2;
	
	// Are we in a patch that has a module in it?
	var grandparent_window = this.patcher.parentpatcher.wind;						// get the module's window
	var grandparent_patch = grandparent_window.assoc;								// get the module's object box
	if(grandparent_patch.box){
		if((grandparent_patch.box.rect[3] - grandparent_patch.box.rect[1]) < 50){	// we are in patcher context...
			grandparent_window.size = [width * 255, height];		// (sizes are compensated for scroll bars)
			grandparent_window.hasgrow = 0;
		}
		else{																		// we are in bpatcher context...
			var left = grandparent_patch.box.rect[0];
			var top = grandparent_patch.box.rect[1];
			var right = left + (width * 255);
			var bottom = top + height;
			grandparent_patch.box.rect = [left, top, right, bottom];
		}
	}
	
	// send the gui itself to the back of the module patch
	var gui = this.patcher.wind.assoc.box;
	this.patcher.parentpatcher.sendtoback(gui);
	
}


// Set attribute
function inspector(message)
{
	attr_inspector = message; // should be 1 or 0
}


// prevent meaningless errors
function anything()
{
	;
}

/************************** MODULE MENU MANAGEMENT ************************/
// Builds the Module Menu
function menu_build()
{
	outlet(3, "clear");
	for(var i=0; i< (menu_items.length - menu_num_presets); i++){
		outlet(3, "append", menu_items[i]);
	}
	outlet(3, "append", "-");
	for(var i=menu_items.length-menu_num_presets; i<menu_items.length; i++){
		outlet(3, "append", menu_items[i]);
	}
	if(attr_module_type == "video"){
		//msg_int(2);	// this is the way to turn on preview by default, which we decided not to do for cpu saving reasons
	}
}


// empty the array here
function menu_clear()
{
	menu_presets_clear();
	for(var i=0; i<menu_items.length; i++)
		menu_items.pop();
}


// add an item to the array
function menu_add(item_name)
{
	menu_items.push(item_name);
}


// remove presets from the menu array
function menu_presets_clear()
{
	for(var i=0; i<menu_num_presets; i++)
		menu_items.pop();
	menu_num_presets = 0;
}


// add presets to the menu array
function menu_presets_add(preset_name)
{
	menu_add(preset_name)
	menu_num_presets++;
}


// any kind of module: /ui/freeze has been changed elsewhere:

function ui_freeze(value)
{
		if(value != attr_displayfreeze_toggle) {
			msg_int(0);
		}
}


// audio module: audio/meters/freeze has been changed elsewhere:

function audio_meters_freeze(value)
{
		if(value != attr_meterfreeze_toggle) {
			msg_int(2);
		}
}


// video module: /video/preview, /video/bypass, /video/freeze or /video/mute
// have been changed elsewhere:

function video_preview(value)
{
	if(value != attr_preview){
		msg_int(2);
	}
}


function video_bypass(value)
{
	if(value != attr_bypass){
		msg_int(5);
	}
}


function video_freeze(value)
{
	if(value != attr_freeze){
		msg_int(6);
	}
}


function video_mute(value)
{
	if(value != attr_mute){
		msg_int(7);
	}
}


