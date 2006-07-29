/*
 * Teabox counter object for Max/MSP
 * Written by Tim Place
 * Copyright © 2005 by Electrotap L.L.C.
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

t_class *count_tilde_class;					// Required. Global pointing to this class


// Data Structure for this object
typedef struct _count_tilde{		// Data Structure for this object
	t_pxobject ob;					// Required by MSP (must be first)
	long		value;				// stored count value
} t_count_tilde;


// Prototypes for methods: need a method for each incoming message type:
void count_tilde_dsp(t_count_tilde *x, t_signal **sp, short *count);			// DSP Method
void count_tilde_assist(t_count_tilde *x, void *b, long m, long a, char *s);	// Assistance Method
void *count_tilde_new(t_symbol *s, long argc, t_atom *argv);				// New Object Creation Method
t_int *count_tilde_perform(t_int *w);
void count_tilde_free(t_count_tilde *x);
void count_tilde_activate(t_count_tilde *x, short toggle);


/************************************************************************************/
// Main() Function

int main(void)	
{
	setup((t_messlist **)&count_tilde_class, (method)count_tilde_new, (method)dsp_free, (short)sizeof(t_count_tilde), 0L, 0);
	
	addmess((method)count_tilde_dsp, "dsp", A_CANT, 0);			// Bind method "teabox_dsp" to the DSP call from MSP
	addmess((method)count_tilde_assist,"assist", A_CANT, 0);	// Bind method "teabox_assist" to assistance calls

	dsp_initclass();											// Setup object's class to work with MSP
	return 0;
}


/************************************************************************************/
// Object Creation Method

void *count_tilde_new(t_symbol *s, long argc, t_atom *argv)
{
	t_count_tilde *x = (t_count_tilde *)newobject(count_tilde_class);
	dsp_setup((t_pxobject *)x,1);
	outlet_new((t_object *)x, "signal");	// Create signal outlet
	x->value = 0;
	return (x);
}


/************************************************************************************/
// Methods bound to input/inlets

// Method for Assistance Messages
void count_tilde_assist(t_count_tilde *x, void *b, long msg, long arg, char *dst)
{
	if(msg==1) strcpy(dst, "(signal) input from teabox");	// Inlet
	else if(msg==2) strcpy(dst, "(signal) index");			// Outlet		
}


// Perform (signal) Method
t_int *count_tilde_perform(t_int *w)
{
	t_count_tilde *x = (t_count_tilde *)(w[1]);	// Pointer	
	t_float *in = (t_float *)(w[2]);			// Inlet
	t_float *out = (t_float *)(w[3]);			// Outlet
	int n = (int)(w[4]);						// Vector Size
	float value;
	
	if (x->ob.z_disabled) goto out;
	
	
	while(n--){	
		value = *in++;							// load input sample
		
		x->value++;

		if(value < 0)
			x->value = 0;
		
		*out++ = x->value;			// Output stored count value			
	}
out:
    return (w+5);
}


// DSP Method
void count_tilde_dsp(t_count_tilde *x, t_signal **sp, short *count)
{
	dsp_add(count_tilde_perform, 4, x, sp[0]->s_vec, sp[1]->s_vec, sp[0]->s_n);
}
