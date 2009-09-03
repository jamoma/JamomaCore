/* 
 * TTNode
 * Copyright © 2008, Tim Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTNode.h"

#define thisTTClass			TTNode
#define thisTTClassName		"TTNode"
#define thisTTClassTags		"nodes"

TTNode::TTNode(TTSymbolPtr newName, TTSymbolPtr newInstance, TTSymbolPtr newType, void *newObject, TTHashPtr aDirectory):TTObject(*kTTValNONE)
{
	// a new TTNode have just a name, an instance, a type and an object
	this->name = newName;
	this->instance = newInstance;
	this->type = newType;
	this->object = newObject;
	this->directory = aDirectory;

	// a new TTNode have no child
	this->children = new TTHash();

	// a new TTNode have no parent
	this->parent = NULL;

	// a new TTNode have no propertie
	this->properties = new TTHash();
}

TTNode::~TTNode()
{
	TTErr err;
	unsigned int i, j, nb_c, nb_i;
	TTValue *hk, *hk_i;
	TTSymbolPtr OSCaddress, key, key_i;
	TTValue *c, *c_i, *p_c;
	TTHashPtr ht_i, p_ht_i;
	TTNodePtr n_c;

	// get the address of the TTNode in the tree 
	this->getOscAddress(&OSCaddress);

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
							n_c->~TTNode();
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
	this->properties->clear();
	this->properties->~TTHash();
	this->name = NULL;
	this->type = NULL;
	this->object = NULL;
	this->instance = NULL;

	// remove the OSCaddress from his directory
	this->directory->remove(OSCaddress);
}

#if 0
#pragma mark -
#pragma mark Static Methods
#endif

TTSymbolPtr		TTNode::getName(){return this->name;}
TTSymbolPtr		TTNode::getInstance(){return this->instance;}
TTSymbolPtr		TTNode::getType(){return this->type;}
void*			TTNode::getObject(){return this->object;}
TTNodePtr		TTNode::getParent(){return this->parent;}
TTHashPtr		TTNode::getProperties(){return this->properties;}

TTErr TTNode::setName(TTSymbolPtr aName, TTSymbolPtr *newInstance, TTBoolean *newInstanceCreated)
{
	TTErr err;
	unsigned int i;
	TTValue *hk, *p_c, *c;
	char *temp, *t;
	TTSymbolPtr old_OSCaddress, new_OSCaddress, old_key;
	TTHashPtr p_ht_i;
	TTNodePtr n_c;

	// get his actual address
	this->getOscAddress(&old_OSCaddress);

	// remove the his actual name in the parent TTNode
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
	this->name = aName;

	// add this TTNode to his parent 
	// and change his instance if already exists
	*newInstanceCreated = false;
	while(this->parent->setChild(this) == kTTErrGeneric){
		this->parent->generateInstance(this->name,&this->instance);
		*newInstance = this->instance;
		*newInstanceCreated = true;
	}

	// get the new address
	this->getOscAddress(&new_OSCaddress);

	// for all the address witch starts by old_OSCaddress :
	// replace the beginning by the new_OSCaddress
	hk = new TTValue();
	c = new TTValue();
	this->directory->getKeys(*hk);

	// for each key
	for(i=0; i<this->directory->getSize(); i++){

		hk->get(i,(TTSymbol**)&old_key);

		// if the key starts by the OSCaddress
		if(strstr(old_key->getCString(), old_OSCaddress->getCString()) == old_key->getCString()){

			// get the TTNode
			err = this->directory->lookup(old_key,*c);
			if(err != kTTErrValueNotFound){
				c->get(0,(TTPtr*)&n_c);

				// create a new key : /new_OSCaddress/end_of_the_old_key
				temp = (char *)malloc(sizeof(char)*( strlen(old_key->getCString()) - strlen(old_OSCaddress->getCString()) + strlen(new_OSCaddress->getCString()) ));
				strcpy(temp, new_OSCaddress->getCString());
				t = (char *)(old_key->getCString() + strlen(old_OSCaddress->getCString()));

				if((TT(t) == TT(S_SEPARATOR)) || t[0] == 0){
					strcat(temp, t);

					// remove the old key
					this->directory->remove(old_key);

					// append the new key
					this->directory->append(TT(temp),TTValue(n_c));
				}
			}
		}
	}

	return kTTErrNone;
}

TTErr TTNode::setInstance(TTSymbolPtr anInstance, TTSymbolPtr *newInstance, TTBoolean *newInstanceCreated)
{
	TTErr err;
	unsigned int i;
	TTValue *hk, *p_c, *c;
	char *temp, *t;
	TTSymbolPtr old_OSCaddress, new_OSCaddress, old_key;
	TTHashPtr p_ht_i;
	TTNodePtr n_c;

	// get his actual address
	this->getOscAddress(&old_OSCaddress);

	// remove his instance in the parent TTNode
	p_c = new TTValue();
	err = this->parent->children->lookup(this->name,*p_c);

	if(err != kTTErrValueNotFound){
		p_c->get(0,(TTPtr*)&p_ht_i);
		p_ht_i->remove(this->instance);
	}

	// change his instance
	this->instance = anInstance;

	// add this TTNode to his parent 
	// and change his instance if already exists
	*newInstanceCreated = false;
	while(this->parent->setChild(this) == kTTErrGeneric){
		this->parent->generateInstance(this->name,&this->instance);
		*newInstance = this->instance;
		*newInstanceCreated = true;
	}

	// get the new address
	this->getOscAddress(&new_OSCaddress);

	// for all the address witch starts by old_OSCaddress :
	// replace the beginning by the new_OSCaddress
	hk = new TTValue();
	c = new TTValue();
	this->directory->getKeys(*hk);

	// for each key
	for(i=0; i<this->directory->getSize(); i++){

		hk->get(i,(TTSymbol**)&old_key);

		// if the key starts by the OSCaddress
		if(strstr(old_key->getCString(), old_OSCaddress->getCString()) == old_key->getCString()){

			// get the TTNode
			err = this->directory->lookup(old_key,*c);
			if(err != kTTErrValueNotFound){
				c->get(0,(TTPtr*)&n_c);

				// create a new key : /new_OSCaddress/end_of_the_old_key
				temp = (char *)malloc(sizeof(char)*( strlen(old_key->getCString()) - strlen(old_OSCaddress->getCString()) + strlen(new_OSCaddress->getCString()) ));
				strcpy(temp, new_OSCaddress->getCString());
				t = (char *)(old_key->getCString() + strlen(old_OSCaddress->getCString()));

				if((TT(t) == TT(S_SEPARATOR)) || t[0] == 0){
					strcat(temp, t);

					// remove the old key
					this->directory->remove(old_key);

					// append the new key
					this->directory->append(TT(temp),TTValue(n_c));
				}
			}
		}
	}

	return kTTErrNone;
}

TTErr TTNode::setParent(TTSymbolPtr oscAddress_parent, TTBoolean *parent_created)
{
	TTValue* found;
	TTErr err;

	// look into the hashtab to check if the address exist in the tree
	found = new TTValue();
	err = this->directory->lookup(oscAddress_parent,*found);

	// if the address doesn't exist
	if(err == kTTErrValueNotFound){

		// we create a container TTNode
		NodeCreate(oscAddress_parent, TT("container"), NULL, this->directory, &this->parent, parent_created);

		// Is it a good test ?
		if(*parent_created && (this->parent->instance != NO_INSTANCE)){
			//post("setParent : error : a new instance %s of %s have been created", this->parent->instance->getCString(), this->parent->name->getCString());
			return kTTErrGeneric;
		}
	}
	else
		found->get(0,(TTPtr*)&this->parent);

	return kTTErrNone;
}

TTErr TTNode::setProperties(TTSymbolPtr propertie)
{
	TTErr err;
	TTValue* found = new TTValue();

	// look into the hashtab to check if the propertie exists
	err = this->properties->lookup(propertie,*found);

	// if this propertie doesn't exist
	if(err == kTTErrValueNotFound){
		this->properties->append(propertie,TTValue());	// TODO : add a value too
		return kTTErrNone;
	}
	else
		return kTTErrGeneric;
}

TTErr TTNode::getChildren(TTSymbolPtr aName, TTSymbolPtr anInstance, TTListPtr *returnedChildren)
{
	unsigned int i, j;
	TTErr err;
	TTValue *hk, *hk_i;
	TTSymbolPtr key, key_i;
	TTValue *c, *c_i;
	TTHashPtr ht_i;
	TTNodePtr n_c;

	// if there are children
	if(this->children->getSize()){

		hk = new TTValue();
		c = new TTValue();
		this->children->getKeys(*hk);
		*returnedChildren = new TTList();
		
		if(aName == TT(S_WILDCARD)){
			// for each children
			for(i=0; i<this->children->getSize(); i++){
			
				hk->get(i,(TTSymbol**)&key);
				this->children->lookup(key,*c);
				c->get(0,(TTPtr*)&ht_i);

				// if there are instances
				if(ht_i->getSize()){

					hk_i = new TTValue();
					c_i = new TTValue();
					ht_i->getKeys(*hk_i);

					if(anInstance == TT(S_WILDCARD)){
						// for each instance
						for(j=0; j<ht_i->getSize(); j++){
							hk_i->get(j,(TTSymbol**)&key_i);
							ht_i->lookup(key_i,*c_i);
							c_i->get(0,(TTPtr*)&n_c);

							(*returnedChildren)->append(new TTValue((TTPtr)n_c));
						}
					}
					// there is an instance
					else{
						err = ht_i->lookup(anInstance,*c_i);
						if(err == kTTErrNone){
							c_i->get(0,(TTPtr*)&n_c);
							(*returnedChildren)->append(new TTValue((TTPtr)n_c));
						}
						else
							return err;
					}
				}
			}
		}
		// there is a name
		else{
			err = this->children->lookup(aName,*c);
			if(err == kTTErrNone){
				c->get(0,(TTPtr*)&ht_i);

				// if there are instances
				if(ht_i->getSize()){

					hk_i = new TTValue();
					c_i = new TTValue();
					ht_i->getKeys(*hk_i);

					if(anInstance == TT(S_WILDCARD)){
						// for each instance
						for(j=0; j<ht_i->getSize(); j++){
							hk_i->get(j,(TTSymbol**)&key_i);
							ht_i->lookup(key_i,*c_i);
							c_i->get(0,(TTPtr*)&n_c);

							(*returnedChildren)->append(new TTValue((TTPtr)n_c));
						}
					}
					// there is an instance
					else{
						err = ht_i->lookup(anInstance,*c_i);
						if(err == kTTErrNone){
							c_i->get(0,(TTPtr*)&n_c);
							(*returnedChildren)->append(new TTValue((TTPtr)n_c));
						}
						else
							return err;
					}
				}
			}
			else
				return err;
		}
	}
	else
		return kTTErrGeneric;

	return kTTErrNone;
}

TTErr TTNode::getOscAddress(TTSymbolPtr *returnedOscAddress)
{
	unsigned int i, nb_ancestor, len;
	TTNodePtr ptr;
	TTNodePtr *ancestor;
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
	if(nb_ancestor){
		ancestor = (TTNodePtr *)malloc(sizeof(TTNodePtr)*nb_ancestor);
		OscAddress = (char *)malloc(sizeof(char)*len);
	}
	// this is the root
	else{
		*returnedOscAddress = TT(S_SEPARATOR);
		return kTTErrNone;
	}

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
			strcat(OscAddress,S_INSTANCE);
			strcat(OscAddress,ancestor[i]->instance->getCString());
		}

		strcat(OscAddress,S_SEPARATOR);
	}

	if(this->name != NO_NAME)
		strcat(OscAddress,this->name->getCString());

	if(this->instance != NO_INSTANCE){
		strcat(OscAddress,S_INSTANCE);
		strcat(OscAddress,this->instance->getCString());
	}

	OscAddress[len] = NULL;

	*returnedOscAddress = TT(OscAddress);

	return kTTErrNone;
}

TTErr TTNode::setChild(TTNodePtr child)
{
	TTErr err;
	TTValue *c, *c_i;
	TTHashPtr ht_i;

	// Is an instance of this child 
	// already exist in the HashTab ?
	c = new TTValue();
	err = this->children->lookup(child->name, *c);

	if(err == kTTErrValueNotFound){

		// create a instance linklist
		// with this child as first instance
		ht_i = new TTHash();
		ht_i->append(child->instance,child);

		// add the linklist to the hashTab
		this->children->append(child->name, ht_i);
		
		// no instance created
		return kTTErrNone;
	}
	else{

		// get the instance table
		c->get(0,(TTPtr*)&ht_i);
		c_i = new TTValue();

		// check if the instance already exists
		err = ht_i->lookup(child->instance, *c_i);

		// if not
		if(err == kTTErrValueNotFound){
			// add the child to the hashtab
			ht_i->append(child->instance,child);

			return kTTErrNone;
		}
		else
			return kTTErrGeneric;
	}
}

TTErr	TTNode::generateInstance(TTSymbolPtr childName, TTSymbolPtr *newInstance)
{
	TTErr err;
	unsigned int i;
	char instances[8];
	TTValue *c, *c_i;
	TTHashPtr ht_i;

	// first check if an instance of this child 
	// already exist in the HashTab.
	c = new TTValue();
	err = this->children->lookup(childName, *c);

	if(err == kTTErrValueNotFound){
		// no child with that name
		return kTTErrGeneric;
	}
	else{
		// get the instance table
		c->get(0,(TTPtr*)&ht_i);
		
		// create a new instance
		c_i = new TTValue();
		i = 1;
		err = kTTErrNone;
		while(err != kTTErrValueNotFound){
			snprintf(instances,8,"%u",i);
			err = ht_i->lookup(TT(instances), *c_i);
			i++;
		}
		
		// return the new instance created
		*newInstance = TT(instances);
		return kTTErrNone;
	}
}

/***********************************************************************************
*
*		GLOBAL METHODS
*
************************************************************************************/

