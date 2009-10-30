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
void		receive_node_callback(void *x, char *address, long argc, void *argv);

// Globals
static t_class		*s_receive_class;					// Required: Global pointer the jcom.receive class
t_object			*g_receivemaster_object = NULL;		// An instance of the jcom.receivemaster class


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

	// Make methods accessible for our class: 
	class_addmethod(c, (method)receive_dispatch,		"dispatch",			A_CANT, 0);
	class_addmethod(c, (method)receive_setcallback,		"setcallback",		A_CANT, 0);
    class_addmethod(c, (method)receive_assist,			"assist", 			A_CANT, 0);
    class_addmethod(c, (method)object_obex_dumpout, 	"dumpout", 			A_CANT, 0); 
	
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

	if(x){
		object_obex_store((void *)x, _sym_dumpout, (object *)outlet_new(x, NULL));
		x->outlet = outlet_new(x, NULL);

		if(!g_receivemaster_object)
			g_receivemaster_object = (t_object *)object_new_typed(CLASS_NOBOX, SymbolGen("jcom.receivemaster"), 0, NULL);

		x->callback = NULL;
		x->attr_name = NULL;
		x->lk_nodes = new TTList();
		x->lk_observer = new TTList();
		// attr_args_process(x, argc, argv);					// handle attribute args				

		// If no name was specified as an attribute
		if(x->attr_name == NULL){
			if(attrstart > 0)
				x->attr_name = atom_getsym(argv);
			else
				x->attr_name = SymbolGen("jcom.receive no arg specified");
			receive_bind(x);
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
		x->lk_nodes = new TTList();
		x->lk_observer = new TTList();
		receive_bind(x);		
	}
	return MAX_ERR_NONE;
}


// 
void receive_bind(t_receive *x)
{
	ObserverPtr p_obsv;
	TTList lk_selection;
	TTNodePtr p_node;
	TTErr err = kTTErrGeneric;
	
	if(!NOGOOD(g_receivemaster_object))
		object_method(g_receivemaster_object, jps_add, x->attr_name, x);
	
	// if there isn't selection
	if(x->lk_nodes->isEmpty()){
		
		// look for the node(s) into the directory
		if(x->attr_name->s_name[0] == C_SEPARATOR){
			if(jamoma_directory){
				err = jamoma_directory->Lookup(TT(x->attr_name->s_name), lk_selection, &p_node);
				x->lk_nodes->merge(lk_selection);
			}
		
			if(err != kTTErrNone)
				object_error((t_object*)x,"jcom.receive : %s doesn't exist", x->attr_name->s_name);
		}
	}
	
	if(!x->lk_nodes->isEmpty()){
		
		// for each node of the selection
		for(x->lk_nodes->begin(); x->lk_nodes->end(); x->lk_nodes->next()){
			
			// get a node from the selection
			x->lk_nodes->current().get(0,(TTPtr*)&p_node);
			
			// create an observer
			p_obsv = new Observer();
			
			// prepare the callback mecanism between the node and the observer
			p_obsv->addCallback(&receive_node_callback, x);
			p_node->addObserver(p_obsv);
			
			// add the observer to the TTlist (to remove it correctly)
			x->lk_observer->append(new TTValue((TTPtr)p_obsv));
		}
	}
}

void receive_remove(t_receive *x)
{
	ObserverPtr p_obsv;
	TTNodePtr p_node;
	
	// if there is a selection, remove Observers
	if(x->lk_nodes){
		
		x->lk_observer->begin();
		for(x->lk_nodes->begin(); x->lk_nodes->end(); x->lk_nodes->next()){
			
			// get a node of the selection
			x->lk_nodes->current().get(0,(TTPtr*)&p_node);
			
			// get the observer relative to this node
			x->lk_observer->current().get(0,(TTPtr*)&p_obsv);

			// remove the observer
			p_node->removeObserver(p_obsv);
			delete p_obsv;
			
			x->lk_observer->next();
		}
	}
	
	delete x->lk_nodes;
	delete x->lk_observer;

	object_method(g_receivemaster_object, jps_remove, x->attr_name, x);
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

// This method his called by each observer attached to a node.
// Read the TTNode file to get info about observers mecanism
void receive_node_callback(void *x, char *address, long argc, void *argv)
{
	t_receive* thisX = (t_receive*)x;
	t_atom *argument = (t_atom*)argv;
	
	//if(argc && argv)
	//defer(thisX, (method)receive_dispatch, gensym(address), argc, argument);
	outlet_anything(thisX->outlet, gensym(address), argc, argument);
}
