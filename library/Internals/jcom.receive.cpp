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
	TTListPtr					lk_couple;			///< a pointer to a list of <nodes, observer> couple
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

// ask the value to the binded node
void		receive_get(t_receive *x);

// ask the value of any node without binding on it
void		receive_symbol(t_receive *x, t_symbol *mess, long argc, t_atom *argv);

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
	
	// ask the value to the binded node
	class_addmethod(c, (method)receive_get,						"bang",								0);
	
	// ask the value of any node without binding on it
	class_addmethod(c, (method)receive_symbol,					"anything",							A_GIMME, 0);
	
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
		
		x->lk_couple = NULL;
		
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
	TTValuePtr	couple;
	TTErr		err = kTTErrGeneric;
	
	x->lk_couple = new TTList();
	
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
			
			// observe for node creation, destruction or specific application flag (TODO : see TTNodeDirectory.cpp)
			if((x->_attribute == gensym("created")) || (x->_attribute == gensym("destroyed")) || (x->_attribute == gensym("initialized")))
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
					
					for(lk_selection.begin(); lk_selection.end(); lk_selection.next())
					{
						// get a node from the selection
						lk_selection.current().get(0,(TTPtr*)&p_node);
						
						// prepare the callback mecanism to
						// be notified about changing value attribute
						jamoma_node_attribute_observer_add(p_node, x->_attribute, (t_object*)x, gensym("receive_node_attribute_callback"), &newAttrCallback);
						
						// memorize the node and his attribute observer
						couple = new TTValue((TTPtr)p_node);
						couple->append((TTPtr)newAttrCallback);
						x->lk_couple->append(couple);
					}
				}
				
				// 3. observe any creation or destruction below the attr_name address
				jamoma_directory_observer_add(x->_address, (t_object*)x, gensym("receive_directory_callback"), &x->life_observer);
			}
		}
	}
}

