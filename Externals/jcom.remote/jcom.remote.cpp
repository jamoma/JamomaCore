/* 
 * jcom.remote
 * External for Jamoma: private means of communication with a jcom.hub
 * By Tim Place, Copyright © 2006
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "ext.h"					// Max Header
#include "commonsyms.h"				// Common symbols used by the Max 4.5 API
#include "ext_obex.h"				// Max Object Extensions (attributes) Header
#include "jcom.core.h"


// Data Structure for this object
typedef struct _remote{
	t_jcom_core_subscriber_common	common;
	void							*outlet;
	void							*dumpout;	
	t_atom							output[512];	// buffer that gets sent to the hub
	short							output_len;
} t_remote;


// Prototypes for methods
void *remote_new(t_symbol *s, short argc, t_atom *argv);			// New Object Creation Method
void remote_assist(t_remote *x, void *b, long m, long a, char *s);		// Assistance Method
void remote_dispatched(t_remote *x, t_symbol *msg, short argc, t_atom *argv);
void remote_jit_matrix(t_remote *x, t_symbol *msg, short argc, t_atom *argv);
void remote_send_feedback(t_remote *x);
void remote_int(t_remote *x, long value);
void remote_float(t_remote *x, double value);
void remote_symbol(t_remote *x, t_symbol *msg, short argc, t_atom *argv);
void remote_list(t_remote *x, t_symbol *msg, short argc, t_atom *argv);


// Globals
t_class		*remote_class;					// Required. Global pointing to this class


/************************************************************************************/
// Main() Function

int main(void)				// main recieves a copy of the Max function macros table
{
	t_class 	*c;
	t_object 	*attr;
	long		offset;
	
	common_symbols_init();

	// Define our class
	c = class_new("jcom.remote",(method)remote_new, (method)jcom_core_subscriber_common_free, 
		(short)sizeof(t_remote), (method)0L, A_GIMME, 0);
	offset = calcoffset(t_remote, common);
	class_obexoffset_set(c, offset + calcoffset(t_jcom_core_subscriber_common, obex));

	// Make methods accessible for our class: 
	class_addmethod(c, (method)remote_dispatched,		"dispatched",	A_GIMME, 0L);
	class_addmethod(c, (method)remote_jit_matrix,		"jit_matrix",	A_GIMME, 0L);
	class_addmethod(c, (method)remote_int,				"int",			A_DEFLONG,	0L);
	class_addmethod(c, (method)remote_float,			"float",		A_DEFFLOAT,	0L);
 	class_addmethod(c, (method)remote_list,				"list",			A_GIMME, 0L);
 	class_addmethod(c, (method)remote_symbol,			"anything",		A_GIMME, 0L);
    class_addmethod(c, (method)remote_assist,			"assist",		A_CANT, 0L);

	jcom_core_subscriber_classinit_common(c, attr, offset);	
		
	// Finalize our class
	class_register(CLASS_BOX, c);
	remote_class = c;

	jcom_core_init();

	return 0;
}


/************************************************************************************/
// Object Life

// Create
void *remote_new(t_symbol *s, short argc, t_atom *argv)
{
	long 		attrstart = attr_args_offset(argc, argv);		// support normal arguments
	t_remote 	*x = (t_remote *)object_alloc(remote_class);
	t_symbol	*name = _sym_nothing;	
	
	if(attrstart && argv)
		atom_arg_getsym(&name, 0, attrstart, argv);
	else
		name = symbol_unique();
	
	if(x){
		x->dumpout = outlet_new(x, NULL);
		x->outlet = outlet_new(x, NULL);
		object_obex_store((void *)x, ps_dumpout, (object *)x->dumpout);		// setup the dumpout

		atom_setsym(&x->output[0], name);
		x->output_len = 1;

		jcom_core_subscriber_new_common(&x->common, name);
		attr_args_process(x, argc, argv);					// handle attribute args				
		defer_low(x, (method)jcom_core_subscriber_subscribe, ps_subscribe_remote, 0, 0);
	}
	return (x);												// Return the pointer
}


/************************************************************************************/
// Methods bound to input/inlets

// Method for Assistance Messages
void remote_assist(t_remote *x, void *b, long msg, long arg, char *dst)
{
	if(msg==1) 	// Inlets
		strcpy(dst, "private messages to send to the hub");
	else if(msg==2){ // Outlets
		if(arg == 0) strcpy(dst, "private messages from the hub");
		else strcpy(dst, "dumpout");
	}
}


// messages received from jcom.hub
void remote_dispatched(t_remote *x, t_symbol *msg, short argc, t_atom *argv)
{
	outlet_anything(x->outlet, atom_getsym(argv), argc-1, argv+1);
}


// messages received from jcom.out
void remote_jit_matrix(t_remote *x, t_symbol *msg, short argc, t_atom *argv)
{
	outlet_anything(x->outlet, msg, argc, argv);
}


// remote values to the hub
void remote_send_private(t_remote *x)
{
	object_method_typed(x->common.hub, ps_private, x->output_len, x->output, NULL);
	x->output_len = 1;	// truncate to just the name of this jcom.remote object
}


// INT INPUT
void remote_int(t_remote *x, long value)
{
	atom_setlong(&x->output[1], value);
	x->output_len = 2;
	remote_send_private(x);
}


// FLOAT INPUT
void remote_float(t_remote *x, double value)
{
	atom_setfloat(&x->output[1], value);
	x->output_len = 2;
	remote_send_private(x);
}


// SYMBOL INPUT
void remote_symbol(t_remote *x, t_symbol *msg, short argc, t_atom *argv)
{
	short i;

	atom_setsym(&x->output[1], msg);
	x->output_len++;
	
	for(i=1; i<=argc; i++){
		jcom_core_atom_copy(&x->output[i+1], argv++);
		x->output_len++;
	}	
	
	remote_send_private(x);
}


// LIST INPUT 
void remote_list(t_remote *x, t_symbol *msg, short argc, t_atom *argv)
{
	short i;
	
	for(i=1; i<=argc; i++){
		jcom_core_atom_copy(&x->output[i], argv++);
		x->output_len++;
	}
	remote_send_private(x);
}
