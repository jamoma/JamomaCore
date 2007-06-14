/* 
 * jcom.hub
 * External for Jamoma: dispatch messages to jcom.param objects (a potential replacement for jcom.hub)
 * By Tim Place, Copyright © 2006
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "jcom.hub.h"
#include <functional>
#define value value_list[0]

// Globals
t_class		*hub_class;				// Required: Global pointer for our class

/** A function object for determining if one t_subscriber object should follow another t_subscriber.
 * This is determined by the alphabetical ordering of the names of the two t_subscribers.
 */
struct _subIsLess : binary_function<t_subscriber*, t_subscriber*, bool> {
	bool operator()(const t_subscriber* p, const t_subscriber* q)
		{	return jcom_core_string_compare(p->name->s_name, q->name->s_name); }
} subscriberIsLess;


/************************************************************************************/
// Main() Function

int main(void)				// main recieves a copy of the Max function macros table
{
	long attrflags = 0;
	t_class *c;
	t_object *attr;
	
	// Initialize Globals
	common_symbols_init();

	// Define our class
	c = class_new("jcom.hub",(method)hub_new, (method)hub_free, (short)sizeof(t_hub), (method)0L, A_GIMME, 0);
	class_obexoffset_set(c, calcoffset(t_hub, obex));
	
	// Make methods accessible for our class:
 	class_addmethod(c, (method)hub_symbol,				"anything",					A_GIMME, 0L);
	class_addmethod(c, (method)hub_subscribe,			"subscribe",				A_CANT, 0L);	// client object subscribing
	class_addmethod(c, (method)hub_unsubscribe,			"unsubscribe",				A_CANT, 0L);	// client object unsubscribing
	class_addmethod(c, (method)hub_receive,				"feedback",					A_GIMME, 0L);	// feedback from parameters and such
	class_addmethod(c, (method)hub_private,				"private", 					A_GIMME, 0L);	// internal communications such as jcom.remote
	class_addmethod(c, (method)hub_return,				"return",					A_GIMME, 0L);	// feedback from jcom.return
	class_addmethod(c, (method)hub_return_extended,		"return_extended",			A_GIMME, 0L);	// feedback from jcom.return
	class_addmethod(c, (method)hub_assist,				"assist",					A_CANT, 0L); 
    class_addmethod(c, (method)object_obex_dumpout,		"dumpout",					A_CANT,	0);
    class_addmethod(c, (method)object_obex_quickref,	"quickref",					A_CANT, 0);

	class_addmethod(c, (method)hub_paramnames_get,		"parameter_names/dump", 	0L);
	class_addmethod(c, (method)hub_paramnames_get,		"/parameter_names/dump", 	0L);
	class_addmethod(c, (method)hub_messagenames_get,	"message_names/dump", 		0L);
	class_addmethod(c, (method)hub_messagenames_get,	"/message_names/dump",		0L);
	class_addmethod(c, (method)hub_returnnames_get,		"return_names/dump", 		0L);
	class_addmethod(c, (method)hub_returnnames_get,		"/return_names/dump",		0L);
	class_addmethod(c, (method)hub_allnames_get,		"*_names/dump",				0L);
	class_addmethod(c, (method)hub_allnames_get,		"/*_names/dump",			0L);
	class_addmethod(c, (method)hub_paramvalues_get,		"parameter_values/dump",	0L);
	class_addmethod(c, (method)hub_paramvalues_get,		"/parameter_values/dump",	0L);
	
	class_addmethod(c, (method)hub_modulename_get,		"module_name/get",			0L);
	class_addmethod(c, (method)hub_modulename_get,		"/module_name/get",			0L);
	class_addmethod(c, (method)core_modulename_get,		"core_module_name/get",			0L);
	class_addmethod(c, (method)hub_algorithmtype_get,	"algorithm_type/get",		A_CANT);
	class_addmethod(c, (method)hub_algorithmtype_get,	"/algorithm_type/get",		A_CANT);
	class_addmethod(c, (method)hub_init,				"init",						0L);
	class_addmethod(c, (method)hub_init,				"/init",					0L);
	class_addmethod(c, (method)hub_autodoc,				"documentation/generate",	A_DEFSYM, 0L);
	class_addmethod(c, (method)hub_autodoc,				"/documentation/generate",	A_DEFSYM, 0L);
	class_addmethod(c, (method)hub_module_view_alg,		"module/view_internals",	0L);
	class_addmethod(c, (method)hub_module_view_alg,		"/module/view_internals",	0L);
	class_addmethod(c, (method)hub_preset_read,			"preset/read",				A_DEFSYM, 0L);
	class_addmethod(c, (method)hub_preset_read,			"/preset/read",				A_DEFSYM, 0L);
	class_addmethod(c, (method)hub_preset_write,		"preset/write",				A_DEFSYM, 0L);
	class_addmethod(c, (method)hub_preset_write,		"/preset/write",			A_DEFSYM, 0L);
	class_addmethod(c, (method)hub_preset_recall,		"preset/recall",			A_GIMME, 0L);	// number or name
	class_addmethod(c, (method)hub_preset_recall,		"/preset/recall",			A_GIMME, 0L);	// number or name
	class_addmethod(c, (method)hub_preset_copy,		"preset/copy",			A_GIMME, 0L);	// number or name
	class_addmethod(c, (method)hub_preset_copy,		"/preset/copy",			A_GIMME, 0L);	// number or name
	class_addmethod(c, (method)hub_preset_store,		"preset/store",				A_GIMME, 0L);	// number & optional name
	class_addmethod(c, (method)hub_preset_store,		"/preset/store",			A_GIMME, 0L);	// number & optional name
	class_addmethod(c, (method)hub_preset_default,		"preset/default",			0L);
	class_addmethod(c, (method)hub_preset_default,		"/preset/default",			0L);
	class_addmethod(c, (method)hub_preset_default,		"presets/clear",			0L);
	class_addmethod(c, (method)hub_preset_default,		"/presets/clear",			0L);
	class_addmethod(c, (method)hub_presets_dump,		"preset/post",				0L);
	class_addmethod(c, (method)hub_presets_dump,		"/preset/post",				0L);
	class_addmethod(c, (method)hub_ui_freeze,			"ui/freeze", 				A_LONG, 0L);
	class_addmethod(c, (method)hub_ui_freeze,			"/ui/freeze", 				A_LONG, 0L);
	class_addmethod(c, (method)hub_ui_refresh,			"ui/refresh",				0L);
	class_addmethod(c, (method)hub_ui_refresh,			"/ui/refresh",				0L);

	// ATTRIBUTE: name
	attr = attr_offset_new("name", _sym_symbol, attrflags,
		(method)0, (method)0, calcoffset(t_hub, attr_name));
	class_addattr(c, attr);
	
	// ATTRIBUTE: module_type	[audio, video, control, etc.]
	attr = attr_offset_new("module_type", _sym_symbol, attrflags,
		(method)0, (method)0, calcoffset(t_hub, attr_type));
	class_addattr(c, attr);

	// ATTRIBUTE: size [1U, 2U, 3U 1U-half, etc.]
	attr = attr_offset_new("size", _sym_symbol, attrflags,
		(method)0, (method)0, calcoffset(t_hub, attr_size));
	class_addattr(c, attr);

	// ATTRIBUTE: skin ['default', etc.]
	attr = attr_offset_new("skin", _sym_symbol, attrflags,
		(method)0, (method)0, calcoffset(t_hub, attr_skin));
	class_addattr(c, attr);
	
	// ATTRIBUTE: algorithm_type [poly, blue, none, control, jitter, video, default, etc.]
	attr = attr_offset_new("algorithm_type", _sym_symbol, attrflags,
		(method)0, (method)0, calcoffset(t_hub, attr_algorithm_type));
	class_addattr(c, attr);
	
	// ATTRIBUTE: description
	attr = attr_offset_new("description", _sym_symbol, attrflags,
		(method)0, (method)0, calcoffset(t_hub, attr_description));
	class_addattr(c, attr);
			
	// ATTRIBUTE: inspector
	attr = attr_offset_new("inspector", _sym_long, attrflags,
		(method)0, (method)0, calcoffset(t_hub, attr_inspector));
	class_addattr(c, attr);

	// Finalize our class
	class_register(CLASS_BOX, c);
	hub_class = c;
	
	jcom_core_init();
	return 0;
}


