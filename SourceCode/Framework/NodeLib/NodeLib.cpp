/* 
 * Jamoma Node Tree
 * Copyright © 2008, Théo de la Hogue & Tim Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "NodeLib.h"

NodeDirectoryPtr jamoma_directory = NULL;

/***********************************************************************************
*
*		C EXTERN METHODS
*
************************************************************************************/

// Method to deal with the jamoma directory
/////////////////////////////////////////

NodeDirectoryPtr	jamoma_directory_init()
{
	if(jamoma_directory)
		return jamoma_directory;	// already have a directory, just return the pointer to the directory...

	jamoma_directory = new NodeDirectory(TT("Jamoma"));

	return jamoma_directory;
}

JamomaError jamoma_directory_free(void)
{
	if(jamoma_directory){
		jamoma_directory->~NodeDirectory();
		return JAMOMA_ERR_NONE;
	}
	
	post("jamoma_directory_free : create a directory before");	
	return JAMOMA_ERR_GENERIC;
}

JamomaError jamoma_directory_dump(void)
{
	unsigned int i;
	TTValue hk;
	TTSymbolPtr key;

	if(jamoma_directory){	
		jamoma_directory->getDirectory()->getKeys(hk);

		for(i=0; i<jamoma_directory->getDirectory()->getSize(); i++){
			hk.get(i,(TTSymbol**)&key);
			post("%s",key->getCString());
		}
		return JAMOMA_ERR_NONE;
	}
	
	post("jamoma_directory_dump : create a directory before");
	return JAMOMA_ERR_GENERIC;
}

JamomaError	jamoma_directory_register(t_symbol *OSCaddress, t_symbol *type, t_object *obj, NodePtr *newNode, bool *newInstanceCreated)
{
	if(jamoma_directory){
		jamoma_directory->NodeCreate(TT(OSCaddress->s_name), TT(type->s_name), obj, newNode, (TTBoolean *)newInstanceCreated);
		return JAMOMA_ERR_NONE;
	}

	post("jamoma_directory_register %s : create a directory before", OSCaddress->s_name);
	return JAMOMA_ERR_GENERIC;
}

JamomaError jamoma_directory_unregister(t_symbol *OSCaddress)
{
	NodePtr node = NULL;

	if(jamoma_directory){
		jamoma_directory->getNodeForOSC(TT(OSCaddress->s_name), &node);
	}
	else{
		post("jamoma_directory_unregister %s : create a directory before", OSCaddress->s_name);
		return JAMOMA_ERR_GENERIC;
	}

	if(node){
		node->~Node();
		return JAMOMA_ERR_NONE;
	}
	
	post("jamoma_directory_unregister %s : this address doesn't exist", OSCaddress->s_name);
	return JAMOMA_ERR_GENERIC;
}

JamomaError jamoma_directory_get_node(t_symbol *address, TTListPtr *returnedNodes, NodePtr *firstReturnedNode)
{
	TTErr err;

	if(jamoma_directory){
		err = jamoma_directory->Lookup(TT(address->s_name), returnedNodes, firstReturnedNode);

		if(err == kTTErrNone)
			return JAMOMA_ERR_NONE;
		else
			return JAMOMA_ERR_GENERIC;
	}
	
	post("jamoma_directory_get_node %s : create a directory before", address->s_name);
	return JAMOMA_ERR_GENERIC;
}

JamomaError jamoma_directory_get_node_by_type(t_symbol *addressToStart, t_symbol *type, TTListPtr *returnedNodes, NodePtr *firstReturnedNode)
{
	TTListPtr whereToSearch;
	
	TTErr err;
	
	if(jamoma_directory){
		
		err = jamoma_directory->Lookup(TT(addressToStart->s_name), &whereToSearch, firstReturnedNode);
		
		if(err == kTTErrNone){
			
			err = jamoma_directory->LookingFor(whereToSearch, testNodeType, TT(type->s_name), returnedNodes, firstReturnedNode);
			
			if(err == kTTErrNone)
				return JAMOMA_ERR_NONE;
			else
				return JAMOMA_ERR_GENERIC;
		}
		else
			return JAMOMA_ERR_GENERIC;
	}
	
	post("jamoma_directory_get_parameters %s : create a directory before", addressToStart->s_name);
	return JAMOMA_ERR_GENERIC;
}

