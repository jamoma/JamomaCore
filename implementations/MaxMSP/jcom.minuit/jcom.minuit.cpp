/* 
 * jcom.minuit
 * External for Jamoma : ...
 * By Stan Bundervoet, Théo de la Hogue, Copyright 2009
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */
#include "jcom.minuit.h"

using namespace std;

// Globals
t_class		*minuit_class;

// implementation
#if 0
#pragma mark -
#pragma mark Class Definition
#endif 0

int JAMOMA_EXPORT_MAXOBJ main(void)
{
	t_class *c;
	
	jamoma_init();
	common_symbols_init();
	
	// Define our class
	c = class_new("jcom.minuit",(method)minuit_new, (method)minuit_free, (long)sizeof(t_minuit), 0L, A_GIMME, 0);
	
	// add methods
	class_addmethod(c, (method)minuit_notify,		"notify",		A_CANT, 0);
	class_addmethod(c, (method)minuit_assist,		"assist",		A_CANT, 0);
	
	// this method posts the children (leaves or nodes) and the properties of the node which address is given
	class_addmethod(c, (method)minuit_add_device,	"add_device",	A_SYM, A_SYM, A_LONG, 0);
	class_addmethod(c, (method)minuit_namespace,	"?namespace",	A_SYM, 0);
	class_addmethod(c, (method)minuit_get,			"?get",			A_SYM, 0);
	class_addmethod(c, (method)minuit_set,			"?set",			A_GIMME, 0);
	class_addmethod(c, (method)minuit_anything,		"anything",		A_GIMME, 0);
	
	class_addmethod(c, (method)minuit_debug,		"debug",		A_LONG, 0);
	class_addmethod(c, (method)minuit_dump,			"dump",			0);
	
	// Finalize our class
	class_register(CLASS_BOX, c);
	minuit_class = c;
	return 0;
}

#if 0
#pragma mark -
#pragma mark Life Cycle
#endif 0

void *minuit_new(t_symbol *name, long argc, t_atom *argv)
{
	t_minuit *x;

	x = (t_minuit*)object_alloc(minuit_class);

	if(x){
		
		x->p_info = outlet_new(x, 0);
		
		// get the pointers to the jamoma directory and his root
		x->p_directory = jamoma_directory_init();
		x->p_node = x->p_directory->getRoot();
		
		x->device = _sym_nothing;
		x->b_debug = false;
		
		// Initialize Minuit standard symbols
		x->minuit_namespace_request = gensym("?namespace");
		x->minuit_get_request = gensym("?get");
		x->minuit_namespace_answer = gensym(":namespace");
		x->minuit_get_answer = gensym(":get");
		
		x->minuit_start_nodes = gensym("nodes={");
		x->minuit_start_leaves = gensym("leaves={");
		x->minuit_start_attributes = gensym("attributes={");
		
		x->minuit_value = gensym("value");
		x->minuit_type = gensym("type");
		x->minuit_access = gensym("access");
		x->minuit_range = gensym("range");
		x->minuit_comment = gensym("comment");
		
		x->minuit_getsetter = gensym("getsetter");
		x->minuit_getter = gensym("getter");
		x->minuit_setter = gensym("setter");
		
		// Initialize the Jamoma Controller
		jamoma_controller_init();
		
		// add a callback to receive messages from the Controller
		jamoma_controller->addWaitedMessageAction(x, &minuit_callback);
		
		// send a namespace request to Virage
		//jamoma_controller->sendMessage("/Virage ?namespace /");
		
	}
	return x;
}

void minuit_free(t_minuit *x)
{
	;
}

#if 0
#pragma mark -
#pragma mark Methods
#endif 0

t_max_err minuit_notify(t_minuit *x, t_symbol *s, t_symbol *msg, void *sender, void *data)
{
	object_post((t_object *)x, "notification : %s", msg->s_name);
	return MAX_ERR_NONE;
}

void minuit_assist(t_minuit *x, void *b, long msg, long arg, char *dst)
{
	if (msg == ASSIST_INLET) { // inlet
		//if(arg == 0)
		//strcpy(dst, "I am inlet 0");
	} 
	else {	// outlet
		if(arg == 0)
			strcpy(dst, "info outlet");
	}		
}


