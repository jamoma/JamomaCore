/* 
 * jcom.node
 * External for Jamoma : ...
 * By Théo de la Hogue, Copyright 2009
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */
#include "jcom.node.h"

// Globals
t_class		*node_class;

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
	c = class_new("jcom.node",(method)node_new, (method)node_free, (long)sizeof(t_node), 0L, A_GIMME, 0);
	
	// add methods
	class_addmethod(c, (method)node_share_model_node,		"node_share_model_node",		A_CANT,	0);
	class_addmethod(c, (method)node_directory_callback,		"node_directory_callback",		A_CANT, 0);
	class_addmethod(c, (method)node_notify,					"notify",						A_CANT, 0);
	class_addmethod(c, (method)node_assist,					"assist",						A_CANT, 0);
	
	class_addmethod(c, (method)node_bang,					"bang",							0);
	
	
	// Finalize our class
	class_register(CLASS_BOX, c);
	node_class = c;
	return 0;
}

#if 0
#pragma mark -
#pragma mark Life Cycle
#endif 0

void *node_new(t_symbol *name, long argc, t_atom *argv)
{
	long		attrstart = attr_args_offset(argc, argv);
	t_node		*x = (t_node*)object_alloc(node_class);
	t_symbol	*address;
	TTSymbolPtr _instance, _attribute;
	
	if(x){
		
		x->p_out = outlet_new(x, 0);
		
		// the first arg is for /parent/name
		if (attrstart && argv) {
			atom_arg_getsym(&address, 0, attrstart, argv);
			splitOSCAddress(TT(address->s_name), &x->parent, &x->name, &_instance, &_attribute);
		}
		
		// The following must be deferred because we have to interrogate our box,
		// and our box is not yet valid until we have finished instantiating the object.
		// Trying to use a loadbang method instead is also not fully successful (as of Max 5.0.6)
		defer_low((ObjectPtr)x, (method)node_build, 0, 0, 0);
		
	}
	return x;
}

void node_free(t_node *x)
{
	;
}

#if 0
#pragma mark -
#pragma mark Methods
#endif 0

t_max_err node_notify(t_node *x, t_symbol *s, t_symbol *msg, void *sender, void *data)
{
	object_post((t_object *)x, "notification : %s", msg->s_name);
	return MAX_ERR_NONE;
}

void node_assist(t_node *x, void *b, long msg, long arg, char *dst)
{
	if (msg == ASSIST_INLET) { // inlet
		//if(arg == 0)
		//strcpy(dst, "I am inlet 0");
	} 
	else {	// outlet
		//if(arg == 0)
		//strcpy(dst, "I am outlet 0");
	}		
}

void node_bang(t_node *x)
{
	;
}

void node_build(t_node *x)
{
	ObjectPtr	patcher, obj = NULL;
	SymbolPtr	objclass = NULL;
	TTList		*modelList, returnedNodes;
	TTNodePtr	parentNode;
	TTString	nodeAddress;
	bool		found, newInstanceCreated;
	TTErr		err;
	
	x->built = false;
	
	// look for other jcom.node in the patcher
	// to ask them the model node.
	// this would optimized the registration process
	found = false;
	patcher = jamoma_object_getpatcher((t_object*)x);
	obj = object_attr_getobj(patcher, gensym("firstobject"));
	
	while (obj && !found) {
		objclass = object_attr_getsym(obj, gensym("maxclass"));
		if (found = (objclass == gensym("jcom.node")))
			break;
		obj = object_attr_getobj(obj, gensym("nextobject"));
	}
	
	// if there is another jcom.node in the patcher
	if (found) {
		
		// ask it the modelNode
		x->modelNode = NULL;
		object_method(obj, gensym("node_share_model_node"), &x->modelNode);
	}
	
	// if this is the first jcom.node of the patcher
	// or the sharing failed
	if (!x->modelNode) {
		
		// Get all model patcher above the jcom.node and their modelName 
		// looking recursively at all parent patcher.
		modelList = new TTList();
		jamoma_node_build_model_list((ObjectPtr)x, &modelList);
		
		// register each model of the list if they don't exist as 
		// TTNode in the tree structure
		jamoma_directory_register_model_list(modelList, &x->modelNode);
	}
			
	// Build the node at /modelAddress/parent/node
	nodeAddress = jamoma_node_OSC_address(x->modelNode)->s_name;
	
	// check if parent exists
	if (x->parent != NO_PARENT) {
		
		if (x->parent->getCString()[0] != C_SEPARATOR)
			nodeAddress += "/";
		nodeAddress += x->parent->getCString();
		
		err = jamoma_directory->Lookup(TT(nodeAddress.data()), returnedNodes, &parentNode);
		
		// if parent don't exist wait for his creation
		if (err) {
			jamoma_directory_observer_add(gensym((char*)nodeAddress.data()), (ObjectPtr)x, gensym("node_directory_callback"), &x->life_observer);
			return;
		}
	}
	
	// then build the node
	if (x->name != NO_NAME) {
		if (x->name->getCString()[0] != C_SEPARATOR)
			nodeAddress += "/";
		nodeAddress += x->name->getCString();
	}
	
	jamoma_directory_register(gensym((char*)nodeAddress.data()), gensym("container"), (ObjectPtr)x, &x->node, &newInstanceCreated);
	x->node->getOscAddress(&x->address);
	x->name = x->node->getName();
	x->built = true;
	
	object_post((ObjectPtr)x, "node address = %s", x->address->getCString());
}

void node_share_model_node(t_node *x, TTNodePtr *modelNode)
{
	*modelNode = x->modelNode;
}

void node_directory_callback(t_node *x, t_symbol *msg, long argc, t_atom *argv)
{
	TTString		nodeAddress;
	TTNodePtr		node = (TTNodePtr)atom_getobj(&argv[0]);
	long			flag = atom_getlong(&argv[1]);
	bool			newInstanceCreated;

	if (!x->built) {
		
		switch (flag) {
				
			case kAddressCreated :
			{
				//post("jcom.node observe a node creation at %s", msg->s_name);
				
				nodeAddress = jamoma_node_OSC_address(x->modelNode)->s_name;
				
				if (x->parent->getCString()[0] != C_SEPARATOR)
					nodeAddress += "/";
				nodeAddress += x->parent->getCString();
				
				// if the node is the parent
				if( strcmp(nodeAddress.data(), jamoma_node_OSC_address(node)->s_name) == 0 ) {
					
					// then build the node
					if (x->name != NO_NAME) {
						if (x->name->getCString()[0] != C_SEPARATOR)
							nodeAddress += "/";
						nodeAddress += x->name->getCString();
					}
					
					jamoma_directory_register(gensym((char*)nodeAddress.data()), gensym("container"), (ObjectPtr)x, &x->node, &newInstanceCreated);
					x->node->getOscAddress(&x->address);
					x->name = x->node->getName();
					x->built = true;
					
					object_post((ObjectPtr)x, "node address = %s", x->address->getCString());
				}
				break;
			}
				
			case kAddressDestroyed :
			{
				post("jcom.node observe a node destruction at %s", msg->s_name);
				break;
			}
				
			case kAddressInitialized :
			{
				post("jcom.node %s observe a node initialisation at %s", msg->s_name);
				break;
			}
				
			default:
				break;
		}
	}
}