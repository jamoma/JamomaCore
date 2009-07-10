/* 
 * Jamoma Node Tree
 * Copyright © 2008, Tim Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "JamomaNode.h"

/***********************************************************************************
*
*		C EXTERN METHODS
*
************************************************************************************/

NodePtr	jamoma_node_init()
{
	TTBoolean *nodeCreated = new TTBoolean(false);

	if(jamoma_node_root)
		return jamoma_node_root;	// already have a root, just return the pointer to the root...

	jamoma_node_directory = new TTHash();
	NodeCreate(TT(S_SEPARATOR), TT("container"), NULL, jamoma_node_directory, &jamoma_node_root, nodeCreated);

	return jamoma_node_root;
}

JamomaError jamoma_node_dump(void)
{
	uint i;
	TTValue *hk;
	TTSymbolPtr key;

	if(jamoma_node_root){	
		hk = new TTValue();
		jamoma_node_directory->getKeys(*hk);

		for(i=0; i<jamoma_node_directory->getSize(); i++){
			hk->get(i,(TTSymbol**)&key);
			post("%s",key->getCString());
		}
		return JAMOMA_ERR_NONE;
	}
	else{
		post("jamoma_node_dump : create the root before");
		return JAMOMA_ERR_GENERIC;
	}
}

JamomaError	jamoma_node_register(t_symbol *OSCaddress, t_symbol *type, t_object *obj, NodePtr *newNode, bool *newInstanceCreated)
{
	if(jamoma_node_root){
		NodeCreate(TT(OSCaddress->s_name), TT(type->s_name), obj, jamoma_node_directory, newNode, (TTBoolean *)newInstanceCreated);
		return JAMOMA_ERR_NONE;
	}
	else{
		post("jamoma_node_register : create the root before");
		return JAMOMA_ERR_GENERIC;
	}
}

JamomaError jamoma_node_unregister(t_symbol *OSCaddress)
{
	NodePtr node = NULL;

	if(jamoma_node_root){
		getNodeForOSC(jamoma_node_directory, OSCaddress->s_name,&node);
	}
	else{
		post("jamoma_node_unregister : create the root before");
		return JAMOMA_ERR_GENERIC;
	}

	if(node){
		node->~Node();
		return JAMOMA_ERR_NONE;
	}
	
	post("jamoma_node_unregister : this address doesn't exist");
	return JAMOMA_ERR_GENERIC;
}

JamomaError jamoma_node_get(t_symbol *address, LinkedListPtr *returnedNodes, NodePtr *firstReturnedNode)
{
	TTErr err;

	err = NodeLookup(jamoma_node_directory, TT(address->s_name), returnedNodes, firstReturnedNode);

	if(err == kTTErrNone)
		return JAMOMA_ERR_NONE;
	else
		return JAMOMA_ERR_GENERIC;
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

LinkedListPtr jamoma_node_children(NodePtr node)
{
	LinkedListPtr lk_children;
	TTErr err;

	err =  node->getChildren(TT(S_WILDCARD),TT(S_WILDCARD), &lk_children);

	if(err == kTTErrNone)
		return lk_children;
	else
		return NULL;
}

t_object * jamoma_node_max_object(NodePtr node)
{
	return (t_object*)node->getObject();
}

LinkedListPtr	jamoma_node_properties(NodePtr node)
{
	uint i;
	TTValue *hk;
	TTSymbolPtr key;
	TTValue *c;
	NodePtr n_c;
	LinkedListPtr lk_properties;

	// if there are properties
	if(node->getProperties()->getSize()){

		hk = new TTValue();
		c = new TTValue();
		node->getProperties()->getKeys(*hk);
		lk_properties = new t_linklist();
		
		// for each propertie
		for(i=0; i<node->getProperties()->getSize(); i++){
			hk->get(i,(TTSymbol**)&key);
			// add the propertie to the linklist
			linklist_append(lk_properties,gensym((char *)key->getCString()));
		}

		return lk_properties;
	}
	return NULL;
}

JamomaError	jamoma_node_set_properties(NodePtr node, t_symbol *propertie)
{
	TTErr err;

	err = node->setProperties(TT(propertie->s_name));
	
	if(err == kTTErrNone)
		return JAMOMA_ERR_NONE;
	
	return JAMOMA_ERR_GENERIC;
}

JamomaError jamoma_node_free(void)
{
	if(jamoma_node_root){
		jamoma_node_root->~Node();
		return JAMOMA_ERR_NONE;
	}

	// TODO : delete the jamoma_node_directory

	post("jamoma_node_free : create the root before");	
	return JAMOMA_ERR_GENERIC;
}
