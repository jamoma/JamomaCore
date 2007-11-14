#include "Jamoma.h"

// TODO: figure a method for updating the time when dsp isn't running


// statics and globals
static t_class	*class_jamoma_time = NULL;	// the time class
static t_class	*class_jamoma_time_event = NULL;
static t_object	*obj_jamoma_time = NULL;	// a shared global instance of the time class
static long		initialized = false;
static long		dsp_called = false;


/************************************************************************************/
// Init the framework

void jamoma_init(void)
{
	if(!initialized){
		common_symbols_init();
		jamoma_time_initclass();
		jamoma_time_event_initclass();
	
		obj_jamoma_time = (t_object*)object_new_typed(CLASS_NOBOX, gensym("jamoma_time"), 0, NULL);
		initialized = true;
	}
}


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
		x->ll_events = linklist_new();
		x->next_target_time = -1.0;
		x->sr = DEFAULT_SAMPLE_RATE;
		x->one_over_sr = 1.0 / DEFAULT_SAMPLE_RATE;
		x->samples_per_block = 64;
		jamoma_time_rewind(x);
		
		dsp_setup((t_pxobject *)x, 1);
		attr_args_process(x, argc, argv);
	}
	return (t_object*)x;
}


void jamoma_time_free(t_jamoma_time *x)
{
	dsp_free((t_pxobject *)x);
	object_free(x->ll_events);
}


/************************************************************************************/
// Methods

void jamoma_time_doevents(t_jamoma_time *x)
{
	t_jamoma_time_event	*event = (t_jamoma_time_event*)linklist_getindex(x->ll_events, 0);
	method				callback;
	t_object			*client;

	while(event){
		if(event->targettime < x->current_time){
			callback = event->callback;
			client = event->client;
			linklist_deleteindex(x->ll_events, 0);
			callback(client);
		}
		else{
			x->next_target_time = event->targettime;
			return;
		}
		event = (t_jamoma_time_event*)linklist_getindex(x->ll_events, 0);
	}
}


t_int* jamoma_time_perform(t_int *w)
{
	t_jamoma_time *x = (t_jamoma_time *)(w[1]);
	
	// Move the clocks ahead for the next cycle
	x->current_samples += x->samples_per_block;
	x->current_time = ((x->current_samples * x->one_over_sr) * DEFAULT_TICKS_PER_SECOND);
	
	// Is there anything that now needs to be fired off?
	if(x->next_target_time > -1 && (x->next_target_time < x->current_time))
		jamoma_time_doevents(x);
	
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
//		if(transport is not running){
			double samples_per_iter = jamoma_time_tickstosamples(x, period);
			*slope = 1.0 / samples_per_iter;
//		}
//		else
//			*slope = 0;
	}
}


/************************************************************************************/

t_max_err jamoma_time_delay(t_object *client, t_object *jamoma_time_obj, method callback, double *timevalue, long priority)
{
	t_jamoma_time		*x;
	t_jamoma_time_event	*event;
	
	if(jamoma_time_obj)
		x = (t_jamoma_time*)jamoma_time_obj;
	else
		x = (t_jamoma_time*)obj_jamoma_time;
	
	event = (t_jamoma_time_event*)jamoma_time_event_new(x, client, callback, timevalue, priority);
// TODO: actually need to do an insert here to keep the list in order
// TODO: probably want to cache the first scheduled time for speed
	linklist_append(x->ll_events, event);
	
	event = (t_jamoma_time_event*)linklist_getindex(x->ll_events, 0);
	x->next_target_time = event->targettime;

	return MAX_ERR_NONE;
}



/************************************************************************************/

void jamoma_time_event_initclass(void)
{
	t_class *c = class_new("jamoma_time_event", (method)jamoma_time_event_new, (method)jamoma_time_event_free, 
							sizeof(t_jamoma_time_event), (method)NULL, A_GIMME, 0);
	class_register(CLASS_NOBOX, c);
	class_jamoma_time_event = c;
}


t_object* jamoma_time_event_new(t_jamoma_time *owner, t_object *client, method callback, double *timevalue, long priority)
{
	t_jamoma_time_event *x = (t_jamoma_time_event *)object_alloc(class_jamoma_time_event);
	if(x){
		x->owner = owner;
		x->client = client;
		x->callback = callback;
		x->delaytime = *timevalue;
		x->targettime = owner->current_time + x->delaytime;
		x->priority = priority;
	}
	return (t_object*)x;
}


void jamoma_time_event_free(t_jamoma_time_event *x)
{
	;
}

