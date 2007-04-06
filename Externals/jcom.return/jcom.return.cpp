/* 
 * jcom.return
 * External for Jamoma: return data from our module to the outside world
 * By Tim Place, Copyright © 2006
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "ext.h"				// Max Header
#include "ext_obex.h"			// Max Object Extensions (attributes) Header
#include "commonsyms.h"			// Common symbols used by the Max 4.5 API
#include "jcom.core.h"

enum outlets{
	k_outlet_thru = 0,
	k_outlet_dumpout,
	num_outlets
};


typedef struct _return{							// Data Structure for this object
//	t_object						ob;			// REQUIRED: Our object
	t_jcom_core_subscriber_extended	common;
//	void							*obex;							// REQUIRED: Object Extensions used by Jitter/Attribute stuff
//	t_patcher						*container;
//	void							*hub;							// the jcom.hub object that we subscribe to
	void 							*outlets[num_outlets];			// my outlet array
//	t_symbol						*attr_name;						// ATTRIBUTE: parameter's name
//	t_symbol						*attr_clipmode;					// ATTRIBUTE: how to constrain values to the specified ranges
//	t_symbol						*attr_description;				// ATTRIBUTE: textual description of this parameter
//	float							attr_range[2];					// ATTRIBUTE: low, high
//	long							attr_range_len;					//		length actually given to us by the user
//	long							attr_repetitions;				// ATTRIBUTE: 0 = filter out repetitions (like the change object)
//	t_symbol						*attr_type;						// ATTRIBUTE: what kind of data doers this object define?
//	bool							has_wildcard;					//	does the name contain a '*' character?
//	t_symbol						*module_name;					// the name of the module as reported when we subscribe to jcom.hub	
	t_atom							output[512];					// buffer that gets sent to the hub
	short							output_len;
} t_return;


// Prototypes
void*	return_new(t_symbol *s, long argc, t_atom *argv);
//void	return_free(t_return *x);
//void 	return_release(t_return *x);									// Hub Deletion
void	return_assist(t_return *x, void *b, long msg, long arg, char *dst);
//t_max_err return_setname(t_return *x, void *attr, long argc, t_atom *argv);
void	return_bang(t_return *x);
void	return_int(t_return *x, long n);
void	return_float(t_return *x, double f);
void	return_symbol(t_return *x, t_symbol *msg, short argc, t_atom *argv);
void	return_list(t_return *x, t_symbol *msg, short argc, t_atom *argv);
//void	return_subscribe(t_return *x);
void	return_send_feedback(t_return *x);


// Globals
t_class		*return_class;				// Required: Global pointer for our class


/************************************************************************************/
// Class Definition

