/* 
 * Jamoma Shared Library
 * Functions and resources used by Jamoma objects.
 * By Tim Place, Copyright © 2007
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "Jamoma.h"
#include "JamomaObject.h"

#include "AsyncRamp.h"
#include "NoneRamp.h"
#include "QueueRamp.h"
#include "SchedulerRamp.h"


// constants
/* those constants are now defined in TTElement.h 
const double k_pi = 3.1415926535897932;		// pi 
const double k_twopi = 6.2831853071795864;	// 2 * pi
const double k_anti_denormal_value = 1e-18;	
*/
// statics and globals
static long			initialized = false;			///< Global variabel indicating whether Jamoma has been initiated or not.
static t_hashtab	*hash_modules = NULL;			///< A hashtab of all modules (jcom.hubs) currently instantiated
//t_object			*obj_jamoma_clock = NULL;		// there is only one master clock for the whole system
//t_object			*obj_jamoma_scheduler = NULL;	// a shared global instance of the scheduler class (there may be others too)
bool				max5 = false;					///< Is Jamoma currently running in Max 5 or newer?
bool				max6 = false;					///< Is Jamoma currently running in Max 6 or newer?

/************************************************************************************/
// Init the framework

void jamoma_init(void)
{
	if (!initialized) {
		t_object*	max = SymbolGen("max")->s_thing;
		t_symbol*	meth = SymbolGen("objectfile");
		t_atom		a[4];
	
		if (maxversion() >= 0x0519)
			max5 = true;
		if (maxversion() >= 0x0600)
			max6 = true;
		
		TTDSPInit();
		
		// Register RampLib classes
		AsyncRamp::registerClass();
		NoneRamp::registerClass();
		QueueRamp::registerClass();
		SchedulerRamp::registerClass();
		
		// Initialize common symbols
		common_symbols_init();
		jamomaSymbolsInit();
		
		receivemaster_initclass();
		receive_initclass();
		object_method(max, meth, SymbolGen("jcom.receive"), SymbolGen("jcom.loader"), SymbolGen("jcom.receive"));
		object_method_sym(max, SymbolGen("db.object_addinternal"), SymbolGen("jcom.receive"), NULL);
		
		send_initclass();
		object_method(max, meth, SymbolGen("jcom.send"), SymbolGen("jcom.loader"), SymbolGen("jcom.send"));
		object_method_sym(max, SymbolGen("db.object_addinternal"), SymbolGen("jcom.send"), NULL);

		receive_tilde_initclass();
		object_method(max, meth, SymbolGen("jcom.receive~"), SymbolGen("jcom.loader"), SymbolGen("jcom.receive~"));
		object_method_sym(max, SymbolGen("db.object_addinternal"), SymbolGen("jcom.receive~"), NULL);

		send_tilde_initclass();
		object_method(max, meth, SymbolGen("jcom.send~"), SymbolGen("jcom.loader"), SymbolGen("jcom.send~"));
		object_method_sym(max, SymbolGen("db.object_addinternal"), SymbolGen("jcom.send~"), NULL);
		
		// Setup Class Aliases for TTBlue
		// object_method(max, meth, SymbolGen("jcom.limiter~"), SymbolGen("tt.limiter~"), SymbolGen("jcom.limiter~"));
		// object_method(max, meth, SymbolGen("jcom.saturation~"), SymbolGen("tt.overdrive~"), SymbolGen("jcom.saturation~"));
		
		// Create Required Global Instances
		// obj_jamoma_clock = (t_object*)object_new_typed(CLASS_NOBOX, SymbolGen("jamoma.clock"), 0, NULL);
		// obj_jamoma_scheduler = (t_object*)object_new_typed(CLASS_NOBOX, SymbolGen("jamoma.scheduler"), 0, NULL);
		hash_modules = (t_hashtab*)hashtab_new(0);
		// TODO: Use quittask_install() to set up a destructor for this to free it before Max exits

		
		// This tells Max 5.0.6 and higher that we want the patcher files to be saved such that they are sorted.
		// Having the saved this way makes our SVN diffs much more meaningful.
		object_method_long(max, SymbolGen("sortpatcherdictonsave"), 1, NULL);
	
		// This tells Max 4.5.7 and higher to take any posts to the Max window and also make the
		// post to the system console, which greatly aids in debugging problems and crashes
		object_method_long(max, SymbolGen("setmirrortoconsole"), 1, NULL);

		
		// Add Jamoma Key Commands:
		
		// J -- Jamoma: a new object box with "jcom." in it
		atom_setsym(a+0, SymbolGen("J"));
		atom_setsym(a+1, SymbolGen("patcher"));
		atom_setsym(a+2, SymbolGen("inserttextobj"));
		atom_setsym(a+3, SymbolGen("jcom."));
		object_method_typed(max, SymbolGen("definecommand"), 4, a, NULL);
				
		// M -- Module: a new object box with "jmod." in it
		atom_setsym(a+0, SymbolGen("M"));
		atom_setsym(a+1, SymbolGen("patcher"));
		atom_setsym(a+2, SymbolGen("inserttextobj"));
		atom_setsym(a+3, SymbolGen("jmod."));
		object_method_typed(max, SymbolGen("definecommand"), 4, a, NULL);
        		
		// I -- Input: a new audio input module
		object_method_parse(max, SymbolGen("definecommand"), (char*)"I patcher insertobj bpatcher @name jmod.input~.maxpat @args input~", NULL);
				
		// O -- Output: a new audio output module	
		object_method_parse(max, SymbolGen("definecommand"), (char*)"O patcher insertobj bpatcher @name jmod.output~.maxpat @args output~", NULL);
		
		// B -- BPatcher: a new module in a bpatcher
		object_method_parse(max, SymbolGen("definecommand"), (char*)"B patcher inserttextobj \"bpatcher @name jmod. @args myModule\"", NULL);		

		// D -- Demo: a new module in a bpatcher, but with the args reverse which is handy for super-fast demos when you don't care about the OSC name
		object_method_parse(max, SymbolGen("definecommand"), (char*)"D patcher inserttextobj \"bpatcher @name jmod.\"", NULL);		

		// X -- Continuous Mapper module
		object_method_parse(max, SymbolGen("definecommand"), (char*)"X patcher insertobj bpatcher @name jmod.mapperContinuous.maxpat @args mapper", NULL);		
		
		// !!!! --- x is defined here to work around a 'bug' in the Max Toolbox b13 ( http://code.google.com/p/maxtoolbox/downloads/list )
		object_method_parse(max, SymbolGen("definecommand"), (char*)"x patcher nothing", NULL);		
		
		//definecommandinstructions, are unspooirted in max5 and gives anoying error messages 
		if (max6){
			// J -- Jamoma: a new object box with "jcom." in it
			atom_setsym(a+0, SymbolGen("patcher"));
			atom_setsym(a+1, SymbolGen("J"));
			atom_setsym(a+2, SymbolGen("jcom. object"));
			object_method_typed(max, SymbolGen("definecommandinstructions"), 3, a, NULL);
			// M -- Module: a new object box with "jmod." in it
			atom_setsym(a+0, SymbolGen("patcher"));
			atom_setsym(a+1, SymbolGen("M"));
			atom_setsym(a+2, SymbolGen("jmod. object"));
			object_method_typed(max, SymbolGen("definecommandinstructions"), 3, a, NULL);
			// I -- Input: a new audio input module
			atom_setsym(a+0, SymbolGen("patcher"));
			atom_setsym(a+1, SymbolGen("I"));
			atom_setsym(a+2, SymbolGen("jmod.input~"));
			object_method_typed(max, SymbolGen("definecommandinstructions"), 3, a, NULL);
			// O -- Output: a new audio output module
			atom_setsym(a+0, SymbolGen("patcher"));
			atom_setsym(a+1, SymbolGen("O"));
			atom_setsym(a+2, SymbolGen("jmod.output~"));
			object_method_typed(max, SymbolGen("definecommandinstructions"), 3, a, NULL);	
			// B -- BPatcher: a new module in a bpatcher
			atom_setsym(a+0, SymbolGen("patcher"));
			atom_setsym(a+1, SymbolGen("B"));
			atom_setsym(a+2, SymbolGen("bpatcher @name jmod. @args myModule"));
			object_method_typed(max, SymbolGen("definecommandinstructions"), 3, a, NULL);		
			// D -- Demo: a new module in a bpatcher,
			atom_setsym(a+0, SymbolGen("patcher"));
			atom_setsym(a+1, SymbolGen("D"));
			atom_setsym(a+2, SymbolGen("bpatcher @name jmod."));
			object_method_typed(max, SymbolGen("definecommandinstructions"), 3, a, NULL);
			// X -- Continuous Mapper module
			atom_setsym(a+0, SymbolGen("patcher"));
			atom_setsym(a+1, SymbolGen("X"));
			atom_setsym(a+2, SymbolGen("jmod.mapperContinuous"));
			object_method_typed(max, SymbolGen("definecommandinstructions"), 3, a, NULL);	
		}
		
		// Here bind the TTBlue environment object to the symbol "TTBlue"
		{
			t_symbol* TTBlueMaxSymbol = SymbolGen("TTBlue");
			
			TTBlueMaxSymbol->s_thing = 0;
			// Before we can do this we have to have a ttblue max class to receive the messages, duh...
		}
		
		// now the jamoma object
		{
			t_symbol* jamomaSymbol = SymbolGen("jamoma");
		
			jamoma_object_initclass();
			jamomaSymbol->s_thing = jamoma_object_new();
		}
		
		post("Jamoma (build %s)                        Version %s | jamoma.org", TT_MODULAR_REV, TT_MODULAR_VERSION);

		initialized = true;
	}
}


