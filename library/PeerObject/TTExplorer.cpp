/* 
 * A Namespace Explorer Object
 * Copyright © 2010, Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTExplorer.h"

#define thisTTClass			TTExplorer
#define thisTTClassName		"Explorer"
#define thisTTClassTags		"explorer"

TT_MODULAR_CONSTRUCTOR,
mNamespace(kTTSym_none),
mAddress(kTTAdrsEmpty),
mOutput(kTTSym_descendants),
mUpdate(YES),
mSort(kTTSym_alphabetic),
mDepth(0),
mDirectory(NULL),
mAddressObserver(NULL),
mApplicationObserver(NULL),
mReturnValueCallback(NULL),
mReturnSelectionCallback(NULL),
mFilterList(NULL),
mTempNode(NULL),
mResult(NULL),
mLastResult(kTTValNONE)
{
	if(arguments.size() >= 1)
		mReturnValueCallback = TTCallbackPtr((TTObjectPtr)arguments[0]);
	
	// It is possible to pass a default filter bank
	if(arguments.size() >= 2)
		mFilterBank = TTHashPtr((TTPtr)arguments[1]);
	else 
		mFilterBank = new TTHash();
	
	if(arguments.size() >= 3)
		mReturnSelectionCallback = TTCallbackPtr((TTObjectPtr)arguments[2]);
	
	addAttributeWithSetter(Namespace, kTypeSymbol);
	
	addAttributeWithSetter(Address, kTypeSymbol);
	addAttributeWithSetter(Output, kTypeSymbol);
	addAttributeWithSetter(Update, kTypeBoolean);
	addAttributeWithSetter(Sort, kTypeSymbol);
	addAttributeWithSetter(Depth, kTypeUInt8);
	
	registerAttribute(TTSymbol("filterList"), kTypeLocalValue, NULL, (TTGetterMethod)&TTExplorer::getFilterList, (TTSetterMethod)&TTExplorer::setFilterList);
	
	addMessage(Explore);
	addMessageWithArguments(Select);
	addMessageWithArguments(SelectAll);
	addMessageWithArguments(SelectNone);
	
	addMessage(SelectRefresh);
	addMessageProperty(SelectRefresh, hidden, YES);
	
	addMessageWithArguments(FilterSet);
	addMessageWithArguments(FilterRemove);
	addMessageWithArguments(FilterInfo);
	
	mFilterList = new TTList();
	mResult = new TTHash();
}

TTExplorer::~TTExplorer()
{
	unbindAddress();	
	unbindApplication();
	
	if (mReturnValueCallback) {
		delete (TTValuePtr)mReturnValueCallback->getBaton();
		TTObjectRelease(TTObjectHandle(&mReturnValueCallback));
	}
	
	delete mFilterBank;
	delete mFilterList;
	delete mResult;
	
	// unregister from the namespace
	setNamespace(kTTSymEmpty);
}

TTErr TTExplorer::setNamespace(const TTValue& value)
{
	TTAddressItemPtr aNamespace;
	
	// unregister from the former namespace
	aNamespace = lookupNamespace(mNamespace);
	
	if (aNamespace)
		aNamespace->unregisterHandler(*this);
	
	// get new namespace
	mNamespace = value;
	
	// register to the new namespace
	aNamespace = lookupNamespace(mNamespace);
	
	if (aNamespace)
		aNamespace->registerHandler(*this);
	
	return kTTErrNone;
}

TTErr TTExplorer::setOutput(const TTValue& value)
{
	TTSymbol newOutput = value;
	
	if (newOutput == kTTSym_descendants || 
		newOutput == kTTSym_children || 
		newOutput == kTTSym_brothers || 
		newOutput == kTTSym_attributes) {
		
		mOutput = newOutput;
		
		setAddress(mAddress);
		
		return kTTErrNone;
	}
	else
		return kTTErrGeneric;	
}

TTErr TTExplorer::setAddress(const TTValue& value)
{	
	unbindAddress();
	unbindApplication();
	
	// change the address
	mAddress = value[0];
	
	mDirectory = getDirectoryFrom(mAddress);
	if (mDirectory)
		return bindAddress();
	else
		return bindApplication();
}

TTErr TTExplorer::setUpdate(const TTValue& value)
{
	TTBoolean oldUpdate = mUpdate;
	
	mUpdate = value;
	
	// check change
	if (mUpdate == oldUpdate)
		return kTTErrNone;
	
	return setAddress(mAddress);
}

TTErr TTExplorer::setSort(const TTValue& value)
{
	TTSymbol oldSort = mSort;
	
	mSort = value;
	
	// check change
	if (mSort == oldSort)
		return kTTErrNone;
	
	if (mSort == kTTSym_none || mSort == kTTSym_alphabetic || mSort == kTTSym_priority)
		return kTTErrNone;
	else
		return kTTErrGeneric;
}

TTErr TTExplorer::setDepth(const TTValue& value)
{
	TTUInt8 oldDepth = mDepth;
	
	mDepth = value;
	
	// check change
	if (mDepth == oldDepth)
		return kTTErrNone;
	
	return setAddress(mAddress);
}

TTErr TTExplorer::bindAddress() 
{
	TTValuePtr	newBaton;
	
	// it works only for absolute address
	if (mAddress.getType() == kAddressAbsolute) {
		
		// change the address observer
		if (mUpdate && mAddress != kTTAdrsEmpty) {
			
			// observe any creation or destruction below the address
			mAddressObserver = NULL;				// without this, TTObjectInstantiate try to release an oldObject that doesn't exist ... Is it good ?
			TTObjectInstantiate(TTSymbol("callback"), TTObjectHandle(&mAddressObserver), kTTValNONE);
			
			newBaton = new TTValue(TTPtr(this));
			
			mAddressObserver->setAttributeValue(kTTSym_baton, TTPtr(newBaton));
			mAddressObserver->setAttributeValue(kTTSym_function, TTPtr(&TTExplorerDirectoryCallback));
			
			mAddressObserver->setAttributeValue(TTSymbol("owner"), TTSymbol("TTExplorer"));						// this is usefull only to debug
			
			if (mDepth)
				mDirectory->addObserverForNotifications(mAddress, mAddressObserver, mDepth);
			else
				mDirectory->addObserverForNotifications(mAddress, mAddressObserver);
		}
		
		return kTTErrNone;
	}
	
	return kTTErrGeneric;
}

TTErr TTExplorer::unbindAddress() 
{
	// delete the old observer
	if (mDirectory && mAddressObserver && mAddress != kTTSymEmpty) {
		
		mDirectory->removeObserverForNotifications(mAddress, mAddressObserver);
		TTObjectRelease(TTObjectHandle(&mAddressObserver));
		mAddressObserver = NULL;
		
		return kTTErrNone;
	}
	
	return kTTErrGeneric;
}

TTErr TTExplorer::bindApplication()
{
	TTValuePtr	newBaton;
	
	if (!mApplicationObserver) {
		
		mApplicationObserver = NULL; // without this, TTObjectInstantiate try to release an oldObject that doesn't exist ... Is it good ?
		TTObjectInstantiate(TTSymbol("callback"), TTObjectHandle(&mApplicationObserver), kTTValNONE);
		
		newBaton = new TTValue(TTPtr(this));
		
		mApplicationObserver->setAttributeValue(kTTSym_baton, TTPtr(newBaton));
		mApplicationObserver->setAttributeValue(kTTSym_function, TTPtr(&TTExplorerApplicationManagerCallback));
		
		mApplicationObserver->setAttributeValue(TTSymbol("owner"), TTSymbol("TTExplorer"));		// this is usefull only to debug
		
		return TTApplicationManagerAddApplicationObserver(mAddress.getDirectory(), *mApplicationObserver);
	}
	
	return kTTErrGeneric;
}

TTErr TTExplorer::unbindApplication() 
{
	TTErr err;
	
	if (mApplicationObserver) {
		
		err = TTApplicationManagerRemoveApplicationObserver(mAddress.getDirectory(), *mApplicationObserver);
		
		delete (TTValuePtr)mApplicationObserver->getBaton();
		TTObjectRelease(TTObjectHandle(&mApplicationObserver));
	}
	
	mDirectory = NULL;
	
	return kTTErrNone;
}

TTErr TTExplorer::Explore()
{
	TTAddress   relativeAddress;
	TTSymbol	attributeName;
	TTList		aNodeList, internalFilterList, allObjectNodes;
	TTNodePtr	aNode;
	TTObjectPtr	o;
	TTValue		v, args;
	TTErr		err;
	
	mResult->clear();
	mLastResult = kTTValNONE;
	mTempNode = NULL;
	
	if (!mDirectory)
		return kTTErrGeneric;
	
	// bind the right node
	if (mOutput == kTTSym_brothers)
		err = mDirectory->Lookup(mAddress.getParent(), aNodeList, &mTempNode);
	else
		err = mDirectory->Lookup(mAddress, aNodeList, &mTempNode);
	
	if (!err){
		
		// get attributes names of the node at mAddress
		if (mOutput == kTTSym_attributes) {
			
			o = mTempNode->getObject();
			if (o) {
				v.clear();
				o->getAttributeNames(v);
				
				// memorized the result in a hash table
				for (TTUInt32 i = 0; i < v.size(); i++) {
					attributeName = v[i];
					mResult->append(attributeName, kTTValNONE);
				}
			}
		}
		
		// explore nodes below the address
		else {
			
			// prepare filters for the exploration
			args = TTValue((TTPtr)mFilterBank);
			args.append((TTPtr)mFilterList);
			
			// explore
			mDirectory->LookFor(&aNodeList, testNodeUsingFilter, (TTPtr)&args, allObjectNodes, &aNode, mDepth);
			
			// memorized the result in a hash table (the node is stored in order to sort the result)
			for (allObjectNodes.begin(); allObjectNodes.end(); allObjectNodes.next()) {
				
				aNode = TTNodePtr((TTPtr)allObjectNodes.current()[0]);
				
				// children case :
				if (mOutput == kTTSym_children){
					
					aNode->getAddress(relativeAddress, mAddress);
					
					// ignore address with a parent part
					if (relativeAddress.getParent() != kTTAdrsEmpty)
						continue;
					
					mResult->append(relativeAddress, TTValue((TTPtr)aNode));
				}
				
				// brothers case : 
				else if (mOutput == kTTSym_brothers) {
					
					aNode->getAddress(relativeAddress, mAddress.getParent());
					
					// ignore address with a parent part
					if (relativeAddress.getParent() != kTTAdrsEmpty)
						continue;
					
					// store only the relative address for node with the same name
					if (mAddress.getName() == relativeAddress.getName())
						mResult->append(relativeAddress, TTValue((TTPtr)aNode));
				}
				
				// any other case : store the address
				else {
					
					/*if (mAddress == kTTAdrsRoot)
						aNode->getAddress(&relativeAddress);
					else*/
						aNode->getAddress(relativeAddress, mAddress);
					
					mResult->append(relativeAddress, TTValue((TTPtr)aNode));
				}
			}
		}
		
		// Return the value result back
		return returnResultBack();
	}
	
	return kTTErrGeneric;
}

