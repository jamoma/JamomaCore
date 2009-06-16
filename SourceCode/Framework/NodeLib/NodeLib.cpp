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
	//post("JamomaNode : %s",oscAddress->getCString());
	//if(oscAddress_parent != NO_PARENT)
	//	post("	parent : %s ",oscAddress_parent->getCString());
	//if(oscAddress_name != NO_NAME)
	//	post("	name : %s ",oscAddress_name->getCString());
	//if(oscAddress_instance != NO_INSTANCE)
	//	post("	instance : %s ",oscAddress_instance->getCString());
	//if(oscAddress_attribute != NO_ATTRIBUTE)
	//	post("	attribute : %s ",oscAddress_attribute->getCString());
	//if(newType != NO_TYPE)
	//	post("	type : %s ",newType->getCString());


	if(err == kTTErrNone){

		this->name = oscAddress_name;
		this->type = newType;
		this->maxObject = newObject;
		this->instance = oscAddress_instance;

		// create a hashtab
		this->children = new TTHash();

		// ensure that the path to the new node exists
		if(oscAddress_parent != NO_PARENT){
			parent_created = false;
			JamomaNodeCheck(oscAddress_parent, &this->parent, &parent_created);

			// add this node as a children of his parent
			this->getParent()->addChild(this);
		}
		else
			// this is the root
			this->parent = NULL;

		jamoma_node_hashtab->append(TT(oscAddress->getCString()),TTValue(this));

	}
}

JamomaNode::~JamomaNode()
{
	TTErr err;
	uint i, j, nb_c, nb_i;
	TTValue *hk, *hk_i;
	TTSymbolPtr OSCaddress, key, key_i;
	TTValue *c, *c_i, *p_c;
	TTHashPtr ht_i, p_ht_i;
	JamomaNodePtr n_c;

	// get the address of the node in the tree 
	this->getOscAddress(&OSCaddress);

	post("~JamomaNode : %s", OSCaddress->getCString());

	// it is not a child of his parent anymore
	p_c = new TTValue();
	err = this->parent->children->lookup(this->name,*p_c);

	if(err != kTTErrValueNotFound){
		p_c->get(0,(TTPtr*)&p_ht_i);
		p_ht_i->remove(this->instance);

		// If it was the last instance
		// remove the hashtab
		if(p_ht_i->getSize() == 0){
			p_ht_i->~TTHash();
			this->parent->children->remove(this->name);
		}
	}

	// destroy all his children
	nb_c = this->children->getSize();
	if(nb_c){
		hk = new TTValue();
		c = new TTValue();
		this->children->getKeys(*hk);

		for(i=0; i<nb_c; i++){

			hk->get(i,(TTSymbol**)&key);
			err = this->children->lookup(key,*c);

			if(err != kTTErrValueNotFound){

				c->get(0,(TTPtr*)&ht_i);
				
				// if there are instances
				nb_i = ht_i->getSize();
				if(nb_i){

					hk_i = new TTValue();
					c_i = new TTValue();
					ht_i->getKeys(*hk_i);
					
					// for each instance
					
					for(j=0; j<nb_i; j++){

						hk_i->get(j,(TTSymbol**)&key_i);
						err = ht_i->lookup(key_i,*c_i);

						if(err != kTTErrValueNotFound){
							c_i->get(0,(TTPtr*)&n_c);
							n_c->~JamomaNode();
						}
					}
				}
			}
		}
	}

	this->parent = NULL;

	this->children->clear();
	this->children->~TTHash();

	// clear all other infomations
	this->name = NULL;
	this->type = NULL;
	this->maxObject = NULL;
	this->instance = NULL;

	// remove the OSCaddress from the global hashtab
	jamoma_node_hashtab->remove(OSCaddress);
}

#if 0
#pragma mark -
#pragma mark Static Methods
#endif

