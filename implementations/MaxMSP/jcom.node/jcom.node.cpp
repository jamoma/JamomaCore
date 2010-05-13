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
	class_addmethod(c, (method)node_share_model_node,		"share_model_node",				A_CANT,	0);
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
	t_symbol	*adrs;
	
	if(x){
		
		x->p_out = outlet_new(x, 0);
		
		// the first arg is for /parent/name
		if (attrstart && argv) {
			atom_arg_getsym(&adrs, 0, attrstart, argv);
			x->relativeAddress = TT(adrs->s_name);
		}
		else
			x->relativeAddress = NO_NAME;
		
		// The following must be deferred because we have to interrogate our box,
		// and our box is not yet valid until we have finished instantiating the object.
		// Trying to use a loadbang method instead is also not fully successful (as of Max 5.0.6)
		defer_low((ObjectPtr)x, (method)node_build, 0, 0, 0);
		
	}
	return x;
}

void node_free(t_node *x)
{
	// unregister the node (normally it's done when the patcher is deleted but during edition time
	// it could be destroyed even if the patcher is not destroyed)
	jamoma_directory->TTNodeRemove(x->absoluteAddress);
}

#if 0
#pragma mark -
#pragma mark Methods
#endif 0

t_max_err node_notify(t_node *x, t_symbol *s, t_symbol *msg, void *sender, void *data)
{
	TTList returnedTTNodes;
	TTNodePtr firstReturnedTTNode;
	
	// if the patcher is deleted
	if (sender == x->modelPatcher)
		if (msg == _sym_free) {
			
			// unregister the modelNode
			if(jamoma_directory->Lookup(x->modelAddress, returnedTTNodes, &firstReturnedTTNode))
				jamoma_directory->TTNodeRemove(x->modelAddress);
			
			// no more notification
			object_detach_byptr((ObjectPtr)x, x->modelPatcher);
		}
	
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
	JamomaError err;
	//object_post((ObjectPtr)x, "*************** START BUILD ****************");
	//object_post((ObjectPtr)x, "name = %s", x->name->getCString());
	//object_post((ObjectPtr)x, "parent = %s", x->parent->getCString());
	
	err = jamoma_patcher_register_jcom(x->relativeAddress, gensym("container"), (ObjectPtr)x, &x->node, &x->modelNode);
	
	if (!err) {
		
		x->node->getOscAddress(&x->absoluteAddress);
		x->modelNode->getOscAddress(&x->modelAddress);
		
		// attach to the patcher to be notified of his destruction
		x->modelPatcher = jamoma_object_getpatcher((ObjectPtr)x);
		object_attach_byptr_register(x, x->modelPatcher, _sym_box);
		
		object_post((ObjectPtr)x, "node address = %s", x->absoluteAddress->getCString());
	}
}

void node_share_model_node(t_node *x, TTNodePtr *modelNode)
{
	*modelNode = x->modelNode;
}

void node_directory_callback(t_node *x, t_symbol *msg, long argc, t_atom *argv)
{
	//TTNodePtr		node = (TTNodePtr)atom_getobj(&argv[0]);
	long			flag = atom_getlong(&argv[1]);
		
	switch (flag) {
			
		case kAddressCreated :
		{
			//post("jcom.node observe a node creation at %s", msg->s_name);
			
			// TODO : Memorized each parameter below
			// is the created node a parameter ?
			
			
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