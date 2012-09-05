/*
 * TTNodeDirectory
 * Copyright © 2008, Théo de la Hogue & Tim Place
 *
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef DISABLE_NODELIB

#include "TTNodeDirectory.h"
#include <algorithm>

TTNodeDirectory::TTNodeDirectory(TTSymbolRef aName) :
	name(kTTSymEmpty),	
	root(NULL),	
	directory(NULL),
	aliases(NULL),
	observers(NULL),
	mutex(NULL)
{	
	// set the name of the tree
	name = aName;

	init();
}

TTNodeDirectory::~TTNodeDirectory()
{
	delete root;
	delete directory;
	delete aliases;
	delete observers;
}

TTErr TTNodeDirectory::init()
{
	TTBoolean nodeCreated = NO;
	
	if (root) delete root;
	if (directory) delete directory;
	if (aliases) delete aliases;
	
	// create a new directory
	directory = new TTHash();
	
	// create a new aliases table
	aliases = new TTHash();
	
	// if there are observers keep them
	if (!observers) {
		
		// create a lifeCycleObservers and protect it from multithreading access
		// why ? because observers could disappear when they know an address is destroyed
		this->observers = new TTHash();
		this->observers->setThreadProtection(true);
	}
	
	mutex = new TTMutex(true);
	
	// create a root
	return TTNodeCreate(kTTAdrsRoot, NULL, this, &this->root, &nodeCreated);
}

TTErr TTNodeDirectory::setName(TTSymbolRef aName)
{
	name = aName;
	return kTTErrNone;
}

TTSymbolRef	TTNodeDirectory::getName()
{
	return name;
}

TTNodePtr	TTNodeDirectory::getRoot()
{
	return root;
}

TTHashPtr	TTNodeDirectory::getDirectory()
{
	return directory;
}

TTErr TTNodeDirectory::getTTNode(const char* anAddress, TTNodePtr* returnedTTNode)
{
	return getTTNode(TTADRS((char*)anAddress), returnedTTNode);
}

TTErr TTNodeDirectory::getTTNode(TTNodeAddressPtr anAddress, TTNodePtr* returnedTTNode)
{
	TTNodeAddressPtr noAlias;
	TTErr		err;
	TTValue		found;

	if (!directory) 
		return kTTErrGeneric;
	
	// look into the hashtab to check if the address exist in the tree
	err = directory->lookup(anAddress->normalize(), found);
	
	// if the address exists : return the TTNode
	if (err != kTTErrValueNotFound) {
		found.get(0,(TTPtr*)returnedTTNode);
		return kTTErrNone;
	}
	
	noAlias = anAddress;
	if (!this->replaceAlias(&noAlias))
		return getTTNode(noAlias, returnedTTNode);
	else
		return kTTErrGeneric;
}

TTErr TTNodeDirectory::getAlias(TTNodeAddressPtr anAddress, TTNodeAddressPtr *returnedAlias)
{
	TTUInt32 i;
	TTValue	 v, ak;
	TTNodeAddressPtr alias, aliasNodeAddress;
	TTNodeAddressComparisonFlag comp;
	TTInt8 d;
	
	*returnedAlias = NULL;
	
	// Retrieve the alias binding on this address
	aliases->getKeys(ak);
	for (i=0; i<aliases->getKeys(ak); i++) {
		
		ak.get(i, &alias);
		aliases->lookup(*alias, v);
		v.get(1, &aliasNodeAddress);
		comp = anAddress->compare(aliasNodeAddress, d);
		
		if (comp == kAddressEqual) {
			
			*returnedAlias = aliasNodeAddress;
			break;
		}
	}
	
	if (*returnedAlias == NULL)
		return kTTErrGeneric;
	
	return kTTErrNone;
}

TTErr TTNodeDirectory::replaceAlias(TTNodeAddressPtr* anAddress)
{
	TTInt8				d;
	TTUInt32			s, i, c;
	TTNodeAddressPtr	alias, aliasNodeAddress, p1, p2;
	TTNodeAddressComparisonFlag comp;
	TTValue				ak, found = kTTValNONE;
	
	// if this address doesn't exist look into aliases
	this->aliases->getKeys(ak);
	s = ak.getSize();
	if (s == 0)
		return kTTErrGeneric;
	
	// compare the address to each aliases
	for (i = 0; i < s; i++) {
		
		ak.get(i, &alias);
		comp = (*anAddress)->compare(alias, d);
		
		// if the address is an alias : return the TTNode
		if (comp == kAddressEqual) {
			aliases->lookup(alias, found);
			found.get(1, &aliasNodeAddress);
			
			(*anAddress) = aliasNodeAddress;
			break;
		}
		
		// the address is under an alias : 
		// get the address of the alias and join anAddress (without the alias part)
		if (comp == kAddressLower) {
			aliases->lookup(alias, found);
			found.get(1, &aliasNodeAddress);
			found.get(2, c);
			
			(*anAddress)->splitAt(c, &p1, &p2);
			(*anAddress) = aliasNodeAddress->appendAddress(p2);
			break;
		}
	}
	
	if (found == kTTValNONE)
		return kTTErrGeneric;
	else
		return kTTErrNone;
}

TTErr TTNodeDirectory::TTNodeCreate(TTNodeAddressPtr anAddress, TTObjectPtr newObject, void *aContext, TTNodePtr *returnedTTNode, TTBoolean *newInstanceCreated)
{
	TTNodeAddressPtr	effectiveAddress;
	TTSymbolRef			newInstance;
	TTBoolean			parent_created;
	TTValue				found;
	TTNodePtr			newTTNode = NULL;
	TTNodePtr			n_found = NULL;
	TTErr				err;
	TTValue				v, c;

	// If there is no attribute part
	if (anAddress->getAttribute() == NO_ATTRIBUTE) {

		// is there a TTNode with this address in the tree ?
		err = directory->lookup(anAddress, found);

		// if it's the first at this address
		if (err == kTTErrValueNotFound) {
			
			// keep the instance found in the address
			newInstance = anAddress->getInstance();
			*newInstanceCreated = false;
		}
		else {
			
			// this address already exists
			// get the TTNode at this address
			found.get(0,(TTPtr*)&n_found);

			// Autogenerate a new instance
			n_found->getParent()->generateInstance(n_found->getName(), &newInstance);
			*newInstanceCreated = true;
		}

		// CREATION OF A NEW TTNode
		///////////////////////////

		// 1. Create a new TTNode
		newTTNode = new TTNode(anAddress->getName(), newInstance, newObject, aContext, this);

		// 2. Ensure that the path to the new TTNode exists
		if (anAddress->getParent() != NO_PARENT) {

			// set his parent
			parent_created = false;
			newTTNode->setParent(anAddress->getParent(), &parent_created);

			// add the new TTNode as a children of his parent
			newTTNode->getParent()->setChild(newTTNode);

			// if the new TTNode have a NULL context, set the parent context
			if (!aContext) newTTNode->setContext(newTTNode->getParent()->getContext());
		}
		else
			// the new TTNode is the root : no parent
			;

		// 3. Add the effective address (with the generated instance) to the global hashtab
		newTTNode->getAddress(&effectiveAddress);
		directory->append(effectiveAddress, TTValue(newTTNode));

		// 4. Notify observers that a node have been created AFTER the creation
		this->notifyObservers(effectiveAddress, newTTNode, kAddressCreated);

		// 5. returned the new TTNode
		*returnedTTNode = newTTNode;

		return kTTErrNone;
	}
	return kTTErrGeneric;
}

TTErr TTNodeDirectory::TTNodeRemove(TTNodeAddressPtr anAddress)
{
	TTErr			err;
	TTNodePtr		oldNode, parentNode;
	TTList			childrenList;
	TTValue			v;
	TTObjectPtr		obj;
	TTNodeAddressPtr parentAddress;

	// can't destroy the root (use the TTNodeDirectory destructor)
	if (anAddress != kTTAdrsRoot) {

		// find the TTNode in the directory
		err = this->getTTNode(anAddress, &oldNode);

		if (!err) {

			// Notify observers that a node will be destroyed BEFORE the destruction
			this->notifyObservers(anAddress, oldNode, kAddressDestroyed);

			// Remove his address
			err = directory->remove(anAddress);

			// Get parent node
			parentNode = oldNode->getParent();

			// Destroy the TTNode
			if (!err)
				delete oldNode;

			// If parent node have no more child and refers to NULL object : destroy
			parentNode->getChildren(S_WILDCARD, S_WILDCARD, childrenList);
			obj = parentNode->getObject();

			if (childrenList.isEmpty() && !obj) {
				// find the TTNode in the directory
				parentNode->getAddress(&parentAddress);
				TTNodeRemove(parentAddress);
			}
		}
	}
	else
		return kTTErrGeneric;

	return err;
}

TTErr TTNodeDirectory::AliasCreate(TTNodeAddressPtr alias, TTNodeAddressPtr anAddress)
{
	TTNodePtr	aNode;
	TTValue		v;
	TTErr		err;
	
	if (alias->getType() == kAddressRelative || 
		alias->getAttribute() != NO_ATTRIBUTE || 
		anAddress->getAttribute() != NO_ATTRIBUTE)
		return kTTErrGeneric;
	
	// find the address in the directory
	err = this->getTTNode(anAddress, &aNode);
	
	if (!err) {
		
		// add the alias and store the TTNode and info usefull for replaceAlias method
		v = TTValue(aNode);
		v.append(anAddress);
		v.append(alias->countSeparator());
		
		err = aliases->append(alias, v);
		
		if (!err)
			// notify observers that an address has been created
			this->notifyObservers(alias, aNode, kAddressCreated);
	}
	
	return err;
}

TTErr TTNodeDirectory::AliasRemove(TTNodeAddressPtr alias)
{
	TTNodePtr		aNode;
	TTNodeAddressPtr anAddress;
	TTErr			err;
	
	// find the alias in the directory
	err = this->getTTNode(alias, &aNode);
	
	if (!err) {
		
		// check if the alias is an effective alias
		aNode->getAddress(&anAddress);
		if (alias == anAddress)
			return kTTErrGeneric;
		
		// remove the alias from the directory
		err = aliases->remove(alias);
		
		if (!err)
			// notify observers that an address has been removed
			this->notifyObservers(alias, aNode, kAddressDestroyed);
	}
	
	return err;
}

TTErr TTNodeDirectory::Lookup(TTNodeAddressPtr anAddress, TTList& returnedTTNodes, TTNodePtr *firstReturnedTTNode)
{
	TTList lk_selection, lk_children;
	TTNodePtr n_r;
	TTErr err;

	// Make sure we are dealing with an absolute address
	if (anAddress->getType() != kAddressAbsolute)
		return kTTErrGeneric;

	// Is there a wild card ?
	if (strrchr(anAddress->getCString(), C_WILDCARD)) {
		
		// Here is a recursive call to the TTNodeDirectory Lookup to get all TTNodes at upper levels
		err = Lookup(anAddress->getParent(), returnedTTNodes, firstReturnedTTNode);
		
		// for each returned TTNodes at upper levels
		// select all corresponding "name.instance" TTNodes
		// among the TTNode list.
		if (!returnedTTNodes.isEmpty()) {

			// select all children of all parent nodes
			for (returnedTTNodes.begin(); returnedTTNodes.end(); returnedTTNodes.next()) {

				returnedTTNodes.current().get(0, (TTPtr*)&n_r);
				n_r->getChildren(anAddress->getName(), anAddress->getInstance(), lk_children);

				if (!lk_children.isEmpty())
					lk_selection.merge(lk_children);
			}

			// return the selection
			returnedTTNodes.clear();

			if (!lk_selection.isEmpty()) {
				returnedTTNodes.merge(lk_selection);
				returnedTTNodes.getHead().get(0, (TTPtr*)firstReturnedTTNode);
			}
			else
				err = kTTErrGeneric;
		}

		return err;
	}
	// no wild card : do a lookup in the global hashtab
	else {

		// look into the hashtab
		err = getTTNode(anAddress, &n_r);

		// if the node exists
		if (err == kTTErrNone) {
			returnedTTNodes.append(TTValue((TTPtr)n_r));
			*firstReturnedTTNode = n_r;
		}

		return err;
	}
}

TTErr	TTNodeDirectory::LookFor(TTListPtr whereToSearch, TTBoolean(testFunction)(TTNodePtr node, TTPtr args), void *argument, TTList& returnedTTNodes, TTNodePtr *firstReturnedTTNode, TTUInt8 depthLimit)
{
	TTList lk_children;
	TTNodePtr n_r, n_child, n_first;
	TTBoolean limitReached = false;
	TTUInt8	newLimit;
	TTErr err;

	*firstReturnedTTNode = NULL;
	
	// is the limit is reached ?
	if (depthLimit > 0) {
		newLimit = depthLimit - 1;
		limitReached = newLimit <= 0;
	}

	// if there are nodes from where to start
	if (!whereToSearch->isEmpty()) {

		// Launch a recursive research below each given nodes
		for (whereToSearch->begin(); whereToSearch->end(); whereToSearch->next()) {

			// get all children of the node
			whereToSearch->current().get(0, (TTPtr*)&n_r);
			n_r->getChildren(S_WILDCARD, S_WILDCARD, lk_children);

			// if there are children
			if (!lk_children.isEmpty()) {

				// test each of them and add those which are ok
				n_first = NULL;
				for (lk_children.begin(); lk_children.end(); lk_children.next()) {

					lk_children.current().get(0, (TTPtr*)&n_child);

					// test the child and fill the returnedTTNodes
					if (testFunction(n_child, argument)) {
						returnedTTNodes.append(TTValue((TTPtr)n_child));

						if (!n_first)
							n_first = n_child;
					}
				}
				
				if (!limitReached)
					err = LookFor(&lk_children, testFunction, argument, returnedTTNodes, firstReturnedTTNode, newLimit);
				else
					err = kTTErrNone;

				if(!returnedTTNodes.isEmpty() && !n_first)
					returnedTTNodes.getHead().get(0, (TTPtr*)firstReturnedTTNode);
				else if (n_first)
					*firstReturnedTTNode = n_first;

				if (err != kTTErrNone)
					return err;
			}
		}
		return kTTErrNone;
	}
	return kTTErrGeneric;
}

TTErr	TTNodeDirectory::IsThere(TTListPtr whereToSearch, bool(testFunction)(TTNodePtr node, void*args), void *argument, bool *isThere, TTNodePtr *firstTTNode)
{
	TTList lk_children;
	TTNodePtr n_r, n_child;
	TTErr err, err_look;

	// if there are nodes from where to start
	if (!whereToSearch->isEmpty()) {

		// Launch a recursive research below each given nodes
		for (whereToSearch->begin(); whereToSearch->end(); whereToSearch->next()) {

			// get all children of the node
			whereToSearch->current().get(0, (TTPtr*)&n_r);
			err = n_r->getChildren(S_WILDCARD, S_WILDCARD, lk_children);

			// if there are children
			if (err == kTTErrNone) {

				// test each of them and add those which are ok
				for (lk_children.begin(); lk_children.end(); lk_children.next()) {

					lk_children.current().get(0, (TTPtr*)&n_child);

					// test the child and fill the returnedTTNodes
					if (testFunction(n_child, argument)) {
						(*isThere) = true;
						(*firstTTNode) = n_child;
						return kTTErrNone;
					}
					else
						(*isThere) = false;
				}

				// continu the research from all children
				err_look = IsThere(&lk_children, testFunction, argument, isThere, firstTTNode);

				if (err_look != kTTErrNone)
					return err_look;

				// if a node is found below, stop the research
				if ((*isThere))
					return kTTErrNone;
			}
			else
				(*isThere) = false;
		}
		return kTTErrNone;
	}
	return kTTErrGeneric;
}

TTErr TTNodeDirectory::addObserverForNotifications(TTNodeAddressPtr anAddress, TTCallbackPtr anObserver, TTInt8 maxDepthDifference)
{
	TTErr			err;
	TTValue			lk;
	TTValue			o = (TTPtr)anObserver;
	TTListPtr		lk_o;
	TTNodeAddressPtr adrs;

	// enable observers protection
	mutex->lock();
	
	// don't look at attribute and directory
	adrs = anAddress->normalize();
	
	// append maxDepthDifference criteria if it is different from 0
	if (maxDepthDifference >= 0)
		o.append(maxDepthDifference);

	// is the key already exists ?
	err = this->observers->lookup(adrs, lk);

	// create a new observers list for this address
	if(err == kTTErrValueNotFound){
		lk_o = new TTList();
		lk_o->appendUnique(o);

		this->observers->append(adrs, TTValue(lk_o));
	}
	// add it to the existing list
	else{
		lk.get(0,(TTPtr*)&lk_o);
		lk_o->appendUnique(o);
	}

	// disable observers protection
	mutex->unlock();

	return kTTErrNone;
}

TTErr TTNodeDirectory::removeObserverForNotifications(TTNodeAddressPtr anAddress, TTCallbackPtr anObserver)
{
	TTErr			err;
	TTValue			lk, o, v;
	TTListPtr		lk_o;
	TTNodeAddressPtr adrs;

	// enable observers protection
	mutex->lock();
	
	// don't look at attribute and directory
	adrs = anAddress->normalize();

	// is the key exists ?
	err = this->observers->lookup(adrs, lk);

	if(err != kTTErrValueNotFound){
		// get the observers list
		lk.get(0,(TTPtr*)&lk_o);

		// is observer exists ?
		err = lk_o->find(&findObserver, (TTPtr)anObserver, v);
		if(!err)
			lk_o->remove(v);

		// was it the last observer ?
		if(lk_o->getSize() == 0) {
			// remove the key
			this->observers->remove(adrs);
		}
	}

	// disable observers protection
	mutex->unlock();

	return err;
}

TTErr TTNodeDirectory::notifyObservers(TTNodeAddressPtr anAddress, TTNodePtr aNode, TTNodeAddressNotificationFlag flag)
{
	TTNodeAddressComparisonFlag comp;
	TTValue				hk, lk, o, f, data;
	TTNodeAddressPtr	key, adrs, noAlias;
	TTListPtr			lk_o;
	//TTNodePtr			n;
	TTCallbackPtr		anObserver;
	TTInt8				depthDifference, maxDepthDifference;
	TTUInt32			i;
	TTBoolean			foundObsv = NO;
	//TTErr				err;

	// if there are observers
	if (!this->observers->isEmpty()) {
		
		// enable observers protection
		mutex->lock();
		
		this->observers->getKeys(hk);
		
		// don't look at attribute and address
		adrs = anAddress->normalize();
		
		// for each key of mObserver tab
		for (i = 0; i < hk.getSize(); i++) {
			
			hk.get(i, &key);
			
			// compare the key
			comp = adrs->compare(key, depthDifference);
			
			// if the address is upper in the tree : the observer don't need to be notified
			if (comp == kAddressUpper)
				continue;
			
			// if the address is different : maybe the observer used an alias
			if (comp == kAddressDifferent) {
			
				// remove the alias part of the key if exists
				noAlias = key;
				if (!this->replaceAlias(&noAlias))
					comp = adrs->compare(noAlias, depthDifference);
			}
			
			// if the address is equal or lower : the observer have to be notified
			if ((comp == kAddressEqual) || (comp == kAddressLower)) {
				
				// get the Observers list
				this->observers->lookup(key, lk);
				lk.get(0,(TTPtr*)&lk_o);
				
				if (!lk_o->isEmpty()) {
					for (lk_o->begin(); lk_o->end(); lk_o->next())
					{
						anObserver = NULL;
						lk_o->current().get(0, (TTPtr*)&anObserver);
						TT_ASSERT("TTNode observer list member is not NULL", anObserver);
						
						// filter on the depth difference if specified
						if (lk_o->current().getSize() > 1) {
							lk_o->current().get(1, maxDepthDifference);
							
							// we can cast the depth difference because it is always positive in the lower case
							if (depthDifference > maxDepthDifference)
								continue;
						}
						
						data.append(anAddress);
						data.append((TTPtr*)aNode);
						data.append((TTInt8)flag);
						data.append((TTPtr*)anObserver);
						anObserver->notify(data,data);
					}
					
					foundObsv = true;
				}
			}
		}
		
		// disable observers protection
		mutex->unlock();
		
		if (foundObsv)
			return kTTErrNone;
		else
			return kTTErrGeneric;
	}
	else
		return kTTErrGeneric;
}

TTErr TTNodeDirectory::dumpObservers(TTValue& value)
{
	unsigned int i, s;
	TTValue hk, lk, vo;
	TTValuePtr vk;
	TTSymbolRef key(kTTSymEmpty), owner(kTTSymEmpty);
	TTString ownerptStr;
	TTListPtr lk_o;
	TTCallbackPtr anObserver;

	value.clear();

	// if there are observers in mObservers tab
	if (!this->observers->isEmpty()) {

		// enable observers protection
		mutex->lock();

		this->observers->getKeys(hk);

		// for each key of mObserver tab
		s = hk.getSize();
		for (i=0; i<s; i++) {

			hk.get(i,(TTSymbolRef*)&key);

			vk = new TTValue(key);

			// get the Observers list
			this->observers->lookup(key, lk);
			lk.get(0,(TTPtr*)&lk_o);

			if (!lk_o->isEmpty())
				for (lk_o->begin(); lk_o->end(); lk_o->next())
				{
					anObserver = NULL;
					lk_o->current().get(0, (TTPtr*)&anObserver);
					TT_ASSERT("TTNode observer list member is not NULL", anObserver);

					anObserver->getAttributeValue(TT("Owner"), vo);
					vo.get(0, &owner);

					// edit a "owner (pointer)" string
					ownerptStr = owner.getCString();

					char buf[20];
					snprintf(buf, sizeof(char)*20, "( %p )", (TTPtr)anObserver);
					ownerptStr += buf;

					// TODO: Theo, I commented this out because it was giving me a compiler warning on Linux
					// I don't think you want to be freeing it though, because it was not malloc'd, so it should be okay, right?
					//free(buf);

					vk->append(TT(ownerptStr.data()));
				}
			else
				vk->append(TT("<empty>"));

			value.append((TTPtr)vk);
		}
	}

	// disable observers protection
	mutex->unlock();

	return kTTErrNone;
}


/***********************************************************************************
 *
 *		GLOBAL METHODS
 *
 ************************************************************************************/

