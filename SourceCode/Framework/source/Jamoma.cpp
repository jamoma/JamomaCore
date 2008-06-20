/* 
 * Jamoma Shared Library
 * Functions and resources used by Jamoma objects.
 * By Tim Place, Copyright © 2007
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "Jamoma.h"

// constants
const double k_pi = 3.1415926535897932;		// pi
const double k_twopi = 6.2831853071795864;	// 2 * pi
const double k_anti_denormal_value = 1e-18;	

// statics and globals
static long			initialized = false;
static t_hashtab	*hash_modules = NULL;			// a hashtab of all modules (jcom.hubs) currently instantiated
//t_object			*obj_jamoma_clock = NULL;		// there is only one master clock for the whole system
//t_object			*obj_jamoma_scheduler = NULL;	// a shared global instance of the scheduler class (there may be others too)
bool				max5 = false;


/************************************************************************************/
// Init the framework

void jamoma_init(void)
{
	if(!initialized){
		t_object*	max = gensym("max")->s_thing;
		t_symbol*	meth = gensym("objectfile");
		t_atom		a[4];
	
		if(maxversion() >= 0x0500)
			max5 = true;
		
		TTBlueInit();
		common_symbols_init();
		jamomaSymbolsInit();

		receivemaster_initclass();
		receive_initclass();
		object_method(max, meth, gensym("jcom.receive"), gensym("jcom.loader"), gensym("jcom.receive"));
		object_method_sym(max, gensym("db.object_addinternal"), gensym("jcom.receive"), NULL);
		
		send_initclass();
		object_method(max, meth, gensym("jcom.send"), gensym("jcom.loader"), gensym("jcom.send"));
		object_method_sym(max, gensym("db.object_addinternal"), gensym("jcom.send"), NULL);

		receive_tilde_initclass();
		object_method(max, meth, gensym("jcom.receive~"), gensym("jcom.loader"), gensym("jcom.receive~"));
		object_method_sym(max, gensym("db.object_addinternal"), gensym("jcom.receive~"), NULL);

		send_tilde_initclass();
		object_method(max, meth, gensym("jcom.send~"), gensym("jcom.loader"), gensym("jcom.send~"));
		object_method_sym(max, gensym("db.object_addinternal"), gensym("jcom.send~"), NULL);
		
		// Setup Class Aliases for TTBlue
		object_method(max, meth, gensym("jcom.limiter~"), gensym("tt.limiter~"), gensym("jcom.limiter~"));
		object_method(max, meth, gensym("jcom.saturation~"), gensym("tt.overdrive~"), gensym("jcom.saturation~"));
		
		// Create Required Global Instances
		// obj_jamoma_clock = (t_object*)object_new_typed(CLASS_NOBOX, gensym("jamoma.clock"), 0, NULL);
		// obj_jamoma_scheduler = (t_object*)object_new_typed(CLASS_NOBOX, gensym("jamoma.scheduler"), 0, NULL);
		hash_modules = (t_hashtab*)hashtab_new(0);

		// Add Jamoma Key Commands:
		
		// J -- a new object box with "jcom." in it
		atom_setsym(a+0, gensym("J"));
		atom_setsym(a+1, gensym("patcher"));
		atom_setsym(a+2, gensym("inserttextobj"));
		atom_setsym(a+3, gensym("jcom."));
		object_method_typed(max, gensym("definecommand"), 4, a, NULL);
		
		// M -- a new object box with "jmod." in it
		atom_setsym(a+0, gensym("M"));
		atom_setsym(a+1, gensym("patcher"));
		atom_setsym(a+2, gensym("inserttextobj"));
		atom_setsym(a+3, gensym("jmod."));
		object_method_typed(max, gensym("definecommand"), 4, a, NULL);

		// I -- a new audio input module, O -- a new audio output module	
		object_method_parse(max, gensym("definecommand"), "I patcher insertobj bpatcher @name jmod.input~.maxpat @args /input~", NULL);
		object_method_parse(max, gensym("definecommand"), "O patcher insertobj bpatcher @name jmod.output~.maxpat @args /output~", NULL);
	
		// B -- a new module in a bpatcher
		object_method_parse(max, gensym("definecommand"), "B patcher inserttextobj \"bpatcher @args myModule @name jmod.\"", NULL);		
		
		post("Jamoma %s - www.jamoma.org", JAMOMA_VERSION);
		initialized = true;
	}
}


t_max_err jamoma_hub_register(t_symbol *name, t_object *hub)
{
	t_object *test = NULL;
	
	hashtab_lookup(hash_modules, name, &test);
	if(test)
		return MAX_ERR_GENERIC;
	else{
		hashtab_store(hash_modules, name, hub);
		return MAX_ERR_NONE;
	}
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
	
	if(max5)
		object_obex_lookup(obj, gensym("#P"), &patcher);
	else
		patcher = (t_object*)gensym("#P")->s_thing;
	return patcher;
}


