/* 
 * jcom.nmspc
 * External to deal with the Jamoma Namespace
 * By Théo de la Hogue, Copyright 2010
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */
#include "jcom.namespace.h"

// Globals
t_class		*nmspc_class;

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
	c = class_new("jcom.namespace",(method)nmspc_new, (method)nmspc_free, (long)sizeof(t_nmspc), 0L, A_GIMME, 0);

	// add methods
	class_addmethod(c, (method)nmspc_directory_callback,"nmspc_directory_callback",A_CANT, 0);
	class_addmethod(c, (method)nmspc_notify,			"notify",				A_CANT, 0);
	class_addmethod(c, (method)nmspc_assist,			"assist",				A_CANT, 0);
	
	// this method perform the current operation
	class_addmethod(c, (method)nmspc_bang,				"bang",					0);
	
	// this method expect one symbol to use as an address to perform the current operation
	class_addmethod(c, (method)nmspc_symbol,			"anything",				A_GIMME, 0);

	// this method save the namespace in an opml file
	// at selected path (if the path already exist)
	class_addmethod(c, (method)nmspc_writeagain,		"writeagain",			0);

	// this method save the namespace in an opml file at the given path or,
	// if there isn't path, open a dialog to select one.
	class_addmethod(c, (method)nmspc_write,				"write",				A_GIMME, 0);

	// this method dump all the namespace in the max window
	class_addmethod(c, (method)nmspc_dump,				"dump",					0);

	// this method output all children of the giving node (using OSC address)
	class_addmethod(c, (method)nmspc_get_children,		"getChildren",			A_SYM, 0);
	
	// this method output all instances of the giving node (using OSC address)
	class_addmethod(c, (method)nmspc_get_instances,		"getInstances",			A_SYM, 0);
	
	// this method output all attributes of the giving node (using OSC address)
	class_addmethod(c, (method)nmspc_get_attributes,	"getAttributes",		A_SYM, 0);
	
	// this method output all hub of the Jamoma patch
	class_addmethod(c, (method)nmspc_get_hubs,			"getHubs",				0);
	
	// this method output all parameters below the giving node (using OSC address)
	class_addmethod(c, (method)nmspc_get_parameters,	"getParameters",		A_SYM, 0);
	
	// this method output all messages below the giving node (using OSC address)
	class_addmethod(c, (method)nmspc_get_messages,		"getMessages",			A_SYM, 0);
	
	// this method output all returns below the giving node (using OSC address)
	class_addmethod(c, (method)nmspc_get_returns,		"getReturns",			A_SYM, 0);

	// this method add the scripting name space of Max to the Jamoma namespace
	class_addmethod(c, (method)nmspc_add_max_namespace,	"add_max_namespace",	0);
	
	// ATTRIBUTE: operation
	CLASS_ATTR_SYM(c,		"operation",		0,		t_nmspc,	attr_operation);
	CLASS_ATTR_ACCESSORS(c,	"operation",		0,		nmspc_attr_set_operation);
	CLASS_ATTR_ENUM(c,		"operation",		0,		"getChildren getInstances getAttributes getHubs getParameters getMessages getReturns");
	
	// ATTRIBUTE: address
	CLASS_ATTR_SYM(c,		"address",			0,		t_nmspc,	attr_address);
	CLASS_ATTR_ACCESSORS(c,	"address",			0,		nmspc_attr_set_address);
	
	// ATTRIBUTE: observe
	CLASS_ATTR_LONG(c,		"update",			0,		t_nmspc,	attr_update);
	CLASS_ATTR_ACCESSORS(c,	"update",			0,		nmspc_attr_set_update);
	CLASS_ATTR_ENUM(c,		"update",			0,		"none singly all");
	
	// Finalize our class
	class_register(CLASS_BOX, c);
	nmspc_class = c;
}

#if 0
#pragma mark -
#pragma mark Life Cycle
#endif 0

void *nmspc_new(t_symbol *name, long argc, t_atom *argv)
{
	t_nmspc		*x;
	t_atom		a[1];

	x = (t_nmspc*)object_alloc(nmspc_class);

	if(x){
		// Initialize the jamoma node directory (in case of...)
		jamoma_directory_init();
		
		x->_out = outlet_new(x, 0);
		
		x->attr_operation = _sym_none;
		x->attr_address = _sym_none;
		x->attr_update = _sym_none;
		
		x->life_observer = NULL;
		x->tempName = NO_NAME;

		x->nmspc_file_name = gensym("namespace.opml");
		x->nmspc_file_path = 0;
		
		x->op_getChildren = gensym("getChildren");
		x->op_getInstances = gensym("getInstances");
		x->op_getAttributes = gensym("getAttributes");
		x->op_getHubs = gensym("getHubs");
		x->op_getParameters = gensym("getParameters");
		x->op_getMessages = gensym("getMessages");
		x->op_getReturns = gensym("getReturns");
		
		// clear umenu
		outlet_anything(x->_out, _sym_clear, 0, NULL);
		
		// prepare umenu prefix to be concatenated
		atom_setlong(a, 0);
		outlet_anything(x->_out, gensym("prefix_mode"), 1, a);
		
		// no umenu prefix

		// handle attribute args
		attr_args_process(x, argc, argv);
	}
	return x;
}

