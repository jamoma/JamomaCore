/* 
 * Jamoma NodeLib
 * Copyright © 2008, Tim Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "NodeLib.h"

JamomaNode::JamomaNode(TTSymbolPtr oscAddress, TTSymbolPtr newType, ObjectPtr newObject):TTObject(oscAddress->getCString())
{
	TTSymbolPtr oscAddress_parent;
	TTSymbolPtr oscAddress_name;
	TTSymbolPtr oscAddress_instance;
	TTSymbolPtr oscAddress_attribute;
	TTBoolean parent_created;
	TTErr err;

	// split the oscAddress in /parent/name
	err = splitOSCAddress(oscAddress,&oscAddress_parent,&oscAddress_name, &oscAddress_instance, &oscAddress_attribute);

	// DEBUG
	post("JamomaNode : %s",oscAddress->getCString());
	if(oscAddress_parent)
		post("	parent : %s ",oscAddress_parent->getCString());
	if(oscAddress_name)
		post("	name : %s ",oscAddress_name->getCString());
	if(oscAddress_instance)
		post("	instance : %s ",oscAddress_instance->getCString());
	if(oscAddress_attribute)
		post("	attribute : %s ",oscAddress_attribute->getCString());

	if(err == kTTErrNone){

		this->name = oscAddress_name;
		this->type = newType;
		this->maxObject = newObject;
		this->instance = oscAddress_instance;

		// create a hashtab
		this->children = new TTHash();

		// ensure that the path to the new node exists
		if(oscAddress_parent){
			parent_created = false;
			JamomaNodeCheck(oscAddress_parent, &this->parent, &parent_created);
			// add this node as a children of his parent
			this->getParent()->getChildren()->append(oscAddress_name,this);
		}
		else
			// this is the root
			;

		// register the node with his OSC address in the jamoma_node_hashtab
		jamoma_node_hashtab->append(TT(oscAddress->getCString()),this);

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

TTSymbolPtr	JamomaNode::getName(){return this->name;}
TTSymbolPtr	JamomaNode::getInstance(){return this->instance;}
TTSymbolPtr	JamomaNode::getType(){return this->type;}
ObjectPtr	JamomaNode::getMaxObject(){return this->maxObject;}
JamomaNodePtr	JamomaNode::getParent(){return this->parent;}
TTHashPtr	JamomaNode::getChildren(){return this->children;}

TTErr	JamomaNode::getDump()
{
	uint i;
	TTValue *hk;
	TTSymbolPtr key;
	TTValue *c;
	JamomaNodePtr n_c;

	if(this->name && this->instance)
		post("%s.%s",this->name->getCString(),this->instance->getCString());
	else	
		if(this->name)
			post("%s",this->name->getCString());

	if(this->children->getSize()){
		post("{");

		hk = new TTValue();
		c = new TTValue();
		this->children->getKeys(*hk);

		for(i=0; i<this->children->getSize(); i++){
			hk->get(i,(TTSymbol**)&key);
			this->children->lookup(key,*c);
			c->get(0,(TTPtr*)&n_c);
			n_c->getDump();
		}

		post("}");
	}

	return kTTErrNone;
}

TTErr JamomaNode::getNodeForOSC(const char* oscAddress, JamomaNodePtr* returnedNode)
{
	return getNodeForOSC(TT((char*)oscAddress), returnedNode);
}


TTErr JamomaNode::getNodeForOSC(TTSymbolPtr oscAddress, JamomaNodePtr* returnedNode)
{
	TTValue* found = new TTValue();

	// look into the hashtab to check if the address exist in the tree
	jamoma_node_hashtab->lookup(oscAddress,*found);

	// if this address doesn't exist
	if(found == kTTErrValueNotFound)
		return kTTErrGeneric;
		
	else{
		
		found->get(0,(TTPtr*)returnedNode);
		return kTTErrNone;
	}
		
}


TTErr JamomaNodeLookup(TTSymbolPtr oscAddress, LinkedListPtr* returnedNodes, JamomaNodePtr* firstReturnedNode)
{
	return kTTErrNone;
}

TTErr JamomaNodeCreate(TTSymbolPtr oscAddress, TTSymbolPtr newType, ObjectPtr newObject, JamomaNodePtr* returnedNode, TTBoolean* created)
{
	TTValue* found;
	TTErr err;

	// look into the hashtab to check if the address exist in the tree
	found = new TTValue();
	err = jamoma_node_hashtab->lookup(oscAddress,*found);

	// if this address doesn't exist
	if(err == kTTErrValueNotFound){

		// we create the node
		JamomaNodePtr new_node = new JamomaNode(oscAddress, newType, newObject);

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

TTErr JamomaNodeCheck(TTSymbolPtr oscAddress, JamomaNodePtr* returnedNode, TTBoolean* created)
{
	TTValue* found;
	TTErr err;
	TTBoolean parent_created;

	// look into the hashtab to check if the address exist in the tree
	found = new TTValue();
	*created = false;
	err = jamoma_node_hashtab->lookup(oscAddress,*found);

	//// if the address doesn't exist
	if(err == kTTErrValueNotFound){

		post("JamomaNodeCheck : %s doesn't exists", oscAddress->getCString());

		// we create a container node
		JamomaNodePtr new_node = new JamomaNode(oscAddress, TT("container"), NULL);

		*returnedNode = new_node;
		*created = true;
	}
	else
		found->get(0,(TTPtr*)returnedNode);

	return kTTErrNone;
}


TTErr splitOSCAddress(TTSymbolPtr oscAddress, TTSymbolPtr* returnedParentOscAdress, TTSymbolPtr* returnedNodeName, TTSymbolPtr* returnedNodeInstance, TTSymbolPtr* returnedNodeAttribute)
{
	int i, len, pos;
	bool stop;
	char *last_colon, *last_slash, *last_dot;
	char *attribute, *parent, *node, *instance;
	char *to_split;

	// Make sure we are dealing with valid OSC input by looking for a leading slash
	if(oscAddress->getCString()[0] != '/')
		return kTTErrGeneric;

	to_split = (char *)malloc(sizeof(char)*(strlen(oscAddress->getCString())+1));
	strcpy(to_split,oscAddress->getCString());

	// find the last ':' in the OSCaddress
	// if exists, split the OSC address in an address part (to split) and an attribute part
	len = strlen(to_split);
	last_colon = strrchr(to_split,':');
	pos = (int)last_colon - (int)to_split;

	if(last_colon){
		attribute = (char *)malloc(sizeof(char)*(len - (pos+1)));
		strcpy(attribute,to_split + pos+1);
		*returnedNodeAttribute = TT(attribute);

		to_split[pos] = NULL;	// split to keep only the address part
	}
	else
		*returnedNodeAttribute = NULL;
	
	// find the last '/' in the address part
	// if exists, split the address part in a node part (to split) and a parent part
	len = strlen(to_split);
	last_slash = strrchr(to_split,'/');
	pos = (int)last_slash - (int)to_split;

	if(last_slash && pos){		// && pos to avoid the root
		parent = (char *)malloc(sizeof(char)*(pos+1));
		strncpy(parent,to_split,pos);
		parent[pos] = NULL;
		*returnedParentOscAdress = TT(parent);

		to_split = last_slash+1;	// split to keep only the node part
	}
	else
		*returnedParentOscAdress = NULL;

	// find the last '.' in the node part
	// if exists, split the node part in a name part and an instance part
	len = strlen(to_split);
	last_dot = strrchr(to_split,'.');
	pos = (int)last_dot - (int)to_split;

	if(last_dot > 0){
		instance = (char *)malloc(sizeof(char)*(len - (pos+1)));
		strcpy(instance,to_split + pos+1);
		*returnedNodeInstance = TT(instance);

		to_split[pos] = NULL;	// split to keep only the name part
	}
	else
		*returnedNodeInstance = NULL;

	// TODO : ??? (detect unusual characters in a node name)
	if(strlen(to_split) > 0){
		if(*returnedParentOscAdress)
			*returnedNodeName = TT(to_split);
		else
			*returnedNodeName = TT(to_split+1); // to remove the slash when it's the root
	}
	else
		*returnedNodeName = NULL;

	return kTTErrNone;
}



/************************************************************************************/