TTSymbolPtr		JamomaNode::getName(){return this->name;}
TTSymbolPtr		JamomaNode::getInstance(){return this->instance;}
TTSymbolPtr		JamomaNode::getType(){return this->type;}
ObjectPtr		JamomaNode::getMaxObject(){return this->maxObject;}
JamomaNodePtr	JamomaNode::getParent(){return this->parent;}
TTHashPtr		JamomaNode::getChildren(){return this->children;}

TTErr JamomaNode::setName(TTSymbolPtr name)
{
	TTErr err;
	uint i;
	TTValue *hk, *p_c, *c;
	char *temp, *t;
	TTSymbolPtr old_OSCaddress, new_OSCaddress, old_key;
	TTHashPtr p_ht_i;
	JamomaNodePtr n_c;

	// get his actual address
	this->getOscAddress(&old_OSCaddress);

	// remove his name in the parent node
	p_c = new TTValue();
	err = this->parent->children->lookup(this->name,*p_c);

	if(err != kTTErrValueNotFound){
		p_c->get(0,(TTPtr*)&p_ht_i);
		p_ht_i->remove(this->instance);

		// If it was the last instance
		// remove the hashtab
		if(p_ht_i->getSize() == 0){
			p_ht_i->~TTHash();
			this->parent->children->remove(this->name);
		}
	}

	// change his name
	this->name = name;

	// tell it to his parent
	this->parent->addChild(this);

	// get the new address
	this->getOscAddress(&new_OSCaddress);

	// for all the address witch starts by old_OSCaddress :
	// replace the beginning by the new_OSCaddress
	hk = new TTValue();
	c = new TTValue();
	jamoma_node_hashtab->getKeys(*hk);

	// for each key
	for(i=0; i<jamoma_node_hashtab->getSize(); i++){

		hk->get(i,(TTSymbol**)&old_key);

		// if the key starts by the OSCaddress
		if(strstr(old_key->getCString(), old_OSCaddress->getCString()) == old_key->getCString()){

			// get the node
			err = jamoma_node_hashtab->lookup(old_key,*c);
			if(err != kTTErrValueNotFound){
				c->get(0,(TTPtr*)&n_c);

				// create a new key : /new_OSCaddress/end_of_the_old_key
				temp = (char *)malloc(sizeof(char)*( strlen(old_key->getCString()) - strlen(old_OSCaddress->getCString()) + strlen(new_OSCaddress->getCString()) ));
				strcpy(temp, new_OSCaddress->getCString());
				t = (char *)(old_key->getCString() + strlen(old_OSCaddress->getCString()));

				if(t[0] == '/' || t[0] == NULL){
					strcat(temp, t);

					// remove the old key
					jamoma_node_hashtab->remove(old_key);

					// append the new key
					jamoma_node_hashtab->append(TT(temp),TTValue(n_c));
				}
			}
		}
	}

	return kTTErrNone;
}

TTErr JamomaNode::setInstance(TTSymbolPtr instance)
{
TTErr err;
	uint i;
	TTValue *hk, *p_c, *c;
	char *temp, *t;
	TTSymbolPtr old_OSCaddress, new_OSCaddress, old_key;
	TTHashPtr p_ht_i;
	JamomaNodePtr n_c;

	// get his actual address
	this->getOscAddress(&old_OSCaddress);

	// remove his name in the parent node
	p_c = new TTValue();
	err = this->parent->children->lookup(this->name,*p_c);

	if(err != kTTErrValueNotFound){
		p_c->get(0,(TTPtr*)&p_ht_i);
		p_ht_i->remove(this->instance);
		p_ht_i->append(instance, TTValue(this));
	}

	// change his name
	this->instance = instance;

	// tell it to his parent
	this->parent->addChild(this);

	// get the new address
	this->getOscAddress(&new_OSCaddress);

	// for all the address witch starts by old_OSCaddress :
	// replace the beginning by the new_OSCaddress
	hk = new TTValue();
	c = new TTValue();
	jamoma_node_hashtab->getKeys(*hk);

	// for each key
	for(i=0; i<jamoma_node_hashtab->getSize(); i++){

		hk->get(i,(TTSymbol**)&old_key);

		// if the key starts by the OSCaddress
		if(strstr(old_key->getCString(), old_OSCaddress->getCString()) == old_key->getCString()){

			// get the node
			err = jamoma_node_hashtab->lookup(old_key,*c);
			if(err != kTTErrValueNotFound){
				c->get(0,(TTPtr*)&n_c);

				// create a new key : /new_OSCaddress/end_of_the_old_key
				temp = (char *)malloc(sizeof(char)*( strlen(old_key->getCString()) - strlen(old_OSCaddress->getCString()) + strlen(new_OSCaddress->getCString()) ));
				strcpy(temp, new_OSCaddress->getCString());
				t = (char *)(old_key->getCString() + strlen(old_OSCaddress->getCString()));

				if(t[0] == '/' || t[0] == NULL){
					strcat(temp, t);

					// remove the old key
					jamoma_node_hashtab->remove(old_key);

					// append the new key
					jamoma_node_hashtab->append(TT(temp),TTValue(n_c));
				}
			}
		}
	}

	return kTTErrNone;
}

