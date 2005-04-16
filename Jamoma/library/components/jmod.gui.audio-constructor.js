// Javascript for Jamoma: assemble the audio controls component
// By Timothy Place, Copyright © 2005
// License: GNU LGPL


/*******************************************************************
 * SETUP
 *******************************************************************/

// CONSTANTS

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
 //	var obj_tap_thru = new Array();
 //	var obj_inlet = new Array();
 //	var obj_outlet = new Array();
 //	var obj_jmod_gain = p.newdefault(650, 550, "jmod.gain~", num_channels);
 	var i;
 	num_channels = value;


	outlet(0, "script", "new", "jmod_gain", "newex", 650, 520, num_channels * 50, 196617, "jmod.gain~", num_channels);

	// For some bizzarre reason, the signal chain is not assembled
	//	properly without these tap.thru~ objects on the input
	for(i=0; i<num_channels; i++){
		
		// inlets and outlets are already in place, we delete the extras...
		// obj_tap_thru[i] = p.newdefault((i*50) + 250, 100, "tap.thru~");
		// obj_inlet[i] = p.newobject("inlet", (i*50) + 250, 50, 15, 0);
		// obj_outlet[i] = p.newobject("outlet", (i*50) + 250, 250, 15, 0);
	}

 }
 
 