int main(void)				// main recieves a copy of the Max function macros table
{
//	long 		attrflags = 0;
	t_class 	*c;
	t_object 	*attr = NULL;
	long		offset;
long obexoffset;	
	// Initialize Globals
	common_symbols_init();

	// Define our class
	c = class_new("jcom.return",(method)return_new, (method)jcom_core_subscriber_common_free, 
		(short)sizeof(t_return), (method)0L, A_GIMME, 0);
	offset = calcoffset(t_return, common);
	obexoffset = offset + calcoffset(t_jcom_core_subscriber_common, obex);
	class_obexoffset_set(c, offset + calcoffset(t_jcom_core_subscriber_common, obex));
	
	// Make methods accessible for our class:
	class_addmethod(c, (method)return_bang,					"bang",			A_CANT, 0L);
	class_addmethod(c, (method)return_int,					"int",			A_DEFLONG,	0L);
	class_addmethod(c, (method)return_float,				"float",		A_DEFFLOAT,	0L);
 	class_addmethod(c, (method)return_list,					"list",			A_GIMME, 0L);
 	class_addmethod(c, (method)return_symbol,				"anything",		A_GIMME, 0L);
//	class_addmethod(c, (method)return_release,				"release",		A_CANT, 0L);	// notification of hub being freed
	class_addmethod(c, (method)return_assist,				"assist",		A_CANT, 0L); 

	//jcom_core_subscriber_classinit_common(c, attr, offset);
	jcom_core_subscriber_classinit_extended(c, attr, offset);
	
/*
	// ATTRIBUTE: clipmode - options are none, low, high, both
	attr = attr_offset_new("clipmode", _sym_symbol, attrflags,
		(method)0, (method)0, calcoffset(t_return, attr_clipmode));
	class_addattr(c, attr);

	// ATTRIBUTE: description - does nothing, but is accessed by jcom.dispatcher for /autodoc generation
	attr = attr_offset_new("description", _sym_symbol, attrflags,
		(method)0, (method)0, calcoffset(t_return, attr_description));
	class_addattr(c, attr);
	
	// ATTRIBUTE: name
	attr = attr_offset_new("name", _sym_symbol, attrflags,
		(method)0, (method)return_setname, calcoffset(t_return, attr_name));
	class_addattr(c, attr);	
	
	// ATTRIBUTE: range <low, high>
	attr = attr_offset_array_new("range", _sym_float, 2, attrflags,
		(method)0, (method)0, calcoffset(t_return, attr_range), calcoffset(t_return, attr_range_len));
	class_addattr(c, attr);

	// ATTRIBUTE: repetitions - 0 means repetitive values are not allowed, 1 means they are
	attr = attr_offset_new("repetitions", _sym_long, attrflags,
		(method)0, (method)0, calcoffset(t_return, attr_repetitions));
	class_addattr(c, attr);

	// ATTRIBUTE: type - options are msg_generic, msg_int, msg_float, msg_symbol, msg_toggle
	attr = attr_offset_new("type", _sym_symbol, attrflags,
		(method)0, (method)0, calcoffset(t_return, attr_type));
	class_addattr(c, attr);
*/		

	// Finalize our class
	class_register(CLASS_BOX, c);
	return_class = c;
	
	jcom_core_init();
	return 0;
}


/************************************************************************************/
// Object Life

void *return_new(t_symbol *s, long argc, t_atom *argv)
{
	long		attrstart = attr_args_offset(argc, argv);
	t_return	*x = (t_return *)object_alloc(return_class);
	t_symbol	*name = _sym_nothing;
//	t_atom		a;

	if(attrstart && argv)
		atom_arg_getsym(&name, 0, attrstart, argv);
	else
		name = symbol_unique();

	if(x){
		x->outlets[k_outlet_dumpout] = outlet_new(x, 0L);
		object_obex_store((void *)x, _sym_dumpout, (t_object *)x->outlets[k_outlet_dumpout]);
		x->outlets[k_outlet_thru] = outlet_new(x, 0L);

		jcom_core_subscriber_new_extended(&x->common, name);
/*
		// set defaults...
		x->common.module_name = _sym_nothing;
		atom_setsym(&a, name);
		object_attr_setvalueof(x, ps_name, 1, &a);
		//jcom_core_subscriber_attribute_common_setname(&x->common, NULL, 1, &a);
		x->common.attr_range[0] = 0.0;
		x->common.attr_range[1] = 1.0;
		x->common.attr_clipmode = ps_none;
		x->common.attr_description = _sym_nothing;
		x->common.attr_type = ps_msg_generic;
		x->common.attr_repetitions = 1;
		x->common.hub = NULL;
*/		
		atom_setsym(&x->output[0], name);
		x->output_len = 1;
		
		attr_args_process(x, argc, argv);			// handle attribute args
		
//		x->common.container = (t_patcher *)gensym("#P")->s_thing;	
//		defer_low(x, (method)return_subscribe, 0, 0, 0);
		defer_low(x, (method)jcom_core_subscriber_subscribe, ps_subscribe_return, 0, 0);
	}
	return (x);										// return the pointer to our new instantiation
}
/*
// deferred function for registering with the jcom.hub object
void return_subscribe(t_return *x)
{
	x->common.hub = jcom_core_subscribe(x, x->common.attr_name, x->common.container, ps_subscribe_return);
	if(x->common.hub)
		x->common.module_name = (t_symbol *)object_method(x->common.hub, ps_module_name_get);	
}
*/
/*
void return_free(t_return *x)
{
	jcom_core_unsubscribe(x->common.hub, x);
}
*/
/*
// Notification that the hub no longer exists
void return_release(t_return *x)
{
	x->common.hub = NULL;
}
*/

