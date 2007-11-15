/* 
 * Jamoma Shared Library
 * Functions and resources used by Jamoma objects.
 * By Tim Place, Copyright © 2007
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "ext.h"
#include "ext_obex.h"
#include "z_dsp.h"
#include "commonsyms.h"
#include "ext_critical.h"


#define DEFAULT_TICKS_PER_SECOND 1000.0
#define DEFAULT_SAMPLE_RATE	44100.0

#define JCOM_TIME_PRIORITY_AUDIO 1
#define JCOM_TIME_PRIORITY_SCHEDULER 2
#define JCOM_TIME_PRIORITY_QUEUE 3


#ifndef __JAMOMA_H__
#define __JAMOMA_H__


typedef struct _jamoma_timeevent{
	t_object			*owner;				// owning jamoma_time object
	t_object			*client;
	method				callback;
	double				delaytime;
	double				targettime;
	long				repeating;
	long				priority;
	_jamoma_timeevent	*next;
	_jamoma_timeevent	*prev;
} t_jamoma_timeevent;


typedef struct _jamoma_time{
	t_pxobject			obj;
	t_jamoma_timeevent	*event_head;
	t_jamoma_timeevent	*event_tail;
	unsigned long		sr;
	double				one_over_sr;
	unsigned long		samples_per_block;
	double				current_time;		// in ticks
	unsigned long long	current_samples;	
	// TODO: some sort of accessor that would set tick period by saying 1000 ticks per second or something
} t_jamoma_time;


void		jamoma_init(void);

void		jamoma_time_initclass(void);
t_object*	jamoma_time_new(t_symbol *s, long argc, t_atom *argv);
void		jamoma_time_free(t_jamoma_time *x);
void		jamoma_time_getphase(double period, double* phase, double* slope);
void		jamoma_time_rewind(t_jamoma_time *x);
void		jamoma_time_dsp(t_jamoma_time *x, t_signal **sp, short *count);
t_object*	jamoma_time_delay(t_object *client, t_object *jamoma_time_obj, method callback, double *timevalue, long repeating, long priority);
void		jamoma_time_removeevent(t_jamoma_time *x, t_object *event);
void		jamoma_time_moveevent(t_jamoma_time *x, t_jamoma_timeevent *event, double newtime);

t_jamoma_timeevent*	jamoma_timeevent_new(t_jamoma_time *owner, t_object *client, method callback, double *timevalue, long repeating, long priority);
void				jamoma_timeevent_free(t_jamoma_timeevent *event);


#endif __JAMOMA_H__