t_symbol *jamoma_patcher_getcontext(t_object *patcher)
{
	if(max5){
		t_object	*box = object_attr_getobj(patcher, jps_box);
		t_symbol	*objclass = NULL;
		
		if(box)
			objclass = object_classname(box);
		
		if(objclass == gensym("bpatcher"))
			return objclass;
		else if(objclass == gensym("newobj"))
			return gensym("subpatcher");
		else
			return gensym("toplevel");

		return _sym_nothing;
	}
	else{
		error("This version of Jamoma requires Max 5");
		return _sym_nothing;
	}
}


// Don't pass memory in for this function!  It will allocate what it needs
// -- then the caller is responsible for freeing
void jamoma_patcher_getargs(t_object *patcher, long *argc, t_atom **argv)
{
	if(max5){
		t_symbol		*context = jamoma_patcher_getcontext(patcher);
		t_object		*box = object_attr_getobj(patcher, jps_box);
		t_object		*textfield = NULL;
		char			*text = NULL;
		unsigned long	textlen = 0;

		if(context == gensym("bpatcher"))
			object_attr_getvalueof(box, gensym("args"), argc, argv);
		else if(context == gensym("subpatcher")){
			textfield = object_attr_getobj(box, gensym("textfield"));
			object_method(textfield, gensym("gettextptr"), &text, &textlen);
			atom_setparse(argc, argv, text);
		}
		else{
			*argc = 0;
			*argv = NULL;
		}
	}
	else{
		error("This version of Jamoma requires Max 5");
	}
}


t_symbol* jamoma_patcher_getvarname(t_object *patcher)
{
	if(max5){
		return _sym_nothing;
	}
	else{
		error("This version of Jamoma requires Max 5");
		return _sym_nothing;
	}
}


// When the DSP is started, we make sure the Jamoma Clock and Scheduler 
// are updated if needed
void jamoma_dsp(t_object *, t_signal **sp, short *count)
{
	//jamoma_clock_dsp(NULL, sp, count);
}


// This is the default attribute getter for Jamoma's core
// It sends the data out not only the parameter dumpout, but also
// out the feedback outlet from the module
// for example:
// 	jamoma_class_attr_new(c, "ramp/drive", _sym_symbol, (method)param_setramp, 
//		calcoffset(t_param, attr_ramp));
void jamoma_class_attr_new(t_class *c, char *attrName, t_symbol *attrType, method setter, method getter)
{
	t_object	*attr = NULL;
	char		getterName[256];
	
	strcpy(getterName, attrName);
	strcat(getterName, "/get");

	attr = attr_offset_new(attrName, attrType, 0, getter, setter, NULL);
	class_addattr(c, attr);

	class_addmethod(c, (method)jamoma_class_attr_get, getterName, A_GIMME, 0);
}


void jamoma_class_attr_array_new(t_class *c, char *attrName, t_symbol *attrType, long list_size, method setter, method getter)
{
	t_object	*attr = NULL;
	char		getterName[256];
	
	strcpy(getterName, attrName);
	strcat(getterName, "/get");

	attr = attr_offset_array_new(attrName, _sym_atom, list_size, 0, getter, setter, NULL, NULL);
	class_addattr(c, attr);

	class_addmethod(c, (method)jamoma_class_attr_get, getterName, A_GIMME, 0);
}


void jamoma_class_attr_get(t_object *o, t_symbol *attrName, long, t_atom *)
{
	char		cAttrName[256];
	t_symbol	*sAttrName;
	char		*temp;
	long		ac = 0;
	t_atom		*av = NULL;
	t_jcom_core_subscriber_common *x = (t_jcom_core_subscriber_common*)o;
	
	strcpy(cAttrName, attrName->s_name);
	temp = strrchr(cAttrName, '/');
	if(temp)
		*temp = 0;
	sAttrName = gensym(cAttrName);

	object_attr_getvalueof(o, sAttrName, &ac, &av);
	object_obex_dumpout(o, sAttrName, ac, av);
	if(x->hub != NULL){
		char		s[256];
		t_atom		a[4];
	
		sprintf(s, "%s:/%s", x->attr_name->s_name, attrName->s_name);
		atom_setsym(a+0, gensym(s));
		sysmem_copyptr(av, a+1, sizeof(t_atom) * ac);
		object_method_typed(x->hub, jps_feedback, ac + 1, a, NULL);
	}

	if(ac)
		sysmem_freeptr(av);
}