TTErr JamomaNode::getOscAddress(TTSymbolPtr *returnedOscAddress)
{
	uint i, j, nb_ancestor, len;
	JamomaNodePtr ptr;
	JamomaNodePtr *ancestor;
	char *OscAddress;

	// First, count the number of ancestor 
	// and the length of the entire address (with slash and dot)
	nb_ancestor = 0;

	if(this->name != NO_NAME)
		len = strlen(this->name->getCString());

	if(this->instance != NO_INSTANCE)
		len += strlen(this->instance->getCString()) + 1;

	ptr = this;

	while(ptr->parent){

		ptr = ptr->parent;
		nb_ancestor++;

		if(ptr->name != NO_NAME)
			len += (strlen(ptr->name->getCString()) + 1);		// +1 for /

		if(ptr->instance != NO_INSTANCE)
			len += (strlen(ptr->instance->getCString()) + 1);	// +1 for .		
	}

	// Then, create an array to register all the ancestor and a string
	ancestor = (JamomaNodePtr *)malloc(sizeof(JamomaNodePtr)*nb_ancestor);
	OscAddress = (char *)malloc(sizeof(char)*len);

	// The root have to be the first ancestor
	i = nb_ancestor;
	ptr = this;
	while(ptr->parent){
		i--;
		ptr = ptr->parent;
		ancestor[i] = ptr;
	}

	// Finaly, copy the name of each ancestor
	// copy the root before
	strcpy(OscAddress,ancestor[0]->name->getCString());
	for(i=1; i<nb_ancestor; i++){

		if(ancestor[i]->name != NO_NAME)
			strcat(OscAddress,ancestor[i]->name->getCString());

		if(ancestor[i]->instance != NO_INSTANCE){
			strcat(OscAddress,".");
			strcat(OscAddress,ancestor[i]->instance->getCString());
		}

		strcat(OscAddress,"/");
	}

	if(this->name != NO_NAME)
		strcat(OscAddress,this->name->getCString());

	if(this->instance != NO_INSTANCE){
		strcat(OscAddress,".");
		strcat(OscAddress,this->instance->getCString());
	}

	OscAddress[len] = NULL;

	*returnedOscAddress = TT(OscAddress);

	return kTTErrNone;
}

TTErr JamomaNode::addChild(JamomaNodePtr child)
{
	TTErr err;
	TTValue *c;
	TTHashPtr ht_i;

	// first check if an instance of this child 
	// already exist in the HashTab.
	c = new TTValue();
	err = this->children->lookup(child->name, *c);

	if(err == kTTErrValueNotFound){
		// create a instance linklist
		// with this child as first instance
		ht_i = new TTHash();
		ht_i->append(child->instance,child);

		// add the linklist to the hashTab
		this->children->append(child->name, ht_i);
	}
	else{
		c->get(0,(TTPtr*)&ht_i);

		// add the child to the hashtab
		// TODO : Check if the instance already exist before !!!
		// For the moment the hub guarantee the unicity of the instance...
		ht_i->append(child->instance,child);
	}

	return kTTErrNone;
}

