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
 
 