TTErr TTExplorer::Select(const TTValue& inputValue, TTValue& outputValue)
{
	TTAddressItemPtr    aNamespace = lookupNamespace(mNamespace);
	TTAddressItemPtr    anItem;
	TTAddress           itemSymbol;	
	TTInt32				i, number;
	TTBoolean			state;
	
	if (aNamespace) {
		
		// set one item selection state
		if (inputValue[0].type() == kTypeSymbol) {
			
			itemSymbol = inputValue[0];
			
			// get the item
			if (mOutput == kTTSym_children) {
				aNamespace->find(mAddress.appendAddress(itemSymbol), &anItem);
				anItem = anItem->getParent();
			}
			else if (mOutput == kTTSym_brothers)
				aNamespace->find(mAddress.appendInstance(itemSymbol), &anItem);
			
			else if (itemSymbol.getType() == kAddressRelative)
				aNamespace->find(mAddress.appendAddress(itemSymbol), &anItem);
			
			else
				aNamespace->find(itemSymbol, &anItem);
			
			if (anItem) {
				
				// set selection state
				if (inputValue[1].type() == kTypeInt32)
					state = inputValue[0];
				
				// or switch it
				else
					state = !anItem->getSelection();
				
				// set selection state
				anItem->setSelection(state);
				
				// return selection to the owner of the explorer
				return returnSelectionBack();
			}
		}
		
		// set all items selection state
		else if (inputValue[0].type() == kTypeInt32 && inputValue.size() == mLastResult.size()) {
			
			// set all selection state
			for (i = 0; i < mLastResult.size(); i++) {
				
				itemSymbol = mLastResult[i];
				number = inputValue[i];
				
				state = number == 1;
				
				// move to mAddress + itemSymbol namespace
				if (mOutput == kTTSym_children) {
					aNamespace->find(mAddress.appendAddress(itemSymbol), &anItem);
					anItem = anItem->getParent();
				}
				else if (mOutput == kTTSym_brothers)
					aNamespace->find(mAddress.appendInstance(itemSymbol), &anItem);
				
				else
					aNamespace->find(mAddress.appendAddress(itemSymbol), &anItem);
				
				if (anItem)
					anItem->setSelection(state);
			}
			
			// return selection to the owner of the explorer
			return returnSelectionBack();
		}
	}
	
	return kTTErrGeneric;
}