bool testNodeType(NodePtr n, void *args)
{
	return n->getType() == (TTSymbolPtr)args;	
}

// Method to deal with a node
////////////////////////////////////

t_symbol * jamoma_node_OSC_address(NodePtr node)
{
	TTSymbolPtr OSCaddress;
	node->getOscAddress(&OSCaddress);
	
	return gensym((char*)OSCaddress->getCString());
}

t_symbol * jamoma_node_name(NodePtr node)
{
	return gensym((char*)node->getName()->getCString());
}

t_symbol * jamoma_node_set_name(NodePtr node, t_symbol *name)
{
	TTSymbolPtr newInstance;
	TTBoolean *newInstanceCreated = new TTBoolean(false);

	node->setName(TT(name->s_name), &newInstance, newInstanceCreated);
	if(*newInstanceCreated)
		return gensym((char*)newInstance->getCString());

	return NULL;
}

t_symbol * jamoma_node_instance(NodePtr node)
{
	return gensym((char*)node->getInstance()->getCString());
}

t_symbol * jamoma_node_set_instance(NodePtr node, t_symbol *instance)
{
	TTSymbolPtr newInstance;
	TTBoolean *newInstanceCreated = new TTBoolean(false);

	node->setInstance(TT(instance->s_name), &newInstance, newInstanceCreated);

	if(*newInstanceCreated)
		return gensym((char*)newInstance->getCString());

	return NULL;
}

t_symbol * jamoma_node_type(NodePtr node)
{
	return gensym((char*)node->getType()->getCString());
}

TTListPtr jamoma_node_children(NodePtr node)
{
	TTListPtr lk_children;
	TTErr err;

	err =  node->getChildren(S_WILDCARD,S_WILDCARD, &lk_children);

	if(err == kTTErrNone)
		return lk_children;
	else
		return NULL;
}

t_object * jamoma_node_max_object(NodePtr node)
{
	return (t_object*)node->getObject();
}

TTListPtr	jamoma_node_properties(NodePtr node)
{
	return node->getPropertiesList();
}

JamomaError	jamoma_node_add_propertie(NodePtr node, t_symbol *propertie)
{
	TTErr err;

	err = node->addPropertie(TT(propertie->s_name), &jamoma_node_get_propertie_method,  &jamoma_node_set_propertie_method);
	
	if(err == kTTErrNone)
		return JAMOMA_ERR_NONE;
	
	return JAMOMA_ERR_GENERIC;
}

JamomaError	jamoma_node_get_propertie(NodePtr node, t_symbol *propertie, long *argc, t_atom **argv)
{
	TTValuePtr returnedValue = NULL;
	TTErr err;
	t_atom *a;
	long i;
	
	// get the value propertie
	err = node->getPropertie(TT(propertie->s_name), &returnedValue);
	
	if(err == kTTErrNone){
		// convert it to use in Max
		if(returnedValue){
			
			(*argc) = returnedValue->getSize();
			(*argv) = (t_atom*)malloc(sizeof(t_atom)*(*argc));
			
			for(i = 0; i < (*argc); i++){
				returnedValue->get(i, (TTPtr*)&a);
				jcom_core_atom_copy((*argv)+i, a);
			}
		}
		return JAMOMA_ERR_NONE;
	}
	
	return JAMOMA_ERR_GENERIC;
}

void jamoma_node_get_propertie_method(NodePtr node, TTSymbolPtr propertie, TTValuePtr *value)
{
	(*value) = NULL;
	// Get the propertie of the object pointed by the node
	
	// For a hub :
	
	// For a jcom.parameter/message/return :
	post("jamoma_node_get_propertie_method");
}

JamomaError	jamoma_node_set_propertie(NodePtr node, long argc, t_atom *argv)
{
	
	
	return JAMOMA_ERR_NONE;
}

void jamoma_node_set_propertie_method(NodePtr node, TTSymbolPtr propertie, TTValuePtr value)
{
	// Set the propertie of the object pointed by the node
	
	// For a hub :
	
	// For a jcom.parameter/message/return :
	post("jamoma_node_set_propertie_method");
}