/************************************************************************************/
// Methods bound to input/inlets

// Method for Assistance Messages
void return_assist(t_return *x, void *b, long msg, long arg, char *dst)
{
	if(msg==1) 						// Inlet
		strcpy(dst, "data to return via jcom.hub");
	else{							// Outlets
		switch(arg){
			case k_outlet_dumpout:
					strcpy(dst, "dumpout");
					break;
		}
 	}		
}

/*
// ATTRIBUTE: name
t_max_err return_setname(t_return *x, void *attr, long argc, t_atom *argv)
{
	t_symbol *arg = atom_getsym(argv);
	x->attr_name = arg;

	if(arg->s_name[strlen(arg->s_name)-1] == '*')
		x->has_wildcard = true;
	else
		x->has_wildcard = false;

	return MAX_ERR_NONE;
	#pragma unused(attr)
}
*/

// Return values to the hub (so it can return them to the outside world)
void return_send_feedback(t_return *x)
{
	if(x->common.hub != NULL){
		if(x->common.has_wildcard)
			object_method_typed(x->common.hub, ps_return_extended, x->output_len, x->output, NULL);
		else
			object_method_typed(x->common.hub, ps_return, x->output_len, x->output, NULL);
	}
	x->output_len = 1;	// truncate to just the name of this jcom.return object
}


// BANG INPUT - this sends the OSC name with no additional arguments
void return_bang(t_return *x)
{
	x->output_len = 1;
	if(x->common.hub != NULL)
		object_method_typed(x->common.hub, ps_return, x->output_len, x->output, NULL);
	
	outlet_anything(x->outlets[k_outlet_thru], x->common.attr_name, 0, NULL);
}


// INT INPUT
void return_int(t_return *x, long value)
{
	atom_setlong(&x->output[1], value);
	x->output_len = 2;
	return_send_feedback(x);

	outlet_int(x->outlets[k_outlet_thru], value);
}

// FLOAT INPUT
void return_float(t_return *x, double value)
{
	atom_setfloat(&x->output[1], value);
	x->output_len = 2;
	return_send_feedback(x);
	
	outlet_float(x->outlets[k_outlet_thru], value);	
}

/*
#P window setfont "Sans Serif" 9.;
#P window linecount 1;
#P message 162 62 46 196617 45 60 7;
#P message 78 54 63 196617 foo man chu;
#P newex 134 121 32 196617 print;
#P newex 130 84 64 196617 jcom.return;
#P connect 3 0 0 0;
#P connect 2 0 0 0;
#P connect 0 0 1 0;
#P window clipboard copycount 4;
*/

// SYMBOL INPUT
void return_symbol(t_return *x, t_symbol *msg, short argc, t_atom *argv)
{
	short i;

	atom_setsym(&x->output[1], msg);
	x->output_len++;
	
	for(i=1; i<=argc; i++){
		jcom_core_atom_copy(&x->output[i+1], argv++);
		x->output_len++;
	}	
	
	outlet_anything(x->outlets[k_outlet_thru], msg, x->output_len-2, &x->output[2]);
	return_send_feedback(x);
}

// LIST INPUT 
void return_list(t_return *x, t_symbol *msg, short argc, t_atom *argv)
{
	short i;
	
	for(i=1; i<=argc; i++){
		jcom_core_atom_copy(&x->output[i], argv++);
		x->output_len++;
	}
	outlet_anything(x->outlets[k_outlet_thru], msg, x->output_len-1, &x->output[1]);
	return_send_feedback(x);
}
