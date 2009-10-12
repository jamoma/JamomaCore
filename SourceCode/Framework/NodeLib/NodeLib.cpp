/* 
 * Jamoma TTNode Tree
 * Copyright © 2008, Théo de la Hogue & Tim Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "NodeLib.h"

TTTreePtr jamoma_tree = NULL;

/***********************************************************************************
*
*		C EXTERN METHODS
*
************************************************************************************/

// Method to deal with the jamoma tree
/////////////////////////////////////////

TTTreePtr	jamoma_tree_init()
{
	if(jamoma_tree)
		return jamoma_tree;	// already have a tree, just return the pointer to the tree...

	jamoma_tree = new TTTree(TT("Jamoma"));

	return jamoma_tree;
}

JamomaError jamoma_tree_free(void)
{
	if(jamoma_tree){
		jamoma_tree->~TTTree();
		return JAMOMA_ERR_NONE;
	}
	
	post("jamoma_tree_free : create a tree before");	
	return JAMOMA_ERR_GENERIC;
}

JamomaError jamoma_tree_dump(void)
{
	unsigned int i;
	TTValue hk;
	TTSymbolPtr key;

	if(jamoma_tree){	
		jamoma_tree->getDirectory()->getKeys(hk);

		for(i=0; i<jamoma_tree->getDirectory()->getSize(); i++){
			hk.get(i,(TTSymbol**)&key);
			post("%s",key->getCString());
		}
		return JAMOMA_ERR_NONE;
	}
	
	post("jamoma_tree_dump : create a tree before");
	return JAMOMA_ERR_GENERIC;
}

JamomaError	jamoma_tree_register(t_symbol *OSCaddress, t_symbol *type, t_object *obj, TTNodePtr *newNode, bool *newInstanceCreated)
{
	if(jamoma_tree){
		jamoma_tree->NodeCreate(TT(OSCaddress->s_name), TT(type->s_name), obj, newNode, (TTBoolean *)newInstanceCreated);
		return JAMOMA_ERR_NONE;
	}

	post("jamoma_tree_register %s : create a tree before", OSCaddress->s_name);
	return JAMOMA_ERR_GENERIC;
}

JamomaError jamoma_tree_unregister(t_symbol *OSCaddress)
{
	TTNodePtr node = NULL;

	if(jamoma_tree){
		jamoma_tree->getNodeForOSC(OSCaddress->s_name, &node);
	}
	else{
		post("jamoma_tree_unregister %s : create a tree before", OSCaddress->s_name);
		return JAMOMA_ERR_GENERIC;
	}

	if(node){
		node->~TTNode();
		return JAMOMA_ERR_NONE;
	}
	
	post("jamoma_tree_unregister %s : this address doesn't exist", OSCaddress->s_name);
	return JAMOMA_ERR_GENERIC;
}

JamomaError jamoma_tree_get_node(t_symbol *address, TTListPtr *returnedNodes, TTNodePtr *firstReturnedNode)
{
	TTErr err;

	if(jamoma_tree){
		err = jamoma_tree->Lookup(TT(address->s_name), returnedNodes, firstReturnedNode);

		if(err == kTTErrNone)
			return JAMOMA_ERR_NONE;
		else
			return JAMOMA_ERR_GENERIC;
	}
	
	post("jamoma_tree_get_node %s : create a tree before");
	return JAMOMA_ERR_GENERIC;
}

// Method to deal with a node
////////////////////////////////////

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
			lk_properties->append(new TTValue((TTSymbolPtr)key));
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