void nmspc_free(t_nmspc *x)
{	
	// delete the observer
	if(x->life_observer)
		jamoma_directory_observer_remove(x->attr_address, x->life_observer);
}

#if 0
#pragma mark -
#pragma mark Methods
#endif 0

t_max_err nmspc_notify(t_nmspc *x, t_symbol *s, t_symbol *msg, void *sender, void *data)
{
	object_post((t_object *)x, "notification : %s", msg->s_name);
	return MAX_ERR_NONE;
}

void nmspc_assist(t_nmspc *x, void *b, long msg, long arg, char *dst)
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

// This method his called by the jcom.namespace observer attached to the directory.
// Read the TTNodeDirectory file to get info about life cycle observers mecanism
void nmspc_directory_callback(t_nmspc *x, t_symbol *oscAddress, long argc, t_atom *argv)
{
	TTList			lk_selection;
	t_atom			a[1];
	TTNodePtr		aNode = (TTNodePtr)atom_getobj(&argv[0]);
	long			flag = atom_getlong(&argv[1]);
	//TTCallbackPtr	anObserver = (TTCallbackPtr)atom_getobj(&argv[2]);
	t_symbol		*umenuCommand;
	TTString		anAddress;
	
	switch (flag) {
			
		case kAddressCreated :
			umenuCommand = _sym_append;
			break;
			
		case kAddressDestroyed :
			umenuCommand = _sym_delete;
			break;
			
		default :
			return;
	}
	
	// Depends on current operation
	if (x->attr_operation == x->op_getChildren){
		
		if (aNode->getParent() == x->tempNode){							// In case of destruction, the notification is done before so it possible to ask info about the node...
			if (x->attr_update == _sym_all)
				defer_low((t_object*)x,(method)nmspc_bang,0,0,NULL);	// ... but we need to wait before updating all the list because it is not destroyed yet.
		
			else{
				// output name
				atom_setsym(a, gensym((char*)aNode->getName()->getCString()));
				outlet_anything(x->_out, umenuCommand, 1, a);
			}
		}
		return;
	}
	
	if (x->attr_operation == x->op_getInstances){
		
		if ((aNode->getParent() == x->tempNode) && (aNode->getName() == x->tempName)){	// In case of destruction, the notification is done before so it possible to ask info about the node...
			if (x->attr_update == _sym_all){
				
				if (x->attr_address != gensym("/"))
					anAddress = x->attr_address->s_name;
				anAddress += "/";
				anAddress += x->tempName->getCString();
				
				defer_low((t_object*)x,(method)nmspc_symbol,gensym((char*)anAddress.data()),0,NULL);	// ... but we need to wait before updating all the list because it is not destroyed yet.
			}
			else{
				// output instance
				atom_setsym(a, gensym((char*)aNode->getInstance()->getCString()));
				outlet_anything(x->_out, umenuCommand, 1, a);
			}
		}
		return;
	}
	
	if (x->attr_operation == x->op_getAttributes){
		
		if (aNode == x->tempNode){										// In case of destruction, the notification is done before so it possible to ask info about the node.
			if (flag == kAddressCreated)
				defer_low((t_object*)x,(method)nmspc_bang,0,0,NULL);
			
			else
				outlet_anything(x->_out, _sym_clear, 0, NULL);
		}
		return;
	}
	
	if (x->attr_operation == x->op_getHubs){								
		
		if (aNode->getType() == TT("hub")){								// In case of destruction, the notification is done before so it possible to ask info about the node...
			
			if (x->attr_update == _sym_all)
				defer_low((t_object*)x,(method)nmspc_bang,0,0,NULL);	// ... but we need to wait before updating all the list because it is not destroyed yet.
			
			else{
				// output address
				atom_setsym(a, oscAddress);
				outlet_anything(x->_out, umenuCommand, 1, a);
			}
		}
		return;
	}
	
	if(x->attr_operation == x->op_getParameters){
		if(aNode->getType() == TT(jps_subscribe_parameter->s_name)){	// In case of destruction, the notification is done before so it possible to ask info about the node...
			
			if(x->attr_update == _sym_all)
				defer_low((t_object*)x,(method)nmspc_bang,0,0,NULL);	// ... but we need to wait before updating all the list because it is not destroyed yet.
			
			else{
				// parsed the begining of the OSC address by the given address
				TTString start = x->attr_address->s_name;
				TTString fullAddress = oscAddress->s_name;
				TTString relativeAddress = fullAddress.substr(start.size(), fullAddress.size());
				relativeAddress += "";
				
				// output relative address
				atom_setsym(a, gensym((char*)relativeAddress.data()));
				outlet_anything(x->_out, umenuCommand, 1, a);
			}
		}
		return;
	}
	
	if(x->attr_operation == x->op_getMessages){
		if(aNode->getType() == TT(jps_subscribe_message->s_name)){		// In case of destruction, the notification is done before so it possible to ask info about the node...
			
			if(x->attr_update == _sym_all)
				defer_low((t_object*)x,(method)nmspc_bang,0,0,NULL);	// ... but we need to wait before updating all the list because it is not destroyed yet.
			
			else{
				// parsed the begining of the OSC address by the given address
				TTString start = x->attr_address->s_name;
				TTString fullAddress = oscAddress->s_name;
				TTString relativeAddress = fullAddress.substr(start.size(), fullAddress.size());
				relativeAddress += "";
				
				// output relative address
				atom_setsym(a, gensym((char*)relativeAddress.data()));
				outlet_anything(x->_out, umenuCommand, 1, a);
			}
		}
		return;
	}
	
	if(x->attr_operation == x->op_getReturns){
		if(aNode->getType() == TT(jps_subscribe_return->s_name)){		// In case of destruction, the notification is done before so it possible to ask info about the node...
			
			if(x->attr_update == _sym_all)
				defer_low((t_object*)x,(method)nmspc_bang,0,0,NULL);	// ... but we need to wait before updating all the list because it is not destroyed yet.
			
			else{
				// parsed the begining of the OSC address by the given address
				TTString start = x->attr_address->s_name;
				TTString fullAddress = oscAddress->s_name;
				TTString relativeAddress = fullAddress.substr(start.size(), fullAddress.size());
				relativeAddress += "";
				
				// output relative address
				atom_setsym(a, gensym((char*)relativeAddress.data()));
				outlet_anything(x->_out, umenuCommand, 1, a);
			}
		}
		return;
	}
}