// TODO : muinuit_namespace_request_callback and muinuit_get_request_callback
void minuit_callback(void *arg, std::string message)
{
	t_minuit *x = (t_minuit*)arg;
	long argc = 0;
	t_atom *argv = NULL;
	
	atom_setparse(&argc, &argv, (char*)std::string(message).c_str());
	
	if(argc > 1){
		if(atom_gettype(&argv[0]) == A_SYM)
			
			if(atom_getsym(&argv[0]) == x->minuit_namespace_request){
				
				if(atom_gettype(&argv[1]) == A_SYM)
					defer(x,(method)minuit_donamespace, atom_getsym(&argv[1]), 0, 0);
			}
			else
				if(atom_getsym(&argv[0]) == x->minuit_get_request)
					if(atom_gettype(&argv[1]) == A_SYM)
						defer(x,(method)minuit_doget, atom_getsym(&argv[1]), 0, 0);
	}
					
	if(x->b_debug)
		object_post((t_object*)x,"RECEIVE %s", std::string(message).c_str());

}

void minuit_add_device(t_minuit *x, t_symbol *device_name, t_symbol *ip, long port)
{
	char s_port[8];
	
	// remove the actual Minuit device
	if(x->device != _sym_nothing)
		jamoma_controller->deviceRemove(x->device->s_name);
	
	// create a new one
	snprintf(s_port, 8, "%ld", port);
	jamoma_controller->addDevice(device_name->s_name, "Minuit", ip->s_name, s_port);
	x->device = device_name;
	
	if(x->b_debug)
		jamoma_controller_dump();
}

void minuit_namespace(t_minuit *x, t_symbol *address)
{
	defer(x, (method)minuit_donamespace, address, 0, 0);
}

void minuit_donamespace(t_minuit *x, t_symbol *oscAddress)
{
	short i;
	TTString temp;
	TTList lk_prp, lk_chd;
	t_linklist *lk_leaves, *lk_nodes;
	TTSymbolPtr n_attr;
	t_symbol *n_type, *s_attr;
	t_symbol *n_instance;
	
	
	// prepare s_answer
	TTString s_answer = x->device->s_name;
	s_answer += " ";
	s_answer += x->minuit_namespace_answer->s_name;
	s_answer += " ";
	s_answer += oscAddress->s_name;

	minuit_goto(x, oscAddress);
	
	// Il nous faut avoir les noeuds inférieurs et les attributs du noeud à l'addresse données
	// auto-translation: It is necessary for us to have the nodes the lower and attributes of the node than the address given
	if(x->p_node && x->address){
		
		jamoma_node_attribute_list(x->p_node, lk_prp);
		jamoma_node_children(x->p_node, lk_chd);
		
		// the two lists for the nodes and leaves
		lk_leaves = linklist_new();
		lk_nodes = linklist_new();
		
		// if there are properties
		if(!lk_prp.isEmpty()){
			
			s_answer += " ";
			s_answer += x->minuit_start_attributes->s_name;
			s_answer += " ";
			s_answer += x->minuit_access->s_name;
			s_answer += " ";
			
			// write an outline for each attribut
			for(lk_prp.begin(); lk_prp.end(); lk_prp.next()){
				
				lk_prp.current().get(0,(TTSymbolPtr*)&n_attr);
				s_attr = minuit_convert_attribut_jamoma2minuit(x, gensym((char*)n_attr->getCString()));
				
				if(s_attr){
					s_answer += s_attr->s_name;
					s_answer += " ";
				}
			}
			s_answer += "}";
		}
		
		// if there are children
		if(!lk_chd.isEmpty()){
			
			//a check if its leaves or nodes
			for(lk_chd.begin(); lk_chd.end(); lk_chd.next()){
				
				lk_chd.current().get(0,(TTPtr*)&x->p_node);
				n_type = jamoma_node_type(x->p_node);
				
				if((n_type == gensym("container")) || (n_type == gensym("hub")))
					linklist_append(lk_nodes, x->p_node);
				else
					if((n_type == jps_subscribe_parameter) /*|| (n_type == jps_subscribe_message) || (n_type == jps_subscribe_return)*/)
						linklist_append(lk_leaves, x->p_node);
			}
			
			if(linklist_getsize(lk_nodes)){
				
				s_answer += " ";
				s_answer += x->minuit_start_nodes->s_name;
				s_answer += " ";
				
				for(i=0; i<linklist_getsize(lk_nodes); i++){
					// get the name
					x->p_node = (TTNodePtr)linklist_getindex(lk_nodes,i);
					temp = jamoma_node_name(x->p_node)->s_name;
					
					// get instance
					n_instance = jamoma_node_instance(x->p_node);
					if(n_instance != gensym("")){
						temp += S_INSTANCE->getCString();
						temp += n_instance->s_name;
					}

					s_answer += temp;
					s_answer += " ";
				}
				
				s_answer += "}";
			}
			
			if(linklist_getsize(lk_leaves)) {
				
				s_answer += " ";
				s_answer += x->minuit_start_leaves->s_name;
				s_answer += " ";
				
				for(i=0; i<linklist_getsize(lk_leaves); i++){
					
					// get the name
					x->p_node = (TTNodePtr)linklist_getindex(lk_leaves,i);
					
					temp = jamoma_node_name(x->p_node)->s_name;
					
					// get instance
					n_instance = jamoma_node_instance(x->p_node);
					if(n_instance != gensym("")){
						temp += S_INSTANCE->getCString();
						temp += n_instance->s_name;
					}
					
					s_answer += temp;
					s_answer += " ";
				}
				
				s_answer += "}";
			}
			// TODO : return !namespace address
		}
		
		// send answer
		jamoma_controller->sendMessage(s_answer);
		if(x->b_debug)
			object_post((t_object*)x, "SEND %s", s_answer.c_str());
	}
}

