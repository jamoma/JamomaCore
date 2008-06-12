/* 
 * jcom.remote
 * External for Jamoma: private means of communication with a jcom.hub
 * By Tim Place, Copyright © 2006
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "Jamoma.h"


// Data Structure for this object
typedef struct _remote{
	t_jcom_core_subscriber_common	common;
	void							*outlet;
	void							*dumpout;	
	t_atom							output[512];	///< buffer that gets sent to the hub
	short							output_len;
	method							callback;		///< A callback method that is used to pass output to an object that encapsulates this parameter (such as the jcom.ui)
	t_object						*callbackArg;	///< The object for which the callback method should be applied
} t_remote;


// Prototypes for methods
void *remote_new(t_symbol *s, long argc, t_atom *argv);			// New Object Creation Method
void remote_assist(t_remote *x, void *b, long m, long a, char *s);		// Assistance Method
void remote_dispatched(t_remote *x, t_symbol *msg, long argc, t_atom *argv);
void remote_jit_matrix(t_remote *x, t_symbol *msg, long argc, t_atom *argv);
void remote_send_feedback(t_remote *x);
void remote_int(t_remote *x, long value);
void remote_float(t_remote *x, double value);
void remote_symbol(t_remote *x, t_symbol *msg, long argc, t_atom *argv);
void remote_list(t_remote *x, t_symbol *msg, long argc, t_atom *argv);
void remote_setcallback(t_remote *x, method newCallback, t_object *callbackArg);
void remote_subscribe(t_remote *x);


// Globals
t_class		*remote_class;					// Required. Global pointing to this class


/************************************************************************************/
// Main() Function

int main(void)				// main recieves a copy of the Max function macros table
{
	t_class 	*c;
	t_object 	*attr;
	
	jamoma_init();
common_symbols_init();

	// Define our class
	c = class_new("jcom.remote",(method)remote_new, (method)jcom_core_subscriber_common_free, sizeof(t_remote), (method)0L, A_GIMME, 0);

	// Make methods accessible for our class: 
	class_addmethod(c, (method)remote_dispatched,		"dispatched",	A_GIMME, 0L);
	class_addmethod(c, (method)remote_jit_matrix,		"jit_matrix",	A_GIMME, 0L);
	class_addmethod(c, (method)remote_int,				"int",			A_DEFLONG,	0L);
	class_addmethod(c, (method)remote_float,			"float",		A_DEFFLOAT,	0L);
 	class_addmethod(c, (method)remote_list,				"list",			A_GIMME, 0L);
 	class_addmethod(c, (method)remote_symbol,			"anything",		A_GIMME, 0L);
    class_addmethod(c, (method)remote_assist,			"assist",		A_CANT, 0L);
	class_addmethod(c, (method)remote_setcallback,		"setcallback",	A_CANT, 0);

	jcom_core_subscriber_classinit_common(c, attr);	
		
	// Finalize our class
	class_register(CLASS_BOX, c);
	remote_class = c;

	return 0;
}


/************************************************************************************/
// Object Life

// Create
void *remote_new(t_symbol *s, long argc, t_atom *argv)
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

		jcom_core_subscriber_new_common(&x->common, name, ps_subscribe_remote);
		jcom_core_subscriber_setcustomsubscribe_method(&x->common, (t_subscribe_method)remote_subscribe);

		attr_args_process(x, argc, argv);					// handle attribute args				
		defer_low(x, (method)jcom_core_subscriber_subscribe, 0, 0, 0);
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


// this method is called when we have subscribed to the hub
void remote_subscribe(t_remote *x)
{
	if(x->callback)
		x->callback(x->callbackArg, ps_subscribe, 0, NULL);
}


// messages received from jcom.hub
void remote_dispatched(t_remote *x, t_symbol *msg, long argc, t_atom *argv)
{
	outlet_anything(x->outlet, atom_getsym(argv), argc-1, argv+1);
	if(x->callback)
		x->callback(x->callbackArg, x->common.attr_name, argc, argv);
}


// messages received from jcom.out
void remote_jit_matrix(t_remote *x, t_symbol *msg, long argc, t_atom *argv)
{
	outlet_anything(x->outlet, msg, argc, argv);
	if(x->callback)
		x->callback(x->callbackArg, msg, argc, argv);
}


// remote values to the hub
void remote_send_private(t_remote *x)
{
	if(x->common.hub){
		object_method_typed(x->common.hub, ps_private, x->output_len, x->output, NULL);
		x->output_len = 1;	// truncate to just the name of this jcom.remote object
	}
	else
		object_error((t_object*)x, "not subscribed to a valid hub object");
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
void remote_symbol(t_remote *x, t_symbol *msg, long argc, t_atom *argv)
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
void remote_list(t_remote *x, t_symbol *msg, long argc, t_atom *argv)
{
	short i;
	
	for(i=1; i<=argc; i++){
		jcom_core_atom_copy(&x->output[i], argv++);
		x->output_len++;
	}
	remote_send_private(x);
}


void remote_setcallback(t_remote *x, method newCallback, t_object *callbackArg)
{
	x->callback = newCallback;
	x->callbackArg = callbackArg;
}
