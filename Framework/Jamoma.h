


#include "ext.h"
#include "ext_obex.h"
#include "z_dsp.h"
#include "commonsyms.h"

#define DEFAULT_TICKS_PER_SECOND 1000.0
#define DEFAULT_SAMPLE_RATE	44100.0

#define JCOM_TIME_PRIORITY_AUDIO 1
#define JCOM_TIME_PRIORITY_SCHEDULER 2
#define JCOM_TIME_PRIORITY_QUEUE 3


#ifndef __JAMOMA_H__
#define __JAMOMA_H__


typedef struct _jamoma_time{
	t_pxobject			obj;
	t_linklist			*ll_events;			// linklist of t_jamoma_time_event objects
	unsigned long		sr;
	double				one_over_sr;
	unsigned long		samples_per_block;
	double				current_time;		// in ticks
	unsigned long long	current_samples;
	
	double				next_target_time;

//	nanosec				systemtime_at_zero;	// when we rewind and start, cache the system time for calculating offsets
	
	// some sort of accessor that would set tick period by saying 1000 ticks per second or something
} t_jamoma_time;


typedef struct _jamoma_time_event{
	t_object		obj;
	t_jamoma_time	*owner;
	t_object		*client;
	method			callback;
	double			delaytime;
	double			targettime;
	long			priority;
} t_jamoma_time_event;


typedef struct _timevalue{
	t_object	obj;		// 
	// value?
	// units?
	double		ticks;		// ?
	long		repeating;	// bool
} t_timevalue;


void		jamoma_init(void);

void		jamoma_time_initclass(void);
t_object*	jamoma_time_new(t_symbol *s, long argc, t_atom *argv);
void		jamoma_time_free(t_jamoma_time *x);
void		jamoma_time_getphase(double period, double* phase, double* slope);
void		jamoma_time_rewind(t_jamoma_time *x);
void		jamoma_time_dsp(t_jamoma_time *x, t_signal **sp, short *count);
t_max_err	jamoma_time_delay(t_object *client, t_object *jamoma_time_obj, method callback, double *timevalue, long priority);

void		jamoma_time_event_initclass(void);
t_object*	jamoma_time_event_new(t_jamoma_time *owner, t_object *client, method callback, double *timevalue, long priority);
void		jamoma_time_event_free(t_jamoma_time_event *x);




#endif __JAMOMA_H__

