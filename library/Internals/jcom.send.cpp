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
	t_object					ob;					///< REQUIRED: Our object
	t_symbol					*attr_name;			///< ATTRIBUTE: name
	t_symbol					*_address;			///< the address to bind
	t_symbol					*_attribute;		///< the attribute to bind (default : value)
	TTListPtr					lk_couple;			///< a pointer to a list of couple < TTNodes, address >
	TTObjectPtr					life_observer;		///< a pointer to a life cycle observer
	TTBoolean					isSending;			///< a flag to stop infinite loop
} t_send;

// Prototypes
void		*send_new(t_symbol *s, long argc, t_atom *argv);
void		send_free(t_send *x);
void		send_assist(t_send *x, void *b, long msg, long arg, char *dst);

t_max_err	send_setname(t_send *x, void *attr, long argc, t_atom *argv);

void		send_bind(t_send *x);
void		send_remove(t_send *x);
void		send_directory_callback(t_send *x, t_symbol *mess, long argc, t_atom *argv);

void		send_bang(t_send *x);
void		send_int(t_send *x, long value);
void		send_float(t_send *x, double value);
void		send_list(t_send *x, t_symbol *msg, long argc, t_atom *argv);

// Globals
static t_class		*s_send_class;				// Required: Global pointer for our class


/************************************************************************************/
// Main() Function

void send_initclass()
{
	long attrflags = 0;
	t_class *c;
	t_object *attr;
	
	// Define our class
	c = class_new("jcom.send", 
				  (method)send_new, 
				  (method)send_free, 
				  sizeof(t_send), 
				  (method)0L, 
				  A_GIMME, 
				  0);

	// Make methods accessible for our class:
	class_addmethod(c, (method)send_directory_callback,	"send_directory_callback",		A_CANT, 0);
	class_addmethod(c, (method)send_bang,				"bang",							0L);
	class_addmethod(c, (method)send_int,				"int",							A_LONG, 0L);
	class_addmethod(c, (method)send_float,				"float",						A_FLOAT, 0L);
	class_addmethod(c, (method)send_list,				"list",							A_GIMME, 0L);
	class_addmethod(c, (method)send_list,				"anything",						A_GIMME, 0L);
    class_addmethod(c, (method)send_assist,				"assist",						A_CANT, 0L);
    class_addmethod(c, (method)object_obex_dumpout, 	"dumpout",						A_CANT,0);
	
	// ATTRIBUTE: name
	attr = attr_offset_new("name", _sym_symbol, attrflags,
		(method)0, (method)send_setname, calcoffset(t_send, attr_name));
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
	long	 attrstart = attr_args_offset(argc, argv);		// support normal arguments
	t_symbol *arg;
	t_send	 *x = (t_send *)object_alloc(s_send_class);
	
	if(x){
		object_obex_store((void *)x, _sym_dumpout, (object *)outlet_new(x, NULL));
		
		x->attr_name = NULL;
		x->_address = NULL;
		x->_attribute = NULL;
		x->life_observer = NULL;
		x->lk_couple = NULL;
		x->isSending = false;
		
		//attr_args_process(x, argc, argv);			// handle attribute args				
		
		// If no name was specified as an attribute
		if(x->attr_name == NULL){
			if(attrstart > 0)
			{
				arg = atom_getsym(argv);
				if (arg->s_name[0] == C_SEPARATOR)
				{
						x->attr_name = arg;
						send_bind(x);
				}
			}
			else
				x->attr_name = SymbolGen("jcom.receive no arg specified");
		}
		
	}
	return x;
}