TTErr	JamomaNode::getDump()
{
	uint i, j;
	TTValue *hk, *hk_i;
	TTSymbolPtr key, key_i;
	TTValue *c, *c_i;
	TTHashPtr ht_i;
	JamomaNodePtr n_c;

	if(this->name && this->instance)
		post("%s.%s",this->name->getCString(),this->instance->getCString());
	else	
		if(this->name)
			post("%s",this->name->getCString());

	// if there are children
	if(this->children->getSize()){
		post("{");

		hk = new TTValue();
		c = new TTValue();
		this->children->getKeys(*hk);
		
		// for each child
		for(i=0; i<this->children->getSize(); i++){
			hk->get(i,(TTSymbol**)&key);
			this->children->lookup(key,*c);
			c->get(0,(TTPtr*)&ht_i);
			
			// if there are instances
			if(ht_i->getSize()){

				hk_i = new TTValue();
				c_i = new TTValue();
				ht_i->getKeys(*hk_i);
				
				// for each instance
				for(j=0; j<ht_i->getSize(); j++){
					hk_i->get(j,(TTSymbol**)&key_i);
					ht_i->lookup(key_i,*c_i);
					c_i->get(0,(TTPtr*)&n_c);
					n_c->getDump();
				}
			}
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
	TTErr err;
	TTValue* found = new TTValue();

	// look into the hashtab to check if the address exist in the tree
	err = jamoma_node_hashtab->lookup(oscAddress,*found);

	// if this address doesn't exist
	if(err == kTTErrValueNotFound)
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

		//post("JamomaNodeCheck : %s doesn't exists", oscAddress->getCString());

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
		*returnedNodeAttribute = NO_ATTRIBUTE;
	
	// find the last '/' in the address part
	// if exists, split the address part in a node part (to split) and a parent part
	len = strlen(to_split);
	last_slash = strrchr(to_split,'/');
	pos = (int)last_slash - (int)to_split;

	if(last_slash){
		if(pos){ // In the root case pos == 0
			parent = (char *)malloc(sizeof(char)*(pos+1));
			strncpy(parent,to_split,pos);
			parent[pos] = NULL;
			*returnedParentOscAdress = TT(parent);
			to_split = last_slash+1;	// split to keep only the node part
		}
		else{
			// Is it the root or a child of the root ?
			if(strlen(to_split) > 1){
				*returnedParentOscAdress = TT("/");
				to_split = last_slash+1;	// split to keep only the node part
			}
			else
				*returnedParentOscAdress = NO_PARENT;
		}
	}
	else
		*returnedParentOscAdress = NO_PARENT;

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
		*returnedNodeInstance = NO_INSTANCE;

	// TODO : ??? (detect unusual characters in a node name)
	if(strlen(to_split) > 0)
		*returnedNodeName = TT(to_split);
	else
		*returnedNodeName = NO_NAME;

	return kTTErrNone;
}


/************************************************************************************/

JamomaNodePtr	jamoma_node_init()
{
	if(jamoma_node_root)
		return jamoma_node_root;	// already have a root, just return the pointer to the root...

	jamoma_node_hashtab = new TTHash();
	jamoma_node_root = new JamomaNode(TT("/"), TT("container"), NULL);

	return jamoma_node_root;
}

JamomaError jamoma_node_dump(void)
{
	uint i;
	TTValue *hk;
	TTSymbolPtr key;

	if(jamoma_node_root){	
		hk = new TTValue();
		jamoma_node_hashtab->getKeys(*hk);

		for(i=0; i<jamoma_node_hashtab->getSize(); i++){
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

JamomaError	jamoma_node_register(t_symbol *OSCaddress, t_symbol *type, t_object *obj)
{
	JamomaNodePtr newNode;
	char fullAddress[256];

	if(jamoma_node_root){
		// TODO : what to do if the given name (or name.instance) already exists ?
		// return the created instance ?
		newNode = new JamomaNode(TT(OSCaddress->s_name), TT(type->s_name), obj);

		return JAMOMA_ERR_NONE;
	}
	else{
		post("jamoma_node_register : create the root before");
		return JAMOMA_ERR_GENERIC;
	}
}

JamomaError		jamoma_node_unregister(t_symbol *OSCaddress)
{
	JamomaNodePtr node = NULL;
	char fullAddress[256];

	if(jamoma_node_root){
		jamoma_node_root->getNodeForOSC(OSCaddress->s_name,&node);
	}
	else{
		post("jamoma_node_unregister : create the root before");
		return JAMOMA_ERR_GENERIC;
	}

	if(node){
		node->~JamomaNode();
		return JAMOMA_ERR_NONE;
	}
	
	post("jamoma_node_unregister : this address doesn't exist");
	return JAMOMA_ERR_GENERIC;
}

JamomaNodePtr	jamoma_node_get(t_symbol *address)
{
	TTErr err;
	JamomaNodePtr got;
	err = jamoma_node_root->getNodeForOSC(address->s_name, &got);

	if(err == kTTErrNone)
		return got;
	else
		return NULL;
}

t_symbol *	jamoma_node_name(JamomaNodePtr node)
{
	if(node->getName() != NO_NAME)
		return gensym((char*)node->getName()->getCString());
	else
		return NULL;
}

JamomaError	jamoma_node_set_name(JamomaNodePtr node, t_symbol *name)
{
	// TODO : what to do if the given name already exists ?
	// return the created instance ?
	if(node->setName(TT(name->s_name)))
		return JAMOMA_ERR_GENERIC;

	return JAMOMA_ERR_NONE;
}

t_symbol *	jamoma_node_instance(JamomaNodePtr node)
{
	if(node->getInstance() != NO_INSTANCE)
		return gensym((char*)node->getInstance()->getCString());
	else
		return NULL;
}

JamomaError	jamoma_node_set_instance(JamomaNodePtr node, t_symbol *instance)
{
	// TODO : what to do if the given instance already exists ?
	// return the created instance ?
	if(node->setInstance(TT(instance->s_name)))
		return JAMOMA_ERR_GENERIC;

	return JAMOMA_ERR_NONE;
}

t_symbol *	jamoma_node_type(JamomaNodePtr node)
{
	if(node->getType() != NO_TYPE)
		return gensym((char*)node->getType()->getCString());
	else
		return NULL;
}

LinkedListPtr	jamoma_node_children(JamomaNodePtr node)
{
	uint i, j;
	TTValue *hk, *hk_i;
	TTSymbolPtr key, key_i;
	TTValue *c, *c_i;
	TTHashPtr ht_i;
	JamomaNodePtr n_c;
	LinkedListPtr lk_children;

	// if there are children
	if(node->getChildren()->getSize()){

		hk = new TTValue();
		c = new TTValue();
		node->getChildren()->getKeys(*hk);
		lk_children = new t_linklist();
		
		// for each children
		for(i=0; i<node->getChildren()->getSize(); i++){
			hk->get(i,(TTSymbol**)&key);
			node->getChildren()->lookup(key,*c);
			c->get(0,(TTPtr*)&ht_i);

			// if there are instances
			if(ht_i->getSize()){

				hk_i = new TTValue();
				c_i = new TTValue();
				ht_i->getKeys(*hk_i);
				
				// for each instance
				for(j=0; j<ht_i->getSize(); j++){
					hk_i->get(j,(TTSymbol**)&key_i);
					ht_i->lookup(key_i,*c_i);
					c_i->get(0,(TTPtr*)&n_c);

					linklist_append(lk_children,n_c);
				}
			}
		}		
		return lk_children;
	}
	return NULL;
}

JamomaError jamoma_node_free(void)
{
	if(jamoma_node_root){
		jamoma_node_root->~JamomaNode();
		return JAMOMA_ERR_NONE;
	}

	post("jamoma_node_free : create the root before");	
	return JAMOMA_ERR_GENERIC;
}
