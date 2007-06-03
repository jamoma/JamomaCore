/* 
 * jcom.send
 * External for Jamoma: send messages from remote
 * By Trond Lossius & Tim Place, Copyright © 2006
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "ext.h"						// Max Header
#include "ext_obex.h"					// Max Object Extensions (attributes) Header
#include "commonsyms.h"					// Common symbols used by the Max 4.5 API
#include "jcom.core.h"
#include "jcom.sendreceive.h"

// Prototypes
void *send_new(t_symbol *s, long argc, t_atom *argv);
void send_free(t_send *x);
void send_assist(t_send *x, void *b, long msg, long arg, char *dst);
void send_bang(t_send *x);
void send_int(t_send *x, long value);
void send_float(t_send *x, double value);
void send_list(t_send *x, t_symbol *msg, long argc, t_atom *argv);

// Globals
t_class		*send_class;				// Required: Global pointer for our class

/************************************************************************************/
// Main() Function

int main(void)
{
	long attrflags = 0;
	t_class *c;
	t_object *attr;
	
	common_symbols_init();

	// Define our class
	c = class_new("jcom.send", (method)send_new, (method)0L, (short)sizeof(t_send), (method)0L, A_GIMME, 0);

	class_obexoffset_set(c, calcoffset(t_send, obex));

	// Make methods accessible for our class:
	class_addmethod(c, (method)send_bang,				"bang",			0L);
	class_addmethod(c, (method)send_int,				"int",			A_LONG, 0L);
	class_addmethod(c, (method)send_float,				"float",		A_FLOAT, 0L);
	class_addmethod(c, (method)send_list,				"list",			A_GIMME, 0L);
	class_addmethod(c, (method)send_list,				"anything",		A_GIMME, 0L);
    class_addmethod(c, (method)send_assist,				"assist", 		A_CANT, 0L);
    class_addmethod(c, (method)object_obex_dumpout, 	"dumpout", 		A_CANT,0);  
    class_addmethod(c, (method)object_obex_quickref,	"quickref", 	A_CANT, 0);
	
	// ATTRIBUTE: name
	attr = attr_offset_new("name", _sym_symbol, attrflags,
		(method)0, (method)0, calcoffset(t_send, attr_name));
	class_addattr(c, attr);
	
	// Finalize our class
	class_register(CLASS_BOX, c);
	send_class = c;
	
	return 0;
}


/************************************************************************************/
// Object Life

// Create
void *send_new(t_symbol *s, long argc, t_atom *argv)
{
	long 	attrstart = attr_args_offset(argc, argv);		// support normal arguments
	t_send 	*x = (t_send *)object_alloc(send_class);
	if(x){
		object_obex_store((void *)x, _sym_dumpout, (object *)outlet_new(x, NULL));

		if(attrstart > 0)
			x->attr_name = atom_getsym(argv);
		else
			x->attr_name = gensym("jcom.send no arg specified");
			
		attr_args_process(x, argc, argv);					// handle attribute args				
	}
	return x;
}


/************************************************************************************/
// Methods bound to input/inlets

// Method for Assistance Messages
void send_assist(t_send *x, void *b, long msg, long arg, char *dst)
{
	if(msg==1) 			// Inlets
		strcpy(dst, "(signal) input to the module");
	else if(msg==2)		// Outlets
		strcpy(dst, "dumpout");
}


void send_bang(t_send *x)
{
	send_list(x, _sym_bang, 0, NULL);
}


void send_int(t_send *x, long value)
{
	t_atom				a;
	
	atom_setlong(&a, value);
	send_list(x, _sym_int, 1, &a);
}


void send_float(t_send *x, double value)
{
	t_atom				a;
	
	atom_setfloat(&a, value);
	send_list(x, _sym_float, 1, &a);
}


void send_list(t_send *x, t_symbol *msg, long argc, t_atom *argv)
{
	t_jcom_callback		*receive;
	t_receive_callback	receive_callback;
	
	if(object_classname_compare(x->attr_name->s_thing, gensym("jcom.callback"))){
		receive = (t_jcom_callback *)x->attr_name->s_thing;
		receive_callback = receive->receive_master_callback;
		receive_callback(x->attr_name, msg, argc, argv);
	}
	else
		error("jcom.send (%s), no valid destination", x->attr_name->s_name);
}