t_max_err nmspc_attr_set_operation(t_nmspc *x, void *attr, long argc, t_atom *argv)
{
	t_symbol *new_op;
	
	if(argc && argv){
		
		new_op = atom_getsym(argv);
		
		if(x->attr_operation != new_op){
			
			x->attr_operation = new_op;
			
			// select method
			if(x->attr_operation == x->op_getChildren){
				x->operation = (method)nmspc_get_children;
				return MAX_ERR_NONE;
			}
			
			if(x->attr_operation == x->op_getInstances){
				x->operation = (method)nmspc_get_instances;
				return MAX_ERR_NONE;
			}
			
			if(x->attr_operation == x->op_getAttributes){
				x->operation = (method)nmspc_get_attributes;
				return MAX_ERR_NONE;
			}
			
			if(x->attr_operation == x->op_getHubs){
				x->operation = (method)nmspc_get_hubs;
				x->attr_address = gensym("/");
				return MAX_ERR_NONE;
			}
			
			if(x->attr_operation == x->op_getParameters){
				x->operation = (method)nmspc_get_parameters;
				return MAX_ERR_NONE;
			}
			
			if(x->attr_operation == x->op_getMessages){
				x->operation = (method)nmspc_get_messages;
				return MAX_ERR_NONE;
			}
			
			if(x->attr_operation == x->op_getReturns){
				x->operation = (method)nmspc_get_returns;
				return MAX_ERR_NONE;
			}
		}
	}
	else
		return MAX_ERR_GENERIC;
	
	return MAX_ERR_NONE;
}

t_max_err nmspc_attr_set_address(t_nmspc *x, void *attr, long argc, t_atom *argv)
{
	t_symbol	*new_adrs;
	t_atom		a[1];
	
	if(argc && argv){
		
		new_adrs = atom_getsym(argv);
		
		if(x->attr_address != new_adrs){
			
			if(x->attr_update != _sym_none){
				
				// delete the old observer before to create a new one
				if(x->life_observer)
					jamoma_directory_observer_remove(x->attr_address, x->life_observer);
				
				// change the address
				x->attr_address = new_adrs;
				
				// create a new observer
				if(x->attr_address != _sym_none)
					jamoma_directory_observer_add(x->attr_address, (t_object*)x, gensym("nmspc_directory_callback"), &x->life_observer);
			}
			
			// prepare umenu prefix to be concatenated
			atom_setlong(a, 0);
			outlet_anything(x->_out, gensym("prefix_mode"), 1, a);
			
			// prepare umenu prefix 
			// (except in case the operation is getInstances (see getInstances method))
			if(x->attr_operation != x->op_getInstances){
				
				if(x->attr_address == gensym("/"))
					atom_setsym(a, x->attr_address);
				else{
					TTString prefix = x->attr_address->s_name;
					
					if(x->attr_operation == x->op_getChildren)
						prefix += "/";
					if(x->attr_operation == x->op_getAttributes)
						prefix += ":";
					else
						prefix += "";
					
					atom_setsym(a, gensym((char*)prefix.data()));
				}
				outlet_anything(x->_out, gensym("prefix"), 1, a);
			}
			
		}
	}
	else
		return MAX_ERR_GENERIC;
	
	return MAX_ERR_NONE;
}

t_max_err nmspc_attr_set_update(t_nmspc *x, void *attr, long argc, t_atom *argv)
{
	t_symbol *new_upd;
	
	if(argc && argv){
		
		new_upd = atom_getsym(argv);
		
		if(x->attr_update != new_upd){
			
			x->attr_update = new_upd;
			
			if(x->attr_update != _sym_none){
			
				// delete the old observer before
				if(x->life_observer)
					jamoma_directory_observer_remove(x->attr_address, x->life_observer);
			
				if(x->attr_address != _sym_none)
					jamoma_directory_observer_add(x->attr_address, (t_object*)x, gensym("nmspc_directory_callback"), &x->life_observer);
			}
		}
	}
	else
		return MAX_ERR_GENERIC;
	
	return MAX_ERR_NONE;
}