// ask the value to the binded node
void receive_get(t_receive *x)
{
	TTNodePtr	p_node;
	TTString	fullAddress;
	long		argc;
	t_atom		*argv;
	JamomaError err;
	
	if(!x->lk_couple->isEmpty()){
		
		// for each node of the selection
		for(x->lk_couple->begin(); x->lk_couple->end(); x->lk_couple->next()){
			
			// get a node from the selection
			x->lk_couple->current().get(0,(TTPtr*)&p_node);
			
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

// ask the value of any node without binding on it
void receive_symbol(t_receive *x, t_symbol* mess, long argc, t_atom* argv)
{
	TTSymbolPtr oscAddress_parent, oscAddress_name, oscAddress_instance, oscAddress_attribute, oscAddress_noAttribute;
	TTNodePtr	p_node;
	TTList		lk_selection;
	TTString	fullAddress;
	t_symbol	*address, *attr;
	long		ac;
	t_atom		*av;
	TTErr		tt_err;
	JamomaError j_err;
	
	// 0. split the name in address part and attribute
	splitOSCAddress(TT(mess->s_name), &oscAddress_parent, &oscAddress_name, &oscAddress_instance, &oscAddress_attribute);
	mergeOSCAddress(&oscAddress_noAttribute, oscAddress_parent, oscAddress_name, oscAddress_instance, NO_ATTRIBUTE);
	address = SymbolGen((char*)oscAddress_noAttribute->getCString());
	
	if(oscAddress_attribute != NO_ATTRIBUTE)
		attr = SymbolGen((char*)oscAddress_attribute->getCString());
	else
		attr = jps_value;
	
	// 1. look for node(s) into the directory
	tt_err = jamoma_directory->Lookup(TT(address->s_name), lk_selection, &p_node);
	
	// for each node of the selection
	for(lk_selection.begin(); lk_selection.end(); lk_selection.next())
	{
		// get a node from the selection
		lk_selection.current().get(0,(TTPtr*)&p_node);
		
		// get the value of the node
		j_err = jamoma_node_attribute_get(p_node, attr, &ac, &av);
		
		if(!j_err){
			// output the OSCAddress of the node (in case we use * inside the x->attrname)
			fullAddress = jamoma_node_OSC_address(p_node)->s_name;
			if(attr != jps_value){
				fullAddress += C_PROPERTY;
				fullAddress += attr->s_name;
			}
			outlet_anything(x->address_out, gensym((char*)fullAddress.data()), 0, NULL);
			
			// then output data as a list
			outlet_list(x->data_out, 0L, ac, av);
		}
		else
			object_error((t_object*)x,"%s doesn't exist", x->attr_name->s_name);
		
		// free memory allocated inside the get property method
		sysmem_freeptr(av);
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
	TTValue			c;
	TTValuePtr		couple;
	TTNodePtr		p_node;
	TTCallbackPtr	p_clbk;
	TTNodePtr		aNode = (TTNodePtr)atom_getobj(&argv[0]);
	long			flag = atom_getlong(&argv[1]);
	bool			found;
	
	switch (flag) {
			
		case kAddressCreated :
		{
			
			//post("jcom.receive %s observe a node creation at %s", x->attr_name->s_name, oscAddress->s_name);
			
			if(x->_attribute == gensym("created"))
			{
				// output the OSCAddress of the new node
				outlet_anything(x->address_out, oscAddress, 0, NULL);
			}
			else if ( (x->_attribute != gensym("destroyed")) && (x->_attribute != gensym("initialized")) )
			{
				// is the observer already exist ?
				found = false;
				if(x->lk_couple){
					
					// for each node of the selection
					for(x->lk_couple->begin(); x->lk_couple->end(); x->lk_couple->next()){
						
						// get a couple
						c = x->lk_couple->current();
						
						// get the node of the couple
						c.get(0, (TTPtr*)&p_node);
						
						// compare it to the receive node
						if(p_node == aNode)
							found = true;
					}
				}
				
				if(!found)
				{
					// start attribute observation on the node
					jamoma_node_attribute_observer_add(aNode, x->_attribute, (t_object*)x, gensym("receive_node_attribute_callback"), &newAttrCallback);
					
					// memorize the node and his attribute observer
					couple = new TTValue((TTPtr)aNode);
					couple->append((TTPtr)newAttrCallback);
					x->lk_couple->append(couple);
				}
			}
			
			break;
		}
			
		case kAddressDestroyed :
		{
			
			//post("jcom.receive %s observe a node destruction at %s", x->attr_name->s_name, oscAddress->s_name);
			
			if(x->_attribute == gensym("destroyed"))
			{
				// output the OSCAddress of the old node
				outlet_anything(x->address_out, oscAddress, 0, NULL);
			}
			else if ( (x->_attribute != gensym("created")) && (x->_attribute != gensym("initialized")) )
			{
				// look at the node among memorized <node, observer>
				if(x->lk_couple){
					
					// for each node of the selection
					for(x->lk_couple->begin(); x->lk_couple->end(); x->lk_couple->next()){
						
						// get a couple
						c = x->lk_couple->current();
						
						// get the node of the couple
						c.get(0, (TTPtr*)&p_node);
						
						// compare it to the receive node
						if(p_node == aNode){
							
							// get the observer of the couple
							c.get(1, (TTPtr*)&p_clbk);
							
							// stop attribute observation of the node
							jamoma_node_attribute_observer_remove(p_node, x->_attribute, p_clbk);
							
							// forget this couple
							x->lk_couple->remove(c);
						}
					}
				}
			}
			
			break;
		}
			
		case kAddressInitialized :
		{
			//post("jcom.receive %s observe a node initialisation at %s", x->attr_name->s_name, oscAddress->s_name);
			
			if(x->_attribute == gensym("initialized"))
			{
				// output the OSCAddress of the initialized node
				outlet_anything(x->address_out, oscAddress, 0, NULL);
			}
			break;
		}
			
		default:
			break;
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
	TTValue			c;
	TTNodePtr		p_node;
	TTCallbackPtr	p_clbk;
	
	// remove observers
	if(x->lk_couple){
		
		// for each couple
		for(x->lk_couple->begin(); x->lk_couple->end(); x->lk_couple->next()){
			
			// get a couple
			c = x->lk_couple->current();
			
			// get the node of the couple
			c.get(0,(TTPtr*)&p_node);
									
			// get the observer of the couple
			c.get(1, (TTPtr*)&p_clbk);

			// stop attribute observation of the node
			jamoma_node_attribute_observer_remove(p_node, x->_attribute, p_clbk);
				
			// forget this couple
			x->lk_couple->remove(c);
		}
	}
	
	delete x->lk_couple;
	
	// stop life cycle observation
	if(x->_address)
		jamoma_directory_observer_remove(x->_address, x->life_observer);
}