TTErr TTExplorer::SelectAll()
{
	TTAddressItemPtr    aNamespace = lookupNamespace(mNamespace);
	TTAddressItemPtr    anItem;
	TTAddress           itemSymbol;	
	TTInt32				i;
	
	if (aNamespace) {
		// set all selection state
		for (i = 0; i < mLastResult.size(); i++) {
			
			itemSymbol = mLastResult[i];
			
			// move to mAddress + itemSymbol namespace
			if (mOutput == kTTSym_children) {
				aNamespace->find(mAddress.appendAddress(itemSymbol), &anItem);
				anItem = anItem->getParent();
			}
			else if (mOutput == kTTSym_brothers)
				aNamespace->find(mAddress.appendInstance(itemSymbol), &anItem);
			
			else
				aNamespace->find(mAddress.appendAddress(itemSymbol), &anItem);
			
			if (anItem)
				anItem->setSelection(YES);
		}
	}
	
	// return selection to the owner of the explorer
	return returnSelectionBack();
}

/** Set all selection state to NO */
TTErr TTExplorer::SelectNone()
{
	TTAddressItemPtr    aNamespace = lookupNamespace(mNamespace);
	TTAddressItemPtr    anItem;
	TTAddress           itemSymbol;	
	TTInt32				i;
	
	if (aNamespace) {
		// set all selection state
		for (i = 0; i < mLastResult.size(); i++) {
			
			itemSymbol = mLastResult[i];
			
			// move to mAddress + itemSymbol namespace
			if (mOutput == kTTSym_children) {
				aNamespace->find(mAddress.appendAddress(itemSymbol), &anItem);
				anItem = anItem->getParent();
			}
			else if (mOutput == kTTSym_brothers)
				aNamespace->find(mAddress.appendInstance(itemSymbol), &anItem);
			else
				aNamespace->find(mAddress.appendAddress(itemSymbol), &anItem);
			
			if (anItem)
				anItem->setSelection(NO);
		}
	}
	
	// return selection to the owner of the explorer
	return returnSelectionBack();
}

