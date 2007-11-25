/* 
 * Jamoma Scheduler
 * Schedule and manage time-based events
 * Driven by the Jamoma Clock
 * By Tim Place, Copyright © 2007
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __JAMOMA_SCHEDULER_H__
#define __JAMOMA_SCHEDULER_H__

#include "ext.h"
#include "ext_obex.h"				// Max Object Extensions (attributes) Header
#include "z_dsp.h"
#include "commonsyms.h"				// Common symbols used by the Max 4.5 API


#define DEFAULT_TICKS_PER_SECOND 1000.0
#define DEFAULT_SAMPLE_RATE	44100.0

#define JCOM_EVENT_PRIORITY_HIGH 1		// HIGH communicates events in the Jamoma Clock thread
#define JCOM_EVENT_PRIORITY_MEDIUM 2	// MEDIUM communicates events using Max's scheduler
#define JCOM_EVENT_PRIORITY_LOW 3		// LOW communicates events using Max's low-priority queue


typedef struct _jamoma_event{
	t_object			*owner;				// owning jamoma_scheduler object
	t_object			*client;
	method				callback;
	double				delaytime;
	double				targettime;
	long				repeating;
	long				priority;
	void				*transfer_mechanism;
	_jamoma_event		*next;
	_jamoma_event		*prev;
} t_jamoma_event;


typedef struct _jamoma_scheduler{
	t_pxobject			obj;
	t_jamoma_event		*event_head;
	t_jamoma_event		*event_tail;
	unsigned long		sr;
	double				one_over_sr;
	unsigned long		samples_per_block;
	double				current_time;		// in ticks
	unsigned long long	current_samples;	
	// TODO: some sort of accessor that would set tick period by saying 1000 ticks per second or something
} t_jamoma_scheduler;


void			jamoma_scheduler_initclass(void);
t_object*		jamoma_scheduler_new(t_symbol *s, long argc, t_atom *argv);
void			jamoma_scheduler_free(t_jamoma_scheduler *x);
void			jamoma_scheduler_getphase(double period, double* phase, double* slope);
void			jamoma_scheduler_rewind(t_jamoma_scheduler *x);
void			jamoma_scheduler_dsp(t_jamoma_scheduler *x, t_signal **sp, short *count);
t_object*		jamoma_scheduler_delay(t_object *client, t_object *jamoma_scheduler_obj, method callback, double *timevalue, long repeating, long priority);
void			jamoma_scheduler_removeevent(t_jamoma_scheduler *x, t_object *event);
void			jamoma_scheduler_moveevent(t_jamoma_scheduler *x, t_jamoma_event *event, double newtime);

t_jamoma_event*	jamoma_event_new(t_jamoma_scheduler *owner, t_object *client, method callback, double *timevalue, long repeating, long priority);
void			jamoma_event_free(t_jamoma_event *event);
void			jamoma_event_send(t_jamoma_event *event);
void			jamoma_event_dosend(t_jamoma_event *event);


#endif //__JAMOMA_SCHEDULER_H__