void nmspc_bang(t_nmspc *x)
{
	if(x->attr_operation != _sym_none)
			defer(x, (method)x->operation, x->attr_address, 0, NULL);
	else
		object_error((t_object*)x, "there is no operation to perform");
}

void nmspc_symbol(t_nmspc *x, t_symbol *msg, long argc, t_atom *argv)
{
	if(x->attr_operation != _sym_none)
		defer(x, (method)x->operation, msg, 0, NULL);
	else
		object_error((t_object*)x, "there is no operation to perform");
}

void nmspc_write(t_nmspc *x, t_symbol *msg, long argc, t_atom *argv)
{
	if(argc && argv)
		defer((t_object*)x, (method)nmspc_dowrite, 0, argc, argv);
	else 
		defer((t_object*)x, (method)nmspc_dowrite, gensym("no args in write"), argc, argv);
}

void nmspc_writeagain(t_nmspc *x)
{
	defer((t_object*)x, (method)nmspc_dowrite, 0, 0, NULL);
}

void nmspc_get_children(t_nmspc *x, t_symbol *address)
{
	TTList		childrenList;
	TTList		nameList;
	TTSymbolPtr name;
	t_atom		a[1];
	JamomaError err = JAMOMA_ERR_NONE;
	
	t_symbol *adrs = nmspc_filter_underscore_instance(address);
		
	err = jamoma_directory_get_node(adrs, childrenList, &x->tempNode);
	
	// clear umenu
	outlet_anything(x->_out, _sym_clear, 0, NULL);
		
	// if the address exists
	if(err == JAMOMA_ERR_NONE){
			
		// Get the name list
		x->tempNode->getChildrenName(nameList);
			
		// for each name
		if(!nameList.isEmpty()){
			for(nameList.begin(); nameList.end(); nameList.next()){
				
				nameList.current().get(0,(TTSymbol **)&name);
				
				// output name
				atom_setsym(a, gensym((char*)name->getCString()));
				outlet_anything(x->_out, _sym_append, 1, a);
			}
		}
		else
			outlet_anything(x->_out, _sym_none, 0, NULL);
	}
	
	atom_setsym(a, x->op_getChildren);
	defer(x, (method)nmspc_attr_set_operation, _sym_none, 1, a);
	atom_setsym(a, adrs);
	defer(x, (method)nmspc_attr_set_address, _sym_none, 1, a);
}

void nmspc_get_instances(t_nmspc *x, t_symbol *address)
{
	TTList		nodeList;
	TTList		instanceList;
	TTSymbolPtr instance;
	t_atom		a[1];
	TTString	prefix;
	TTErr		err;
	
	t_symbol *adrs = nmspc_filter_underscore_instance(address);
	
	// Split the address at the last Slash
	TTSymbolPtr parent, inst, attr;
	TTSymbolPtr fullAddress = TT(adrs->s_name);
	splitOSCAddress(fullAddress, &parent, &x->tempName, &inst, &attr);
	
	err = jamoma_directory->Lookup(parent, nodeList, &x->tempNode);
	
	// clear umenu
	outlet_anything(x->_out, _sym_clear, 0, NULL);
	
	// if the address exists
	if(err == kTTErrNone){

		// Get the instance list
		x->tempNode->getChildrenInstance(x->tempName, instanceList);
			
		// for each instance
		if(!instanceList.isEmpty()){
			for(instanceList.begin(); instanceList.end(); instanceList.next()){
				
				instanceList.current().get(0,(TTSymbol **)&instance);
				
				// output instance
				if(instance == NO_INSTANCE){
					atom_setsym(a, gensym("_"));
					outlet_anything(x->_out, _sym_append, 1, a);
				}
				else{
					atom_setsym(a, gensym((char*)instance->getCString()));
					outlet_anything(x->_out, _sym_append, 1, a);
				}
			}
		}
		else
			outlet_anything(x->_out, _sym_none, 0, NULL);
	}
	
	atom_setsym(a, x->op_getInstances);
	defer(x, (method)nmspc_attr_set_operation, _sym_none, 1, a);
	
	atom_setsym(a, gensym((char*)parent->getCString()));
	defer(x, (method)nmspc_attr_set_address, _sym_none, 1, a);
	
	// For getInstance we have to bind on the parent address 
	// but the umenu prefix have to be the child address
	prefix = adrs->s_name;
	prefix += ".";
	atom_setsym(a, gensym((char*)prefix.data()));
	outlet_anything(x->_out, gensym("prefix"), 1, a);
	
	if(instanceList.getSize() == 1)
		outlet_anything(x->_out, _sym_one, 0, NULL);		// outlet 'one' if there is only one instance (in order to be able to push it out the umenu in that case)
}

