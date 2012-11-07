/** @file
 *
 * @ingroup modularMax
 *
 * @brief Externals for Jamoma: jcom.in & jcom.in~ - Manage control and audio inputs for a module
 *
 * @details
 *
 * @authors Tim Place, Nils Peters, Trond Lossius
 *
 * @copyright Copyright © 2006 by Tim Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#ifndef __JCOM_IN_H_
#define __JCOM_IN_H_

// Prototypes for methods

/** jcom.in constructor */
void *in_new(t_symbol *s, long argc, t_atom *argv);

/** Method for subscribing to jcom.hub */
void in_subscribe(void *z);

void in_link(t_in *x, t_object *y);

void in_unlink(t_in *x);

/** Dispatch method for communication with the hub */
void in_dispatched(t_in *x, t_symbol *msg, long argc, t_atom *argv);

void in_bang(t_in *x);

/** int handler for jcom.in */
void in_int(t_in *x, long value);

/** float handler for jcom.in */
void in_float(t_in *x, double value);

void in_anything(t_in *x, t_symbol *msg, long argc, t_atom *argv);

/** jcom.in deconstructor */
void in_free(t_in *x);	

/** Unsubscribe from jcom.hub */
void in_release(t_in *x);

/** jcom.in~ DSP methods */
void in_dsp(t_in *x, t_signal **sp, short *count);
void in_dsp64(t_in *x, t_object *dsp64, short *count, double samplerate, long maxvectorsize, long flags);

void in_assist(t_in *x, void *b, long m, long a, char *s);			// Assistance Method

/** jcom.in~ MSP perform method */
t_int *in_perform(t_int *w);

void in_remoteaudio(t_in *x, float **audioVectors, long numAudioVectors);

void in_algorithm_message(t_in *x, t_symbol *msg, long argc, t_atom *argv);

void in_view_internals(t_in *x, t_symbol *msg, long argc, t_atom *argv);	// Message /module/view_internals

void in_alloc(t_in *x, int vector_size);

#endif //__JCOM_IN_H
