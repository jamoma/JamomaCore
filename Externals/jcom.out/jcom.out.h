/* 
 * jcom.out~
 * External for Jamoma: manage audio outputs for a module
 * By Tim Place, Copyright © 2006
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __JCOM_OUT_H_
#define __JCOM_OUT_H_

// Prototypes for methods
void *out_new(t_symbol *s, short argc, t_atom *argv);				// New Object Creation Method
void out_subscribe(t_out *x);
void out_algorithm_message(t_out *x, t_symbol *msg, short argc, t_atom *argv);
void out_dispatched(t_out *x, t_symbol *msg, short argc, t_atom *argv);
void out_sendbypassedvalue(t_out *x, short inletnum, t_symbol *msg, short argc, t_atom *argv);
void out_sendlastvalue(t_out *x);
void out_anything(t_out *x, t_symbol *msg, short argc, t_atom *argv);
void out_free(t_out *x);											// Object Deletion Method
void out_release(t_out *x);											// Hub Deletion
void out_dsp(t_out *x, t_signal **sp, short *count);				// DSP Method
void out_assist(t_out *x, void *b, long m, long a, char *s);		// Assistance Method
t_int *out_perform(t_int *w);										// MSP Perform Method
void out_alloc(t_out *x, int vector_size);
void out_link_to_in_object(t_out *x, t_in *y);
void out_unlink(t_out *x);
void out_register_meter(t_out *x, int meternum, void *meter_object);
void out_register_preview(t_out *x, void *preview_object);
void update_meters(t_out *x);

#endif //__JCOM_OUT_H_