TTErr TTExplorer::SelectRefresh()
{
	return returnSelectionBack();
}

TTErr TTExplorer::FilterSet(const TTValue& inputValue, TTValue& outputValue)
{
	TTDictionaryPtr afilter = NULL;
	TTSymbol		filterName, filterKey;
	TTValue			v, filterValue;
	TTErr			err;
	
	if (inputValue[0].type() == kTypeSymbol) {
	
		filterName = inputValue[0];
		
		err = mFilterBank->lookup(filterName, v);
		
		// if the filter doesn't exist : create a new one
		if (err) {
			afilter = new TTDictionary();
			afilter->setSchema(kTTSym_filter);
			mFilterBank->append(filterName, (TTPtr)afilter);
		}
		// else get the existing filter and his schema
		else
			afilter = TTDictionaryPtr((TTPtr)v[0]);
		
		// set the keys of the filter
		for (TTUInt32 i = 1; i < inputValue.size(); i =i+2) {
			
			filterKey = inputValue[i];
			filterValue.copyRange(inputValue, i+1, i+2);
			
			// convert Int32 into symbol for instance parsing
			if (filterValue[0].type() == kTypeInt32) {
				filterValue.toString();
				TTString instanceString;
				instanceString = TTString(filterValue[0]);
				filterValue[0] = TTSymbol(instanceString);
			}
			
			afilter->append(filterKey, filterValue);
		}
	}
	// the first element have to be a symbol
	else
		return kTTErrGeneric;
	
	// append the new filter to the filter list
	if (afilter) {
		mFilterList->appendUnique(filterName);
		return kTTErrNone;
	}
	
	return kTTErrGeneric;
}