void nmspc_get_attributes(t_nmspc *x, t_symbol *address)
{
	unsigned int i;
	TTValue		attributeList;
	TTSymbolPtr attribute;
	TTList		nodeList;
	t_atom		a[1];
	JamomaError err = JAMOMA_ERR_NONE;
	
	t_symbol *adrs = nmspc_filter_underscore_instance(address);
	
	err = jamoma_directory_get_node(adrs, nodeList, &x->tempNode);
	
	// clear umenu
	outlet_anything(x->_out, _sym_clear, 0, NULL);
	
	// if the address exists
	if(err == JAMOMA_ERR_NONE){
		
		// Get all attributes
		x->tempNode->getAttributeNames(attributeList);
		
		// for each attribute
		if(attributeList.getSize()){
			for(i = 0; i < attributeList.getSize(); i++)
			{
				attributeList.get(i,(TTSymbolPtr*)&attribute);
				
				// output attribute
				atom_setsym(a, gensym((char*)attribute->getCString()));
				outlet_anything(x->_out, _sym_append, 1, a);
			}
		}
		else
			outlet_anything(x->_out, _sym_none, 0, NULL);
	}
	
	atom_setsym(a, x->op_getAttributes);
	defer(x, (method)nmspc_attr_set_operation, _sym_none, 1, a);
	atom_setsym(a, adrs);
	defer(x, (method)nmspc_attr_set_address, _sym_none, 1, a);
}

void nmspc_get_hubs(t_nmspc *x)
{
	TTList		returnedTTNodes;
	TTNodePtr	firstReturnedTTNode, n_r;
	t_symbol	*osc_adrs;
	t_atom		a[1];
	JamomaError err;
	
	// get all parameters below an address
	outlet_anything(x->_out, _sym_clear, 0, NULL);
	err = jamoma_directory_get_node_by_type(gensym("/"), gensym("hub"), returnedTTNodes, &firstReturnedTTNode);
	
	if(err == JAMOMA_ERR_NONE){
		
		if(!returnedTTNodes.isEmpty()){
			for(returnedTTNodes.begin(); returnedTTNodes.end(); returnedTTNodes.next()){
				
				returnedTTNodes.current().get(0,(TTPtr*)&n_r);
				osc_adrs = jamoma_node_OSC_address(n_r);
				
				// output relative address
				atom_setsym(a, osc_adrs);
				outlet_anything(x->_out, _sym_append, 1, a);
			}
		}
		else
			outlet_anything(x->_out, _sym_none, 0, NULL);
	}
	
	atom_setsym(a, x->op_getHubs);
	defer(x, (method)nmspc_attr_set_operation, _sym_none, 1, a);
	atom_setsym(a, gensym("/"));
	defer(x, (method)nmspc_attr_set_address, _sym_none, 1, a);
}

void nmspc_get_parameters(t_nmspc *x, t_symbol *address)
{
	TTList		returnedTTNodes;
	TTNodePtr	firstReturnedTTNode, n_r;
	t_atom		a[1];
	JamomaError err;
	
	t_symbol *adrs = nmspc_filter_underscore_instance(address);
	
	// get all parameters below an address
	outlet_anything(x->_out, _sym_clear, 0, NULL);
	err = jamoma_directory_get_node_by_type(adrs, jps_subscribe_parameter, returnedTTNodes, &firstReturnedTTNode);
	
	if(err == JAMOMA_ERR_NONE){
		
		if(!returnedTTNodes.isEmpty()){
			for(returnedTTNodes.begin(); returnedTTNodes.end(); returnedTTNodes.next()){
				
				returnedTTNodes.current().get(0,(TTPtr*)&n_r);
				
				// parsed the begining of the OSC address by the given address
				TTString start = address->s_name;
				TTString fullAddress = jamoma_node_OSC_address(n_r)->s_name;
				TTString relativeAddress = fullAddress.substr(start.size(), fullAddress.size());
				relativeAddress += "";
				
				// output relative address
				atom_setsym(a, gensym((char*)relativeAddress.data()));
				outlet_anything(x->_out, _sym_append, 1, a);
			}
		}
		else
			outlet_anything(x->_out, _sym_none, 0, NULL);
	}
	
	atom_setsym(a, x->op_getParameters);
	defer(x, (method)nmspc_attr_set_operation, _sym_none, 1, a);
	atom_setsym(a, adrs);
	defer(x, (method)nmspc_attr_set_address, _sym_none, 1, a);
}