void minuit_get(t_minuit *x, t_symbol *oscaddress)
{
	defer(x, (method)minuit_doget, oscaddress, 0, 0);
}

void minuit_doget(t_minuit *x, t_symbol *oscAddress)
{
	TTSymbolPtr oscAddress_parent, oscAddress_name, oscAddress_instance, oscAddress_propertie;
	t_symbol *s_attr, *n_type;
	TTString address;
	TTString attribute;
	long nb_value = 0, i;
	t_atom  *attr_value = NULL;
	char *s_value = NULL;
	t_max_err m_err;
	TTErr tt_err;

	// prepare s_answer
	TTString s_answer = x->device->s_name;
	
	s_answer += " ";
	s_answer += x->minuit_get_answer->s_name;
	s_answer += " ";
	
	//split OSC the address
	// TODO : make a split method to only get /address:attribut
	tt_err = splitOSCAddress(TT(oscAddress->s_name),&oscAddress_parent,&oscAddress_name, &oscAddress_instance, &oscAddress_propertie);
	
	// if no error in the parsing of the OSC address
	if(tt_err == kTTErrNone){
		
		// Making the address part /parent/name.instance
		// TODO : make a split method to only get /address:attribut
		address = oscAddress_parent->getCString();
		address += S_SEPARATOR->getCString();
		address += oscAddress_name->getCString();
		if(oscAddress_instance != NO_INSTANCE){
			address += S_INSTANCE->getCString();
			address += oscAddress_instance->getCString();
		}
		// goto the address
		minuit_goto(x, gensym((char*)address.c_str()));
		
		if(x->p_node && x->address){
			
			// get node type
			n_type = jamoma_node_type(x->p_node);
			
			// check attribute
			if(oscAddress_propertie == NO_PROPERTY)
				attribute += x->minuit_value->s_name;
			else
				attribute += oscAddress_propertie->getCString();
			
			// get the attribute value
			s_attr = minuit_convert_attribut_minuit2jamoma(x, gensym((char*)attribute.c_str()));
			if(s_attr){
				
				if(s_attr == x->minuit_access){
					nb_value = 1;
					attr_value = (t_atom*)malloc((long)sizeof(t_atom));
					m_err = 0;
					
					if(n_type == jps_subscribe_parameter)
						atom_setsym(attr_value, x->minuit_getsetter);
					
					if(n_type == jps_subscribe_message)
						atom_setsym(attr_value, x->minuit_setter);
					
					if(n_type == jps_subscribe_return)
						atom_setsym(attr_value, x->minuit_getter);
				}
				else{
					if((n_type == jps_subscribe_parameter) || (n_type == jps_subscribe_return))
						m_err = jamoma_node_attribute_get(x->p_node, s_attr, &nb_value, &attr_value);
					else
						m_err = 1;
				}
				
				if(!m_err){
					
					//prepare answer
					if(oscAddress_propertie == NO_PROPERTY)
						s_answer += address;
					else{
						s_answer += address;
						s_answer += S_PROPERTY->getCString();
						s_answer += attribute;
					}
					s_answer += " ";
					
					// append the <value> to the s_answer
					if(nb_value){
						
						i = 0;
						while(i < nb_value){
							
							s_value = (char*)malloc((long)sizeof(char)*64);
							
							if(atom_gettype(&attr_value[i]) == A_SYM)
								snprintf(s_value, 64, "%s", atom_getsym(&attr_value[i])->s_name);
							else
								if(atom_gettype(&attr_value[i]) == A_LONG)
									snprintf(s_value, 64, "%ld", atom_getlong(&attr_value[i]));
								else
									if(atom_gettype(&attr_value[i]) == A_FLOAT)
										snprintf(s_value, 64, "%f", atom_getfloat(&attr_value[i]));
							i++;
							s_answer += s_value;
							free(s_value);
							
							if(i < nb_value)
								s_answer += " ";
						}
						
						// send answer
						jamoma_controller->sendMessage(s_answer);
						if(x->b_debug)
							object_post((t_object*)x, "SEND %s", s_answer.c_str());
					}
					else{
						// TODO : return !get address
						object_error((t_object*)x,"there are no values attached to the requested attribute");
					}
				}
				else{
					;// TODO : return !get address
				}
			}
		}
		else{
			;// TODO : return !get address
		}
	}
}