t_max_err jamoma_hub_register(t_symbol *name, t_object *hub)
{
	t_object *test = NULL;
	
	hashtab_lookup(hash_modules, name, &test);
	if (test)
		return MAX_ERR_GENERIC;
	else {
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
	
	object_obex_lookup(obj, SymbolGen("#P"), &patcher);
	return patcher;
}


t_symbol *jamoma_patcher_getcontext(t_object *patcher)
{
	t_object	*box = object_attr_getobj(patcher, jps_box);
	t_symbol	*objclass = NULL;
	
	if (box)
		objclass = object_classname(box);
	
	if (objclass == SymbolGen("bpatcher"))
		return objclass;
	else if (objclass == SymbolGen("newobj"))
		return SymbolGen("subpatcher");
	else
		return SymbolGen("toplevel");
}


// Don't pass memory in for this function!  It will allocate what it needs
// -- then the caller is responsible for freeing
void jamoma_patcher_getargs(t_object *patcher, long *argc, t_atom **argv)
{
	t_symbol		*context = jamoma_patcher_getcontext(patcher);
	t_object		*box = object_attr_getobj(patcher, jps_box);
	t_object		*textfield = NULL;
	char			*text = NULL;
	unsigned long	textlen = 0;

	if (context == SymbolGen("bpatcher"))
		object_attr_getvalueof(box, SymbolGen("args"), argc, argv);
	else if (context == SymbolGen("subpatcher")) {
		textfield = object_attr_getobj(box, SymbolGen("textfield"));
		object_method(textfield, SymbolGen("gettextptr"), &text, &textlen);
		atom_setparse(argc, argv, text);
	}
	else {
		*argc = 0;
		*argv = NULL;
	}
}


t_symbol* jamoma_patcher_getvarname(t_object *patcher)
{
	if (max5) {
		return _sym_nothing;
	}
	else {
		error("This version of Jamoma requires Max 5.1.9 or higher");
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
void jamoma_class_attr_new(t_class *c, const char *attrName, t_symbol *attrType, method setter, method getter)
{
	t_object	*attr = NULL;
	char		getterName[256];
	
	strcpy(getterName, attrName);
	strcat(getterName, "/get");

	attr = attr_offset_new(attrName, attrType, 0, getter, setter, NULL);
	class_addattr(c, attr);

	class_addmethod(c, (method)jamoma_class_attr_get, getterName, A_GIMME, 0);
}


void jamoma_class_attr_array_new(t_class *c, const char *attrName, t_symbol *attrType, long list_size, method setter, method getter)
{
	t_object	*attr = NULL;
	char		getterName[256];
	
	strcpy(getterName, attrName);
	strcat(getterName, "/get");

	attr = attr_offset_array_new((char*)attrName, _sym_atom, list_size, 0, getter, setter, NULL, NULL);
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
	if (temp)
		*temp = 0;
	sAttrName = SymbolGen(cAttrName);

	object_attr_getvalueof(o, sAttrName, &ac, &av);
	object_obex_dumpout(o, sAttrName, ac, av);
	if (x->hub != NULL) {
		char		s[256];
		t_atom		*a = (t_atom *) alloca((ac + 1) * sizeof(t_atom));
	
		snprintf(s, 256, "%s:/%s", x->attr_name->s_name, attrName->s_name);
		atom_setsym(a+0, SymbolGen(s));
		sysmem_copyptr(av, a+1, sizeof(t_atom) * ac);
		object_method_typed(x->hub, jps_feedback, ac + 1, a, NULL);
	}

	if (ac)
		sysmem_freeptr(av);
}


