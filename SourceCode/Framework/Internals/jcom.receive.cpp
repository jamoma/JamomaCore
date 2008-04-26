/* 
 * jcom.receive
 * External for Jamoma: receive messages from remote
 * By Trond Lossius & Tim Place, Copyright � 2006
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "Jamoma.h"

// Prototypes
void		*receive_new(t_symbol *s, long argc, t_atom *argv);
void		receive_free(t_receive *x);
void		receive_assist(t_receive *x, void *b, long msg, long arg, char *dst);
t_max_err 	receive_setname(t_receive *x, void *attr, long argc, t_atom *argv);
void 		receive_setcallback(t_receive *x, void *callback, void *arg);
void 		receive_dispatch(t_receive *x, t_symbol *msg, long argc, t_atom *argv);
void		receive_bind(t_receive *x);
void 		receive_remove(t_receive *x);

// Globals
static t_class		*s_receive_class;					// Required: Global pointer the jcom.receive class
static t_object		*s_receivemaster_object = NULL;		// An instance of the jcom.receivemaster class


/************************************************************************************/

void receive_initclass()
{
	long attrflags = 0;
	t_class *c;
	t_object *attr;
	
	// Define our class
	c = class_new(	"jcom.receive", 
					(method)receive_new, 
					(method)receive_free, 
					sizeof(t_receive), 
					(method)0L, 
					A_GIMME, 
					0);
	class_obexoffset_set(c, calcoffset(t_receive, obex));

	// Make methods accessible for our class: 
	class_addmethod(c, (method)receive_dispatch,		"dispatch",			A_CANT, 0);
	class_addmethod(c, (method)receive_setcallback,		"setcallback",		A_CANT, 0);
    class_addmethod(c, (method)receive_assist,			"assist", 			A_CANT, 0);
    class_addmethod(c, (method)object_obex_dumpout, 	"dumpout", 			A_CANT, 0);  
    class_addmethod(c, (method)object_obex_quickref,	"quickref", 		A_CANT, 0);
	
	// ATTRIBUTE: name
	attr = attr_offset_new("name", _sym_symbol, attrflags,
		(method)0, (method)receive_setname, calcoffset(t_receive, attr_name));
	class_addattr(c, attr);
	
	// Finalize our class
	class_register(CLASS_BOX, c);
	s_receive_class = c;
}


/************************************************************************************/
// Object Life

// Create
void *receive_new(t_symbol *s, long argc, t_atom *argv)
{
	long		attrstart = attr_args_offset(argc, argv);		// support normal arguments
	t_receive	*x = (t_receive *)object_alloc(s_receive_class);
//	t_atom		a;

//post("have x: %x", x);
	if(x){
		object_obex_store((void *)x, _sym_dumpout, (object *)outlet_new(x, NULL));
		x->outlet = outlet_new(x, NULL);

		if(!s_receivemaster_object)
//			s_receivemaster_object = (t_object *)object_new(CLASS_NOBOX, gensym("jcom.receivemaster"));
			s_receivemaster_object = (t_object *)object_new_typed(CLASS_NOBOX, gensym("jcom.receivemaster"), 0, NULL);
//post("have master: %x", s_receivemaster_object);
		x->callback = NULL;
		x->attr_name = NULL;
//		attr_args_process(x, argc, argv);					// handle attribute args				

		// If no name was specified as an attribute
		if(x->attr_name == NULL){
			if(attrstart > 0)
				x->attr_name = atom_getsym(argv);
			else
				x->attr_name = gensym("jcom.receive no arg specified");
//			receive_bind(x);
		}
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
//	if(!NOGOOD(s_receivemaster_object))
//		object_method(s_receivemaster_object, ps_add, x->attr_name, x);
}


void receive_remove(t_receive *x)
{
	object_method(s_receivemaster_object, ps_remove, x->attr_name, x);
}


// This method is called by jcom.receivemaster
// In reponse, we figure out if we should send the data to our outlet
void receive_dispatch(t_receive *x, t_symbol *msg, long argc, t_atom *argv)
{
	if(x->callback)
		x->callback(x->baton,  msg, argc, argv);	// call the registered callback on the object that we're instantiated inside of
	else
		outlet_anything(x->outlet, msg, argc, argv);
}


//	When we are inside of another external, we need a way to transmit messages
//	to it. This function sets up another callback, which can call a function 
//	in that external to transmit the message.
void receive_setcallback(t_receive *x, void *callback, void *arg)
{
	x->callback = (t_receive_obex_callback)callback;
	x->baton = arg;
}