void minuit_anything(t_minuit *x, t_symbol *msg, long argc, t_atom *argv)
{
	defer(x, (method)minuit_doset, msg, argc, argv);
}

void minuit_set(t_minuit *x, t_symbol *msg, long argc, t_atom *argv)
{
	if(atom_gettype(argv) == A_SYM)
		defer(x, (method)minuit_doset, atom_getsym(argv), argc-1, argv+1);
}

void minuit_doset(t_minuit *x, t_symbol *oscAddress, long argc, t_atom *argv)
{
	t_symbol *s_attr, *n_type;
	TTSymbolPtr oscAddress_parent, oscAddress_name, oscAddress_instance, oscAddress_propertie;
	TTString address;
	TTString attribute;
	TTErr tt_err;
	
	//split OSC the address
	// TODO : make a split method to only get /address:attribut
	if(oscAddress){
		tt_err = splitOSCAddress(TT(oscAddress->s_name),&oscAddress_parent,&oscAddress_name, &oscAddress_instance, &oscAddress_propertie);
		
		// if no error in the parsing of the OSC address
		if(tt_err == kTTErrNone){
			
			// Making the address part /parent/name.instance
			// TODO : make a split method to only get /address:attribut
			address = oscAddress_parent->getCString();
			address += C_SEPARATOR;
			address += oscAddress_name->getCString();
			if(oscAddress_instance != NO_INSTANCE){
				address += C_PROPERTY;
				address += oscAddress_instance->getCString();
			}
			
			// goto the address
			minuit_goto(x, gensym((char*)address.c_str()));
			if(x->p_node && x->address){
				
				// check attribute
				if(oscAddress_propertie == NO_PROPERTY)
					attribute = x->minuit_value->s_name;
				else
					attribute = oscAddress_propertie->getCString();	// Currently Virage doesn't send a / before attribute (maybe we could change the spec of Minuit) ?
				
				// set the attribut value
				s_attr = minuit_convert_attribut_minuit2jamoma(x, gensym((char*)attribute.c_str()));
				if(s_attr){
					if(s_attr == x->minuit_access){
						;// TODO : return !set address
					}
					else{
						n_type = jamoma_node_type(x->p_node);
						if((n_type == jps_subscribe_parameter) || (n_type == jps_subscribe_message))
							jamoma_node_attribute_set(x->p_node, s_attr, argc, argv);
						else
							; // TODO : return !set address
					}
				}
			}
		}
		else
			// TODO : return !set address
			object_error((t_object*)x,"the first argument have to be an OSC address");
	}
}

void minuit_debug(t_minuit *x, long n)
{
	x->b_debug = n > 0;
}

void minuit_dump(t_minuit *x)
{
	// dump all the address of the directory in the Max window
	jamoma_directory_dump();
}

void minuit_goto(t_minuit *x, t_symbol *address)
{
	JamomaError err = JAMOMA_ERR_NONE;
	TTList lk_nodes;
	
	// Are we dealing with an OSC message ?
	if(address->s_name[0] == C_SEPARATOR){
		
		err = jamoma_directory_get_node(address, lk_nodes, &x->p_node);
		
		// if the address exists
		if(err == JAMOMA_ERR_NONE)
			x->address = address;
		else{
			x->address = NULL;
			x->p_node = NULL;
			object_post((t_object*)x,"%s doesn't exist", address->s_name);
		}
	}
}

t_symbol* minuit_convert_attribut_jamoma2minuit(t_minuit *x, t_symbol *attribute)
{
	if(attribute == jps_value)
		return x->minuit_value;
	
	if(attribute == jps_type)
		return x->minuit_type;
	
	if(attribute == x->minuit_access)
		return x->minuit_access;
	
	if(attribute == jps_description)
		return x->minuit_comment;
	
	if(attribute == jps_range_bounds)
		return x->minuit_range;
	
	return NULL;
}

t_symbol* minuit_convert_attribut_minuit2jamoma(t_minuit *x, t_symbol *attribute)
{
	if(attribute == x->minuit_value)
		return jps_value;
	
	if(attribute == x->minuit_type)
		return jps_type;
	
	if(attribute == x->minuit_access)
		return x->minuit_access;
	
	if(attribute == x->minuit_comment)
		return jps_description;
	
	if(attribute == x->minuit_range)
		return jps_range_bounds;
	
	return NULL;
}