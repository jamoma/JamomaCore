/*
 * TTNode
 * Copyright © 2008, Théo de la Hogue & Tim Place
 *
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef DISABLE_NODELIB

#include "TTNode.h"

TTNode::TTNode(TTSymbol aName, TTSymbol anInstance, TTObjectBasePtr anObject, TTPtr aContext, TTNodeDirectoryPtr aDirectory):
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
	TTErr       err;
	unsigned int i, j, nb_c, nb_i;
	TTValue     hk, hk_i;
	TTAddress	anAddress;
	TTSymbol	key;
	TTSymbol	key_i;
	TTValue     c, c_i, p_c, data;
	TTHashPtr   ht_i, p_ht_i;
	TTNodePtr   n_c;

	// destroy all his children
	nb_c = this->children->getSize();
	if (nb_c) {

		this->children->getKeys(hk);

		for (i = 0; i < nb_c; i++) {

			key = hk[i];
			err = this->children->lookup(key, c);

			if (err != kTTErrValueNotFound) {

				ht_i = TTHashPtr(TTPtr(c[0]));

				// if there are instances
				nb_i = ht_i->getSize();
				if (nb_i) {

					ht_i->getKeys(hk_i);

					// for each instance
					for (j = 0; j < nb_i; j++) {

						key_i = hk_i[j];
						err = ht_i->lookup(key_i, c_i);

						if (err != kTTErrValueNotFound) {
							n_c = TTNodePtr(TTPtr(c_i[0]));
							n_c->getAddress(anAddress);
							this->directory->TTNodeRemove(anAddress);		// remove children properly using the TTNodeDirectory
						}
					}
				}
			}
		}
	}

	// it is not a child of his parent anymore
	if (this->parent) {
		err = this->parent->children->lookup(this->name, p_c);
		
		if (err != kTTErrValueNotFound) {
			p_ht_i = TTHashPtr((TTPtr)p_c[0]);
			p_ht_i->remove(this->instance);
			
			// If it was the last instance
			// remove the hashtab
			if (p_ht_i->getSize() == 0) {
				p_ht_i->~TTHash();
				this->parent->children->remove(this->name);
			}
		}
		
		this->parent = NULL;
	}

	this->children->clear();
	this->children->~TTHash();

	this->object = NULL;
	this->context = NULL;
}

TTErr TTNode::setName(TTSymbol aName, TTSymbol newInstance, TTBoolean *newInstanceCreated)
{
	TTErr err;
	TTUInt32 i;
	TTValue hk, p_c, c;
	TTString temp, t;
	TTAddress	oldAddress;
	TTAddress	newAaddress;
	TTSymbol	old_key;
	TTHashPtr p_ht_i;
	TTNodePtr n_c;

	// get his actual address
	this->getAddress(oldAddress);

	// remove the his actual name in the parent TTNode
	err = this->parent->children->lookup(this->name, p_c);

	if (err != kTTErrValueNotFound) {
		p_ht_i = TTHashPtr((TTPtr)p_c[0]);
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
		this->parent->generateInstance(name, instance);
		newInstance = instance;
		*newInstanceCreated = true;
	}

	// get the new address
	this->getAddress(newAaddress);

	// for all the address witch starts by oldAddress :
	// replace the beginning by the newAaddress
	this->directory->getDirectory()->getKeys(hk);

	// for each key
	for (i=0; i<this->directory->getDirectory()->getSize(); i++) {

		old_key = hk[i];

		// if the key starts by the oldAddress
		if (strstr(old_key.c_str(), oldAddress.c_str()) == old_key.c_str()) {

			// get the TTNode
			err = this->directory->getDirectory()->lookup(old_key, c);
			if (err != kTTErrValueNotFound) {
				n_c = TTNodePtr((TTPtr)c[0]);

				// create a new key : /newAddress/end_of_the_old_key
				temp = newAaddress.c_str();
				t = (char *)(old_key.c_str() + strlen(oldAddress.c_str()));

				if ((TT(t) == S_SEPARATOR) || t.at(0) == 0) {
					temp += t;

					// remove the old key
					this->directory->getDirectory()->remove(old_key);

					// append the new key
					this->directory->getDirectory()->append(TTSymbol(temp), n_c);
				}
			}
		}
	}

	return kTTErrNone;
}

TTErr TTNode::setInstance(TTSymbol anInstance, TTSymbol newInstance, TTBoolean *newInstanceCreated)
{
	TTErr err;
	TTUInt32 i;
	TTValue hk, p_c, c;
	TTString temp, t;
	TTAddress	oldAddress;
	TTAddress	newAddress;
	TTSymbol	old_key;
	TTHashPtr p_ht_i;
	TTNodePtr n_c;

	// get his actual address
	this->getAddress(oldAddress);

	// remove his instance in the parent TTNode
	err = this->parent->children->lookup(this->name, p_c);

	if (err != kTTErrValueNotFound) {
		p_ht_i = TTHashPtr((TTPtr)p_c[0]);
		p_ht_i->remove(this->instance);
	}

	// change his instance
	this->instance = anInstance;

	// add this TTNode to his parent
	// and change his instance if already exists
	*newInstanceCreated = false;
	while (this->parent->setChild(this) == kTTErrGeneric) {
		this->parent->generateInstance(this->name, this->instance);
		newInstance = this->instance;
		*newInstanceCreated = true;
	}

	// get the new address
	this->getAddress(newAddress);

	// for all the address witch starts by oldAddress :
	// replace the beginning by the newAddress
	this->directory->getDirectory()->getKeys(hk);

	// for each key
	for (i=0; i<this->directory->getDirectory()->getSize(); i++) {
		old_key = hk[i];

		// if the key starts by the address
		if (strstr(old_key.c_str(), oldAddress.c_str()) == old_key.c_str()) {

			// get the TTNode
			err = this->directory->getDirectory()->lookup(old_key, c);
			if (err != kTTErrValueNotFound) {
				n_c = TTNodePtr((TTPtr)c[0]);

				// create a new key : /newAddress/end_of_the_old_key
				temp = newAddress.c_str();
				t = (char *)(old_key.c_str() + strlen(oldAddress.c_str()));

				if ((TT(t) == S_SEPARATOR) || t.at(0) == 0) {
					temp += t;

					// remove the old key
					this->directory->getDirectory()->remove(old_key);

					// append the new key
					this->directory->getDirectory()->append(TTSymbol(temp), n_c);
				}
			}
		}
	}

	return kTTErrNone;
}

TTErr TTNode::setParent(TTAddress parentAddress, TTBoolean *newParentCreated)
{
	TTValue	found;
	TTErr	err;

	// look into the hashtab to check if the address exist in the directory
	err = this->directory->getDirectory()->lookup(parentAddress, found);

	// if the address doesn't exist
	if (err == kTTErrValueNotFound) {

		// we create a container TTNode
		this->directory->TTNodeCreate(parentAddress, NULL, NULL, &this->parent, newParentCreated);

		// Is it a good test ?
		if (*newParentCreated && (this->parent->instance != NO_INSTANCE))
			return kTTErrGeneric;
	}
	else
		this->parent = TTNodePtr((TTPtr)found[0]);

	return kTTErrNone;
}

TTErr TTNode::setChild(TTNodePtr child)
{
	TTErr err;
	TTValue c, c_i;
	TTHashPtr ht_i;

	// Is an instance of this child
	// already exist in the children table ?
	err = this->children->lookup(child->name, c);

	if (err == kTTErrValueNotFound) {

		// create an instance table
		// with this child as first instance
		ht_i = new TTHash();
		ht_i->append(child->instance,child);

		// add the instance table to the children table
		this->children->append(child->name, ht_i);

		// no instance created
		return kTTErrNone;
	}
	else {

		// get the instance table
		ht_i = TTHashPtr((TTPtr)c[0]);

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

TTErr TTNode::setObject(TTObjectBasePtr anObject)
{
	this->object = anObject;
	return kTTErrNone;
}

TTErr TTNode::setContext(TTPtr aContext)
{
	this->context = aContext;
	return kTTErrNone;
}




TTSymbol TTNode::getName()
{
	return this->name;
}

TTSymbol TTNode::getInstance()
{
return this->instance;
}

TTNodePtr TTNode::getParent()
{
return this->parent;
}

TTErr TTNode::getChildren(TTSymbol aName, TTSymbol anInstance, TTList& returnedChildren)
{
	unsigned int i, j;
	TTErr err;
	TTValue hk, hk_i, c, c_i;
	TTSymbol	key;
	TTSymbol	key_i;
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

				key = hk[i];
				this->children->lookup(key, c);
				ht_i = TTHashPtr((TTPtr)c[0]);

				// if there are instances
				if (ht_i->getSize()) {

					ht_i->getKeys(hk_i);

					if (anInstance == S_WILDCARD) {
						// for each instance
						for (j=0; j<ht_i->getSize(); j++) {
							key_i = hk_i[j];
							ht_i->lookup(key_i, c_i);
							n_c = TTNodePtr((TTPtr)c_i[0]);

							returnedChildren.append(n_c);
						}
					}
					// there is an instance
					else {
						err = ht_i->lookup(anInstance, c_i);
						if (err == kTTErrNone) {
							n_c = TTNodePtr((TTPtr)c_i[0]);
							returnedChildren.append(n_c);
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
				ht_i = TTHashPtr((TTPtr)c[0]);

				// if there are instances
				if (ht_i->getSize()) {

					ht_i->getKeys(hk_i);

					if (anInstance == S_WILDCARD) {
						// for each instance
						for (j=0; j<ht_i->getSize(); j++) {
							key_i = hk_i[j];
							ht_i->lookup(key_i, c_i);
							n_c = TTNodePtr((TTPtr)c_i[0]);

							returnedChildren.append(n_c);
						}
					}
					// there is an instance
					else {
						err = ht_i->lookup(anInstance, c_i);
						if (err == kTTErrNone) {
							n_c = TTNodePtr((TTPtr)c_i[0]);
							returnedChildren.append(n_c);
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
	TTSymbol	key;

	// default : no child
	returnedChildrenName.clear();

	// if there are children
	if(this->children->getSize()){

		this->children->getKeys(hk);

		// for each children
		for(i=0; i<this->children->getSize(); i++){

			key = hk[i];
			returnedChildrenName.append(key);
		}
	}
	else
		return kTTErrGeneric;

	return kTTErrNone;
}

TTErr TTNode::getChildrenInstance(TTSymbol aName, TTList& returnedChildrenInstance)
{
	unsigned int j;
	TTErr err;
	TTValue hk, hk_i, c;
	TTSymbol	key_i;
	TTHashPtr ht_i;

	// default : no child
	returnedChildrenInstance.clear();

	// if there are children
	if(this->children->getSize()){

		this->children->getKeys(hk);

		err = this->children->lookup(aName, c);
		if(err == kTTErrNone){
			ht_i = TTHashPtr((TTPtr)c[0]);

			// if there are instances
			if(ht_i->getSize()){

				ht_i->getKeys(hk_i);

				// for each instance
				for(j=0; j<ht_i->getSize(); j++){

					key_i = hk_i[j];
					returnedChildrenInstance.append(key_i);
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

TTObjectBasePtr TTNode::getObject()
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

TTErr TTNode::getAddress(TTAddress& returnedAddress, TTAddress from)
{
	unsigned int	i, nb_ancestor, len = 0;
	TTAddress		fromNorm;
	TTAddress		returnedPart1;
	TTAddress		returnedPart2;
	TTNodePtr		ptr;
	TTNodePtr		*ancestor;
	TTString		anAddressString;

	// First, count the number of ancestor
	// and the length of the entire address (with slash and dot)
	nb_ancestor = 0;

	if (this->name != NO_NAME)
		len = strlen(this->name.c_str());

	if (this->instance != NO_INSTANCE)
		len += strlen(this->instance.c_str()) + 1;

	ptr = this;

	while (ptr->parent) {

		ptr = ptr->parent;
		nb_ancestor++;

		if (ptr->name != NO_NAME)
			len += (strlen(ptr->name.c_str()) + 1);		// +1 for /

		if (ptr->instance != NO_INSTANCE)
			len += (strlen(ptr->instance.c_str()) + 1);	// +1 for .
	}

	// Then, create an array to register all the ancestor and a string
	if (nb_ancestor)
		ancestor = (TTNodePtr *)malloc(sizeof(TTNodePtr)*nb_ancestor);

	// this is the root
	else {
		returnedAddress = kTTAdrsRoot;
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
	anAddressString = ancestor[0]->name.c_str();
	for (i=1; i<nb_ancestor; i++) {

		if (ancestor[i]->name != NO_NAME)
			anAddressString += ancestor[i]->name.c_str();

		if (ancestor[i]->instance != NO_INSTANCE) {
			anAddressString += S_INSTANCE.c_str();
			anAddressString += ancestor[i]->instance.c_str();
		}

		anAddressString += S_SEPARATOR.c_str();
	}

	if (this->name != NO_NAME)
		anAddressString += this->name.c_str();

	if (this->instance != NO_INSTANCE) {
		anAddressString += S_INSTANCE.c_str();
		anAddressString += this->instance.c_str();
	}

	if (len) {
		
		returnedAddress = TTAddress(anAddressString);

		// make it relative from
		if (from != kTTAdrsEmpty) {
			
			fromNorm = from.normalize();
			if (fromNorm == kTTAdrsRoot)
				returnedAddress.splitAt(0, returnedPart1, returnedPart2);
			else
				returnedAddress.splitAt(fromNorm.countSeparator(), returnedPart1, returnedPart2);
			
			returnedAddress = returnedPart2;
		}

		return kTTErrNone;
	}

//	*returnedAddress = NULL;
	return kTTErrGeneric;
}

TTErr	TTNode::generateInstance(TTSymbol childName, TTSymbol& newInstance)
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
		ht_i = TTHashPtr((TTPtr)c[0]);

		// create a new instance
		i = 1;
		err = kTTErrNone;
		while (err != kTTErrValueNotFound) {
			snprintf(instances,8,"%u",i);
			err = ht_i->lookup(TT(instances), c_i);
			i++;
		}

		// return the new instance created
		newInstance = TT(instances);
		return kTTErrNone;
	}
}

#endif