void nmspc_get_messages(t_nmspc *x, t_symbol *address)
{
	TTList		returnedTTNodes;
	TTNodePtr	firstReturnedTTNode, n_r;
	t_atom		a[1];
	JamomaError err;
	
	t_symbol *adrs = nmspc_filter_underscore_instance(address);
	
	// get all messages below an address
	outlet_anything(x->_out, _sym_clear, 0, NULL);
	err = jamoma_directory_get_node_by_type(adrs, jps_subscribe_message, returnedTTNodes, &firstReturnedTTNode);
	
	if(err == JAMOMA_ERR_NONE){
		
		if(!returnedTTNodes.isEmpty()){
			for(returnedTTNodes.begin(); returnedTTNodes.end(); returnedTTNodes.next()){
				
				returnedTTNodes.current().get(0,(TTPtr*)&n_r);
				
				// parsed the begining of the OSC address by the given address
				TTString start = address->s_name;
				TTString fullAddress = jamoma_node_OSC_address(n_r)->s_name;
				TTString relativeAddress = fullAddress.substr(start.size(), fullAddress.size());
				relativeAddress += "";
				
				// output relative address
				atom_setsym(a, gensym((char*)relativeAddress.data()));
				outlet_anything(x->_out, _sym_append, 1, a);
			}
		}
		else
			outlet_anything(x->_out, _sym_none, 0, NULL);
	}
	
	atom_setsym(a, x->op_getMessages);
	defer(x, (method)nmspc_attr_set_operation, _sym_none, 1, a);
	atom_setsym(a, adrs);
	defer(x, (method)nmspc_attr_set_address, _sym_none, 1, a);
}

void nmspc_get_returns(t_nmspc *x, t_symbol *address)
{
	TTList		returnedTTNodes;
	TTNodePtr	firstReturnedTTNode, n_r;
	t_atom		a[1];
	JamomaError err;
	
	t_symbol *adrs = nmspc_filter_underscore_instance(address);
	
	// get all returns below an address
	outlet_anything(x->_out, _sym_clear, 0, NULL);
	err = jamoma_directory_get_node_by_type(adrs, jps_subscribe_return, returnedTTNodes, &firstReturnedTTNode);
	
	if(err == JAMOMA_ERR_NONE){
		
		if(!returnedTTNodes.isEmpty()){
			for(returnedTTNodes.begin(); returnedTTNodes.end(); returnedTTNodes.next()){
				
				returnedTTNodes.current().get(0,(TTPtr*)&n_r);
				
				// parsed the begining of the OSC address by the given address
				TTString start = address->s_name;
				TTString fullAddress = jamoma_node_OSC_address(n_r)->s_name;
				TTString relativeAddress = fullAddress.substr(start.size(), fullAddress.size());
				relativeAddress += "";
				
				// output relative address
				atom_setsym(a, gensym((char*)relativeAddress.data()));
				outlet_anything(x->_out, _sym_append, 1, a);
			}
		}
		else
			outlet_anything(x->_out, _sym_none, 0, NULL);
	}
	
	atom_setsym(a, x->op_getReturns);
	defer(x, (method)nmspc_attr_set_operation, _sym_none, 1, a);
	atom_setsym(a, adrs);
	defer(x, (method)nmspc_attr_set_address, _sym_none, 1, a);
}

void nmspc_dump(t_nmspc *x)
{
	// dump all the namespace
	jamoma_directory_dump();
}


void nmspc_add_max_namespace(t_nmspc *x)
{
	t_object *patcher;
	t_max_err err;
	long result = 0;

	err = object_obex_lookup(x, gensym("#P"), &patcher);

	object_method(patcher, gensym("iterate"), nmspc_myobject_iterator, (void *)x, PI_WANTBOX | PI_DEEP, &result);
}

long nmspc_myobject_iterator(t_nmspc *x, t_object *b)
{
	TTNodePtr newTTNode;
	bool newInstanceCreated;
	char temp[256];
    t_symbol *varname = object_attr_getsym(b, gensym("varname"));
	uint i;

	// Make sure we are dealing with valid OSC input by looking for a leading slash
	if(varname){
		if(varname->s_name[0] == C_SEPARATOR){
			newInstanceCreated = false;
			
			// put all scripting name in a /max node
			snprintf(temp,256,"/max%s", varname->s_name);
			
			// search for [ and ] cause this is how max declare instance. 
			for(i=0; i<strlen(temp); i++){
				if(temp[i] == '[')
					temp[i] = '.';
				else if(temp[i] == ']')
					temp[i] = 0;
			}

			jamoma_directory_register(gensym(temp), gensym("maxobject"), (t_object *)b, &newTTNode, &newInstanceCreated);

			// add varname and maxclass as properties of the node
			//TODO : max_node_attribute_add(newTTNode,gensym("varname"), b);
			//TODO : max_node_attribute_add(newTTNode,gensym("maxclass"), b);

			//if(newInstanceCreated)
			//	object_warn((t_object *)x,"%s : this scripting name is already registered in the tree", varname->s_name);
		}
	}

    return 0;
}


