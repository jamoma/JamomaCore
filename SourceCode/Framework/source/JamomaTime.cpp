/* 
 * Jamoma Shared Library
 * Functions and resources used by Jamoma objects.
 * By Tim Place, Copyright © 2007
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "Jamoma.h"

// For now anyway, defining a macro for putting mutex/critical regions around
// linklist access.
// TODO: something faster for linked list thread-safety
#define JAMOMA_TIME_LOCK critical_enter(0);
#define JAMOMA_TIME_UNLOCK critical_exit(0);


// TODO: figure a method for updating the time when dsp isn't running
// TODO: add a "dump" method to post a list of everything that is currently scheduled

// statics and globals
static t_class	*class_jamoma_time = NULL;	// the time class
static long		dsp_called = false;


/************************************************************************************/
// Object Life

void jamoma_time_initclass(void)
{
	t_class *c = class_new("jamoma_time", (method)jamoma_time_new, (method)jamoma_time_free, 
							sizeof(t_jamoma_time), (method)NULL, A_GIMME, 0);

	class_addmethod(c, (method)jamoma_time_dsp,	"dsp",		A_CANT, 0L);
	
	class_dspinit(c);
	class_register(CLASS_NOBOX, c);	
	class_jamoma_time = c;
}


t_object* jamoma_time_new(t_symbol *s, long argc, t_atom *argv)
{
	t_jamoma_time *x = (t_jamoma_time *)object_alloc(class_jamoma_time);
	if(x){
		x->event_head = NULL;
		x->event_tail = NULL;

		x->sr = DEFAULT_SAMPLE_RATE;
		x->one_over_sr = 1.0 / DEFAULT_SAMPLE_RATE;
		x->samples_per_block = 64;
		jamoma_time_rewind(x);
		
		dsp_setup((t_pxobject *)x, 1);
		x->obj.z_misc = Z_PUT_LAST;			// ... because our perform routine advances time to the next frame
		attr_args_process(x, argc, argv);
	}
	return (t_object*)x;
}


void jamoma_time_free(t_jamoma_time *x)
{
	t_jamoma_timeevent	*event = x->event_head;

	dsp_free((t_pxobject *)x);
	
	while(event){
		sysmem_freeptr(event);
		event = event->next;
	}
}


/************************************************************************************/
// Methods

// TODO: evaluate this method for thread-safety and performance
// This is doing stuff with linklists in realtime dsp code -- that could be bad
// among other things it means we have locks from critical regions which could be horrible
// At the very least we want to do something really minimal in terms of locking, which
// probably means using our own linked-list
void jamoma_time_doevents(t_jamoma_time *x)
{
	t_jamoma_timeevent	*event = x->event_head;

	//JAMOMA_TIME_LOCK
	while(event){
		if(event->targettime < x->current_time)
			jamoma_timeevent_send(event);
		else
			break;

		event = event->next;
	}
	//JAMOMA_TIME_UNLOCK
	return;
}


t_int* jamoma_time_perform(t_int *w)
{
	t_jamoma_time *x = (t_jamoma_time *)(w[1]);
		
	// Move the clocks ahead for the next cycle
	x->current_samples += x->samples_per_block;
	x->current_time = ((x->current_samples * x->one_over_sr) * DEFAULT_TICKS_PER_SECOND);
	
	// Is there anything that now needs to be fired off?
	if(x->event_head && (x->event_head->targettime < x->current_time))
		jamoma_time_doevents(x);

	// TODO: is there another way to this:
	// reset the hack that we use in the dsp method to make sure this method isn't called multiple times
	dsp_called = false;
	
	return(w+2);
}


void jamoma_time_dsp(t_jamoma_time *x, t_signal **sp, short *count)
{
	if(!dsp_called){
		if(object_classname(x) != gensym("jamoma_time"))
			x = (t_jamoma_time*)obj_jamoma_time;

		if(sp){
			x->sr = (double)sp[0]->s_sr;
			x->one_over_sr = 1.0 / (double)sp[0]->s_sr;
			x->samples_per_block = sp[0]->s_n;
		}
		
		dsp_add(jamoma_time_perform, 1, x);
		dsp_called = true;
	}
}


void jamoma_time_rewind(t_jamoma_time *x)
{
	if(!x)
		x = (t_jamoma_time*)obj_jamoma_time;

	// TODO: test this, and then implement...
	// if something is a time-relative *delay*, we could/should offset it here
	// if something is a time-static *event*, then is should not be offset here

	x->current_time = 0.0;
	x->current_samples = 0;
}


unsigned long long jamoma_time_tickstosamples(t_jamoma_time *x, double period)
{
	return x->sr * (period / DEFAULT_TICKS_PER_SECOND);
}


// return a value between 0.0 and 1.0 which represents the current progress through a time interval
void jamoma_time_getphase(double period, double* phase, double* slope)
{
	t_jamoma_time	*x = (t_jamoma_time*)obj_jamoma_time;
	
	*phase = fmod(x->current_time, period) / period;

	if(slope){
		// TODO: do we want to deal with a transport on this level?
		// or should that be something up at a meta-level where meters and notes and tempos are?
		//if(transport is not running){
			double samples_per_iter = jamoma_time_tickstosamples(x, period);
			*slope = 1.0 / samples_per_iter;
		//}
		//else
		//	*slope = 0;
	}
}


/************************************************************************************/

