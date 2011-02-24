/*
 * TTNode
 * Copyright © 2008, Théo de la Hogue & Tim Place
 *
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTNode.h"
#include "TTNodeDirectory.h"

TTNode::TTNode(TTSymbolPtr aName, TTSymbolPtr anInstance, TTObjectPtr anObject, TTPtr aContext, TTNodeDirectoryPtr aDirectory):
parent(NULL)
{
	name = aName;
	instance = anInstance;
	object = anObject;
	context = aContext;
	directory = aDirectory;

	// a new TTNode have no child
	children = new TTHash();
}

TTNode::~TTNode()
{
	TTErr err;
	unsigned int i, j, nb_c, nb_i;
	TTValue hk, hk_i;
	TTSymbolPtr OSCaddress, key, key_i;
	TTValue c, c_i, p_c, data;
	TTHashPtr ht_i, p_ht_i;
	TTNodePtr n_c;

	// destroy all his children
	nb_c = this->children->getSize();
	if (nb_c) {

		this->children->getKeys(hk);

		for (i=0; i<nb_c; i++) {

			hk.get(i,(TTSymbolPtr*)&key);
			err = this->children->lookup(key, c);

			if (err != kTTErrValueNotFound) {

				c.get(0,(TTPtr*)&ht_i);

				// if there are instances
				nb_i = ht_i->getSize();
				if (nb_i) {

					//hk_i = new TTValue();
					//c_i = new TTValue();
					ht_i->getKeys(hk_i);

					// for each instance
					for (j=0; j<nb_i; j++) {

						hk_i.get(j,(TTSymbolPtr*)&key_i);
						err = ht_i->lookup(key_i, c_i);

						if (err != kTTErrValueNotFound) {
							c_i.get(0,(TTPtr*)&n_c);
							n_c->getOscAddress(&OSCaddress);
							this->directory->TTNodeRemove(OSCaddress);		// remove children properly using the TTNodeDirectory
						}
					}
				}
			}
		}
	}

	// it is not a child of his parent anymore
	err = this->parent->children->lookup(this->name, p_c);

	if (err != kTTErrValueNotFound) {
		p_c.get(0,(TTPtr*)&p_ht_i);
		p_ht_i->remove(this->instance);

		// If it was the last instance
		// remove the hashtab
		if (p_ht_i->getSize() == 0) {
			p_ht_i->~TTHash();
			this->parent->children->remove(this->name);
		}
	}

	this->parent = NULL;

	this->children->clear();
	this->children->~TTHash();

	this->name = NULL;
	this->object = NULL;
	this->context = NULL;
	this->instance = NULL;
}

TTErr TTNode::setName(TTSymbolPtr aName, TTSymbolPtr *newInstance, TTBoolean *newInstanceCreated)
{
	TTErr err;
	unsigned int i;
	TTValue hk, p_c, c;
	TTString temp, t;
	TTSymbolPtr old_OSCaddress, new_OSCaddress, old_key;
	TTHashPtr p_ht_i;
	TTNodePtr n_c;

	// get his actual address
	this->getOscAddress(&old_OSCaddress);

	// remove the his actual name in the parent TTNode
	err = this->parent->children->lookup(this->name, p_c);

	if (err != kTTErrValueNotFound) {
		p_c.get(0,(TTPtr*)&p_ht_i);
		p_ht_i->remove(this->instance);

		// If it was the last instance
		// remove the hashtab
		if (p_ht_i->getSize() == 0) {
			p_ht_i->~TTHash();
			this->parent->children->remove(this->name);
		}
	}

	// change his name
	this->name = aName;

	// add this TTNode to his parent
	// and change his instance if already exists
	*newInstanceCreated = false;
	while (this->parent->setChild(this) == kTTErrGeneric) {
		this->parent->generateInstance(this->name,&this->instance);
		*newInstance = this->instance;
		*newInstanceCreated = true;
	}

	// get the new address
	this->getOscAddress(&new_OSCaddress);

	// for all the address witch starts by old_OSCaddress :
	// replace the beginning by the new_OSCaddress
	this->directory->getDirectory()->getKeys(hk);

	// for each key
	for (i=0; i<this->directory->getDirectory()->getSize(); i++) {

		hk.get(i,(TTSymbolPtr*)&old_key);

		// if the key starts by the OSCaddress
		if (strstr(old_key->getCString(), old_OSCaddress->getCString()) == old_key->getCString()) {

			// get the TTNode
			err = this->directory->getDirectory()->lookup(old_key, c);
			if (err != kTTErrValueNotFound) {
				c.get(0,(TTPtr*)&n_c);

				// create a new key : /new_OSCaddress/end_of_the_old_key
				temp = new_OSCaddress->getCString();
				t = (char *)(old_key->getCString() + strlen(old_OSCaddress->getCString()));

				if ((TT(t) == S_SEPARATOR) || t[0] == 0) {
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

TTErr TTNode::setInstance(TTSymbolPtr anInstance, TTSymbolPtr *newInstance, TTBoolean *newInstanceCreated)
{
	TTErr err;
	unsigned int i;
	TTValue hk, p_c, c;
	TTString temp, t;
	TTSymbolPtr old_OSCaddress, new_OSCaddress, old_key;
	TTHashPtr p_ht_i;
	TTNodePtr n_c;

	// get his actual address
	this->getOscAddress(&old_OSCaddress);

	// remove his instance in the parent TTNode
	err = this->parent->children->lookup(this->name, p_c);

	if (err != kTTErrValueNotFound) {
		p_c.get(0,(TTPtr*)&p_ht_i);
		p_ht_i->remove(this->instance);
	}

	// change his instance
	this->instance = anInstance;

	// add this TTNode to his parent
	// and change his instance if already exists
	*newInstanceCreated = false;
	while (this->parent->setChild(this) == kTTErrGeneric) {
		this->parent->generateInstance(this->name,&this->instance);
		*newInstance = this->instance;
		*newInstanceCreated = true;
	}

	// get the new address
	this->getOscAddress(&new_OSCaddress);

	// for all the address witch starts by old_OSCaddress :
	// replace the beginning by the new_OSCaddress
	this->directory->getDirectory()->getKeys(hk);

	// for each key
	for (i=0; i<this->directory->getDirectory()->getSize(); i++) {

		hk.get(i,(TTSymbolPtr*)&old_key);

		// if the key starts by the OSCaddress
		if (strstr(old_key->getCString(), old_OSCaddress->getCString()) == old_key->getCString()) {

			// get the TTNode
			err = this->directory->getDirectory()->lookup(old_key, c);
			if (err != kTTErrValueNotFound) {
				c.get(0,(TTPtr*)&n_c);

				// create a new key : /new_OSCaddress/end_of_the_old_key
				temp = new_OSCaddress->getCString();
				t = (char *)(old_key->getCString() + strlen(old_OSCaddress->getCString()));

				if ((TT(t) == S_SEPARATOR) || t[0] == 0) {
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

TTErr TTNode::setParent(TTSymbolPtr oscAddress_parent, TTBoolean *parent_created)
{
	TTValue	found;
	TTErr	err;

	// look into the hashtab to check if the address exist in the directory
	err = this->directory->getDirectory()->lookup(oscAddress_parent, found);

	// if the address doesn't exist
	if (err == kTTErrValueNotFound) {

		// we create a container TTNode
		this->directory->TTNodeCreate(oscAddress_parent, NULL, NULL, &this->parent, parent_created);

		// Is it a good test ?
		if (*parent_created && (this->parent->instance != NO_INSTANCE))
			return kTTErrGeneric;
	}
	else
		found.get(0,(TTPtr*)&this->parent);

	return kTTErrNone;
}

TTErr TTNode::setChild(TTNodePtr child)
{
	TTErr err;
	TTValue c, c_i;
	TTHashPtr ht_i;

	// Is an instance of this child
	// already exist in the HashTab ?
	err = this->children->lookup(child->name, c);

	if (err == kTTErrValueNotFound) {

		// create a instance linklist
		// with this child as first instance
		ht_i = new TTHash();
		ht_i->append(child->instance,child);

		// add the linklist to the hashTab
		this->children->append(child->name, ht_i);

		// no instance created
		return kTTErrNone;
	}
	else {

		// get the instance table
		c.get(0,(TTPtr*)&ht_i);

		// check if the instance already exists
		err = ht_i->lookup(child->instance, c_i);

		// if not
		if (err == kTTErrValueNotFound) {

			// add the child to the hashtab
			ht_i->append(child->instance,child);

			return kTTErrNone;
		}
		else
			return kTTErrGeneric;
	}
}

TTErr TTNode::setObject(TTObjectPtr anObject)
{
	this->object = anObject;
	return kTTErrNone;
}

TTErr TTNode::setContext(TTPtr aContext)
{
	this->context = aContext;
	return kTTErrNone;
}




TTSymbolPtr TTNode::getName()
{
	return this->name;
}

TTSymbolPtr TTNode::getInstance()
{
return this->instance;
}

TTNodePtr TTNode::getParent()
{
return this->parent;
}

TTErr TTNode::getChildren(TTSymbolPtr aName, TTSymbolPtr anInstance, TTList& returnedChildren)
{
	unsigned int i, j;
	TTErr err;
	TTValue hk, hk_i, c, c_i;
	TTSymbolPtr key, key_i;
	TTHashPtr ht_i;
	TTNodePtr n_c;

	// default : no child
	returnedChildren.clear();

	// if there are children
	if (this->children->getSize()) {

		this->children->getKeys(hk);

		if (aName == S_WILDCARD) {
			// for each children
			for (i=0; i<this->children->getSize(); i++) {

				hk.get(i,(TTSymbolPtr*)&key);
				this->children->lookup(key, c);
				c.get(0,(TTPtr*)&ht_i);

				// if there are instances
				if (ht_i->getSize()) {

					ht_i->getKeys(hk_i);

					if (anInstance == S_WILDCARD) {
						// for each instance
						for (j=0; j<ht_i->getSize(); j++) {
							hk_i.get(j,(TTSymbolPtr*)&key_i);
							ht_i->lookup(key_i, c_i);
							c_i.get(0,(TTPtr*)&n_c);

							returnedChildren.append((TTPtr)n_c);
						}
					}
					// there is an instance
					else {
						err = ht_i->lookup(anInstance, c_i);
						if (err == kTTErrNone) {
							c_i.get(0,(TTPtr*)&n_c);
							returnedChildren.append((TTPtr)n_c);
						}
						// don't stop because there are maybe other names
					}
				}
			}
		}
		// there is a name
		else {
			err = this->children->lookup(aName, c);
			if (err == kTTErrNone) {
				c.get(0,(TTPtr*)&ht_i);

				// if there are instances
				if (ht_i->getSize()) {

					ht_i->getKeys(hk_i);

					if (anInstance == S_WILDCARD) {
						// for each instance
						for (j=0; j<ht_i->getSize(); j++) {
							hk_i.get(j,(TTSymbolPtr*)&key_i);
							ht_i->lookup(key_i, c_i);
							c_i.get(0,(TTPtr*)&n_c);

							returnedChildren.append((TTPtr)n_c);
						}
					}
					// there is an instance
					else {
						err = ht_i->lookup(anInstance, c_i);
						if (err == kTTErrNone) {
							c_i.get(0,(TTPtr*)&n_c);
							returnedChildren.append((TTPtr)n_c);
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

TTErr TTNode::getChildrenName(TTList& returnedChildrenName)
{
	unsigned int i;
	TTValue hk;
	TTSymbolPtr key;

	// default : no child
	returnedChildrenName.clear();

	// if there are children
	if(this->children->getSize()){

		this->children->getKeys(hk);

		// for each children
		for(i=0; i<this->children->getSize(); i++){

			hk.get(i,(TTSymbolPtr*)&key);
			returnedChildrenName.append(key);
		}
	}
	else
		return kTTErrGeneric;

	return kTTErrNone;
}

TTErr TTNode::getChildrenInstance(TTSymbolPtr aName, TTList& returnedChildrenInstance)
{
	unsigned int j;
	TTErr err;
	TTValue hk, hk_i, c;
	TTSymbolPtr key_i;
	TTHashPtr ht_i;

	// default : no child
	returnedChildrenInstance.clear();

	// if there are children
	if(this->children->getSize()){

		this->children->getKeys(hk);

		err = this->children->lookup(aName, c);
		if(err == kTTErrNone){
			c.get(0,(TTPtr*)&ht_i);

			// if there are instances
			if(ht_i->getSize()){

				ht_i->getKeys(hk_i);

				// for each instance
				for(j=0; j<ht_i->getSize(); j++){

					hk_i.get(j,(TTSymbolPtr*)&key_i);
					returnedChildrenInstance.append(TTValue(key_i));
				}
			}
			else
				return kTTErrGeneric;
		}
		else
			return kTTErrGeneric;
	}
	else
		return kTTErrGeneric;

	return kTTErrNone;
}

TTObjectPtr TTNode::getObject()
{
	if (this->object)
		if (!this->object->valid)
			return NULL;

	return this->object;
}

TTPtr TTNode::getContext()
{
	return this->context;
}

TTErr TTNode::getOscAddress(TTSymbolPtr *returnedOscAddress, TTSymbolPtr from)
{
	unsigned int	i, nb_ancestor, len = 0;
	TTSymbolPtr		returnedPart1, returnedPart2;
	TTNodePtr		ptr;
	TTNodePtr		*ancestor;
	TTString		OscAddress;

	// First, count the number of ancestor
	// and the length of the entire address (with slash and dot)
	nb_ancestor = 0;

	if (this->name != NO_NAME)
		len = strlen(this->name->getCString());

	if (this->instance != NO_INSTANCE)
		len += strlen(this->instance->getCString()) + 1;

	ptr = this;

	while (ptr->parent) {

		ptr = ptr->parent;
		nb_ancestor++;

		if (ptr->name != NO_NAME)
			len += (strlen(ptr->name->getCString()) + 1);		// +1 for /

		if (ptr->instance != NO_INSTANCE)
			len += (strlen(ptr->instance->getCString()) + 1);	// +1 for .
	}

	// Then, create an array to register all the ancestor and a string
	if (nb_ancestor)
		ancestor = (TTNodePtr *)malloc(sizeof(TTNodePtr)*nb_ancestor);

	// this is the root
	else {
		*returnedOscAddress = S_SEPARATOR;
		return kTTErrNone;
	}

	// The root have to be the first ancestor
	i = nb_ancestor;
	ptr = this;
	while (ptr->parent) {
		i--;
		ptr = ptr->parent;
		ancestor[i] = ptr;
	}

	// Finaly, copy the name of each ancestor
	// copy the root before
	OscAddress = ancestor[0]->name->getCString();
	for (i=1; i<nb_ancestor; i++) {

		if (ancestor[i]->name != NO_NAME)
			OscAddress += ancestor[i]->name->getCString();

		if (ancestor[i]->instance != NO_INSTANCE) {
			OscAddress += S_INSTANCE->getCString();
			OscAddress += ancestor[i]->instance->getCString();
		}

		OscAddress += S_SEPARATOR->getCString();
	}

	if (this->name != NO_NAME)
		OscAddress += this->name->getCString();

	if (this->instance != NO_INSTANCE) {
		OscAddress += S_INSTANCE->getCString();
		OscAddress += this->instance->getCString();
	}

	if (len) {

		// make it relative from
		if (from != S_SEPARATOR) {
			splitAtOSCAddress(TT(OscAddress), countSeparator(from), &returnedPart1, &returnedPart2);
			OscAddress = C_SEPARATOR;
			OscAddress += returnedPart2->getCString();
		}

		*returnedOscAddress = TT(OscAddress);
		return kTTErrNone;
	}

	*returnedOscAddress = NULL;
	return kTTErrGeneric;
}

TTErr	TTNode::generateInstance(TTSymbolPtr childName, TTSymbolPtr *newInstance)
{
	TTErr err;
	unsigned int i;
	char instances[8];
	TTValue c, c_i;
	TTHashPtr ht_i;

	// first check if an instance of this child
	// already exist in the HashTab.
	err = this->children->lookup(childName, c);

	if (err == kTTErrValueNotFound) {
		// no child with that name
		return kTTErrGeneric;
	}
	else {
		// get the instance table
		c.get(0,(TTPtr*)&ht_i);

		// create a new instance
		i = 1;
		err = kTTErrNone;
		while (err != kTTErrValueNotFound) {
			snprintf(instances,8,"%u",i);
			err = ht_i->lookup(TT(instances), c_i);
			i++;
		}

		// return the new instance created
		*newInstance = TT(instances);
		return kTTErrNone;
	}
}
