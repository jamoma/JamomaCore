// Javascript for Jamoma: assemble the gui component
// By Timothy Place, Copyright © 2005
// License: GNU LGPL


/*******************************************************************
 * SETUP
 *******************************************************************/

// CONSTANTS
const HEIGHT_1U = 60;						// pixel dimensions
const WIDTH_HALF = 255;						// ...
const NUM_DEFAULT_INLETS_AND_OUTLETS = 32;	// number of these in the jmod.gui

// GLOBALS
var attr_module_type = "audio";
var attr_skin = "default";
var attr_num_inputs = 1;
var attr_num_outputs = 1;
var attr_meter_toggle = 1;
var attr_preview = 1;
var attr_bypass = 0;
var attr_mute = 0;
var attr_freeze = 0;
var local_token = 0;
var	num_channels;
var attr_size = "1Uh";
var height = 1;
var width = "half";
var	p = this.patcher;
var offset_x = 0;
var offset_y = 0;
var has_run = 0;				// flag indicating that this module has previously been built


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
	setoutletassist(2, "connect to the audio control panel");
	setoutletassist(3, "connect to the module's umenu");
	setoutletassist(4, "messages to be sent to the module's hub");
	
	// Process Arguments	
	if(jsarguments.length > 1)
		local_token = jsarguments[1];
	else
		post("WARNING: jmod.gui.constructor requires a localized token!\n");
}
init.local = 1;		// hide the init function
init();				// run the init function



/*******************************************************************
 * METHODS
 *******************************************************************/
 
/* BANG: build the gui component
 *
 *	There are some things here that may not seem very elegant.  As of
 *	Max 4.5.4, New items scripted into a patch, that is loaded in a
 *	bpatcher within a bpatcher (such as jmod.gui), are scripted into place
 *	using the coordinates of the patcher window - not the bpatcher's 
 *	viewable region.  This means that a number of objects are pre-included
 *	in the jmod.gui patch and then deleted or moved dynamically, rather than
 *	creating what is needed.
 */
function bang()
{
	// Choose the skin, if needed
	if(attr_skin == "default"){
		if(attr_module_type == "audio")
			attr_skin = "metal.black";
		else if(attr_module_type == "video")
			attr_skin = "metal";
		else if(attr_module_type == "control")
			attr_skin = "metal.blue";
	}
	
	// Change the background graphic to match the skin (object autosizes to match it)
	outlet(1, "picture", "jmod.bg." + attr_skin + "." + attr_size + ".pct");

	if(attr_module_type == "audio"){
	
		// send the num_channels to the audio_component patch
		//	that patch will then script in the jmod.gain~ and connect it
	
	
		if(has_run == 0){
			// script in the 
			outlet(2, num_channels);	// send the number of channels to the controls
			
			// move the controls if neccessary
			if(width == 1)
				outlet(0, "script", "offset", "controls", -255, 0);
		
			// delete extra inlets and outlets
			for(i=num_channels*2;i<NUM_DEFAULT_INLETS_AND_OUTLETS;i++){
				outlet(0, "script", "delete", "inlet_"+(i+1));
				outlet(0, "script", "delete", "outlet_"+(i+1));			
			}
	
			// delete the video preview window
			outlet(0, "script", "delete", "pwindow");
	
			// connect inlets and outlets
			for(i=0; i<num_channels; i++){
				outlet(0, "script", "hidden", "connect", "inlet_"+(i+1), 0, "outlet_"+(i+1), 0);
				outlet(0, "script", "hidden", "connect", "controls", i, "outlet_"+(num_channels+i+1), 0);
			}
			
			// Setup the Menu
			outlet(3, "append", "Defeat Signal Meters");
			outlet(3, "append", "Clear Signal Meters");
			outlet(3, "append", "-");
			outlet(3, "append", "Load Settings...");
			outlet(3, "append", "Save Settings...");
			outlet(3, "append", "Restore Default Settings");
			outlet(3, "append", "-");
			outlet(3, "append", "Open Online Reference");
			outlet(3, "append", "View Internal Components");
		}		
		
		// make sure everything is visible
		outlet(0, "script", "sendtoback", "background");
		outlet(0, "script", "sendtoback", "menu");
		
	}
	else if(attr_module_type == "video"){
		if(has_run == 0){
			// Create the standard messages
			outlet(0, "script", "hidden", "new", "param_preview", "jmod.parameter.mxt", local_token, "preview");
			outlet(0, "script", "hidden", "new", "param_bypass", "jmod.parameter.mxt", local_token, "bypass");
			outlet(0, "script", "hidden", "new", "param_freeze", "jmod.parameter.mxt", local_token, "freeze");
			outlet(0, "script", "hidden", "new", "param_mute", "jmod.parameter.mxt", local_token, "mute");
			
			// Delete the audio controls
			outlet(0, "script", "delete", "controls");
			
			// delete extra inlets and outlets
			for(i=num_channels;i<NUM_DEFAULT_INLETS_AND_OUTLETS;i++){
				outlet(0, "script", "delete", "inlet_"+(i+1));
				outlet(0, "script", "delete", "outlet_"+(i+1));			
			}
			
			// move the preview window if neccessary
			if(width == 1)
				outlet(0, "script", "offset", "pwindow", -255, 0);
			
			// Setup the Menu
			outlet(3, "clear");
			outlet(3, "append", "Preview Output");
			outlet(3, "append", "Force a Frame of Output");
			outlet(3, "append", "-");
			outlet(3, "append", "Bypass");
			outlet(3, "append", "Freeze");
			outlet(3, "append", "Mute");
			outlet(3, "append", "-");
			outlet(3, "append", "Load Settings...");
			outlet(3, "append", "Save Settings...");
			outlet(3, "append", "Restore Default Settings");
			outlet(3, "append", "-");
			outlet(3, "append", "Open Online Reference");
			outlet(3, "append", "View Internal Components");
		}
	}
	else{	// attr_module_type == "control"
		if(has_run == 0){
			// Replace the menu
			outlet(0, "script", "replace", "menu", "jmod.menu.k.mxt", 0, 0);
		
			// Delete the audio controls 
			outlet(0, "script", "delete", "controls");
	
			// delete the video preview window
			outlet(0, "script", "delete", "pwindow");
	
			// Delete the inlets and outlets
			for(i=0;i<NUM_DEFAULT_INLETS_AND_OUTLETS;i++){
				outlet(0, "script", "delete", "inlet_"+(i+1));
				outlet(0, "script", "delete", "outlet_"+(i+1));			
			}
	
			// Setup the Menu
			outlet(3, "clear");
			outlet(3, "append", "Load Settings...");
			outlet(3, "append", "Save Settings...");
			outlet(3, "append", "Restore Default Settings");
			outlet(3, "append", "-");
			outlet(3, "append", "Open Online Reference");
			outlet(3, "append", "View Internal Components");
		}
	}
	
	has_run = 1;
}