TTErr TTExplorer::FilterRemove(const TTValue& inputValue, TTValue& outputValue)
{
	TTDictionaryPtr afilter;
	TTSymbol		filterName;
	TTValue			v, filterValue;
	TTErr			err;
	
	if (inputValue[0].type() == kTypeSymbol) {
		
		filterName = inputValue[0];
		
		err = mFilterBank->lookup(filterName, v);
		
		// if the filter exists
		if (!err) {
			
			// remove the filter from the global table
			mFilterBank->remove(filterName);
			
			// delete the filter
			afilter = TTDictionaryPtr((TTPtr)v[0]);
			delete afilter;
		}
		
		// remove the filter from the filter list
		mFilterList->remove(filterName);
		
		return kTTErrNone;
	}
	// remove all
	else {
		delete mFilterList;
		mFilterList = new TTList();
	}
	
	return kTTErrGeneric;
}

TTErr TTExplorer::FilterInfo(const TTValue& inputValue, TTValue& outputValue)
{
	TTDictionaryPtr aFilter;
	TTSymbol		filterName, key;
	TTValue			v, filterKeys, filterValue;
	TTErr			err;
	
	if (inputValue[0].type() == kTypeSymbol) {
		
		filterName = inputValue[0];
		
		err = mFilterBank->lookup(filterName, v);
		
		// if the filter exists
		if (!err) {
			
			outputValue.append(filterName);
						
			// get the filter
			aFilter = TTDictionaryPtr((TTPtr)v[0]);
			
			// get all keys
			aFilter->getKeys(filterKeys);
			
			// for all key, get the value
			for (TTUInt8 i = 0; i < filterKeys.size(); i++) {
				
				key = filterKeys[i];
				aFilter->lookup(key, filterValue);
				
				outputValue.append(key);
				outputValue.append(filterValue);
			}
		}
		
		return err;
	}
	
	return kTTErrGeneric;
}

TTErr TTExplorer::getFilterList(TTValue& value)
{
	TTSymbol filterName;
	value.clear();
	
	for (mFilterList->begin(); mFilterList->end(); mFilterList->next())
	{
		filterName = mFilterList->current()[0];
		value.append(filterName);
	}
	
	return kTTErrNone;
}

TTErr TTExplorer::setFilterList(const TTValue& value)
{
	TTSymbol    filterName;
	TTUInt32	i;
	TTValue		v;
	TTBoolean	anError = NO;
	TTErr		err = kTTErrNone;
	
	mFilterList->clear();
	
	for (i = 0; i < value.size(); i++)
	{
		filterName = value[i];
		
		err = mFilterBank->lookup(filterName, v);
		
		if (!err)
			mFilterList->append(filterName);
		else anError = YES;
	}
	
	if (anError) return kTTErrValueNotFound;
	else return kTTErrNone;
}