JamomaError	jamoma_node_init()
{
	if(jamoma_node_root)
		return JAMOMA_ERR_NONE;	// already have a root, do nothing...

	post("> CREATION OF AN EXPERIMENTAL TREE");
	post("");

	jamoma_node_hashtab = new TTHash();
	jamoma_node_root = new JamomaNode(TT("/jamoma"), TT("container"), NULL);

	// TEST : an experimental tree
	JamomaNodePtr test;

	test = new JamomaNode(TT("/jamoma/degrade~/bitdepth"), TT("parameter"), NULL);
	test = new JamomaNode(TT("/jamoma/degrade~/bypass"), TT("parameter"), NULL);
	test = new JamomaNode(TT("/jamoma/degrade~/gain"), TT("parameter"), NULL);

	test = new JamomaNode(TT("/jamoma/input.1/pan"), TT("parameter"), NULL);
	test = new JamomaNode(TT("/jamoma/input.1/gain"), TT("parameter"), NULL);
	test = new JamomaNode(TT("/jamoma/input.2/pan"), TT("parameter"), NULL);
	test = new JamomaNode(TT("/jamoma/input.2/gain"), TT("parameter"), NULL);

	test = new JamomaNode(TT("/jamoma/output/audio/gain"), TT("parameter"), NULL);
	test = new JamomaNode(TT("/jamoma/output/limiter"), TT("parameter"), NULL);
	test = new JamomaNode(TT("/jamoma/output/preamp"), TT("parameter"), NULL);

	post("");
	post("> DUMP THE TREE");
	post("");
	jamoma_node_root->getDump();


	return JAMOMA_ERR_NONE;
}

void jamoma_node_free(void)
{
	;
}
