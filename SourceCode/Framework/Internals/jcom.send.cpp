/* 
 * jcom.send
 * External for Jamoma: send messages from remote
 * By Trond Lossius & Tim Place, Copyright � 2006
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "Jamoma.h"

// Prototypes
void *send_new(t_symbol *s, long argc, t_atom *argv);
void send_free(t_send *x);
void send_assist(t_send *x, void *b, long msg, long arg, char *dst);
void send_bang(t_send *x);
void send_int(t_send *x, long value);
void send_float(t_send *x, double value);
void send_list(t_send *x, t_symbol *msg, long argc, t_atom *argv);

// Globals
static t_class		*s_send_class;				// Required: Global pointer for our class
extern t_object		*g_receivemaster_object;	// An instance of the jcom.receivemaster class


/************************************************************************************/
// Main() Function

void send_initclass()
{
	long attrflags = 0;
	t_class *c;
	t_object *attr;
	
	// Define our class
	c = class_new("jcom.send", (method)send_new, (method)0L, sizeof(t_send), (method)0L, A_GIMME, 0);

	// Make methods accessible for our class:
	class_addmethod(c, (method)send_bang,				"bang",			0L);
	class_addmethod(c, (method)send_int,				"int",			A_LONG, 0L);
	class_addmethod(c, (method)send_float,				"float",		A_FLOAT, 0L);
	class_addmethod(c, (method)send_list,				"list",			A_GIMME, 0L);
	class_addmethod(c, (method)send_list,				"anything",		A_GIMME, 0L);
    class_addmethod(c, (method)send_assist,				"assist", 		A_CANT, 0L);
    class_addmethod(c, (method)object_obex_dumpout, 	"dumpout", 		A_CANT,0);
	
	// ATTRIBUTE: name
	attr = attr_offset_new("name", _sym_symbol, attrflags,
		(method)0, (method)0, calcoffset(t_send, attr_name));
	class_addattr(c, attr);
	
	// Finalize our class
	class_register(CLASS_BOX, c);
	s_send_class = c;
}


/************************************************************************************/
// Object Life

// Create
void *send_new(t_symbol *s, long argc, t_atom *argv)
{
	long attrstart = attr_args_offset(argc, argv);		// support normal arguments
	t_send 	*x = (t_send *)object_alloc(s_send_class);
	
	if(x){
		object_obex_store((void *)x, _sym_dumpout, (object *)outlet_new(x, NULL));
		
		// the selection of nodes is made during the first send
		x->lk_nodes = NULL;

		if(attrstart > 0)
			x->attr_name = atom_getsym(argv);
		else
			x->attr_name = SymbolGen("jcom.send no arg specified");
			
		attr_args_process(x, argc, argv);					// handle attribute args
		
		if(!g_receivemaster_object)
			g_receivemaster_object = (t_object *)object_new(CLASS_NOBOX, SymbolGen("jcom.receivemaster"));
	}
	return x;
}


/************************************************************************************/
// Methods bound to input/inlets

// Method for Assistance Messages
void send_assist(t_send *x, void *b, long msg, long arg, char *dst)
{
	if(msg==1) 			// Inlets
		strcpy(dst, "input to dispatch to jcom.receive objects");
	else if(msg==2)		// Outlets
		strcpy(dst, "dumpout");
}


void send_bang(t_send *x)
{
	send_list(x, _sym_bang, 0, NULL);
}


void send_int(t_send *x, long value)
{
	t_atom a;
	
	atom_setlong(&a, value);
	send_list(x, _sym_int, 1, &a);
}


void send_float(t_send *x, double value)
{
	t_atom a;
	
	atom_setfloat(&a, value);
	send_list(x, _sym_float, 1, &a);
}


void send_list(t_send *x, t_symbol *msg, long argc, t_atom *argv)
{
	NodePtr p_node;
	TTListPtr selection;
	t_object *obj;
	t_symbol *type;
	TTErr err = kTTErrGeneric;
	
	// Is it still necessary to do that ?
	//object_method(g_receivemaster_object, jps_dispatch, x->attr_name, msg, argc, argv);
	
	if(!x->lk_nodes){
		// look for the node(s) into the directory
		if(x->attr_name->s_name[0] == C_SEPARATOR){
			err = jamoma_directory->Lookup(TT(x->attr_name->s_name), &(x->lk_nodes), &p_node);
		
			if(err != kTTErrNone)
				object_error((t_object*)x,"jcom.send : %s doesn't exist", x->attr_name->s_name);
		}
	}
	
	// default destination
	selection = x->lk_nodes;
	
	// To send to another address than x->attr_name,
	// prepend the data with an OSC address
	if(msg->s_name[0] == C_SEPARATOR){
		if(msg != x->attr_name){
			// look for the node(s) into the directory
			err = jamoma_directory->Lookup(TT(msg->s_name), &selection, &p_node);
		//	err = jamoma_directory_get_node(TT(msg->s_name), &selection, &p_node);
	
			if(err != kTTErrNone){
				selection = NULL;
				object_error((t_object*)x,"jcom.send : %s doesn't exist", x->attr_name->s_name);
			}
		}
	}
	
	// send data to the selection of nodes
	// TODO : Maybe there are some problems to send data list beginning with a symbol
	// when we want to send data to the destination in argument ...
	if(selection){
		for(selection->begin(); selection->end(); selection->next()){
			
			selection->current().get(0,(TTPtr*)&p_node);
			
			obj = jamoma_node_max_object(p_node);
			type = jamoma_node_type(p_node);
			
			// if the node have an object
			if(obj){
				
				// to send to a maxobject
				if(type == gensym("maxobject")){
					
					if(atom_gettype(&argv[0]) == A_SYM)
						if(object_getmethod(obj, atom_getsym(&argv[0])))
							object_method_typed((t_object*)obj, atom_getsym(&argv[0]), argc-1, argv+1,NULL);
						else
							object_method_typed((t_object*)obj, NULL, argc, argv, NULL);
				}
				// to send to a jcom.parameter
				else
					object_method_typed((t_object*)obj, jps_dispatched, argc, argv, NULL);
			}
			else
				object_error((t_object*)x,"send : %s have no object", jamoma_node_name(p_node)->s_name);
		}
	}
}
