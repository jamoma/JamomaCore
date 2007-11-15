/*
 * Teabox bit decoder object for Max/MSP
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

void *teabox_bits_class;				// Required. Global pointing to this class


// Data Structure for this object
typedef struct _teabox_bits			
{
	t_pxobject 		x_obj;
} t_teabox_bits;


// Prototypes for methods: need a method for each incoming message type:
t_int *teabox_bits_perform(t_int *w);									// An MSP Perform (signal) Method
void teabox_bits_dsp(t_teabox_bits *x, t_signal **sp, short *count);			// DSP Method
void teabox_bits_assist(t_teabox_bits *x, void *b, long m, long a, char *s);	// Assistance Method
void *teabox_bits_new(void);												// New Object Creation Method


/************************************************************************************/
// Main() Function

int main(void)				// main recieves a copy of the Max function macros table
{
	setup((t_messlist **)&teabox_bits_class, (method)teabox_bits_new, (method)dsp_free, (short)sizeof(t_teabox_bits), 0L, 0);
	    					
	addmess((method)teabox_bits_dsp, "dsp", A_CANT, 0);			// Bind method "teabox_dsp" to the DSP call from MSP
	addmess((method)teabox_bits_assist,"assist", A_CANT, 0);	// Bind method "teabox_assist" to assistance calls
	
	dsp_initclass();											// Setup object's class to work with MSP
	return 0;
}


/************************************************************************************/
// Object Creation Method

void *teabox_bits_new(void)
{
	short i;
	
	t_teabox_bits *x = (t_teabox_bits *)newobject(teabox_bits_class);
	dsp_setup((t_pxobject *)x,1);

	for(i=0; i<16; i++)
		outlet_new((t_object *)x, "signal");	// Create new signal outlet

	return (x);
}



/************************************************************************************/
// Methods bound to input/inlets

// Method for Assistance Messages
void teabox_bits_assist(t_teabox_bits *x, void *b, long msg, long arg, char *dst)
{
	if(msg == 1)		// Inlets
		strcpy(dst, "(signal) bitmasked input");
	else if(msg == 2)	// Outlets
		strcpy(dst, "(signal) bit decoded output");
}


// Perform (signal) Method - delay is a constant (not a signal)
t_int *teabox_bits_perform(t_int *w)
{
	t_float *out[16];
	short	i;
	long	bitmask;
	
	t_teabox_bits	*x = (t_teabox_bits *)(w[1]);		
	t_float			*in = (t_float *)(w[2]);	// input
	int 			n = (int)(w[3]);
	for(i=0; i<16; i++)
		out[i] = (t_float *)(w[i+4]);		// sensor outputs [1-8]...
	
	if (x->x_obj.z_disabled) goto out;
	
	while(n--){
		// INPUT SECTION
		bitmask = *in++;		

		// OUTPUT SECTION - PIPE THE STORED DATA OUT THE OUTLETS
		*out[0]++ = (bitmask & 1) > 0;
		*out[1]++ = (bitmask & 2) > 0;
		*out[2]++ = (bitmask & 4) > 0;
		*out[3]++ = (bitmask & 8) > 0;
		*out[4]++ = (bitmask & 16) > 0;
		*out[5]++ = (bitmask & 32) > 0;
		*out[6]++ = (bitmask & 64) > 0;
		*out[7]++ = (bitmask & 128) > 0;
		*out[8]++ = (bitmask & 256) > 0;
		*out[9]++ = (bitmask & 512) > 0;
		*out[10]++ = (bitmask & 1024) > 0;
		*out[11]++ = (bitmask & 2048) > 0;
		*out[12]++ = (bitmask & 4096) > 0;
		*out[13]++ = (bitmask & 8192) > 0;
		*out[14]++ = (bitmask & 16384) > 0;
		*out[15]++ = (bitmask & 32768) > 0;
	}
out:		
	return (w+20);
}


// DSP Method
void teabox_bits_dsp(t_teabox_bits *x, t_signal **sp, short *count)
{
    dsp_add(teabox_bits_perform, 19, x, sp[0]->s_vec, sp[0]->s_n,
    	sp[1]->s_vec, sp[2]->s_vec, sp[3]->s_vec, sp[4]->s_vec, sp[5]->s_vec, sp[6]->s_vec, sp[7]->s_vec, sp[8]->s_vec, 
    	sp[9]->s_vec, sp[10]->s_vec, sp[11]->s_vec, sp[12]->s_vec, sp[13]->s_vec, sp[14]->s_vec, sp[15]->s_vec, sp[16]->s_vec);
}

