/* 
 * jcom.out~
 * External for Jamoma: manage audio outputs for a module
 * By Tim Place, Copyright � 2006
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __JCOM_OUT_H_
#define __JCOM_OUT_H_

// Prototypes for methods
/** jcom.out and jcom.out~ constructor */
void *out_new(t_symbol *s, long argc, t_atom *argv);

void out_subscribe(void *z);

void out_algorithm_message(t_out *x, t_symbol *msg, long argc, t_atom *argv);

void out_dispatched(t_out *x, t_symbol *msg, long argc, t_atom *argv);

void out_sendbypassedvalue(t_out *x, short inletnum, t_symbol *msg, long argc, t_atom *argv);

void out_sendlastvalue(t_out *x);

void out_anything(t_out *x, t_symbol *msg, long argc, t_atom *argv);

/** jcom.out and jcom.out~ deconstructor */
void out_free(t_out *x);

/** Unsubscribe from jcom.hub */
void out_release(t_out *x);

void out_getAudioForChannel(t_out *x, int channel, float **vector);

/** jcom.out~ DSP method */
void out_dsp(t_out *x, t_signal **sp, short *count);

/** Max assistance method */
void out_assist(t_out *x, void *b, long m, long a, char *s);

/** jcom.out~ MSP perform method */
t_int *out_perform(t_int *w);

void out_alloc(t_out *x, int vector_size);

void out_link_to_in_object(t_out *x, t_in *y);

void out_unlink(t_out *x);

void out_register_meter(t_out *x, int meternum, void *meter_object);

void out_remove_meters(t_out *x);

void out_register_preview(t_out *x, void *preview_object);

void update_meters(t_out *x);

#endif //__JCOM_OUT_H_