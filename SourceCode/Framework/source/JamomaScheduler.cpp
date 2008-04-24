/* 
 * Jamoma Scheduler
 * Schedule and manage time-based events
 * Driven by the Jamoma Clock
 * By Tim Place, Copyright © 2007
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "Jamoma.h"

// For now anyway, defining a macro for putting mutex/critical regions around
// linklist access.
// TODO: something faster for linked list thread-safety
#define JAMOMA_SCHEDULER_LOCK critical_enter(0);
#define JAMOMA_SCHEDULER_UNLOCK critical_exit(0);

// TODO: add a "dump" method to post a list of everything that is currently scheduled

// statics and globals
static t_class	*class_jamoma_scheduler = NULL;	// the time class


/************************************************************************************/
// Object Life

void jamoma_scheduler_initclass(void)
{
	t_class *c = class_new("jamoma.scheduler", 
							(method)jamoma_scheduler_new, 
							(method)jamoma_scheduler_free, 
							sizeof(t_jamoma_scheduler), 
							(method)NULL, 
							A_GIMME, 0);

	class_register(CLASS_NOBOX, c);	
	class_jamoma_scheduler = c;
}


t_object* jamoma_scheduler_new(t_symbol *s, long argc, t_atom *argv)
{
	t_jamoma_scheduler *x = (t_jamoma_scheduler*)object_alloc(class_jamoma_scheduler);
	if(x){
		x->event_head = NULL;
		x->event_tail = NULL;

		jamoma_scheduler_rewind(x);
		
		attr_args_process(x, argc, argv);
	}
	return (t_object*)x;
}


void jamoma_scheduler_free(t_jamoma_scheduler *x)
{
	t_jamoma_event	*event = x->event_head;
	
	while(event){
		sysmem_freeptr(event);
		event = event->next;
	}
}


/************************************************************************************/
// Methods

void jamoma_scheduler_update(t_jamoma_scheduler *x, double *newTime)
{
	x->current_time = *newTime;
	if(x->event_head && (x->event_head->targettime < x->current_time))
		jamoma_scheduler_doevents(x);
}

// TODO: evaluate this method for thread-safety and performance
// This is doing stuff with linklists in realtime dsp code -- that could be bad
// among other things it means we have locks from critical regions which could be horrible
// At the very least we want to do something really minimal in terms of locking, which
// probably means using our own linked-list
void jamoma_scheduler_doevents(t_jamoma_scheduler *x)
{
	t_jamoma_event	*event = x->event_head;

	//JAMOMA_TIME_LOCK
	while(event){
		if(event->targettime < x->current_time)
			jamoma_event_send(event);
		else
			break;

		event = event->next;
	}
	//JAMOMA_TIME_UNLOCK

	return;
}


void jamoma_scheduler_rewind(t_jamoma_scheduler *x)
{
	if(!x)
		x = (t_jamoma_scheduler*)obj_jamoma_scheduler;

	// TODO: test this, and then implement...
	// if something is a time-relative *delay*, we could/should offset it here
	// if something is a time-static *event*, then is should not be offset here

	x->current_time = 0.0;
}


// return a value between 0.0 and 1.0 which represents the current progress through a time interval
void jamoma_scheduler_getphase(double period, double* phase, double* slope)
{
	t_jamoma_scheduler	*x = (t_jamoma_scheduler*)obj_jamoma_scheduler;
	
	*phase = fmod(x->current_time, period) / period;

	if(slope){
		// TODO: do we want to deal with a transport on this level?
		// or should that be something up at a meta-level where meters and notes and tempos are?
		//if(transport is not running){
			double samples_per_iter = jamoma_clock_tickstosamples(obj_jamoma_clock, period);
			*slope = 1.0 / samples_per_iter;
		//}
		//else
		//	*slope = 0;
	}
}


/************************************************************************************/

t_object* jamoma_scheduler_delay(t_object *client, t_object *jamoma_scheduler_obj, method callback, double *timevalue, long repeating, long priority)
{
	t_jamoma_scheduler	*x;
	t_jamoma_event		*event;
	t_jamoma_event		*match;
	
	if(jamoma_scheduler_obj)
		x = (t_jamoma_scheduler*)jamoma_scheduler_obj;
	else
		x = (t_jamoma_scheduler*)obj_jamoma_scheduler;
	
	event = jamoma_event_new(x, client, callback, timevalue, repeating, priority);

	JAMOMA_SCHEDULER_LOCK
	
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
	JAMOMA_SCHEDULER_UNLOCK
	return (t_object*)event;
}


void jamoma_scheduler_removeevent(t_jamoma_scheduler *x, t_object *anEvent)
{
	t_jamoma_event	*event = (t_jamoma_event*)anEvent;
	
	if(!x)
		x = (t_jamoma_scheduler*)obj_jamoma_scheduler;

	JAMOMA_SCHEDULER_LOCK
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
	JAMOMA_SCHEDULER_UNLOCK

	// Rather than simply calling object_free(event);
	// we defer that call here as a hack to avoid using a mutex or critical region
	// because the time events executed in another thread -- hopefully this will buy 
	// enough time for that to finish before the object is deleted
	defer_low(event, (method)jamoma_event_free, NULL, 0, NULL);
}


void jamoma_scheduler_moveevent(t_jamoma_scheduler *x, t_jamoma_event *event, double newtime)
{
	t_jamoma_event	*match;

	JAMOMA_SCHEDULER_LOCK

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
	JAMOMA_SCHEDULER_UNLOCK
}


/************************************************************************************/

t_jamoma_event* jamoma_event_new(t_jamoma_scheduler *owner, t_object *client, method callback, double *timevalue, long repeating, long priority)
{
	t_jamoma_event	*event = (t_jamoma_event*)sysmem_newptr(sizeof(t_jamoma_event));
	
	event->owner = (t_object*)owner;
	event->client = client;
	event->callback = callback;
	event->delaytime = *timevalue;
	event->targettime = owner->current_time + event->delaytime;
	event->repeating = repeating;
	event->priority = priority;
	if(priority == JCOM_EVENT_PRIORITY_MEDIUM)
		event->transfer_mechanism = clock_new(event, (method)jamoma_event_dosend);
	else if(priority == JCOM_EVENT_PRIORITY_LOW)
		event->transfer_mechanism = qelem_new(event, (method)jamoma_event_dosend);
	else // JCOM_TIME_PRIORITY_AUDIO
		event->transfer_mechanism = NULL;
	
	event->next = NULL;
	event->prev = NULL;

	return event;
}


void jamoma_event_free(t_jamoma_event *event)
{
	if(event->priority == JCOM_EVENT_PRIORITY_MEDIUM)
		object_free(event->transfer_mechanism);
	else if(event->priority == JCOM_EVENT_PRIORITY_LOW)
		qelem_free(event->transfer_mechanism);
	sysmem_freeptr(event);
}


void jamoma_event_send(t_jamoma_event *event)
{
	if(event->priority == JCOM_EVENT_PRIORITY_HIGH)
		jamoma_event_dosend(event);
	else if(event->priority == JCOM_EVENT_PRIORITY_MEDIUM)
		clock_delay(event->transfer_mechanism, 0);
	else
		qelem_set(event->transfer_mechanism);
}


void jamoma_event_dosend(t_jamoma_event *event)
{
	event->callback(event->client);
	if(event->repeating)
		jamoma_scheduler_moveevent((t_jamoma_scheduler*)event->owner, event, event->targettime + event->delaytime);
	else
		jamoma_scheduler_removeevent((t_jamoma_scheduler*)event->owner, (t_object*)event);
}