// Private methods
void nmspc_dowrite(t_nmspc *x, t_symbol *msg, long argc, t_atom *argv)
{
	long 			type = 'TEXT';					// four-char code for Mac file type
	char 			filename[MAX_FILENAME_CHARS];	// for storing the name of the file locally
	char 			fullpath[MAX_PATH_CHARS];		// for storing the absolute path of the file
	short 			err;							// error number
	long			outtype;						// the file type that is actually true

	// GET THE PATH
	// check the args to see if there is a user_path
	if(argc){
		strcpy(fullpath, atom_getsym(argv)->s_name);
		path_frompathname(fullpath, &x->nmspc_file_path, filename);
	}
	else{
		// Does a former cuelist_path exist ?
		if(x->nmspc_file_path && (msg != gensym("no args in write"))){
			strcpy(filename,x->nmspc_file_name->s_name);
		}
		else{
			// open a dialog to ask for a name
			strcpy(filename,x->nmspc_file_name->s_name);
			saveas_promptset("Save node tree...");										// Instructional Text in the dialog
			err = saveasdialog_extended(filename, &x->nmspc_file_path, &outtype, &type, 1);// Returns 0 if successful
			if(err)																		// User Cancelled
				return;
		}
	}

	// NOW ATTEMPT TO CREATE THE FILE...
	err = path_createsysfile(filename, x->nmspc_file_path, type, &x->fh);

	if(err){
		object_error((t_object *)x, "save : error saving %s", filename);
		return;
	}

	// AND WE SAVE THE filename IN x->cuelist_file.
	x->nmspc_file_name = gensym(filename);

	// HERE WE CAN FINALLY WRITE THE DATA OUT TO THE FILE
	x->eof = 0;

	// create a new buffer
	x->eobuf = 0;
	x->buf = sysmem_newhandleclear(TEXT_BUFFER_SIZE);

	// write the tree as an opml file
	critical_enter(0);
	nmspc_write_string(x, "<?xml version=\"1.0\" encoding=\"ISO-8859-1\"?>");
	nmspc_write_string(x, LB);
	nmspc_write_string(x, "<opml version=\"2.0\">");
	nmspc_write_string(x, LB);

	// write head info
	nmspc_opml_header(x);

	// write the body (the tree)

	nmspc_write_string(x, "	<body>");
	nmspc_write_string(x, LB);

	nmspc_dump_as_opml(x, jamoma_directory->getRoot(), 0);	// dump the tree from the root

	nmspc_write_string(x, "		</body>");
	nmspc_write_string(x, LB);

	// close the opml file
	nmspc_write_string(x, "	</opml>");

	// write the buffer
	nmspc_write_buffer(x);

	critical_exit(0);

	// close the file
	err = sysfile_seteof(x->fh, x->eof);
	if(err){
		object_error((t_object*)x, "save : error %d creating EOF of %s", err, filename);
		return;	
	}
	sysfile_close(x->fh);
}

void nmspc_opml_header(t_nmspc *x)
{
	nmspc_write_string(x, "	<head>");
	nmspc_write_string(x, LB);
	nmspc_write_string(x, "		<title>workspace.userlandsamples.doSomeUpstreaming</title>");
	nmspc_write_string(x, LB);
	nmspc_write_string(x, "		<dateCreated>Mon, 11 Feb 2002 22:48:02 GMT</dateCreated>");
	nmspc_write_string(x, LB);
	nmspc_write_string(x, "		<dateModified>Sun, 30 Oct 2005 03:30:17 GMT</dateModified>");
	nmspc_write_string(x, LB);
	nmspc_write_string(x, "		<ownerName>Dave Winer</ownerName>");
	nmspc_write_string(x, LB);
	nmspc_write_string(x, "		<ownerEmail>dwiner@yahoo.com</ownerEmail>");
	nmspc_write_string(x, LB);
	nmspc_write_string(x, "		<expansionState>1, 2, 4</expansionState>");
	nmspc_write_string(x, LB);
	nmspc_write_string(x, "		<vertScrollState>1</vertScrollState>");
	nmspc_write_string(x, LB);
	nmspc_write_string(x, "		<windowTop>74</windowTop>");
	nmspc_write_string(x, LB);
	nmspc_write_string(x, "		<windowLeft>41</windowLeft>");
	nmspc_write_string(x, LB);
	nmspc_write_string(x, "		<windowBottom>314</windowBottom>");
	nmspc_write_string(x, LB);
	nmspc_write_string(x, "		<windowRight>475</windowRight>");
	nmspc_write_string(x, LB);
	nmspc_write_string(x, "		</head>");
	nmspc_write_string(x, LB);
}

void nmspc_dump_as_opml(t_nmspc *x, TTNodePtr parent, ushort level)
{
	unsigned int i;
	char		temp[512];
	TTSymbolPtr attr;
	TTValue		attributeNameList;
	TTSymbolPtr attributeName;
	TTList		lk_chd;
	TTNodePtr	p_node;

	// get info about the node
	t_symbol *type = jamoma_node_type(parent);
	
	if((type == gensym("hub")) || 
	   (type == jps_subscribe_parameter) || 
	   (type == jps_subscribe_message) || 
	   (type == jps_subscribe_return) || 
	   (type == gensym("container")))
	{
		t_symbol *name = jamoma_node_name(parent);
		t_symbol *instance = jamoma_node_instance(parent);
		
		parent->getAttributeNames(attributeNameList);
		jamoma_node_children(parent, lk_chd);
		
		// make (2 + level) tabs
		nmspc_write_string(x, TAB);
		nmspc_write_string(x, TAB);
		for(i=0; i<level; i++)
			nmspc_write_string(x, TAB);
		
		// write an outline for the node
		nmspc_write_string(x, "<outline text=\"");
		if(name != gensym("")){
			if(instance != gensym(""))
				snprintf(temp, sizeof(temp), "%s.%s", name->s_name, instance->s_name);
			else
				snprintf(temp, sizeof(temp), "%s", name->s_name);
			
			nmspc_write_string(x,temp);
		}
		nmspc_write_string(x, "\">");
		nmspc_write_string(x, LB);
		
		// if there are properties
		if(attributeNameList.getSize()){
			// write an outline for each attribute
			attr = NULL;
			for(i = 0; i < attributeNameList.getSize(); i++)
			{
				attributeNameList.get(i,(TTSymbolPtr*)&attributeName);
				nmspc_write_string(x, "<outline text=\"");
				nmspc_write_string(x, (char*)attributeName->getCString());
				nmspc_write_string(x,"\"/>");
				nmspc_write_string(x, LB);
			}
			
		}
		
		// if there are children : do the same for each child
		if(!lk_chd.isEmpty()){
			for(lk_chd.begin(); lk_chd.end(); lk_chd.next()){
				
				lk_chd.current().get(0,(TTPtr*)&p_node);
				nmspc_dump_as_opml(x, p_node, level+1);
			}
		}
		
		// close the outline of this node
		nmspc_write_string(x, "</outline>");
		nmspc_write_string(x, LB);
	}
}

