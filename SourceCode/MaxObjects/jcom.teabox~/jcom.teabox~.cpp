/*
 * Teabox demuxer object for Max/MSP
 * Written by Tim Place
 * Copyright © 2004 by Electrotap L.L.C.
 *

    This library is free software; you can redistribute it and/or
    modify it under the terms of the GNU Lesser General Public
    License as published by the Free Software Foundation; either
    version 2.1 of the License, or (at your option) any later version.

    This library is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
    Lesser General Public License for more details.

    You should have received a copy of the GNU Lesser General Public
    License along with this library; if not, write to the Free Software
    Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA

 * 
 */


#include "ext.h"				// Required for all Max External Objects
#include "ext_strings.h"		// Used for the assistance strings
#include "z_dsp.h"				// Required for all MSP externals

void *teabox_class;				// Required. Global pointing to this class


// Data Structure for this object
typedef struct _teabox{
	t_pxobject 		x_obj;
	char			counter;		// used for keeping track of the current sensor number
	float			data[9];		// one container for the data from each sensor
	float			hw_version;		// version number (major.minor) of the connected Teabox
	float			last_value;		// used for error correction in the perform method
	void			*outlet;		// outlet for status and version messages
} t_teabox;


// Prototypes for methods: need a method for each incoming message type:
t_int *teabox_perform(t_int *w);									// An MSP Perform (signal) Method
void teabox_dsp(t_teabox *x, t_signal **sp, short *count);			// DSP Method
void teabox_assist(t_teabox *x, void *b, long m, long a, char *s);	// Assistance Method
void *teabox_new(void);												// New Object Creation Method
void teabox_getversion(t_teabox *x);
void teabox_getstatus(t_teabox *x);


/************************************************************************************/
// Main() Function

int main(void)				// main recieves a copy of the Max function macros table
{
	setup((t_messlist **)&teabox_class, (method)teabox_new, (method)dsp_free, (short)sizeof(t_teabox), 0L, 0);
	    					
	addmess((method)teabox_dsp, 		"dsp", A_CANT, 0);		// Bind method "teabox_dsp" to the DSP call from MSP
	addmess((method)teabox_assist,		"assist", A_CANT, 0);	// Bind method "teabox_assist" to assistance calls
	addmess((method)teabox_getversion, 	"getversion", 0);
	addmess((method)teabox_getstatus,	"getstatus", 0);
	
	dsp_initclass();											// Setup object's class to work with MSP
	return 0;
}


/************************************************************************************/
// Object Creation Method

void *teabox_new(void)
{
	short i;
	
	t_teabox *x = (t_teabox *)newobject(teabox_class);
	dsp_setup((t_pxobject *)x,1);

	x->outlet = outlet_new(x, 0L);				// create the status/version outlet
	for(i=0; i<9; i++){
		outlet_new((t_object *)x, "signal");	// Create new signal outlet
		x->data[i] = 0;							// Init this element of the data array
	}
		
	x->counter = 0;								// init member values
	x->hw_version = 0;

	return(x);									// return the pointer to our instance
}



/************************************************************************************/
// Methods bound to input/inlets

// Method for Assistance Messages
void teabox_assist(t_teabox *x, void *b, long msg, long arg, char *dst)
{
	if(msg == 1)		// Inlets
		strcpy(dst, "(signal) Input");
	else if(msg == 2){	// Outlets
		switch(arg){
			case 0: strcpy(dst, "(signal) Demultiplexed Sensor Signal 1"); break;
			case 1: strcpy(dst, "(signal) Demultiplexed Sensor Signal 2"); break;
			case 2: strcpy(dst, "(signal) Demultiplexed Sensor Signal 3"); break;
			case 3: strcpy(dst, "(signal) Demultiplexed Sensor Signal 4"); break;
			case 4: strcpy(dst, "(signal) Demultiplexed Sensor Signal 5"); break;
			case 5: strcpy(dst, "(signal) Demultiplexed Sensor Signal 6"); break;
			case 6: strcpy(dst, "(signal) Demultiplexed Sensor Signal 7"); break;
			case 7: strcpy(dst, "(signal) Demultiplexed Sensor Signal 8"); break;
			case 8: strcpy(dst, "(signal) Digital Sensors, Encoded as INT"); break;
			case 9: strcpy(dst, "(attributes) dumpout"); break;
		}
	}
		strcpy(dst, "(signal) Demultiplexed Output");
}


