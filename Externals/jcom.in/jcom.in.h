/* 
 * jcom.in~
 * External for Jamoma: manage audio inputs for a module
 * By Tim Place, Copyright © 2006
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __JCOM_IN_H_
#define __JCOM_IN_H_

// Prototypes for methods
/** jcom.in constructor */
void *in_new(t_symbol *s, short argc, t_atom *argv);
/** Method for subscribing to jcom.hub */
void in_subscribe(t_in *x);
void in_link(t_in *x, void *y);
void in_unlink(t_in *x);
/** Dispatch method for communication with the hub */
void in_dispatched(t_in *x, t_symbol *msg, short argc, t_atom *argv);
void in_bang(t_in *x);
/** int handler for jcom.in */
void in_int(t_in *x, long value);
/** float handler for jcom.in */
void in_float(t_in *x, double value);
void in_anything(t_in *x, t_symbol *msg, short argc, t_atom *argv);
/** jcom.in deconstructor */
void in_free(t_in *x);	
/** Unsubscribe from jcom.hub */
void in_release(t_in *x);
/** jcom.in~ DSP method */
void in_dsp(t_in *x, t_signal **sp, short *count);
void in_assist(t_in *x, void *b, long m, long a, char *s);			// Assistance Method
/** jcom.in~ MSP perform method */
t_int *in_perform(t_int *w);
void in_algorithm_message(t_in *x, t_symbol *msg, short argc, t_atom *argv);
void in_view_internals(t_in *x, t_symbol *msg, short argc, t_atom *argv);	// Message /module/view_internals
void in_alloc(t_in *x, int vector_size);

#endif //__JCOM_IN_H