/************************************************************************************/
// Object Life

void *hub_new(t_symbol *s, long argc, t_atom *argv)
{
	short			i;
	long			attrstart = attr_args_offset(argc, argv);
	t_hub			*x = (t_hub *)object_alloc(hub_class);
	t_symbol		*name = _sym_nothing;
	t_atom			a;
	
	if(attrstart && argv)
		atom_arg_getsym(&name, 0, attrstart, argv);
	else
		name = symbol_unique();

	if(x){
		for(i=k_num_outlets; i > 0; i--)
			x->outlets[i-1] = outlet_new(x, 0);
		object_obex_store((void *)x, _sym_dumpout, (t_object *)x->outlets[k_outlet_dumpout]);
		x->init_qelem = qelem_new(x, (method)hub_qfn_init);

		x->attr_name = name;
		x->osc_name = _sym_nothing;
		x->attr_type = ps_control;
		x->attr_description = _sym_nothing;
		x->attr_algorithm_type = ps_default;		// poly for audio, jitter for video, control for control
		x->attr_skin = ps_default;					// default tells the gui constructor js to choose for us
		x->attr_size = ps_1U-half;
		x->attr_inspector = 0;
		x->using_wildcard = false;
		x->in_object = NULL;						// module MUST have a jcom.in object
		x->out_object = NULL;						// the jcom.out object is optional
		x->gui_object = NULL;						// jcom.remote in the gui
		x->num_parameters = 0;
		for(i=0; i<16; i++)
			x->meter_object[i] = NULL;
		x->preview_object = NULL;
		
		x->preset = new presetList;							// begin with no presets
		x->subscriber = new subscriberList;						// ... and no subscribers
		
		attr_args_process(x, argc, argv);			// handle attribute args
		
		object_obex_lookup(x, gensym("#P"), (t_object **)&x->container);
		if(!x->container)
			x->container = (t_patcher *)gensym("#P")->s_thing;
		defer_low(x, (method)hub_examine_context, 0, 0, 0);
		
		x->jcom_send = NULL;
		x->jcom_receive = NULL;
		x->jcom_send_broadcast = NULL;
		atom_setsym(&a, ps_jcom_remote_fromModule);
		if(!jcom_core_loadextern(ps_jcom_send, 1, &a, &x->jcom_send))
			error("jcom.hub: loading jcom.send extern failed!");
		atom_setsym(&a, ps_jcom_remote_toModule);
		if(!jcom_core_loadextern(ps_jcom_receive, 1, &a, &x->jcom_receive))
			error("jcom.hub: loading jcom.receive extern failed!");
		else
			object_method(x->jcom_receive, ps_setcallback, &hub_receive_callback, x);
			
		atom_setsym(&a, ps_jcom_broadcast_fromHub);
		if(!jcom_core_loadextern(ps_jcom_send, 1, &a, &x->jcom_send_broadcast))
			error("jcom.hub: loading jcom.send (broadcast) extern failed!");
	}
	return (x);										// return the pointer to our new instantiation
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



void hub_examine_context(t_hub *x)
{
	t_patcher	*p = x->container;
	t_box		*box = p->p_box;
	t_symbol	*s = NULL;
	t_atombuf	*atoms = NULL;
	long		size = 0;
	t_atom		*argv = NULL;
	char		name[256];
	char		*nametest;
	unsigned short		i;

	if(p->p_vnewobj != NULL){							// THIS SHOULD INDICATE WE ARE NOT AT THE TOP LEVEL (i.e. not editing)						//	go up one level to look at how the module is instantiated
		box = (t_box *)p->p_vnewobj;
		atoms = (t_atombuf *)box->b_binbuf;
		if(!atoms){
			if(ob_sym(box) == gensym("bpatcher")){
				t_bpatcher *bp = (t_bpatcher *)box;
				size = bp->b_argc;
				argv = bp->b_argv;
				x->osc_name = atom_getsym(argv);
				strcpy(name, x->osc_name->s_name);
			}
		} 
		else{
			size = atoms->a_argc - 1;
			argv = atoms->a_argv + 1;		
			x->osc_name = atom_getsym(argv);
			strcpy(name, x->osc_name->s_name);
		}
		
		// if no arg is present, then try to use the scripting name of the object
		if(x->osc_name == _sym_nothing){
			p = box->b_patcher;	
			if(patcher_boxname(p, box, &s))
				strcpy(name, s->s_name);
			else{	
				// try to invent something intelligent for a name
				post("%s: this module was not given an osc name as an argument!  making up something that will hopefully work.", x->attr_name->s_name);				
				strcpy(name, "/");
				strcat(name, x->attr_name->s_name);
			}
		}
		// the name must begin with a /
		if(name[0] != '/'){
			char newname[256];
			
			strcpy(newname, "/");
			strcat(newname, name);
			strcpy(name, newname);
			error("%s: name arguments for modules must begin with a slash!  inserting one automatically", x->attr_name->s_name);
		}
		
		// search for illegal characters as specified by the OSC standard and replace them
		for(i=0; i<strlen(name); i++){
			if(name[i] == '[')
				name[i] = '.';
			else if(name[i] == ']')
				name[i] = 0;
		}
		
		// if arg contains a slash then we must complain
		nametest = name + 1;
		if(strchr(nametest, '/')){
			error("%s: OSC NAME GIVEN TO MODULES MAY NOT CONTAIN A SLASH OTHER THAN THE LEADING SLASH!", x->attr_name->s_name);
		}

		x->osc_name = gensym(name);
	}
	else
		x->osc_name = gensym("/editing_this_module");
		
	// Finally, we now tell subscribers (parameters, etc.) to subscribe
	if(x->jcom_send_broadcast){
		if(ps_jcom_broadcast_fromHub->s_thing)
			object_method_typed(x->jcom_send_broadcast, gensym("hub.changed"), 0, NULL, NULL);
	}
}

void hub_free(t_hub *x)
{
	subscriberIterator i;
	subscriberList *subscriber = x->subscriber;

	critical_enter(0);
	for(i = subscriber->begin(); i != subscriber->end(); ++i) {
		// notify the subscriber that the hub is going away
		object_method((*i)->object, ps_release);
		sysmem_freeptr(*i);
	}
	critical_exit(0);	

 	hub_presets_clear(x);
	qelem_free(x->init_qelem);
	if(x->jcom_send)
		object_free(x->jcom_send);
	if(x->jcom_receive)
		object_free(x->jcom_receive);
	if(x->jcom_send_broadcast)
		object_free(x->jcom_send_broadcast);
	x->subscriber->clear();
	delete x->subscriber;
	delete x->preset;
}


/************************************************************************************/
// Communication with jcom.param objects

// This method is called from clients such as jcom.parameter to register it with this hub
t_symbol* hub_subscribe(t_hub *x, t_symbol *name, void *subscriber_object, t_symbol *type)
{
	t_subscriber	*new_subscriber;
	
	if(subscriber_object == NULL){
		error("Null object cannot subscribe to jcom.hub");
		return _sym_nothing;
	}
	
	// Create the new item
	new_subscriber = (t_subscriber *)sysmem_newptr(sizeof(t_subscriber));
	new_subscriber->object = subscriber_object;
	new_subscriber->name = name;
	new_subscriber->type = type;

	critical_enter(0);
	// Merge new subscriber into subscriber list sorted alphabetically
	x->subscriber->merge(new_subscriber, subscriberIsLess);

	// special cases and other caching
	if(new_subscriber->type == ps_subscribe_in){
		x->in_object = subscriber_object;
		if(x->out_object){		// set up pointers between jcom.in and jcom.out
			object_method(x->in_object, ps_link_out, x->out_object);
			object_method(x->out_object, ps_link_in, x->in_object);
		}
	}
	if(new_subscriber->type == ps_subscribe_out){
		x->out_object = subscriber_object;
		if(x->in_object){		// set up pointers between jcom.in and jcom.out
			object_method(x->in_object, ps_link_out, x->out_object);
			object_method(x->out_object, ps_link_in, x->in_object);
		}
		for(int i=0; i<16; i++)
			object_method(x->out_object, ps_register_meter, i, x->meter_object[i]);
		object_method(x->out_object, ps_register_preview, x->preview_object);
	}

	if(new_subscriber->type == ps_subscribe_remote){
		int meternum = 0;
		sscanf( new_subscriber->name->s_name, "__meter__%i", &meternum);
		if(meternum > 0){
			x->meter_object[meternum-1] = new_subscriber->object;
			if(x->out_object)
				object_method(x->out_object, ps_register_meter, meternum-1, x->meter_object[meternum-1]);
		}
		else if(new_subscriber->name == ps___preview__){
			x->preview_object = new_subscriber->object;
			if(x->out_object)
				object_method(x->out_object, ps_register_preview, x->preview_object);				
		}
	}
	
	if(new_subscriber->type == ps_subscribe_parameter)
		x->num_parameters++;
	if(new_subscriber->name == ps__gui__)
		x->gui_object = subscriber_object;
	critical_exit(0);
		
	qelem_set(x->init_qelem);			// flag the queue for initialization
	return x->attr_name;				// return the module name to the parameter
}


void hub_unsubscribe(t_hub *x, void *subscriber_object)
{
	subscriberList	*subscribers = x->subscriber;
	
	// Search the linked list for this object and remove it
	t_subscriber* t;
	critical_enter(0);
	for(subscriberIterator item = subscribers->begin(); item != subscribers->end(); ++item) {
		t = *item;
		
		if(t->object == subscriber_object) {
			if(t->type == ps_subscribe_parameter)
				x->num_parameters--;
			else if(t->type == ps_subscribe_in){
				if(x->out_object)
					object_method(x->out_object, ps_unlink_out);
			}
			else if(t->type == ps_subscribe_out){
				if(x->in_object)
					object_method(x->in_object, ps_unlink_in);
			}
			else if(t->type == ps_subscribe_remote){
				char temp[32];
				for(short i=0; i<16; i++) {
					snprintf(temp, 32, "__meter__%i", i);
					if(t->name == gensym(temp)) {
						if(x->out_object)
							object_method(x->out_object, gensym("remove_meters"));
					}
				}
			}
			item = subscribers->erase(item);
			sysmem_freeptr(t);
			/** XXX why does this need to be here?  It seems Microsoft's compiler is generating code 
			 * that will preincrement (++) the item iterator in the for loop despite the fact that 
			 * the for loops if condition has been met and following conditional statement shouldn't
			 * execute.  Either that or something awkward about the the behavior of their STL 
			 * implementation */
			if(item == subscribers->end())
				break;

		}
	}

	critical_exit(0);
}


// Receive parameter values from jcom.parameter
void hub_receive(t_hub *x, t_symbol *name, long argc, t_atom *argv)
{
	char		namestring[256];
	t_symbol	*osc;
	
	strcpy(namestring, "/");						// perhaps we could optimize this operation
//	if(argv->a_type == A_SYM)
	strcat(namestring, argv->a_w.w_sym->s_name);	//	by creating a table when the param is bound
	//strcat(namestring, name->s_name);
	osc = gensym(namestring);						//	then we could look-up the symbol instead of using gensym()

	if(x->in_object != NULL)
		object_method_typed(x->in_object, ps_algorithm_message, argc, argv, NULL);	// send to jcom.in
	if(x->out_object != NULL)
		object_method_typed(x->out_object, ps_algorithm_message, argc, argv, NULL);	// send to jcom.out

	hub_outlet_return(x, osc, argc-1, argv+1);
}


// Receive private messages from jcom.remote
void hub_private(t_hub *x, t_symbol *name, long argc, t_atom *argv)
{
	t_symbol		*private_id = _sym_nothing;	
	t_symbol		*private_message = _sym_nothing;
	t_symbol		*userpath = _sym_nothing;
	long			n = 0;
	
	private_id = atom_getsym(argv);
	argc--;
	argv++;
	private_message = atom_getsym(argv);
	argc--;
	argv++;
	if (private_id == ps__gui__)
	{
		if (private_message == ps_slash_preset_slash_default)			// 	/preset/default
			hub_preset_default(x);
		else if (private_message == ps_slash_preset_slash_load)			// 	/preset/load
			hub_preset_read(x, userpath);
		else if (private_message == ps_slash_preset_slash_recall)		// 	/preset/load
			hub_preset_recall(x, _sym_list, 1, argv);
		else if (private_message == ps_slash_preset_slash_copy)		// 	/preset/load
			hub_preset_copy(x, _sym_list, 1, argv);
		else if (private_message == ps_slash_preset_slash_write)			//	/preset/save
			hub_preset_write(x, userpath);
		else if (private_message == ps_slash_module_view_internals)		//	/module/view_internals
			hub_module_view_alg(x);
		else if (private_message == ps_slash_ui_slash_freeze) {			// 	/ui/freeze
			if (argc>0)
				n = atom_getlong(argv);
			hub_ui_freeze(x, n);
		}
		else if ( private_message == ps_slash_ui_slash_refresh )		//	/ui/refresh
			hub_ui_refresh(x);
		else
			hub_symbol(x, private_message, argc, argv);
	}
}


// Receive messages from jcom.return - don't send messages back to the algorithm
void hub_return(t_hub *x, t_symbol *name, long argc, t_atom *argv)
{
	char		namestring[256];
	t_symbol	*osc;
	
	strcpy(namestring, "/");						// perhaps we could optimize this operation
	strcat(namestring, argv->a_w.w_sym->s_name);	//	by creating a table when the param is bound
	osc = gensym(namestring);						//	then we could look-up the symbol instead of using gensym()
	hub_outlet_return(x, osc, argc-1, argv+1);
}


// A version of the above that performs wilcard substitution
void hub_return_extended(t_hub *x, t_symbol *name, long argc, t_atom *argv)
{
	char		namestring[256];
	t_symbol	*osc;
	
	strcpy(namestring, "/");						// perhaps we could optimize this operation
	strcat(namestring, argv->a_w.w_sym->s_name);	//	by creating a table when the param is bound
	if(namestring[strlen(namestring)-1] == '*'){
		namestring[strlen(namestring)-1] = 0;
		if(argv[1].a_type == A_LONG)
			sprintf(namestring, "%s%ld", namestring, argv[1].a_w.w_long);
		else if(argv[1].a_type == A_FLOAT)
			sprintf(namestring, "%s%f", namestring, argv[1].a_w.w_float);
		else // assuming symbol
			strcat(namestring, atom_getsym(argv+1)->s_name);
		osc = gensym(namestring);						//	then we could look-up the symbol instead of using gensym()
		hub_outlet_return(x, osc, argc-2, argv+2);		
	}
	else{
		osc = gensym(namestring);						//	then we could look-up the symbol instead of using gensym()
		hub_outlet_return(x, osc, argc-1, argv+1);
	}
}


// All messages being returned from the module should be funneled through this function!
void hub_outlet_return(t_hub *x, t_symbol *msg, long argc, t_atom *argv)
{
	outlet_anything(x->outlets[k_outlet_return], msg, argc, argv);

	if(x->osc_name == NULL)					// it's possible for this method to be called before osc_name is valid
		return;								//	...
	if(!ps_jcom_remote_fromModule->s_thing)	// we check this so jcom.send doesn't give us errors
		return;								//	because there may be no matching jcom.receives, and that's okay...
	if(x->jcom_send){
		char		mess[256];
		t_symbol	*osc;
		
		strcpy(mess, x->osc_name->s_name);
		strcat(mess, msg->s_name);
		osc = gensym(mess);
		object_method_typed(x->jcom_send, osc, argc, argv, NULL);
	}
}


t_symbol *hub_modulename_get(t_hub *x)
{
	t_atom	a;

	if(x->osc_name != NULL){
		if(x->osc_name != _sym_nothing){
			atom_setsym(&a, x->osc_name);	
			hub_outlet_return(x, gensym("/module_name"), 1, &a);
		}
	}
	return x->attr_name;
}

t_symbol* core_modulename_get(t_hub *x)
{
	return x->attr_name;
}

t_symbol *hub_algorithmtype_get(t_hub *x)
{
	return x->attr_algorithm_type;
}


void hub_init(t_hub *x)
{
	subscriberList	*subscriber = x->subscriber;
	subscriberIterator i;
		
	// Search the linked list for jcom.init objects and 'bang' them
	critical_enter(0);
	for(i = subscriber->begin(); i != subscriber->end(); ++i) {
		if((*i)->type == ps_subscribe_init)
			object_method((*i)->object, ps_go);
	}
	
	critical_exit(0);
	defer_low(x, (method)hub_preset_default, 0, 0, 0L);
}


// send a local jcom.init message for the module
void hub_qfn_init(t_hub *x)
{
	hub_gui_build(x);							// immediately set up the GUI
	defer_low(x, (method)hub_init, 0, 0, 0);	// defer the rest of the initialization
}


// send info to gui constructor
void hub_gui_build(t_hub *x)
{
	subscriberList 	*subscriber = x->subscriber;

	if(x->gui_object != NULL){
		t_atom a[3];
		
		atom_setsym(&a[0], ps_ATTRIBUTES);
		if(x->attr_size){
			atom_setsym(&a[1], ps_size);
			atom_setsym(&a[2], x->attr_size);
			object_method_typed(x->gui_object, ps_dispatched, 3, a, NULL);
		}
		if(x->attr_inspector){
			atom_setsym(&a[1], ps_inspector);
			atom_setlong(&a[2], x->attr_inspector);
			object_method_typed(x->gui_object, ps_dispatched, 3, a, NULL);
		}
		if(x->attr_algorithm_type){
			atom_setsym(&a[1], ps_algorithm_type);
			atom_setsym(&a[2], x->attr_algorithm_type);
			object_method_typed(x->gui_object, ps_dispatched, 3, a, NULL);
		}
		if(x->attr_type){
			atom_setsym(&a[1], ps_module_type);
			atom_setsym(&a[2], x->attr_type);
			object_method_typed(x->gui_object, ps_dispatched, 3, a, NULL);
		}
		if(x->attr_skin){
			atom_setsym(&a[1], ps_skin);
			atom_setsym(&a[2], x->attr_skin);
			object_method_typed(x->gui_object, ps_dispatched, 3, a, NULL);
		}
		if(x->osc_name){
			atom_setsym(&a[1], ps_MODULE_TITLE);
			atom_setsym(&a[2], x->osc_name);
			object_method_typed(x->gui_object, ps_dispatched, 3, a, NULL);
		}
		if(x->attr_name){
			atom_setsym(&a[0], ps_MODULE_NAME);
			atom_setsym(&a[1], x->attr_name);
			object_method_typed(x->gui_object, ps_dispatched, 2, a, NULL);			
		}
		
		subscriberIterator i;
		t_subscriber* t;
		critical_enter(0);
		for(i = subscriber->begin(); i != subscriber->end(); ++i) {
			t = *i;
			if((t->type == ps_subscribe_message) || t->type == ps_subscribe_parameter){
				atom_setsym(&a[0], ps_PARAMETER);
				atom_setsym(&a[1], t->name);
				object_method_typed(x->gui_object, ps_dispatched, 2, a, NULL);			
			}
		}
		critical_exit(0);

		atom_setsym(&a[0], ps_BUILD);		
		object_method_typed(x->gui_object, ps_dispatched, 1, a, NULL);
	}
}


/************************************************************************************/
// Methods bound to input/inlets

// Method for Assistance Messages
void hub_assist(t_hub *x, void *b, long msg, long arg, char *dst)
{
	if(msg==1) 						// Inlet
		strcpy(dst, "input");
	else{							// Outlets
		switch(arg){
			case k_outlet_return:
					strcpy(dst, "return: connect to return outlet");
					break;
			case k_outlet_dumpout:
					strcpy(dst, "psto: connect to dumpout");
					break;
		}
 	}		
}


// Return a list of parameters and message for this module
void hub_paramnames_get(t_hub *x)
{
	subscriberList	*subscriber = x->subscriber;	// head of the linked list
	t_atom			a;
	
	hub_outlet_return(x, ps_parameter_names_start, 0, NULL);
	
	subscriberIterator i;
	t_subscriber* t;
	critical_enter(0);
	for(i = subscriber->begin(); i != subscriber->end(); ++i) {
		t = *i;
		atom_setsym(&a, t->name);
		if(t->type == ps_subscribe_parameter)
			hub_outlet_return(x, ps_parameter_name, 1, &a);
	}
	critical_exit(0);
	hub_outlet_return(x, ps_parameter_names_end, 0, NULL);
}


// Return a list of parameters and message for this module
void hub_paramvalues_get(t_hub *x)
{
	subscriberList	*subscriber = x->subscriber;	// head of the linked list
	t_atom			*av;
	long			ac;
	char			osc[512];
	
	hub_outlet_return(x, ps_parameter_values_start, 0, NULL);
	
	subscriberIterator i;
	t_subscriber* t;
	critical_enter(0);
	for(i = subscriber->begin(); i != subscriber->end(); ++i) {
		t = *i;
		if(t->type == ps_subscribe_parameter){
			ac = NULL; av = NULL;										// init
			object_attr_getvalueof(t->object, ps_value, &ac, &av);		// get	
			sprintf(osc, "%s/%s", ps_parameter_value->s_name, t->name->s_name);
			hub_outlet_return(x, gensym(osc), ac, av);
		}
	}
		
	critical_exit(0);
	hub_outlet_return(x, ps_parameter_values_end, 0, NULL);
}


void hub_messagenames_get(t_hub *x)
{
	subscriberList	*subscriber = x->subscriber;	// linked list of subscribers
	t_atom			a;
	
	hub_outlet_return(x, ps_message_names_start, 0, NULL);
	
	subscriberIterator i;
	t_subscriber* t;
	critical_enter(0);
	for(i = subscriber->begin(); i != subscriber->end(); ++i) {
		t = *i;
		atom_setsym(&a, t->name);
		if(t->type == ps_subscribe_message)
			hub_outlet_return(x, ps_message_name, 1, &a);
	}
	critical_exit(0);
	hub_outlet_return(x, ps_message_names_end, 0, NULL);
}


void hub_returnnames_get(t_hub *x)
{
	subscriberList	*subscriber = x->subscriber;	// head of the linked list
	t_atom			a;
	
	hub_outlet_return(x, ps_return_names_start, 0, NULL);
	
	subscriberIterator i;
	t_subscriber* t;
	critical_enter(0);
	for(i = subscriber->begin(); i != subscriber->end(); ++i) {
		t = *i;
		atom_setsym(&a, t->name);
		if(t->type == ps_subscribe_return)
			hub_outlet_return(x, ps_message_return, 1, &a);
	}
	critical_exit(0);
	hub_outlet_return(x, ps_return_names_end, 0, NULL);
}


void hub_allnames_get(t_hub *x)
{
	hub_paramnames_get(x);
	hub_messagenames_get(x);
	hub_returnnames_get(x);
}


// SYMBOL INPUT
void hub_symbol(t_hub *x, t_symbol *msg, long argc, t_atom *argv)
{
	bool			found = false;
	subscriberList	*subscriber = x->subscriber;
	char			input[MAX_STRING_LEN];	// our input string
	char			*input2 = input;		// pointer to our input string
	char			*split;
	t_symbol		*osc = NULL;
	t_symbol		*name = msg;			// default to the name being the message

	strcpy(input, msg->s_name);
	if(*input2 == '/')				// leading slash means it's OSC...
		input2++;					// remove the the leading slash

	split = strchr(input2, ':');	// remove (and store) the param name
	if(split != NULL){
		*split = NULL;
		split++;					// now input2 = param name; split = a message for the parameter object		
		osc = gensym(split);
	}
	name = gensym(input2);

	subscriberIterator i;
	t_subscriber* t;
	critical_enter(0);
	if(name == ps_star){			// wildcard
		t_symbol* type;
		for(i = subscriber->begin(); i != subscriber->end(); ++i) {
			t = *i; type = t->type;
			if(type == ps_subscribe_parameter 
			  || type == ps_subscribe_message 
			  || type == ps_subscribe_return){
				if(osc == NULL){
					object_method_typed(t->object, ps_dispatched, argc, argv, NULL);
				}
				else{
					object_method_typed(t->object, osc, argc, argv, NULL);
				}
			}
		}
	}
	else{
		
		// search the linked list of params to find the right one
		for(i = subscriber->begin(); (i != subscriber->end()) && (found == false); ++i) {
			t = *i; 
			if(t->name == name) {
				found = true;
				break;
			}
		}

		// dispatch to the correct jcom.param object
		if(found == true){
			if(osc == NULL){
				object_method_typed(t->object, ps_dispatched, argc, argv, NULL);
			}
			else
				object_method_typed(t->object, osc, argc, argv, NULL);
		}
		else{
			// if we got here through the use a remote message to modules named by a wildcard
			// then we need don't post annoying errors to the Max window
			if(!x->using_wildcard)
				error("jcom.hub cannot find a parameter by that name (%s)", name->s_name);
		}
	}
	critical_exit(0);
}


void hub_module_view_alg(t_hub *x)
{
	if(x->in_object != NULL)
		object_method_typed(x->in_object, ps_open, 0, 0L, NULL);					// send "open" to jcom.in
	hub_outlet_return(x, ps_slash_module_view_internals, 0, 0L);					// return from jcom.hub left outlet
}


// FREEZE UI for all parameters
void hub_ui_freeze(t_hub *x, long val)
{
	subscriberList *subscriber = x->subscriber;	// head of the linked list
	t_atom a;

	atom_setlong(&a, val);	
	
	// Update stored parameter value for module/freeze
	hub_symbol(x, ps_ui_slash_freeze, 1, &a);
	
	// Change freeze status for all messages and parameters	
	subscriberIterator i;
	t_subscriber* t;
	critical_enter(0);
	for(i = subscriber->begin(); i != subscriber->end(); ++i) {
		t = *i;
		if(t->type == ps_subscribe_parameter)
			object_method_typed(t->object, ps_ui_slash_freeze, 1, &a, NULL);
	}
	critical_exit(0);
}


// REFRESH UI for all parameters
void hub_ui_refresh(t_hub *x)
{
	subscriberList *subscriber = x->subscriber;	// head of the linked list
	
	subscriberIterator i;
	t_subscriber* t;
	critical_enter(0);
	for(i = subscriber->begin(); i != subscriber->end(); ++i) {
		t = *i;
		if(t->type == ps_subscribe_parameter)
			object_method_typed(t->object, ps_ui_slash_refresh, 0, 0L, NULL);
	}
	critical_exit(0);
}


// receive messages from our internal jcom.receive external
void hub_receive_callback(void *z, t_symbol *msg, long argc, t_atom *argv)
{
	t_hub		*x = (t_hub *)z;
	char		mess[256];
	char		*in = &mess[0];
	char		*split;
	t_symbol	*osc;
	
	strcpy(mess, msg->s_name);
	if(*in == '/')					// remove leading slash...
		in++;
		
	split = strchr(in, '/');		// get the OSC message for the module
	if(split == NULL){
		error("jcom.hub (%s module) received message from jcom.send with problematic or missing OSC namespace (%s)", x->attr_name->s_name, mess);
		return;
	}

	*split = 0;						
	
	if(*in == '*'){										// wildcard
		// when parsing wildcards, we need to check and see if there is actually a valid subscriber
		// before blindly sending the message... 
		split++;
		osc = gensym(split);
		x->using_wildcard = true;
		object_method_typed(x, osc, argc, argv, NULL);		// call the method on this hub object
		x->using_wildcard = false;
	}
	else if(!strcmp(mess, x->osc_name->s_name)){		// check if we are the correct module...
		split++;
		osc = gensym(split);
		object_method_typed(x, osc, argc, argv, NULL);		// call the method on this hub object
	}
}
