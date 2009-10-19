/* 
 * Node
 * Copyright © 2008, Théo de la Hogue & Tim Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "Node.h"

#define thisTTClass			Node
#define thisTTClassName		"Node"
#define thisTTClassTags		"nodes"

Node::Node(TTSymbolPtr newName, TTSymbolPtr newInstance, TTSymbolPtr newType, void *newObject, NodeDirectoryPtr aDirectory):TTObject(*kTTValNONE)
{
	// a new Node have just a name, an instance, a type and an object
	this->name = newName;
	this->instance = newInstance;
	this->type = newType;
	this->object = newObject;
	this->directory = aDirectory;

	// a new Node have no child
	this->children = new TTHash();

	// a new Node have no parent
	this->parent = NULL;

	// a new Node have no propertie
	this->properties = new TTHash();
	
	this->observers = new TTList();
}

Node::~Node()
{
	TTErr err;
	unsigned int i, j, nb_c, nb_i;
	TTValue *hk, *hk_i;
	TTSymbolPtr OSCaddress, key, key_i;
	TTValue *c, *c_i, *p_c;
	TTHashPtr ht_i, p_ht_i;
	NodePtr n_c;

	// get the address of the Node in the directory 
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
							n_c->~Node();
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
	this->observers->clear();
	this->observers->~TTList();

	// remove the OSCaddress from the directory
	this->directory->NodeRemove(OSCaddress);
}

#if 0
#pragma mark -
#pragma mark Static Methods
#endif

TTSymbolPtr		Node::getName(){return this->name;}
TTSymbolPtr		Node::getInstance(){return this->instance;}
TTSymbolPtr		Node::getType(){return this->type;}
void*			Node::getObject(){return this->object;}
NodePtr		Node::getParent(){return this->parent;}

TTListPtr		Node::getObserver(){return this->observers;}

TTErr Node::setName(TTSymbolPtr aName, TTSymbolPtr *newInstance, TTBoolean *newInstanceCreated)
{
	TTErr err;
	unsigned int i;
	TTValue *hk, *p_c, *c;
	TTString temp, t;
	TTSymbolPtr old_OSCaddress, new_OSCaddress, old_key;
	TTHashPtr p_ht_i;
	NodePtr n_c;

	// get his actual address
	this->getOscAddress(&old_OSCaddress);

	// remove the his actual name in the parent Node
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

	// add this Node to his parent 
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
	this->directory->getDirectory()->getKeys(*hk);

	// for each key
	for(i=0; i<this->directory->getDirectory()->getSize(); i++){

		hk->get(i,(TTSymbol**)&old_key);

		// if the key starts by the OSCaddress
		if(strstr(old_key->getCString(), old_OSCaddress->getCString()) == old_key->getCString()){

			// get the Node
			err = this->directory->getDirectory()->lookup(old_key,*c);
			if(err != kTTErrValueNotFound){
				c->get(0,(TTPtr*)&n_c);

				// create a new key : /new_OSCaddress/end_of_the_old_key
				temp = new_OSCaddress->getCString();
				t = (char *)(old_key->getCString() + strlen(old_OSCaddress->getCString()));

				if((TT(t) == S_SEPARATOR) || t[0] == 0){
					temp += t;

					// remove the old key
					this->directory->getDirectory()->remove(old_key);

					// append the new key
					this->directory->getDirectory()->append(TT(temp),TTValue(n_c));
				}
			}
		}
	}

	return kTTErrNone;
}

TTErr Node::setInstance(TTSymbolPtr anInstance, TTSymbolPtr *newInstance, TTBoolean *newInstanceCreated)
{
	TTErr err;
	unsigned int i;
	TTValue *hk, *p_c, *c;
	TTString temp, t;
	TTSymbolPtr old_OSCaddress, new_OSCaddress, old_key;
	TTHashPtr p_ht_i;
	NodePtr n_c;

	// get his actual address
	this->getOscAddress(&old_OSCaddress);

	// remove his instance in the parent Node
	p_c = new TTValue();
	err = this->parent->children->lookup(this->name,*p_c);

	if(err != kTTErrValueNotFound){
		p_c->get(0,(TTPtr*)&p_ht_i);
		p_ht_i->remove(this->instance);
	}

	// change his instance
	this->instance = anInstance;

	// add this Node to his parent 
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
	this->directory->getDirectory()->getKeys(*hk);

	// for each key
	for(i=0; i<this->directory->getDirectory()->getSize(); i++){

		hk->get(i,(TTSymbol**)&old_key);

		// if the key starts by the OSCaddress
		if(strstr(old_key->getCString(), old_OSCaddress->getCString()) == old_key->getCString()){

			// get the Node
			err = this->directory->getDirectory()->lookup(old_key,*c);
			if(err != kTTErrValueNotFound){
				c->get(0,(TTPtr*)&n_c);

				// create a new key : /new_OSCaddress/end_of_the_old_key
				temp = new_OSCaddress->getCString();
				t = (char *)(old_key->getCString() + strlen(old_OSCaddress->getCString()));

				if((TT(t) == S_SEPARATOR) || t[0] == 0){
					temp += t;

					// remove the old key
					this->directory->getDirectory()->remove(old_key);

					// append the new key
					this->directory->getDirectory()->append(TT(temp),TTValue(n_c));
				}
			}
		}
	}

	return kTTErrNone;
}

TTErr Node::setParent(TTSymbolPtr oscAddress_parent, TTBoolean *parent_created)
{
	TTValue* found;
	TTErr err;

	// look into the hashtab to check if the address exist in the directory
	found = new TTValue();
	err = this->directory->getDirectory()->lookup(oscAddress_parent,*found);

	// if the address doesn't exist
	if(err == kTTErrValueNotFound){

		// we create a container Node
		this->directory->NodeCreate(oscAddress_parent, TT("container"), NULL, &this->parent, parent_created);

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

TTErr Node::addPropertie(TTSymbolPtr propertie, void(*getPropertieMethod)(NodePtr node, TTSymbolPtr propertie, TTValuePtr *returnedValue), void(*setPropertieMethod)(NodePtr node, TTSymbolPtr propertie, TTValuePtr value))
{
	TTErr err;
	TTValuePtr p_method;

	// look into the hashtab to check if the propertie exists
	err = this->properties->lookup(propertie, *p_method);

	// if this propertie doesn't exist
	if(err == kTTErrValueNotFound){
		
		// store the get and set propertie methods
		p_method = new TTValue((TTPtr)getPropertieMethod);
		p_method->append((TTPtr)setPropertieMethod);
		
		this->properties->append(propertie, p_method);
		return kTTErrNone;
	}
	else
		return kTTErrGeneric;
}

TTListPtr Node::getPropertiesList()
{
	uint i;
	TTValue *hk;
	TTSymbolPtr key;
	TTValue *c;
	TTListPtr lk_prp;
	
	// if there are properties
	if(!this->properties->isEmpty()){
		
		hk = new TTValue();
		c = new TTValue();
		this->properties->getKeys(*hk);
		lk_prp = new TTList();
		
		// for each propertie
		for(i = 0; i < this->properties->getSize(); i++){
			hk->get(i,(TTSymbol**)&key);
			// add the propertie to the linklist
			lk_prp->append(new TTValue((TTSymbolPtr)key));
		}
		
		return lk_prp;
	}
	return NULL;
}

bool Node::isPropertie(TTSymbolPtr propertie)
{
	TTErr err;
	TTValuePtr p_methods = NULL;
	
	// look into the hashtab to check if the propertie exists
	err = this->properties->lookup(propertie, *p_methods);
	
	return err == kTTErrNone;
}

TTErr Node::getPropertie(TTSymbolPtr propertie, TTValuePtr *returnedValue)
{
	TTErr err;
	TTValuePtr p_methods = NULL;
	void (*g_method)(NodePtr n, TTSymbolPtr p, TTValuePtr *rv);
	
	// look into the hashtab to check if the propertie exists
	err = this->properties->lookup(propertie, *p_methods);
	
	// if this propertie exists
	if(err == kTTErrNone){
		// get the set propertie method
		// and use it
		if(p_methods){
			p_methods->get(0, (TTPtr*)&g_method);
			g_method(this, propertie, returnedValue);
		}
		return kTTErrNone;
	}
	else
		return kTTErrGeneric;
}

TTErr Node::setPropertie(TTSymbolPtr propertie, TTValuePtr value)
{
	TTErr err;
	TTValuePtr p_methods = NULL;
	void (*s_method)(NodePtr n, TTSymbolPtr p, TTValuePtr v);
	
	// look into the hashtab to check if the propertie exists
	err = this->properties->lookup(propertie, *p_methods);
	
	// if this propertie exists
	if(err == kTTErrNone){
		// get the set propertie method
		// and use it
		if(p_methods){
			p_methods->get(1, (TTPtr*)&s_method);
			s_method(this, propertie, value);
		}
		return kTTErrNone;
	}
	else
		return kTTErrGeneric;
}
								 
TTErr Node::getChildren(TTSymbolPtr aName, TTSymbolPtr anInstance, TTListPtr *returnedChildren)
{
	unsigned int i, j;
	TTErr err;
	TTValue *hk, *hk_i;
	TTSymbolPtr key, key_i;
	TTValue *c, *c_i;
	TTHashPtr ht_i;
	NodePtr n_c;

	// if there are children
	if(this->children->getSize()){

		hk = new TTValue();
		c = new TTValue();
		this->children->getKeys(*hk);
		*returnedChildren = new TTList();
		
		if(aName == S_WILDCARD){
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

					if(anInstance == S_WILDCARD){
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

					if(anInstance == S_WILDCARD){
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


void Node::addObserver(ObserverPtr observer)
{
	this->observers->append(new TTValue((TTPtr)observer));
}


void Node::removeObserver(ObserverPtr observer)
{
	this->observers->remove(new TTValue((TTPtr)observer));
}

TTErr Node::getOscAddress(TTSymbolPtr *returnedOscAddress)
{
	unsigned int i, nb_ancestor, len;
	NodePtr ptr;
	NodePtr *ancestor;
	TTString OscAddress;

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
	if(nb_ancestor)
		ancestor = (NodePtr *)malloc(sizeof(NodePtr)*nb_ancestor);
	
	// this is the root
	else{
		*returnedOscAddress = S_SEPARATOR;
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
	OscAddress = ancestor[0]->name->getCString();
	for(i=1; i<nb_ancestor; i++){

		if(ancestor[i]->name != NO_NAME)
			OscAddress += ancestor[i]->name->getCString();

		if(ancestor[i]->instance != NO_INSTANCE){
			OscAddress += S_INSTANCE->getCString();
			OscAddress += ancestor[i]->instance->getCString();
		}

		OscAddress += S_SEPARATOR->getCString();
	}

	if(this->name != NO_NAME)
		OscAddress += this->name->getCString();

	if(this->instance != NO_INSTANCE){
		OscAddress += S_INSTANCE->getCString();
		OscAddress += this->instance->getCString();
	}
	
	if(len){
		*returnedOscAddress = TT(OscAddress);
		return kTTErrNone;
	}

	*returnedOscAddress = NULL;
	return kTTErrGeneric;
}

TTErr Node::setChild(NodePtr child)
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

TTErr	Node::generateInstance(TTSymbolPtr childName, TTSymbolPtr *newInstance)
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