TTErr getNodeForOSC(TTHashPtr directory, const char* oscAddress, TTNodePtr* returnedNode)
{
	return getNodeForOSC(directory, TT((char*)oscAddress), returnedNode);
}

TTErr getNodeForOSC(TTHashPtr directory, TTSymbolPtr oscAddress, TTNodePtr* returnedNode)
{
	TTErr err;
	TTValue* found = new TTValue();

	// look into the hashtab to check if the address exist in the tree
	err = directory->lookup(oscAddress,*found);

	// if this address doesn't exist
	if(err == kTTErrValueNotFound){
		return kTTErrGeneric;
	}
	else{
		found->get(0,(TTPtr*)returnedNode);
		return kTTErrNone;
	}
}

TTErr NodeCreate(TTSymbolPtr oscAddress, TTSymbolPtr newType, void *newObject, TTHashPtr directory, TTNodePtr *returnedNode, TTBoolean *newInstanceCreated)
{
	TTSymbolPtr oscAddress_parent, oscAddress_name, oscAddress_instance, oscAddress_propertie, newInstance, oscAddress_got;
	TTBoolean parent_created;
	TTValue* found;
	TTNodePtr newNode, n_found;
	TTErr err;

	// Split the OSC address in /parent/name.instance:/propertie
	err = splitOSCAddress(oscAddress,&oscAddress_parent,&oscAddress_name, &oscAddress_instance, &oscAddress_propertie);

	// if no error in the parsing of the OSC address
	if(err == kTTErrNone){

		// If there is an attribute part
		if(oscAddress_propertie != NO_PROPERTIE){

			// get the TTNode
			mergeOSCAddress(&oscAddress_got,oscAddress_parent,oscAddress_name,oscAddress_instance,NO_PROPERTIE);
			found = new TTValue();
			err = directory->lookup(oscAddress_got, *found);

			// if the TTNode doesn't exist
			if(err == kTTErrValueNotFound)
				return kTTErrGeneric;

			else{
				// get the TTNode at this address
				found->get(0,(TTPtr*)&n_found);
				n_found->setProperties(oscAddress_propertie);

				return kTTErrNone;
			}
		}

		// is there a TTNode with this address in the tree ?
		found = new TTValue();
		err = directory->lookup(oscAddress, *found);

		// if it's the first at this address
		if(err == kTTErrValueNotFound){
			// keep the instance found in the OSC address
			newInstance = oscAddress_instance;
			*newInstanceCreated = false;
		}
		else{
			// this address already exists
			// get the TTNode at this address
			found->get(0,(TTPtr*)&n_found);

			// Autogenerate a new instance
			n_found->getParent()->generateInstance(n_found->getName(), &newInstance);
			*newInstanceCreated = true;
		}

		// CREATION OF A NEW TTNode
		///////////////////////////

		// 1. Create a new TTNode
		newNode = new TTNode(oscAddress_name, newInstance, newType, newObject, directory);

		// 2. Ensure that the path to the new TTNode exists
		if(oscAddress_parent != NO_PARENT){

			// set his parent
			parent_created = false;
			newNode->setParent(oscAddress_parent, &parent_created);

			// add the new TTNode as a children of his parent
			newNode->getParent()->setChild(newNode);
		}
		else
			// the new TTNode is the root : no parent
			;

		// 3. Add the effective address (with the generated instance) to the global hashtab
		newNode->getOscAddress(&oscAddress_got);
		directory->append(oscAddress_got,TTValue(newNode));

		// 4. returned the new TTNode
		*returnedNode = newNode;

		return kTTErrNone;
	}
	return kTTErrGeneric;
}


