/* 
 * Jamoma TTNode Tree
 * Copyright © 2008, Tim Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "NodeLib.h"

/***********************************************************************************
*
*		C EXTERN METHODS
*
************************************************************************************/

TTNodePtr	jamoma_node_init()
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
	unsigned int i;
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

JamomaError	jamoma_node_register(t_symbol *OSCaddress, t_symbol *type, t_object *obj, TTNodePtr *newNode, bool *newInstanceCreated)
{
	if(jamoma_node_root){
		NodeCreate(TT(OSCaddress->s_name), TT(type->s_name), obj, jamoma_node_directory, newNode, (TTBoolean *)newInstanceCreated);
		return JAMOMA_ERR_NONE;
	}
	else{
		post("jamoma_node_register %s : create the root before", OSCaddress->s_name);
		return JAMOMA_ERR_GENERIC;
	}
}

JamomaError jamoma_node_unregister(t_symbol *OSCaddress)
{
	TTNodePtr node = NULL;

	if(jamoma_node_root){
		getNodeForOSC(jamoma_node_directory, OSCaddress->s_name, &node);
	}
	else{
		post("jamoma_node_unregister %s : create the root before", OSCaddress->s_name);
		return JAMOMA_ERR_GENERIC;
	}

	if(node){
		node->~TTNode();
		return JAMOMA_ERR_NONE;
	}
	
	post("jamoma_node_unregister %s : this address doesn't exist", OSCaddress->s_name);
	return JAMOMA_ERR_GENERIC;
}

JamomaError jamoma_node_get(t_symbol *address, TTListPtr *returnedNodes, TTNodePtr *firstReturnedNode)
{
	TTErr err;

	err = NodeLookup(jamoma_node_directory, TT(address->s_name), returnedNodes, firstReturnedNode);

	if(err == kTTErrNone)
		return JAMOMA_ERR_NONE;
	else
		return JAMOMA_ERR_GENERIC;
}

t_symbol * jamoma_node_name(TTNodePtr node)
{
	return gensym((char*)node->getName()->getCString());
}

t_symbol * jamoma_node_set_name(TTNodePtr node, t_symbol *name)
{
	TTSymbolPtr newInstance;
	TTBoolean *newInstanceCreated = new TTBoolean(false);

	node->setName(TT(name->s_name), &newInstance, newInstanceCreated);
	if(*newInstanceCreated)
		return gensym((char*)newInstance->getCString());

	return NULL;
}

t_symbol * jamoma_node_instance(TTNodePtr node)
{
	return gensym((char*)node->getInstance()->getCString());
}

t_symbol * jamoma_node_set_instance(TTNodePtr node, t_symbol *instance)
{
	TTSymbolPtr newInstance;
	TTBoolean *newInstanceCreated = new TTBoolean(false);

	node->setInstance(TT(instance->s_name), &newInstance, newInstanceCreated);

	if(*newInstanceCreated)
		return gensym((char*)newInstance->getCString());

	return NULL;
}

t_symbol * jamoma_node_type(TTNodePtr node)
{
	return gensym((char*)node->getType()->getCString());
}

TTListPtr jamoma_node_children(TTNodePtr node)
{
	TTListPtr lk_children;
	TTErr err;

	err =  node->getChildren(TT(S_WILDCARD),TT(S_WILDCARD), &lk_children);

	if(err == kTTErrNone)
		return lk_children;
	else
		return NULL;
}

t_object * jamoma_node_max_object(TTNodePtr node)
{
	return (t_object*)node->getObject();
}

TTListPtr	jamoma_node_properties(TTNodePtr node)
{
	uint i;
	TTValue *hk;
	TTSymbolPtr key;
	TTValue *c;
	TTListPtr lk_properties;

	// if there are properties
	if(node->getProperties()->getSize()){

		hk = new TTValue();
		c = new TTValue();
		node->getProperties()->getKeys(*hk);
		lk_properties = new TTList();
		
		// for each propertie
		for(i=0; i<node->getProperties()->getSize(); i++){
			hk->get(i,(TTSymbol**)&key);
			// add the propertie to the linklist
			lk_properties->append(key);
		}

		return lk_properties;
	}
	return NULL;
}

JamomaError	jamoma_node_set_properties(TTNodePtr node, t_symbol *propertie)
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
		jamoma_node_root->~TTNode();
		return JAMOMA_ERR_NONE;
	}

	// TODO : delete the jamoma_node_directory

	post("jamoma_node_free : create the root before");	
	return JAMOMA_ERR_GENERIC;
}
