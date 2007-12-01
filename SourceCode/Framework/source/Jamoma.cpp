/* 
 * Jamoma Shared Library
 * Functions and resources used by Jamoma objects.
 * By Tim Place, Copyright © 2007
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "Jamoma.h"

// statics and globals
static long			initialized = false;
static t_hashtab	*hash_modules = NULL;			// a hashtab of all modules (jcom.hubs) currently instantiated
t_object			*obj_jamoma_clock = NULL;		// there is only one master clock for the whole system
t_object			*obj_jamoma_scheduler = NULL;	// a shared global instance of the scheduler class (there may be others too)
bool				max5 = false;


/************************************************************************************/
// Init the framework

void jamoma_init(void)
{
	if(!initialized){
		if(maxversion() >= 0x0500)
			max5 = true;
		common_symbols_init();
		jcom_core_init();
		jamoma_clock_initclass();
		jamoma_scheduler_initclass();

		obj_jamoma_clock = (t_object*)object_new_typed(CLASS_NOBOX, gensym("jamoma.clock"), 0, NULL);
		obj_jamoma_scheduler = (t_object*)object_new_typed(CLASS_NOBOX, gensym("jamoma.scheduler"), 0, NULL);
		hash_modules = (t_hashtab*)hashtab_new(0);
		initialized = true;
	}
}


void jamoma_hub_register(t_symbol *name, t_object *hub)
{
	hashtab_store(hash_modules, name, hub);
}


void jamoma_hub_remove(t_symbol *name)
{
	hashtab_chuckkey(hash_modules, name);
}


t_object* jamoma_get_hub_for_module_named(t_symbol *name)
{
	t_object *hub = NULL;
	
	hashtab_lookup(hash_modules, name, &hub);
	return hub;
}


void jamoma_get_all_module_names(long *numModules, t_symbol ***moduleNames)
{
	hashtab_getkeys(hash_modules, numModules, moduleNames);
}


t_object* jamoma_object_getpatcher(t_object *obj)
{
	t_object *patcher = NULL;
	
	object_obex_lookup(obj, gensym("#P"), &patcher);
	if(!patcher)
		patcher = (t_object*)gensym("#P")->s_thing;
	return patcher;
}


t_symbol *jamoma_patcher_getcontext(t_object *patcher)
{
	if(max5){
		return _sym_nothing;
	}
	else{
		t_patcher	*p = (t_patcher*)patcher;
		t_box		*box = p->p_box;

		if(p->p_vnewobj != NULL){
			box = (t_box *)p->p_vnewobj;
			if(ob_sym(box) == gensym("bpatcher"))
				return gensym("bpatcher");
			else
				return gensym("subpatcher");
		}
		else
			return gensym("toplevel");
	}
}


typedef struct bpatcher {
	t_box b_box;
	short a,b;
	short c,d;
	short e,f;
	short g,h;
	short i,j;
	short k,l;
	short m,n;
	short o;
	Symbol *b_name;
	Atom b_argv[10];
	short b_argc;
} t_bpatcher;

// This returns pointers to args, not copies, so don't free them...
void jamoma_patcher_getargs(t_object *patcher, long *argc, t_atom **argv)
{
	if(max5){
		;
	}
	else{
		t_patcher	*p = (t_patcher*)patcher;
		t_symbol	*context = jamoma_patcher_getcontext(patcher);
		t_bpatcher	*bp;
		t_box		*box = (t_box *)p->p_vnewobj;
		t_atombuf	*atoms = NULL;
			
		if(context == gensym("bpatcher")){
			box = (t_box *)p->p_vnewobj;
			bp = (t_bpatcher *)box;
			
			*argc = bp->b_argc;
			*argv = bp->b_argv;
		}
		else if(context == gensym("subpatcher")){
			atoms = (t_atombuf *)box->b_binbuf;
			*argc = atoms->a_argc - 1;
			*argv = atoms->a_argv + 1;
		}
		else{
			*argc = 0;
			*argv = NULL;
		}
	}
}


t_symbol* jamoma_patcher_getvarname(t_object *patcher)
{
	if(max5){
		return _sym_nothing;
	}
	else{
		t_patcher	*p = (t_patcher*)patcher;
		t_box		*box = (t_box *)p->p_vnewobj;
		t_symbol	*s = _sym_nothing;
		
		if(!box)
			return _sym_nothing;
			
		p = box->b_patcher;	
		if(patcher_boxname(p, box, &s))
			return s;
		else
			return _sym_nothing;
	}
}


// When the DSP is started, we make sure the Jamoma Clock and Scheduler 
// are updated if needed
void jamoma_dsp(t_object *, t_signal **sp, short *count)
{
	jamoma_clock_dsp(NULL, sp, count);
}