TTErr NodeLookup(TTHashPtr directory, TTSymbolPtr oscAddress, TTListPtr *returnedNodes, TTNodePtr *firstReturnedNode)
{
	TTSymbolPtr oscAddress_parent, oscAddress_name, oscAddress_instance, oscAddress_propertie;
	TTListPtr lk_selection, lk_temp;
	TTNodePtr n_found, n_r;
	TTErr err, err_get;

	// Make sure we are dealing with valid OSC input by looking for a leading slash
	if(oscAddress->getCString()[0]!= S_SEPARATOR[0])
		return kTTErrGeneric;

	// Is there a wild card ?
	if(strrchr(oscAddress->getCString(),S_WILDCARD[0])){
		
		// Split the address /parent/name.instance:propertie
		splitOSCAddress(oscAddress, &oscAddress_parent, &oscAddress_name, &oscAddress_instance, &oscAddress_propertie);

		// Here is a recursive call to the TTNodeLookup to get all TTNodes at upper levels
		err = NodeLookup(directory, oscAddress_parent, returnedNodes, firstReturnedNode);

		if(err == kTTErrNone){
			// for each returned TTNodes at upper levels
			// select all corresponding "name.instance" TTNodes
			// among the TTNode list.
			lk_selection = new TTList();
			for((*returnedNodes)->begin(); (*returnedNodes)->end(); (*returnedNodes)->next()){
				
				(*returnedNodes)->current().get(0,(TTPtr *)&n_r);
				err_get = n_r->getChildren(oscAddress_name, oscAddress_instance, &lk_temp);
				
				// if there are children
				// add it to the selection
				if(err_get == kTTErrNone)
						lk_selection->merge(*lk_temp);
			}
			
			if(lk_selection->getSize()){
				*returnedNodes = lk_selection;
				lk_selection->getHead().get(0, (TTObject**)firstReturnedNode);
				return kTTErrNone;
			}
			else
				return kTTErrValueNotFound;
		}

		return err;
	}
	// no wild card : do a lookup in the global hashtab
	else{
		err = getNodeForOSC(directory, oscAddress, &n_found);
		*returnedNodes = new TTList();
		(*returnedNodes)->append(n_found);
		*firstReturnedNode = n_found;
		return err;
	}
}


