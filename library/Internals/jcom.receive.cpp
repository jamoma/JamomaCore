/* 
 * jcom.receive
 * External for Jamoma: receive messages from remote
 * By Trond Lossius & Tim Place, Copyright � 2006
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "Jamoma.h"


/** Receive Object */
typedef struct _receive{
	t_object					ob;					///< REQUIRED: Our object
	void						*address_out;		///< outlet used to output address of received data
	void						*data_out;			///< outlet used to output received data
	t_symbol					*attr_name;			///< ATTRIBUTE: the name of the jcom.receive (/address:attribute)
	t_symbol					*_address;			///< the address to bind
	t_symbol					*_attribute;		///< the attribute to bind (default : value)
	bool						enable;				///< if false, received data won't be output without unregistered attribute observers (default true).
	TTListPtr					lk_nodes;			///< a pointer to a selection of nodes of the tree
	TTListPtr					lk_attr_observer;	///< a pointer to each created attribute observers
	TTObjectPtr					life_observer;		///< a pointer to a life cycle observer
} t_receive;

// Prototypes
void		*receive_new(t_symbol *s, long argc, t_atom *argv);
void		receive_free(t_receive *x);
void		receive_assist(t_receive *x, void *b, long msg, long arg, char *dst);

t_max_err 	receive_setname(t_receive *x, void *attr, long argc, t_atom *argv);

void		receive_bind(t_receive *x);
void 		receive_remove(t_receive *x);
void		receive_directory_callback(t_receive *x, t_symbol *mess, long argc, t_atom *argv);
void		receive_node_attribute_callback(t_receive *x, t_symbol *mess, long argc, t_atom *argv);

// ask the value to the node
void		receive_get(t_receive *x);

// enable/disable outputs without unregistered attributes observers
void		receive_enable(t_receive *x, long e);

// Globals
static t_class		*s_receive_class;					// Required: Global pointer the jcom.receive class


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
	class_addmethod(c, (method)receive_directory_callback,		"receive_directory_callback",		A_CANT, 0);
	class_addmethod(c, (method)receive_node_attribute_callback,	"receive_node_attribute_callback",	A_CANT, 0);
    class_addmethod(c, (method)receive_assist,					"assist",							A_CANT, 0);
    class_addmethod(c, (method)object_obex_dumpout,				"dumpout",							A_CANT, 0);
	
	// ask the value to the node
	class_addmethod(c, (method)receive_get,						"bang",								0);
	
	// enable/disable outputs without unregistered attributes observers
	class_addmethod(c, (method)receive_enable,					"int",								A_LONG,	0);
	
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
		x->address_out = outlet_new(x,NULL);		// anything outlet
		x->data_out = outlet_new(x, NULL);			// anything outlet
		
		x->attr_name = NULL;
		x->_address = NULL;
		x->_attribute = NULL;
		x->enable = true;
		
		x->lk_nodes = NULL;
		x->lk_attr_observer = NULL;
		
		//attr_args_process(x, argc, argv);			// handle attribute args				

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
	;
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
}

void receive_bind(t_receive *x)
{
	TTSymbolPtr oscAddress_parent, oscAddress_name, oscAddress_instance, oscAddress_attribute, oscAddress_noAttribute;
	TTObjectPtr newAttrCallback;
	TTList		lk_selection;
	TTNodePtr	p_node;
	TTErr		err = kTTErrGeneric;
	
	x->lk_nodes = new TTList();
	x->lk_attr_observer = new TTList();
	
	if(x->attr_name->s_name[0] == C_SEPARATOR){
		if(jamoma_directory){
			
			// 0. split the name in address part and attribute
			splitOSCAddress(TT(x->attr_name->s_name), &oscAddress_parent, &oscAddress_name, &oscAddress_instance, &oscAddress_attribute);
			mergeOSCAddress(&oscAddress_noAttribute, oscAddress_parent, oscAddress_name, oscAddress_instance, NO_ATTRIBUTE);
			x->_address = SymbolGen((char*)oscAddress_noAttribute->getCString());
			
			if(oscAddress_attribute != NO_ATTRIBUTE)
				x->_attribute = SymbolGen((char*)oscAddress_attribute->getCString());
			else
				x->_attribute = jps_value;
			
			// observe for node creation or destruction
			if((x->_attribute == gensym("created")) || (x->_attribute == gensym("destroyed")))
			{
				jamoma_directory_observer_add(x->_address, (t_object*)x, gensym("receive_directory_callback"), &x->life_observer);
			}
			// observe for node attribute changes
			else
			{
				// 1. look for node(s) into the directory
				err = jamoma_directory->Lookup(TT(x->_address->s_name), lk_selection, &p_node);
				
				// 2. start attribute observation on each existing node of the selection
				if(!err){
					
					x->lk_nodes->merge(lk_selection);
					
					for(x->lk_nodes->begin(); x->lk_nodes->end(); x->lk_nodes->next())
					{
						// get a node from the selection
						x->lk_nodes->current().get(0,(TTPtr*)&p_node);
						
						// prepare the callback mecanism to
						// be notified about changing value attribute
						jamoma_node_attribute_observer_add(p_node, x->_attribute, (t_object*)x, gensym("receive_node_attribute_callback"), &newAttrCallback);
						x->lk_attr_observer->append(new TTValue((TTPtr)newAttrCallback));
					}
				}
				
				// 3. observe any creation or destruction below the attr_name address
				jamoma_directory_observer_add(x->_address, (t_object*)x, gensym("receive_directory_callback"), &x->life_observer);
			}
		}
	}
}