t_object* jamoma_time_delay(t_object *client, t_object *jamoma_time_obj, method callback, double *timevalue, long repeating, long priority)
{
	t_jamoma_time		*x;
	t_jamoma_timeevent	*event;
	t_jamoma_timeevent	*match;
	
	if(jamoma_time_obj)
		x = (t_jamoma_time*)jamoma_time_obj;
	else
		x = (t_jamoma_time*)obj_jamoma_time;
	
	event = jamoma_timeevent_new(x, client, callback, timevalue, repeating, priority);

	JAMOMA_TIME_LOCK
	
	if(x->event_head == NULL){
		x->event_head = event;
		x->event_tail = event;
		goto out;
	}
	else{
		// we need to figure out where to insert this event
		// we will start at the end of the list as that is probably
		// closer than the beginning of the list?
		match = x->event_tail;
		while(match){
			if(match->targettime < event->targettime){
				event->next = match->next;
				event->prev = match;
				if(match->next == NULL)
					x->event_tail = event;
				else
					match->next->prev = event;
				match->next = event;
				goto out;
			}
			match = match->prev;
		}
	}
	// if we made it to here, then we need to insert this event at the head
	event->next = x->event_head;
	x->event_head = event;
	event->next->prev = event;
out:
	JAMOMA_TIME_UNLOCK
	return (t_object*)event;
}


void jamoma_time_removeevent(t_jamoma_time *x, t_object *timeevent)
{
	t_jamoma_timeevent	*event = (t_jamoma_timeevent*)timeevent;
	
	if(!x)
		x = (t_jamoma_time*)obj_jamoma_time;

	JAMOMA_TIME_LOCK
	if(event == x->event_head){
		x->event_head = event->next;
		if(x->event_head == NULL)
			x->event_tail = NULL;
		else
			event->next->prev = NULL;
	}
	else{
		event->prev->next = event->next;
		if(event->next == NULL)
			x->event_tail = event->prev;
		else
			event->next->prev = event->prev;
	}
	JAMOMA_TIME_UNLOCK

	// Rather than simply calling object_free(event);
	// we defer that call here as a hack to avoid using a mutex or critical region
	// because the time events executed in another thread -- hopefully this will buy 
	// enough time for that to finish before the object is deleted
	defer_low(event, (method)jamoma_timeevent_free, NULL, 0, NULL);
}


void jamoma_time_moveevent(t_jamoma_time *x, t_jamoma_timeevent *event, double newtime)
{
	t_jamoma_timeevent	*match;

	JAMOMA_TIME_LOCK

	// first, remove the item from the list without freeing it
	if(event == x->event_head){
		x->event_head = event->next;
		if(x->event_head == NULL)
			x->event_tail = NULL;
		else
			event->next->prev = NULL;
	}
	else{
		event->prev->next = event->next;
		if(event->next == NULL)
			x->event_tail = event->prev;
		else
			event->next->prev = event->prev;
	}
	
	// update the event
	event->targettime = newtime;
	event->next = NULL;
	event->prev = NULL;
	
	// finally, insert it again
	if(x->event_head == NULL){
		x->event_head = event;
		x->event_tail = event;
		goto out;
	}
	else{
		// we need to figure out where to insert this event
		// we will start at the end of the list as that is probably
		// closer than the beginning of the list?
		match = x->event_tail;
		while(match){
			if(match->targettime < event->targettime){
				event->next = match->next;
				event->prev = match;
				if(match->next == NULL)
					x->event_tail = event;
				else
					match->next->prev = event;
				match->next = event;
				goto out;
			}
			match = match->prev;
		}
		// if we made it to here, then we need to insert this event at the head
		event->next = x->event_head;
		x->event_head = event;
		event->next->prev = event;
	}
out:
	JAMOMA_TIME_UNLOCK
}


/************************************************************************************/

t_jamoma_timeevent* jamoma_timeevent_new(t_jamoma_time *owner, t_object *client, method callback, double *timevalue, long repeating, long priority)
{
	t_jamoma_timeevent	*event = (t_jamoma_timeevent*)sysmem_newptr(sizeof(t_jamoma_timeevent));
	
	event->owner = (t_object*)owner;
	event->client = client;
	event->callback = callback;
	event->delaytime = *timevalue;
	event->targettime = owner->current_time + event->delaytime;
	event->repeating = repeating;
	event->priority = priority;
	if(priority == JCOM_TIME_PRIORITY_SCHEDULER)
		event->transfer_mechanism = clock_new(event, (method)jamoma_timeevent_dosend);
	else if(priority == JCOM_TIME_PRIORITY_QUEUE)
		event->transfer_mechanism = qelem_new(event, (method)jamoma_timeevent_dosend);
	else // JCOM_TIME_PRIORITY_AUDIO
		event->transfer_mechanism = NULL;
	
	event->next = NULL;
	event->prev = NULL;

	return event;
}


void jamoma_timeevent_free(t_jamoma_timeevent *event)
{
	if(event->priority == JCOM_TIME_PRIORITY_SCHEDULER)
		object_free(event->transfer_mechanism);
	else if(event->priority == JCOM_TIME_PRIORITY_QUEUE)
		qelem_free(event->transfer_mechanism);
	sysmem_freeptr(event);
}


void jamoma_timeevent_send(t_jamoma_timeevent *event)
{
	if(event->priority == JCOM_TIME_PRIORITY_AUDIO)
		jamoma_timeevent_dosend(event);
	else if(event->priority == JCOM_TIME_PRIORITY_SCHEDULER)
		clock_delay(event->transfer_mechanism, 0);
	else
		qelem_set(event->transfer_mechanism);
}


void jamoma_timeevent_dosend(t_jamoma_timeevent *event)
{
	event->callback(event->client);
	if(event->repeating)
		jamoma_time_moveevent((t_jamoma_time*)event->owner, event, event->targettime + event->delaytime);
	else
		jamoma_time_removeevent((t_jamoma_time*)event->owner, (t_object*)event);
}