// Method for Posting Hardware Version
void teabox_getversion(t_teabox *x)
{
	short 		version_major, version_minor;
	char		version_string[64];
	t_symbol	*version_symbol;
	t_atom		version_atom;
	
	version_major = (int)((x->hw_version * 4095.0) + 0.49) >> 8;
	version_minor = (int)((x->hw_version * 4095.0) + 0.49) & 255;
	
	//post("Teabox Firmware Version: %i.%i", version_major, version_minor);
	sprintf(version_string, "%i.%i", version_major, version_minor);
	version_symbol = gensym(version_string);
	SETSYM(&version_atom, version_symbol);

	outlet_anything(x->outlet, gensym("version"), 1, &version_atom);
}


// Method for Posting Status
void teabox_getstatus(t_teabox *x)
{
	t_atom	status_atom;

	if(x->hw_version){
		SETLONG(&status_atom, 1);
	}
	else{
		SETLONG(&status_atom, 0);
	}
	outlet_anything(x->outlet, gensym("status"), 1, &status_atom);
}


// Perform (signal) Method - delay is a constant (not a signal)
t_int *teabox_perform(t_int *w)
{
	t_teabox *x = (t_teabox *)(w[1]);		
	t_float *in = (t_float *)(w[2]);		// input
	t_float *out1 = (t_float *)(w[3]);		// sensor outputs [1-8]...
	t_float *out2 = (t_float *)(w[4]);
	t_float *out3 = (t_float *)(w[5]);
	t_float *out4 = (t_float *)(w[6]);
	t_float *out5 = (t_float *)(w[7]);
	t_float *out6 = (t_float *)(w[8]);
	t_float *out7 = (t_float *)(w[9]);
	t_float *out8 = (t_float *)(w[10]);
	t_float *out9 = (t_float *)(w[11]);		// toggle output [9]
	int n = (int)(w[12]);
	float	value;
	long	bitmask;
	
	if (x->x_obj.z_disabled) goto out;
	
	while(n--){
	
		// INPUT SECTION
		value = *in++;

		if(value < 0.0 || x->counter > 9){			// If the sample is the start flag...
			if(x->last_value < 0.0)					// Actually - if all 16 toggles on the Teabox digital inputs
				x->data[8] = x->last_value;			//	are high, it will look identical to the start flag - so
													//  so we compensate for that here.
			x->counter = 0;
		}
		else if(x->counter == 0){					// if the sample is hardware version number...
			x->hw_version = value * 8.0;							
			x->counter++;
		}	
		else{
			x->data[x->counter - 1] = value * 8.0;	// Normalize the range
			x->counter++;
		}
		
		// POST-PROCESS TOGGLE INPUT BITMASK
		if(x->data[8] < 0){
			bitmask = x->data[8] * 32768;			// 4096 = 32768 / 8 (we already multiplied by 8)
			bitmask ^= -32768;
			bitmask = 32768 + (bitmask);			// 2^3
		}
		else
			bitmask = x->data[8] * 4096;			// 4096 = 32768 / 8 (we already multiplied by 8)
		

		// OUTPUT SECTION - PIPE THE STORED DATA OUT THE OUTLETS
		*out1++ = x->data[0];
		*out2++ = x->data[1];
		*out3++ = x->data[2];
		*out4++ = x->data[3];
		*out5++ = x->data[4];
		*out6++ = x->data[5];
		*out7++ = x->data[6];
		*out8++ = x->data[7];
		*out9++ = (float)bitmask;					// Contains the 16-bits of digital inputs
		
		x->last_value = value;						// store the input value for the next time around
	}
out:		
	return (w+13);
}


// DSP Method
void teabox_dsp(t_teabox *x, t_signal **sp, short *count)
{
    dsp_add(teabox_perform, 12, x, 
    	sp[0]->s_vec, 
    	sp[1]->s_vec, sp[2]->s_vec, sp[3]->s_vec, sp[4]->s_vec, sp[5]->s_vec, sp[6]->s_vec, sp[7]->s_vec, sp[8]->s_vec, sp[9]->s_vec, 
    	sp[0]->s_n);
    teabox_getstatus(x);							// automatically report the status when the dsp is turned on	
}

