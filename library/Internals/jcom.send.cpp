/* 
 * jcom.send
 * External for Jamoma: send messages from remote
 * By Trond Lossius & Tim Place, Copyright � 2006
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "Jamoma.h"


/** Send Object */
typedef struct _send{
	t_object					ob;				///< REQUIRED: Our object
	t_symbol					*attr_name;		///< ATTRIBUTE: name
	TTListPtr					lk_nodes;		///< a pointer to a selection of TTNodes
} t_send;



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
//extern t_object		*g_receivemaster_object;	// An instance of the jcom.receivemaster class


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
		x->lk_nodes = new TTList();

		if(attrstart > 0)
			x->attr_name = atom_getsym(argv);
		else
			x->attr_name = SymbolGen("jcom.send no arg specified");
			
		attr_args_process(x, argc, argv);					// handle attribute args
		
//		if(!g_receivemaster_object)
//			g_receivemaster_object = (t_object *)object_new(CLASS_NOBOX, SymbolGen("jcom.receivemaster"));
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
	TTNodePtr p_node;
	t_symbol *destination;
	TTList selection;
	JamomaError err = JAMOMA_ERR_GENERIC;
	
	// Is it still necessary to do that ?
	//object_method(g_receivemaster_object, jps_dispatch, x->attr_name, msg, argc, argv);
	
	// To send to another address than x->attr_name,
	// prepend the data with an OSC address
	if(msg->s_name[0] == C_SEPARATOR){
		if(msg != x->attr_name){
			// look for the node(s) into the directory
			err = jamoma_directory_get_node(msg, selection, &p_node);
			
			if(err != JAMOMA_ERR_NONE)
				object_error((t_object*)x,"%s doesn't exist", msg->s_name);
			
			destination = msg;
		}
	}
	// here is the initialization of the lk_nodes 
	// (to be sure that the jamoma directory is built)
	else{
		if(x->lk_nodes->isEmpty()){
			// look for the node(s) into the directory
			if(x->attr_name->s_name[0] == C_SEPARATOR){
				if(jamoma_directory){
					err = jamoma_directory_get_node(x->attr_name, selection, &p_node);
					x->lk_nodes->merge(selection);
				}
				
				if(err != JAMOMA_ERR_NONE){
					x->lk_nodes = new TTList();
					object_error((t_object*)x,"%s doesn't exist", x->attr_name->s_name);
				}
			}
			else
				x->lk_nodes = new TTList();
		}
		// default destination
		else
			selection.merge(*x->lk_nodes);
		
		destination = x->attr_name;
	}
		
	// If there is a destination list
	if(!selection.isEmpty()){
		
		// send data to the selection of nodes
		for(selection.begin(); selection.end(); selection.next()){
			
			selection.current().get(0,(TTPtr*)&p_node);

			// 1. set the value attribute of the node
			// TODO : set other attributes
			jamoma_node_attribute_set(p_node, jps_value, argc, argv);

			// 2. notify value attribute observers
			// TODO : notify other attribute observers
			jamoma_node_attribute_observer_notify(p_node, jps_value, destination, argc, argv);
		}
	}
}