/** */
TTErr TTExplorer::returnResultBack()
{
	TTValue				keys, result;
	TTAddressItemPtr aNamespace, anItem;
	TTAddress	relativeAddress;
	TTSymbol			newName, lastName = kTTSymEmpty;
	TTUInt32			i, j;
	TTBoolean			found;
	
	// Return the value result back
	if (mReturnValueCallback) {
		
		// sort keys if needed
		if (mSort == kTTSym_alphabetic)
			mResult->getKeysSorted(keys);
		
		else if (mSort == kTTSym_priority)
			mResult->getKeysSorted(keys, &TTExplorerCompareNodePriority);
		
		// children case : keep only the name part and filter repetitions
		if (mOutput == kTTSym_children) {
			
			for (i = 0; i < keys.size(); i++) {
				
				relativeAddress = keys[i];
				newName = relativeAddress.getName();
				
				// filter repetitions
				found = false;
				for (j = 0; j < result.size(); j++) {
					lastName = result[j];
					if (newName == lastName) {
						found = true;
						break;
					}
				}
				
				if (found)
					continue;
				
				result.append(newName);
			}
		}
		
		// brothers case : keep only instance part
		else if (mOutput == kTTSym_brothers) {
			
			for (i = 0; i < keys.size(); i++) {
				
				relativeAddress = keys[i];
				result.append(relativeAddress.getInstance());
			}
		}
		
		// any other case
		else
			result = keys;
		
		// filter repetitions of a same result (but output empty result)
		if (!(result == mLastResult) || result == kTTValNONE) {
			
			// update namespace
			aNamespace = lookupNamespace(mNamespace);
			if (aNamespace) {
				
				// append mAddress to the namespace 
				// and go to mAddress namespace item
				aNamespace->append(mAddress, &aNamespace);
				
				// in brother case : go to the parent namespace item
				if (mOutput == kTTSym_brothers)
					aNamespace = aNamespace->getParent();
				
				// append the result to the namespace
				for (i = 0; i < result.size(); i++) {
					
					relativeAddress = result[i];
					aNamespace->append(relativeAddress, &anItem);
				}
			}
			
			mLastResult = result;
			mReturnValueCallback->notify(result, kTTValNONE);
			
			returnSelectionBack();
		}
	}
	
	return kTTErrNone;
}

TTErr TTExplorer::returnSelectionBack()
{
	TTAddressItemPtr aNamespace = lookupNamespace(mNamespace);
	TTAddressItemPtr anItem;
	TTAddress	itemSymbol;
	TTValue				selection;
	TTInt32				i;
	
	if (aNamespace) {
		
		// return all selection state
		for (i = 0; i < mLastResult.size(); i++) {
			
			itemSymbol = mLastResult[i];
			
			// get the item
			if (mOutput == kTTSym_children) {
				aNamespace->find(mAddress.appendAddress(itemSymbol), &anItem);
				anItem = anItem->getParent();
			}
			else if (mOutput == kTTSym_brothers)
				aNamespace->find(mAddress.appendInstance(itemSymbol), &anItem);
			
			else if (itemSymbol.getType() == kAddressRelative)
				aNamespace->find(mAddress.appendAddress(itemSymbol), &anItem);
			
			else
				aNamespace->find(itemSymbol, &anItem);
			
			if (anItem)
				selection.append(anItem->getSelection());
		}
		
		return mReturnSelectionCallback->notify(selection, kTTValNONE);
	}
	
	return kTTErrGeneric;
}

#if 0
#pragma mark -
#pragma mark Some Methods
#endif

