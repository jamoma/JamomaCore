/* 
 * jcom.receive
 * External for Jamoma: receive messages from remote
 * By Trond Lossius & Tim Place, Copyright © 2006
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "ext.h"				// Max Header
#include "ext_obex.h"			// Max Object Extensions (attributes) Header
#include "commonsyms.h"			// Common symbols used by the Max 4.5 API
#include "jcom.core.h"
#include "jcom.sendreceive.h"

// Prototypes
void		*receive_new(t_symbol *s, long argc, t_atom *argv);
void		receive_free(t_receive *x);
void		receive_assist(t_receive *x, void *b, long msg, long arg, char *dst);
t_max_err 	receive_setname(t_receive *x, void *attr, long argc, t_atom *argv);
void 		receive_callback(t_symbol *name, t_symbol *msg, long argc, t_atom *argv);
void 		receive_set_obex_callback(t_receive *x, void *callback, void *arg);
void		receive_bind(t_receive *x);
void		receive_insert(t_receive *x);
void 		receive_remove(t_receive *x);

// Globals
t_class				*receive_class;				// Required: Global pointer the jcom.receive class
t_class				*callback_class;			// Callbacks use their own class that is bound to a symbol
t_object			*callback_object = NULL;	// An instance of the jcom.callback class
static t_receiver 	*s_receiver_list = NULL;	// List of receive objects


/************************************************************************************/
// Main() Function

void *jcom_callback_new(t_symbol *msg, long argc, t_atom *argv)
{
	t_jcom_callback	*x = (t_jcom_callback *)object_alloc(callback_class);
	if(x)
		x->receive_master_callback = receive_callback;
	return x;
}

void jcom_callback_free(t_jcom_callback *x)
{
	;
}

void callback_initclass()
{
	// Define our class
	callback_class = class_new("jcom.callback", (method)jcom_callback_new, (method)jcom_callback_free, (short)sizeof(t_jcom_callback), (method)0L, A_GIMME, 0);
	class_obexoffset_set(callback_class, calcoffset(t_jcom_callback, obex));

	// Finalize our class
	class_register(CLASS_NOBOX, callback_class);
}


int main(void)				// main recieves a copy of the Max function macros table
{
	long attrflags = 0;
	t_class *c;
	t_object *attr;
	
	common_symbols_init();

	// Define our class
	c = class_new("jcom.receive", (method)receive_new, (method)receive_free, (short)sizeof(t_receive), (method)0L, A_GIMME, 0);

	class_obexoffset_set(c, calcoffset(t_receive, obex));

	// Make methods accessible for our class: 
	class_addmethod(c, (method)receive_set_obex_callback,	"setcallback",		A_CANT, 0L);
    class_addmethod(c, (method)receive_assist,				"assist", 			A_CANT, 0L);
    class_addmethod(c, (method)object_obex_dumpout, 		"dumpout", 			A_CANT,0);  
    class_addmethod(c, (method)object_obex_quickref,		"quickref", 		A_CANT, 0);
	
	// ATTRIBUTE: name
	attr = attr_offset_new("name", _sym_symbol, attrflags,
		(method)0, (method)receive_setname, calcoffset(t_receive, attr_name));
	class_addattr(c, attr);
	
	// Finalize our class
	class_register(CLASS_BOX, c);
	receive_class = c;
	
	callback_initclass();
	return 0;
}


/************************************************************************************/
// Object Life

// Create
void *receive_new(t_symbol *s, long argc, t_atom *argv)
{
	long		attrstart = attr_args_offset(argc, argv);		// support normal arguments
	t_receive	*x = (t_receive *)object_alloc(receive_class);
	if(x){
		object_obex_store((void *)x, _sym_dumpout, (object *)outlet_new(x, NULL));
		x->outlet = outlet_new(x, NULL);

		x->attr_name = NULL;
		attr_args_process(x, argc, argv);					// handle attribute args				

		// If no type was specified as an attribute
		if(x->attr_name == NULL){
			if(attrstart > 0)
				x->attr_name = atom_getsym(argv);
			else
				x->attr_name = gensym("jcom.receive no arg specified");
			receive_bind(x);
		}
		x->receive_obex_callback = NULL;
		x->receive_obex_callback_arg = NULL;
		
		if(!callback_object)
			callback_object = (t_object *)object_new(CLASS_NOBOX, gensym("jcom.callback"));
	}
	return x;
}