// ask the value to the node
void receive_get(t_receive *x)
{
	TTNodePtr	p_node;
	TTString	fullAddress;
	long		argc;
	t_atom		*argv;
	JamomaError err;
	
	if(!x->lk_nodes->isEmpty()){
		
		// for each node of the selection
		for(x->lk_nodes->begin(); x->lk_nodes->end(); x->lk_nodes->next()){
			
			// get a node from the selection
			x->lk_nodes->current().get(0,(TTPtr*)&p_node);
			
			// get the value of the node
			err = jamoma_node_attribute_get(p_node, x->_attribute, &argc, &argv);
			
			if(!err){
				// output the OSCAddress of the node (in case we use * inside the x->attrname)
				fullAddress = jamoma_node_OSC_address(p_node)->s_name;
				if(x->_attribute != jps_value){
					fullAddress += C_PROPERTY;
					fullAddress += x->_attribute->s_name;
				}
				outlet_anything(x->address_out, gensym((char*)fullAddress.data()), 0, NULL);
				
				// then output data as a list
				outlet_list(x->data_out, 0L, argc, argv);
			}
			else
				object_error((t_object*)x,"%s doesn't exist", x->attr_name->s_name);
			
			// free memory allocated inside the get property method
			sysmem_freeptr(argv);
		}
	}
}

// enable/disable outputs without unregistered attributes observers
void receive_enable(t_receive *x, long e)
{
	x->enable = e > 0;
}

// This method his called the jcom.receive observer attached to the directory.
// Read the TTNodeDirectory file to get info about life cycle observers mecanism
void receive_directory_callback(t_receive *x, t_symbol *oscAddress, long argc, t_atom *argv)
{
	TTObjectPtr		newAttrCallback;
	TTList			lk_selection;
	TTErr			err = kTTErrGeneric;
	TTNodePtr		aNode = (TTNodePtr)atom_getobj(&argv[0]);
	long			flag = atom_getlong(&argv[1]);
	TTCallbackPtr	anObserver = (TTCallbackPtr)atom_getobj(&argv[2]);
	
	if(flag == kAddressCreated){
		
		//post("jcom.receive %s observe a node creation at %s", x->attr_name->s_name, oscAddress->s_name);
		
		if(!err){
			
			if(x->_attribute == gensym("created"))
			{
				// output the OSCAddress of the new node
				outlet_anything(x->address_out, oscAddress, 0, NULL);
			}
			else
			{
				// add the node to the selection
				x->lk_nodes->append(new TTValue((TTPtr)aNode));
				
				// start attribute observation on the node
				jamoma_node_attribute_observer_add(aNode, x->_attribute, (t_object*)x, gensym("receive_node_attribute_callback"), &newAttrCallback);
				x->lk_attr_observer->append(new TTValue((TTPtr)newAttrCallback));
			}
		}
	}
	else{
		
		//post("jcom.receive %s observe a node destruction at %s", x->attr_name->s_name, oscAddress->s_name);
		
		if(x->_attribute == gensym("destroyed"))
		{
			// output the OSCAddress of the old node
			outlet_anything(x->address_out, oscAddress, 0, NULL);
		}
		else
		{
			jamoma_node_attribute_observer_remove(aNode, x->_attribute, anObserver);
			
			// remove the node from the selection
			x->lk_nodes->remove(aNode);
			
			// and remove his observer				
			x->lk_attr_observer->remove(anObserver);
		}
	}
}

// This method his called by each observer attached to an attribute of the node.
// Read the TTNode file to get info about attribute observers mecanism
void receive_node_attribute_callback(t_receive *x, t_symbol *mess, long argc, t_atom *argv)
{	
	if(x->enable){
		// output the OSCAddress of the node (in case we use * inside the x->attrname)
		outlet_anything(x->address_out, (t_symbol *)mess, 0, NULL);
		
		// then output data as a list
		outlet_list(x->data_out, 0L, argc, argv);
	}
}

void receive_remove(t_receive *x)
{
	TTObjectPtr oldAttrCallback;
	TTNodePtr p_node;
	
	// if there is a selection, remove Observers
	if(x->lk_nodes){
		
		x->lk_attr_observer->begin();
		for(x->lk_nodes->begin(); x->lk_nodes->end(); x->lk_nodes->next()){
			
			// get a node of the selection
			x->lk_nodes->current().get(0,(TTPtr*)&p_node);
			
			// get the observer relative to this node
			x->lk_attr_observer->current().get(0,(TTPtr*)&oldAttrCallback);

			// remove all the observers
			jamoma_node_attribute_observer_remove(p_node, x->_attribute, oldAttrCallback);

			x->lk_attr_observer->next();
		}
	}
	
	delete x->lk_nodes;
	delete x->lk_attr_observer;
	
	if(x->_address)
		jamoma_directory_observer_remove(x->_address, x->life_observer);
}