TTErr splitOSCAddress(TTSymbolPtr oscAddress, TTSymbolPtr* returnedParentOscAdress, TTSymbolPtr* returnedNodeName, TTSymbolPtr* returnedNodeInstance, TTSymbolPtr* returnedNodePropertie)
{
	int len, pos;
	char *last_colon, *last_slash, *last_dot;
	char *propertie, *parent, *instance;
	char *to_split;

	// Make sure we are dealing with valid OSC input by looking for a leading slash
	if(oscAddress->getCString()[0]!= S_SEPARATOR[0])
		return kTTErrGeneric;

	to_split = (char *)malloc(sizeof(char)*(strlen(oscAddress->getCString())+1));
	strcpy(to_split,oscAddress->getCString());

	// find the last ':' in the OSCaddress
	// if exists, split the OSC address in an address part (to split) and an propertie part
	len = strlen(to_split);
	last_colon = strrchr(to_split,S_PROPERTIE[0]);
	pos = (int)last_colon - (int)to_split;

	if(last_colon){
		propertie = (char *)malloc(sizeof(char)*(len - (pos+1)));
		strcpy(propertie,to_split + pos+1);
		*returnedNodePropertie = TT(propertie);

		to_split[pos] = NULL;	// split to keep only the address part
	}
	else
		*returnedNodePropertie = NO_PROPERTIE;
	
	// find the last '/' in the address part
	// if exists, split the address part in a TTNode part (to split) and a parent part
	len = strlen(to_split);
	last_slash = strrchr(to_split,S_SEPARATOR[0]);
	pos = (int)last_slash - (int)to_split;

	if(last_slash){
		if(pos){ // In the root case pos == 0
			parent = (char *)malloc(sizeof(char)*(pos+1));
			strncpy(parent,to_split,pos);
			parent[pos] = NULL;
			*returnedParentOscAdress = TT(parent);
			to_split = last_slash+1;	// split to keep only the TTNode part
		}
		else{
			// Is it the root or a child of the root ?
			if(strlen(to_split) > 1){
				*returnedParentOscAdress = TT(S_SEPARATOR);
				to_split = last_slash+1;	// split to keep only the TTNode part
			}
			else
				*returnedParentOscAdress = NO_PARENT;
		}
	}
	else
		*returnedParentOscAdress = NO_PARENT;

	// find the last '.' in the TTNode part
	// if exists, split the TTNode part in a name part and an instance part
	len = strlen(to_split);
	last_dot = strrchr(to_split,S_INSTANCE[0]);
	pos = (int)last_dot - (int)to_split;

	if(last_dot > 0){
		instance = (char *)malloc(sizeof(char)*(len - (pos+1)));
		strcpy(instance,to_split + pos+1);
		*returnedNodeInstance = TT(instance);

		to_split[pos] = NULL;	// split to keep only the name part
	}
	else
		*returnedNodeInstance = NO_INSTANCE;

	// TODO : ??? (detect unusual characters in a TTNode name)
	if(strlen(to_split) > 0)
		*returnedNodeName = TT(to_split);
	else
		*returnedNodeName = NO_NAME;

	return kTTErrNone;
}

TTErr mergeOSCAddress(TTSymbolPtr *returnedOscAddress, TTSymbolPtr parent, TTSymbolPtr name, TTSymbolPtr instance, TTSymbolPtr propertie)
{
	char address[256] = "";

	if(parent != NO_PARENT)
		strcat(address,parent->getCString());

	if(name != NO_NAME){
		strcat(address,S_SEPARATOR);
		strcat(address,name->getCString());
	}

	if(instance != NO_INSTANCE){
		strcat(address,S_INSTANCE);
		strcat(address,instance->getCString());
	}

	if(propertie != NO_PROPERTIE){
		strcat(address,S_PROPERTIE);
		strcat(address,propertie->getCString());
	}

	*returnedOscAddress = TT(address);

	return kTTErrNone;
}