// Destroy
void receive_free(t_receive *x)
{
	receive_remove(x);
}

/************************************************************************************/
// Methods bound to input/inlets

// Method for Assistance Messages
void receive_assist(t_receive *x, void *b, long msg, long arg, char *dst)
{
	if(msg==1) 	// Inlets
		strcpy(dst, "(signal) input to the module");
	else if(msg==2){ // Outlets
		if(arg == 0) 
			strcpy(dst, "output from remote");
		else 
			strcpy(dst, "dumpout");
	}
}


// ATTRIBUTE: name
t_max_err receive_setname(t_receive *x, void *attr, long argc, t_atom *argv)
{
	t_symbol *arg = atom_getsym(argv);
	
	if(x->attr_name != arg){
		receive_remove(x);
		x->attr_name = arg;
		receive_bind(x);		
	}
	return MAX_ERR_NONE;
	#pragma unused(attr)
}


// 
void receive_bind(t_receive *x)
{
	if(!x->attr_name->s_thing){
		x->attr_name->s_thing = (t_object *)callback_object;
		receive_insert(x);
	}
	else{
		if(object_classname_compare(x->attr_name->s_thing, gensym("jcom.callback")))
			receive_insert(x);
		else	
			error("jcom.receive: the symbol '%s' is already in use - binding failed!", x->attr_name->s_name);
	}
}


void receive_insert(t_receive *x)
{
	t_receiver	*new_receiver;

	critical_enter(0);	
	// Create the new item
	new_receiver = (t_receiver *)sysmem_newptr(sizeof(t_receiver));
	new_receiver->object = x;
	new_receiver->next = s_receiver_list;
	s_receiver_list = new_receiver;
	critical_exit(0);
}


void receive_remove(t_receive *x)
{
	t_receiver	*receiver = s_receiver_list,
				*prev_receiver = NULL;
	short		count = -1;	// count the number of instances with this name

	// Search the linked list for this object and remove it
	critical_enter(0);
	while(receiver){
		if(receiver->object->attr_name == x->attr_name){
			if(count == -1)	// none have been found yet
				count++;	//	... so set the counter to zero
			count++;
		}
		if(receiver->object == x){
			if(prev_receiver != NULL)
				prev_receiver->next = receiver->next;
			else if(receiver == s_receiver_list)
				s_receiver_list = receiver->next;		
			sysmem_freeptr(receiver);
			receiver = NULL;
			count--;
		}
		if(receiver){
			prev_receiver = receiver;
			receiver = receiver->next;
		}
	}
	critical_exit(0);
	
	if(count == 0)
		x->attr_name->s_thing = (t_object *)NULL;
}


// This method is called by jcom.send through a function pointer
// In reponse, we figure out if we should send the data to our outlet
void receive_callback(t_symbol *name, t_symbol *msg, long argc, t_atom *argv)
{
	t_receive 	*x;
	t_receiver	*receiver = s_receiver_list;
		
	// Search the linked list for matching jcom.receive objects
	critical_enter(0);
	while(receiver){
		if(receiver->object->attr_name == name){
			x = receiver->object;
			outlet_anything(x->outlet, msg, argc, argv);
			if(x->receive_obex_callback)
				x->receive_obex_callback(x->receive_obex_callback_arg, msg, argc, argv);
		}
		receiver = receiver->next;
	}
	critical_exit(0);
}


//	When we are inside of another external, we need a way to transmit messages
//	to it. This function sets up another callback, which can call a function 
//	in that external to transmit the message.
void receive_set_obex_callback(t_receive *x, void *callback, void *arg)
{
	x->receive_obex_callback = (t_receive_obex_callback)callback;
	x->receive_obex_callback_arg = arg;
}