// Method: INT - input from the menu!
function msg_int(value)
{
	if(attr_module_type == "audio"){
		switch(value){
			case 0: 
				if(attr_meter_toggle == 1) attr_meter_toggle = 0;
				else if(attr_meter_toggle == 0) attr_meter_toggle = 1;
				outlet(4, "defeat_meters", !attr_meter_toggle); 
				outlet(3, "checkitem", 0, !attr_meter_toggle); 
				break;
			case 1: outlet(4, "clear_meters"); break;
			case 3: outlet(4, "load_settings"); break;
			case 4: outlet(4, "save_settings"); break;
			case 5: outlet(4, "restore_defaults"); break;
			case 7: outlet(4, "help"); break;
			case 8: outlet(4, "view_internals"); break;
		}
	}
	else if(attr_module_type == "video"){
		switch(value){
			case 0: 
				if(attr_preview == 1) attr_preview = 0;
				else if(attr_preview == 0) attr_preview = 1;
				outlet(4, "preview", attr_preview); 
				outlet(3, "checkitem", 0, attr_preview); 
				break;
			case 1: outlet(4, "force"); break;	
			case 3:
				if(attr_bypass == 1) attr_bypass = 0;
				else if(attr_bypass == 0){
					attr_bypass = 1;
					attr_freeze = 0;
					attr_mute = 0;
				}
				outlet(4, "bypass", attr_bypass); 
				break;
			case 4:
				if(attr_freeze == 1) attr_freeze = 0;
				else if(attr_freeze == 0){
					attr_bypass = 0;
					attr_freeze = 1;
					attr_mute = 0;
				}
				outlet(4, "freeze", attr_freeze); 
				break;
			case 5:
				if(attr_mute == 1) attr_mute = 0;
				else if(attr_mute == 0){
					attr_bypass = 0;
					attr_freeze = 0;
					attr_mute = 1;
				}
				outlet(4, "mute", attr_mute); 
				break;
			case 7: outlet(4, "load_settings"); break;			
			case 8: outlet(4, "save_settings"); break;
			case 9: outlet(4, "restore_defaults"); break;
			case 11: outlet(4, "help"); break;
			case 12: outlet(4, "view_internals"); break;		
		}
		outlet(3, "checkitem", 3, attr_bypass);
		outlet(3, "checkitem", 4, attr_freeze);
		outlet(3, "checkitem", 5, attr_mute);
	}
	else if(attr_module_type == "control"){
		switch(value){
			case 0: outlet(4, "load_settings"); break;
			case 1: outlet(4, "save_settings"); break;
			case 2: outlet(4, "restore_defaults"); break;
			case 4: outlet(4, "help"); break;
			case 5: outlet(4, "view_internals"); break;
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
	attr_size = message;
// DO SOME SORT OF PATTERN MATCHING HERE !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!	
	height = 60;  // make this dynamic!

	if(attr_size.match(/-half/))
		width = 1;
	else
		width = 2;
}


// Set attribute
function num_inputs(message)
{
	attr_num_inputs = message;
	set_num_channels();
}


// Set attribute
function num_outputs(message)
{
	attr_num_outputs = message;
	set_num_channels();
}


// Sets the number of channels based on the number of inputs and outputs
function set_num_channels()
{
	if(attr_num_outputs > attr_num_inputs)
		num_channels = attr_num_outputs;
	else
		num_channels = attr_num_inputs;
}


function anything()
{
	;
}

