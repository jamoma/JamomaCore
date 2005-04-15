// Javascript for Jamoma: assemble the gui component
// By Matt Aidekman and Timothy Place, Copyright © 2005
// License: GNU LGPL


/*******************************************************************
 * SETUP
 *******************************************************************/

// CONSTANTS
const HEIGHT_1U = 60;					// pixel dimensions
const WIDTH_HALF = 255;					// ...

// GLOBALS
var attr_module_type = "audio";
var attr_skin = "default";
var attr_num_inputs = 1;
var attr_num_outputs = 1;
var local_token = 0;
var	num_channels;
var attr_size = "1Uh";
var height = 1;
var width = "half";


// CONFIGURATION
inlets = 1;
outlets = 2;


// INITIALIZATION
function init()
{
	// set up assistance strings
	setinletassist(0, "set attributes, etc.");
	setoutletassist(0, "connect to a thispatcher object");
	setoutletassist(1, "connect to a bg pictctrl");
	
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
 
// BANG: build the gui component
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
		// script in the
		if((num_inputs == 2)&&(num_outputs==2)){
			;
		}
		else if((num_inputs == 1)&&(num_outputs == 1)){
			;
		}
		
/*		// move the controls
		if(width == 1){
			outlet(0, "script", "offset", "controls", -255, 0);
		}
*/
		// script in the controls
//sprintf script new %s bpatcher %i %i %i %i 0 0 %s 0 %i %i %i %i %i %i

		var obj_audio_panel;
		if(width == 1)
//			outlet(0, "script", "new", "audio_panel", "bpatcher", 
//				90, 2, 163, 16, 0, -190, "jmod.gui.audio-component.mxt", 
///				0, local_token, num_channels);
			obj_audio_panel = this.patcher.newobject("bpatcher", 
				90, 2, 163, 16, 0, -190, "jmod.gui.audio-component.mxt", 
				0, local_token, num_channels);
		else // width == 2
//			outlet(0, "script", "new", "audio_panel", "bpatcher", 
//				345, 2, 163, 16, 0, -190, "jmod.gui.audio-component.mxt", 
//				0, local_token, num_channels);
				
		//outlet(0, "script", "bringtofront", "audio_panel");		
		obj_audio_panel.bringtofront();		
		outlet(0, "script", "sendtoback", "background");		
				
	}
	else if(attr_module_type == "video"){
		// Replace the menu
		outlet(0, "script", "replace", "menu", "jmod.menu.v.mxt", 0, 0);
		
		// Delete the audio controls
		outlet(0, "script", "delete", "controls");
	}
	else{	// attr_module_type == "control"
		// Replace the menu
		outlet(0, "script", "replace", "menu", "jmod.menu.k.mxt", 0, 0);
	
		// Delete the audio controls 
		outlet(0, "script", "delete", "controls");
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