TTErr TTExplorerDirectoryCallback(TTPtr baton, TTValue& data)
{
	TTValue			keys = kTTValNONE;
	TTValue			t, v = kTTValNONE;
	TTValuePtr		b;
	TTExplorerPtr	anExplorer;
	TTAddress anAddress, relativeAddress;
	TTSymbol		key;
	TTNodePtr		aNode;
	TTUInt8			flag;
	TTCallbackPtr	anObserver;
	TTObjectPtr		o;
		
	// Unpack baton
	b = (TTValuePtr)baton;
    anExplorer = TTExplorerPtr((TTObjectPtr)(*b)[0]);
	
	// Unpack data (anAddress, aNode, flag, anObserver)
	anAddress = data[0];
	aNode = TTNodePtr((TTPtr)data[1]);
	flag = data[2];
	anObserver = TTCallbackPtr((TTObjectPtr)data[3]);
	
	// get attributes names
	if (anExplorer->mOutput == kTTSym_attributes) {
		if (aNode == anExplorer->mTempNode) {
			
			// always clear the result
			anExplorer->mResult->clear();
			
			o = aNode->getObject();
			if (o)
				o->getAttributeNames(keys);
		}
	}
	
	// get relative address of nodes matching filter
	else {
	
		// children case and brothers : check parent
		if (anExplorer->mOutput == kTTSym_children || anExplorer->mOutput == kTTSym_brothers)
			if (aNode->getParent() != anExplorer->mTempNode)
				return kTTErrGeneric;
		
		TTValue args = TTValue((TTPtr)anExplorer->mFilterBank);
		args.append((TTPtr)anExplorer->mFilterList);
		
		// test the node or add any destroyed node (because sometimes the object can be destroyed before his address)
		if (testNodeUsingFilter(aNode, (TTPtr)&args) || flag == kAddressDestroyed) {
			
			// brothers case : store only the relative address for node with the same name
			if (anExplorer->mOutput == kTTSym_brothers) {
				aNode->getAddress(relativeAddress, anExplorer->mAddress.getParent());
				
				if (anExplorer->mAddress.getName() == relativeAddress.getName())
					keys.append(relativeAddress);
			}
			else {
				
				/*if (anExplorer->mAddress == kTTAdrsRoot)
					aNode->getAddress(&relativeAddress);
				else*/
					aNode->getAddress(relativeAddress, anExplorer->mAddress);
				
				keys.append(relativeAddress);
			}

			// prepare to store the node with the relativeAddress
			v.append(TTPtr(aNode));
		}
	}
	
	if (keys == kTTValNONE)
		return kTTErrGeneric;
	
	// Add or remove names depending on 
	// if the node is created or destroyed
	switch (flag) {
			
		case kAddressCreated :
		{
			for (TTUInt32 i = 0; i < keys.size(); i++) {
				key = keys[i];
				anExplorer->mResult->append(key, v);
			}
			break;
		}
			
		case kAddressDestroyed :
		{
			for (TTUInt32 i = 0; i < keys.size(); i++) {
				key = keys[i];
				anExplorer->mResult->remove(key);
			}
			break;
		}
			
		default :
			break;
	}
	
	return anExplorer->returnResultBack();
}

TTErr TTExplorerApplicationManagerCallback(TTPtr baton, TTValue& data)
{
	TTValuePtr		b;
	TTExplorerPtr	anExplorer;
	TTSymbol		anApplicationName;
	TTApplicationPtr anApplication;
	TTValue			v;
	TTUInt8			flag;
	
	// unpack baton (a TTExplorerPtr)
	b = (TTValuePtr)baton;
	anExplorer = TTExplorerPtr((TTObjectPtr)(*b)[0]);
	
	// Unpack data (applicationName, application, flag, observer)
	anApplicationName = data[0];
    anApplication = TTApplicationPtr((TTObjectPtr)data[1]);
	flag = data[2];
	
	switch (flag) {
			
		case kApplicationAdded :
		{
			anExplorer->mDirectory = getDirectoryFrom(anExplorer->mAddress);
			anExplorer->bindAddress();
			break;
		}
			
		case kApplicationProtocolStarted :
		{
			anExplorer->Explore();
			break;
		}
			
		case kApplicationProtocolStopped :
		{
			break;
		}
			
		case kApplicationRemoved :
		{
			anExplorer->unbindAddress();
			break;
		}
			
		default:
			break;
	}
	
	return kTTErrNone;
}

TTBoolean TTExplorerCompareNodePriority(TTValue& v1, TTValue& v2) 
{
	TTNodePtr	n1, n2;
	TTObjectPtr o1, o2;
	TTValue		v;
	TTInt32		p1 = 0;
	TTInt32		p2 = 0;
	
	// get priority of v1
	n1 = TTNodePtr((TTPtr)v1[1]);
	if (n1) {
		o1 = n1->getObject();
		
		if (o1)
			if (!o1->getAttributeValue(kTTSym_priority, v))
				p1 = v[0];
	}
	
	// get priority of v2
	n2 = TTNodePtr((TTPtr)v2[1]);
	if (n2) {
		o2 = n2->getObject();
		
		if (o2)
			if (!o2->getAttributeValue(kTTSym_priority, v))
				p2 = v[0];
	}
	
	if (p1 == 0 && p2 == 0) return v1 < v2;
	
	if (p1 == 0) return NO;
	if (p2 == 0) return YES;
	
	return p1 < p2;
}
