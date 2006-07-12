// Javascript for Jamoma: assemble the audio controls component
// By Timothy Place, Copyright © 2005
// License: GNU LGPL


/*******************************************************************
 * SETUP
 *******************************************************************/

// CONSTANTS
const MAX_NUM_CHANNELS = 16;

// GLOBALS
var	num_channels;
var	p = this.patcher;
var local_token = "none";


// CONFIGURATION
inlets = 1;
outlets = 1;


// INITIALIZATION
function init()
{
	// set up assistance strings
	setinletassist(0, "(int) number of channels");
	setoutletassist(0, "connect to a thispatcher object");
}
init.local = 1;		// hide the init function
init();				// run the init function



/*******************************************************************
 * METHODS
 *******************************************************************/
 
 
// Method: INT
function msg_int(value)
{
 	var i;
 	num_channels = value;

	// Create parameters
	outlet(0, "script", "hidden", "new", "pattr_sr", "newex", 100, 100, 150, 196617, 			
		"jmod.parameter.mxt", local_token, "/audio/sample_rate", "@repetitions", 0, "@type", "msg_int", "@range", -2, 0,
		"@description", "Sets the relative sample-rate for this module.");
	outlet(0, "script", "hidden", "new", "pattr_mute", "newex", 100, 100, 150, 196617, 
		"jmod.parameter.mxt", local_token, "/audio/mute", "@type", "toggle",
		"@description", "When active, this attribute turns off the module's processing algorithm to save CPU");

	outlet(0, "script", "hidden", "new", "pattr_bypass", "newex", 100, 100, 150, 196617, 
		"jmod.parameter.mxt", local_token, "/audio/bypass", "@type", "toggle",
		"@description", "When active, this attribute bypasses the module's processing algorithm, letting audio pass through unaffected.");

	outlet(0, "script", "hidden", "new", "pattr_mix", "newex", 100, 100, 150, 196617, 	
		"jmod.parameter.mxt", local_token, "/audio/mix", "@ramp", 1, "@type", "msg_float", "@range", 0.0, 100.0,
		"@description", "Controls the wet/dry mix of the module's processing routine in percent.");

	outlet(0, "script", "hidden", "new", "pattr_defeat_meters", "newex", 100, 100, 150, 196617,
		"jmod.parameter.mxt", local_token, "/audio/meters/defeat", "@type", "toggle",
		"@description", "When active, this attribute turns off the signal level meters in the module to conserve CPU.");

	outlet(0, "script", "hidden", "new", "pattr_gain", "newex", 100, 100, 150, 196617, 
		"jmod.parameter.gain.mxt", local_token, "/audio/gain");


	// Connect Parameters
	outlet(0, "script", "hidden", "connect", "samprate", 0, "pattr_sr", 0);
	outlet(0, "script", "hidden", "connect", "pattr_sr", 0, "samprate", 0);

	outlet(0, "script", "hidden", "connect", "button_mute", 0, "pattr_mute", 0);
	outlet(0, "script", "hidden", "connect", "pattr_mute", 0, "button_mute", 0);

	outlet(0, "script", "hidden", "connect", "button_bypass", 0, "pattr_bypass", 0);
	outlet(0, "script", "hidden", "connect", "pattr_bypass", 0, "button_bypass", 0);
	
	outlet(0, "script", "hidden", "connect", "pattr_mix", 1, "mix", 0);
	outlet(0, "script", "hidden", "connect", "pattr_mix", 1, "mult_mix_out", 0);	
	outlet(0, "script", "hidden", "connect", "mult_mix_in", 0, "pattr_mix", 0);	
	
	outlet(0, "script", "hidden", "connect", "pattr_defeat_meters", 1, "mess_dm", 0);

	outlet(0, "script", "hidden", "connect", "pvar_gain",0, "pattr_gain",0);
	outlet(0, "script", "hidden", "connect", "pattr_gain", 0, "mess_gain_set", 0);
	outlet(0, "script", "hidden", "connect", "pattr_gain", 0, "gain_midi", 0);
	

	// Make Other Connnections
	outlet(0, "script", "hidden", "new", "jmod_gain", "newex", 250, 520, num_channels * 50, 196617, "jmod.gain~", num_channels);
	outlet(0, "script", "hidden", "connect", "gain_midi", 0 ,"jmod_gain", 0);
	outlet(0, "script", "hidden", "connect", "bypass", 0 ,"jmod_gain", 0);
	outlet(0, "script", "hidden", "connect", "mix", 0, "jmod_gain", 0);
	//outlet(0, "script", "hidden", "connect", "route_ob", 1, "jmod_gain", 0);

	for(i=0; i< (num_channels*2); i++){
		outlet(0, "script", "hidden", "connect", "inlet_"+(i+1), 0, "jmod_gain", i);
	}
	for(i=0; i< (num_channels); i++){
		outlet(0, "script", "hidden", "connect", "jmod_gain", i, "outlet_"+(i+1), 0);
	}

	// inlets and outlets are already in place, we delete the extras...
	for(i = MAX_NUM_CHANNELS * 2; i>(num_channels*2); i--){
		outlet(0, "script", "delete", "inlet_"+i);
	}
	for(i = MAX_NUM_CHANNELS; i>(num_channels); i--){
		outlet(0, "script", "delete", "outlet_"+i);
	}
	
	
	// meters
	if(num_channels == 1){
		outlet(0, "script", "hidden", "connect", "jmod_gain", 0, "meter_1", 0);
		outlet(0, "script", "hidden", "connect", "jmod_gain", 0, "meter_2", 0);
	}
	else if(num_channels == 2){
		outlet(0, "script", "hidden", "connect", "jmod_gain", 0, "meter_1", 0);
		outlet(0, "script", "hidden", "connect", "jmod_gain", 1, "meter_2", 0);
	}
}
 

function token(value)
{
	local_token = value;
}