void send_free(t_send *x)
{
	send_remove(x);
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

// ATTRIBUTE: name
t_max_err send_setname(t_send *x, void *attr, long argc, t_atom *argv)
{
	t_symbol *arg = atom_getsym(argv);
	
	if (arg->s_name[0] == C_SEPARATOR)
	{
		if (arg != x->attr_name)
		{
			send_remove(x);
			x->attr_name = arg;
			send_bind(x);
		}
	}
	
	return MAX_ERR_NONE;
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
	TTValue		c;
	TTNodePtr	p_node;
	t_symbol	*address;
	long i;
	
	// prepend the data with an OSC address
	// to change the x->attr_name
	if (msg->s_name[0] == C_SEPARATOR)
	{
		if (msg != x->attr_name)
		{
			send_remove(x);
			x->attr_name = msg;
			send_bind(x);
		}
	}
	
	// If there is a node selection
	if (!x->isSending){
		if (x->lk_couple){
			if (!x->lk_couple->isEmpty()){
				
				// send data to each node of the selection
				x->isSending = true;
				for(x->lk_couple->begin(); x->lk_couple->end(); x->lk_couple->next()){
					
					// get a couple
					c = x->lk_couple->current();
					
					// get the node of the couple
					c.get(0,(TTPtr*)&p_node);
					
					// get the address of the couple
					c.get(1, (TTPtr*)&address);
					
					// 1. set the attribute of the node
					jamoma_node_attribute_set(p_node, x->_attribute, argc, argv);
					
					// 2. notify attribute observers
					jamoma_node_attribute_observer_notify(p_node, x->_attribute, address, argc, argv);
				}
				x->isSending = false;
			}
		}
	}
}

void send_bind(t_send *x)
{
	TTSymbolPtr oscAddress_parent, oscAddress_name, oscAddress_instance, oscAddress_attribute, oscAddress_noAttribute;
	TTList lk_selection;
	TTNodePtr p_node;
	TTValuePtr couple;
	JamomaError err = JAMOMA_ERR_NONE;
	
	x->lk_couple = new TTList();
	
	if (jamoma_directory){
		
		// 0. split the name in address part and attribute part
		splitOSCAddress(TT(x->attr_name->s_name), &oscAddress_parent, &oscAddress_name, &oscAddress_instance, &oscAddress_attribute);
		mergeOSCAddress(&oscAddress_noAttribute, oscAddress_parent, oscAddress_name, oscAddress_instance, NO_ATTRIBUTE);
		x->_address = SymbolGen((char*)oscAddress_noAttribute->getCString());
		
		if (oscAddress_attribute != NO_ATTRIBUTE)
			x->_attribute = SymbolGen((char*)oscAddress_attribute->getCString());
		else
			x->_attribute = jps_value;
		
		// 1. look for the node(s) into the directory
		err = jamoma_directory_get_node(x->_address, lk_selection, &p_node);
		
		// 2. if the address exist
		// make a list of couple < node, address >
		if (!err)
		{
			for(lk_selection.begin(); lk_selection.end(); lk_selection.next())
			{
				// get a node from the selection
				lk_selection.current().get(0,(TTPtr*)&p_node);
				
				// memorize the node and his address
				couple = new TTValue((TTPtr)p_node);
				couple->append((TTPtr)jamoma_node_OSC_address(p_node));
				x->lk_couple->append(couple);
			}
		}
		
		// 3. observe any creation or destruction below the attr_name address
		jamoma_directory_observer_add(x->_address, (t_object*)x, gensym("send_directory_callback"), &x->life_observer);
	}
}

void send_remove(t_send *x)
{
	TTValue			c;
	TTNodePtr		p_node;
	
	// remove couples
	if(x->lk_couple){
		
		// for each couple
		for(x->lk_couple->begin(); x->lk_couple->end(); x->lk_couple->next()){
			
			// get a couple
			c = x->lk_couple->current();
			
			// get the node of the couple
			c.get(0,(TTPtr*)&p_node);
			
			// forget this couple
			x->lk_couple->remove(c);
		}
	}
	
	delete x->lk_couple;
	
	// stop life cycle observation
	if(x->life_observer)
		jamoma_directory_observer_remove(x->_address, x->life_observer);
}

void send_directory_callback(t_send *x, t_symbol *mess, long argc, t_atom *argv)
{
	TTValue			c;
	TTValuePtr		couple;
	TTNodePtr		p_node;
	TTNodePtr		aNode = (TTNodePtr)atom_getobj(&argv[0]);
	long			flag = atom_getlong(&argv[1]);
	bool			found;
	
	switch (flag) {
			
		case kAddressCreated :
		{
			//post("jcom.send %s observe a node creation at %s", x->attr_name->s_name, mess->s_name);
			
			// is the couple already exist ?
			found = false;
			if(x->lk_couple){
				
				// for each couple of the selection
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
				// memorize the node and his address
				// TODO : only the address at the same level (not lower address)
				//if ( compareOSCAddress(TT(x->_address->s_name), TT(mess->s_name)) == kAddressEqual )
				//{
					couple = new TTValue((TTPtr)aNode);
					couple->append((TTPtr)mess);
					x->lk_couple->append(couple);
				//}
			}
			
			break;
		}
			
		case kAddressDestroyed :
		{
			//post("jcom.send %s observe a node destruction at %s", x->attr_name->s_name, mess->s_name);
			
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
						
						// forget this couple
						x->lk_couple->remove(c);
					}
				}
				
				break;
			}
			
		case kAddressInitialized :
			break;
			
		default:
			break;
		}
	}
}