// append an atom to a string
void nmspc_write_atom(t_nmspc *x, t_atom *src)
{
	char temp[512];
	t_symbol* sym;

	switch(src->a_type) 
	{
		case A_SYM:
			sym = atom_getsym(src);
			snprintf(temp, sizeof(temp), "%s ", sym->s_name);
			break;
		case A_FLOAT:
			snprintf(temp, sizeof(temp), "%f ", atom_getfloat(src));
			break;
		case A_LONG:
			snprintf(temp, sizeof(temp), "%ld ", atom_getlong(src));
			break;
	}

	x->eobuf += strlen(temp);

	// before buffer becomes full ...
	if(x->eobuf >= TEXT_BUFFER_SIZE){
		// ... write the buffer into the text file
		nmspc_write_buffer(x);
	}

	// append the temp to the text buffer
	if(*(x->buf))
		strcat(*(x->buf),temp);
}

void nmspc_write_sym(t_nmspc *x, t_symbol *src)
{
	nmspc_write_string(x, src->s_name);
}

void nmspc_write_string(t_nmspc *x, char *src)
{
	char temp[256];

	snprintf(temp, sizeof(temp), "%s ", src);

	x->eobuf += strlen(temp);

	// before buffer becomes full ...
	if(x->eobuf >= TEXT_BUFFER_SIZE){
		// ... write the buffer into the text file
		nmspc_write_buffer(x);
	}

	// append the temp to the text buffer
	if(*(x->buf))
		strcat(*(x->buf),temp);
}

void nmspc_write_long(t_nmspc *x, long src)
{
	char temp[32];

	snprintf(temp, sizeof(temp), "%ld ", src);

	x->eobuf += strlen(temp);

	// before buffer becomes full ...
	if(x->eobuf >= TEXT_BUFFER_SIZE){
		// ... write the buffer into the text file
		nmspc_write_buffer(x);
	}

	// append the temp to the text buffer
	if(*(x->buf))
		strcat(*(x->buf),temp);
}

void nmspc_write_float(t_nmspc *x, float src)
{
	char temp[32];

	snprintf(temp, sizeof(temp), "%f ", src);

	x->eobuf += strlen(temp);

	// before buffer becomes full ...
	if(x->eobuf >= TEXT_BUFFER_SIZE){
		// ... write the buffer into the text file
		nmspc_write_buffer(x);
	}

	// append the temp to the text buffer
	if(*(x->buf))
		strcat(*(x->buf),temp);
}

// write the buffer into a text file
void nmspc_write_buffer(t_nmspc *x)
{
	short	err = 0;
	long	len = 0;
	
	len = strlen(*(x->buf));

	// write into a text file
	err = sysfile_write(x->fh, &len, *(x->buf));

	if(err){
		error("nmspc_write_buffer : sysfile_write error (%d)", err);
		return;
	}
	x->eof += len;

	// clear the buffer
	x->eobuf = 0;
	sysmem_freehandle(x->buf);
	x->buf = sysmem_newhandleclear(TEXT_BUFFER_SIZE);
}

t_symbol* nmspc_filter_underscore_instance(t_symbol* a)
{
	t_symbol* b;
	TTString toParse = a->s_name;
	
	//post("before parsing : %s", a->s_name);
	int foundDot = toParse.find_last_of('.');
	int foundUnd = toParse.find_last_of('_');
	
	//post("toParse : %d", toParse.size());
	//post("foundDot : %d", foundDot);
	//post("foundUnd : %d", foundUnd);
	
	if(foundUnd == (foundDot+1)){

		if(foundDot > 0 && foundUnd > 0){
			
			TTString parsed = toParse.substr(0,foundDot);
			if(foundUnd+1 < (int)toParse.size())
				parsed += toParse.substr(foundUnd+1);
		
			b = gensym((char*)parsed.data());
		}
		else
			b = a;
	}		
	else
		b = a;
	
	//post("after parsing : %s", b->s_name);
	return b;
}
