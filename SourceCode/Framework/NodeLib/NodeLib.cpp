/* 
 * Jamoma NodeLib
 * Copyright © 2008, Tim Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "NodeLib.h"

// statics and globals
static JamomaNodePtr		jamoma_node_root;
static TTHashPtr			jamoma_node_hashtab;


JamomaNode::JamomaNode(SymbolPtr oscAddress, SymbolPtr newType, ObjectPtr newObject):TTObject(oscAddress->s_name)
{
	
	SymbolPtr oscAddress_parent;
	SymbolPtr newName;
	TTBoolean parent_created;
	TTErr err;

	// split the oscAddress in /parent/name
	err = splitOSCAddress(oscAddress,&oscAddress_parent,&newName);

	if(err == kTTErrNone){

		this->name = newName;
		this->type = newType;
		this->maxObject = newObject;

		// we give an instance number of 0
		this->instanceName = NULL;

		// create a hashtab
		this->children = new TTHash();

		// ensure that the path to the new node exists
		parent_created = false;
		JamomaNodeCheck(oscAddress_parent, &this->parent, &parent_created);
	}
}


JamomaNode::~JamomaNode()
{
	;
}


#if 0
#pragma mark -
#pragma mark Static Methods
#endif

SymbolPtr	JamomaNode::getName(){return this->name;}
SymbolPtr	JamomaNode::getInstanceName(){return this->instanceName;}
SymbolPtr	JamomaNode::getType(){return this->type;}
ObjectPtr	JamomaNode::getMaxObject(){return this->maxObject;}
JamomaNodePtr	JamomaNode::getParent(){return this->parent;}
TTHashPtr	JamomaNode::getChildren(){return this->children;}


TTErr JamomaNode::getNodeForOSC(const char* oscAddress, JamomaNodePtr* returnedNode)
{
	return getNodeForOSC(gensym((char*)oscAddress), returnedNode);
}


TTErr JamomaNode::getNodeForOSC(SymbolPtr oscAddress, JamomaNodePtr* returnedNode)
{
	TTSymbolPtr key;
	TTValue* found = new TTValue();

	// look into the hashtab to check if the address exist in the tree
	key = TT(oscAddress->s_name);
	jamoma_node_hashtab->lookup(key,*found);

	// if this address doesn't exist
	if(found == kTTErrValueNotFound)
		return kTTErrGeneric;
		
	else{
		
		found->get(0,(TTPtr*)returnedNode);
		return kTTErrNone;
	}
		
}


TTErr JamomaNodeLookup(SymbolPtr oscAddress, LinkedListPtr* returnedNodes, JamomaNodePtr* firstReturnedNode)
{
	return kTTErrNone;
}

TTErr JamomaNodeCreate(SymbolPtr oscAddress, SymbolPtr newType, ObjectPtr newObject, JamomaNodePtr* returnedNode, TTBoolean* created)
{
	TTSymbolPtr key;
	TTValue* found = new TTValue();

	// look into the hashtab to check if the address exist in the tree
	key = TT(oscAddress->s_name);
	jamoma_node_hashtab->lookup(key,*found);

	// if this address doesn't exist
	if(found == kTTErrValueNotFound){

		// we create the node
		JamomaNodePtr new_node = new JamomaNode(oscAddress, newType, newObject);

		// if the node have parent
		if(new_node->getParent())
			// add this node as a children of his parent
			new_node->getParent()->getChildren()->append(key,*found);

		else
			// this the root
			;

		*returnedNode = new_node;
		*created = true;
		return kTTErrNone;
	}

	// else this address already exist
	else{

		// TODO: create an instance

		found->get(0,(TTPtr*)returnedNode);
		*created = true;
		return kTTErrNone;
	}

}

TTErr JamomaNodeCheck(SymbolPtr oscAddress, JamomaNodePtr* returnedNode, TTBoolean* created)
{
	TTSymbolPtr key;
	TTValue* found = new TTValue();
	SymbolPtr oscAddress_parent;
	SymbolPtr newName;
	TTBoolean parent_created;

	// look into the hashtab to check if the address exist in the tree
	key = TT(oscAddress->s_name);
	jamoma_node_hashtab->lookup(key,*found);

	// if the address doesn't exist
	if(found == kTTErrValueNotFound){

		// we create the node as a container
		JamomaNodePtr new_node = new JamomaNode(oscAddress, gensym("container"), NULL);

		// if the node have parent
		if(new_node->getParent())
			// add this node as a children of his parent
			new_node->getParent()->getChildren()->append(key,*found);
		else
			// this the root
			;

		*returnedNode = new_node;
		*created = true;
	}

	return kTTErrNone;
}


TTErr splitOSCAddress(SymbolPtr oscAddress, SymbolPtr* returnedParentOscAdress, SymbolPtr* returnedNodeName)
{
	int i;
	bool stop;
	char* parent;

	// Make sure we are dealing with valid OSC input by looking for a leading slash
	if(oscAddress->s_name[0] != '/')
		return kTTErrGeneric;

	if(i = strlen(oscAddress->s_name)){
		stop = false;
		while(i>0 && !stop){
			i--;
			stop = oscAddress->s_name[i] == '/';
		}
		parent = malloc(sizeof(char)*i);
		strncpy(parent,oscAddress->s_name,i);

		*returnedParentOscAdress = gensym(parent);
		*returnedNodeName = gensym(oscAddress->s_name + i+1);

		free(parent);

		return kTTErrNone;
	}
	else
		return kTTErrGeneric;
}



/************************************************************************************/

JamomaNodePtr	jamoma_node_create_root()
{
	JamomaNodePtr	root = new JamomaNode(gensym("/"), gensym("container"), NULL);

	return root;
}