TTBoolean testNodeObjectType(TTNodePtr n, TTPtr args)
{
	TTObjectPtr o;

	o = n->getObject();

	if (o)
//		return o->getName() == (TTSymbolRef)args;
//FIXME: I'm just commenting this out because I'm not sure how to update it for SymbolRefs [tap]
return NO;
	else
		return NO;
}

TTBoolean testNodeContext(TTNodePtr n, TTPtr args)
{
	TTPtr		c;

	c = n->getContext();

	if (c)
		return c == args;
	else
		return NO;
}

TTBoolean testNodeUsingCallback(TTNodePtr n, TTPtr args)
{
	TTValue			v = TTValue((TTPtr)n);
	TTCallbackPtr	aCallback = (TTCallbackPtr)args;

	aCallback->notify(v,v);

	return v == kTTVal1;
}

TTBoolean testNodeUsingFilter(TTNodePtr n, TTPtr args)
{
	TTValuePtr		argsValue = (TTValuePtr)args;
	TTHashPtr		filterBank;
	TTListPtr		filterList;
	TTSymbolRef		aFilterName(kTTSymEmpty), filterMode(kTTSymEmpty);
	TTDictionaryPtr aFilter;
	TTObjectPtr		anObject;
	TTNodeAddressPtr anAddress;
	TTValue			v;
	TTBoolean		resultFilter, result;
	TTBoolean		firstFilter = YES;
	TTErr			err;
	
	argsValue->get(0, (TTPtr*)&filterBank);
	argsValue->get(1, (TTPtr*)&filterList);
	
	if (!filterList->isEmpty()) {
		
		// get object
		anObject = n->getObject();
		
		// get address
		n->getAddress(&anAddress, kTTAdrsRoot);
		
		// for each filter name
		for (filterList->begin(); filterList->end(); filterList->next()) {
			
			// if no filter all nodes are included in the result
			filterMode = kTTSym_include;
			
			// get the next filter name from the list
			// and get it from the bank
			aFilter = NULL;
			filterList->current().get(0, &aFilterName);
			err = filterBank->lookup(aFilterName, v);
			
			// TEST FILTER : the result is YES if the node have to be in the result
			if (!err) {
				
				// local declarations for the test
				TTBoolean resultObject = YES;
				TTBoolean resultAttribute = YES;
				TTBoolean resultValue = YES;
				TTBoolean resultPart = YES;
				TTBoolean resultParent = YES;
				TTBoolean resultName = YES;
				TTBoolean resultInstance = YES;
				
				TTRegexPtr aRegex;
				TTString s_toParse;
				TTRegexStringPosition begin, end;
				
				// get filter
				v.get(0, (TTPtr*)&aFilter);
				
				// get filter mode :
				//		- in default exclusion mode, if one field of a filter matches a node, this node is excluded.
				//		- in inclusion mode, if all fields of a filter match a node, this node is included.
				if (!aFilter->lookup(kTTSym_mode, v))
					v.get(0, &filterMode);
				
				// test object name
				if (!aFilter->lookup(kTTSym_object, v)) {
					
					TTSymbolRef objectFilter(kTTSymEmpty);
					v.get(0, &objectFilter);
					
					// a node without object can be selected using the none symbol
					if (!anObject)
						resultObject = objectFilter == kTTSym_none;
					else
						resultObject = objectFilter == anObject->getName();
				}
				
				// test attribute name
				if (!aFilter->lookup(kTTSym_attribute, v)) {
					
					TTSymbolRef attributeFilter(kTTSymEmpty);
					TTValue		valueFilter;
					v.get(0, &attributeFilter);
					
					// a node without object have no attribute
					if (!anObject) {
						resultAttribute = NO;
						resultValue = NO;
					}
					else {
						
						err = anObject->getAttributeValue(attributeFilter, v);
						
						// the existence of the attribute is also a way to filter nodes
						resultAttribute = err == kTTErrNone;
						
						// if the attribute exists
						if (!err) {
							
							// test value
							if (!aFilter->lookup(kTTSym_value, valueFilter))
								resultValue = valueFilter == v;
						}
					}
				}
				
				// test any part of address 
				if (!aFilter->lookup(kTTSym_part, v)) {
					
					TTSymbolRef partFilter(kTTSymEmpty);
					v.get(0, &partFilter);
					aRegex = new TTRegex(partFilter.getCString());
					
					s_toParse = anAddress->getCString();
					begin = s_toParse.begin();
					end = s_toParse.end();
					
					// test if the regex find something
					if (!aRegex->parse(begin, end))
						resultPart = begin != end;
					else
						resultPart = NO;
					
					delete aRegex;
				}
				
				// test address parent part
				if (!aFilter->lookup(kTTSym_parent, v)) {
					
					TTSymbolRef parentFilter(kTTSymEmpty);
					v.get(0, &parentFilter);
					aRegex = new TTRegex(parentFilter.getCString());
					
					s_toParse = anAddress->getParent()->getCString();
					begin = s_toParse.begin();
					end = s_toParse.end();
					
					// test if the regex find something
					if (!aRegex->parse(begin, end))
						resultParent = begin != end;
					else
						resultParent = NO;
					
					delete aRegex;
				}
				
				// test address name part
				if (!aFilter->lookup(kTTSym_name, v)) {
					
					TTSymbolRef nameFilter(kTTSymEmpty);
					v.get(0, &nameFilter);
					aRegex = new TTRegex(nameFilter.getCString());
					
					s_toParse = anAddress->getName().getCString();
					begin = s_toParse.begin();
					end = s_toParse.end();
					
					// test if the regex find something
					if (!aRegex->parse(begin, end))
						resultName = begin != end;
					else
						resultName = NO;
					
					delete aRegex;
				}
				
				// test address instance part
				if (!aFilter->lookup(kTTSym_instance, v)) {
					
					TTSymbolRef instanceFilter(kTTSymEmpty);
					v.get(0, &instanceFilter);
					aRegex = new TTRegex(instanceFilter.getCString());
					
					s_toParse = anAddress->getInstance().getCString();
					begin = s_toParse.begin();
					end = s_toParse.end();
					
					// test if the regex find something
					if (!aRegex->parse(begin, end))
						resultInstance = begin != end;
					else
						resultInstance = NO;
					
					delete aRegex;
				}
				
				// process the filter statement
				resultFilter = resultObject && resultAttribute && resultValue && resultPart && resultParent && resultName && resultInstance;
			}
			
			// the mode of the first filter precises if we start 
			// from a full set (E : default result is YES) or 
			// from an empty set (ø : default result is NO)
			if (firstFilter) {
				if (filterMode == kTTSym_include)
					result = NO;					// a node isn't into the result by default (and resultFilter have to be YES to keep it)
				else if (filterMode == kTTSym_restrict)
					result = YES;					// a node is into the result by default (and resultFilter have to be YES to keep it)
				else if (filterMode == kTTSym_exclude)
					result = YES;					// a node is into the result by default (and resultFilter have to be NO to keep it)
				else if (filterMode == TT("hamlet"))
					result = NO;					// a node isn't into the result by default (and resultFilter have to be NO to keep it)
				
				firstFilter = NO;					// the next filter will not be a first filter anymore...
			}
			
			// propagate the resultFilter to the 
			// final result depending on the filter mode
			if (filterMode == kTTSym_include)
				result = result || resultFilter;	// keep the node if it matches this filter (what ever the first filters)
			else if (filterMode == kTTSym_restrict)
				result = result & resultFilter;		// keep the node if it matches this filter (and matches the first filters)
			else if (filterMode == kTTSym_exclude)
				result = result & !resultFilter;	// keep the node if it doesn't matches this filter (and matches the first filters)
			else if (filterMode == TT("hamlet"))
				result = result || !resultFilter;	// keep the node if it doesn't match this filter (what ever the first filters)
			
		}
	}
	// if the filter list is empty return YES
	else
		result = YES;
	
	return result;
}

void findObserver(const TTValue& value, TTPtr observerToMatch, TTBoolean& found)
{
	TTCallbackPtr anObserver;
	value.get(0, (TTPtr*)&anObserver);
	
	found = anObserver == observerToMatch;
}

#endif
