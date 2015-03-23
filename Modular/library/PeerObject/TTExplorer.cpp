/** @file
 *
 * @ingroup modularLibrary
 *
 * @brief A Namespace Explorer Object
 *
 * @details
 *
 * @authors Théo de la Hogue
 *
 * @copyright © 2010, Théo de la Hogue @n
 * This code is licensed under the terms of the "New BSD License" @n
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
mFilterList(NULL),
mTempNode(NULL),
mResult(NULL)
{
	if(arguments.size() >= 1)
		mReturnValueCallback = arguments[0];
	
	// It is possible to pass a default filter bank
	if(arguments.size() >= 2)
		mFilterBank = TTHashPtr((TTPtr)arguments[1]);
	else 
		mFilterBank = new TTHash();
	
	if(arguments.size() >= 3)
		mReturnSelectionCallback = arguments[2];
	
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
	
	addMessage(SelectionRefresh);
	
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
	
	delete mFilterBank;
	delete mFilterList;
	delete mResult;
}

TTErr TTExplorer::setNamespace(const TTValue& value)
{
	TTAddressItemPtr    aSelection;
    TTObject            thisObject(this);
	
	// unregister from the former namespace
	aSelection = TTModularSelectionLookup(mNamespace);
	
	if (aSelection)
		aSelection->unregisterHandler(thisObject);
	
	// get new namespace
	mNamespace = value;
	
	// register to the new namespace
	aSelection = TTModularSelectionLookup(mNamespace);
	
	if (aSelection)
		aSelection->registerHandler(thisObject);
	
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
	
	mDirectory = accessApplicationDirectoryFrom(mAddress);
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
	// it works only for absolute address
	if (mAddress.getType() == kAddressAbsolute) {
		
		// change the address observer
		if (mUpdate && mAddress != kTTAdrsEmpty) {
			
			// observe any creation or destruction below the address
			mAddressObserver = TTObject("callback");
			
			mAddressObserver.set(kTTSym_baton, TTPtr(this)); // théo -- we have to register our self as a #TTPtr to not reference this instance otherwhise the destructor will never be called
			mAddressObserver.set(kTTSym_function, TTPtr(&TTExplorerDirectoryCallback));
			
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
	if (mDirectory && mAddressObserver.valid() && mAddress != kTTSymEmpty) {
		
		mDirectory->removeObserverForNotifications(mAddress, mAddressObserver);
		mAddressObserver = TTObject();
		
		return kTTErrNone;
	}
	
	return kTTErrGeneric;
}

TTErr TTExplorer::bindApplication()
{
	if (!mApplicationObserver.valid()) {
		
		mApplicationObserver = TTObject("callback");
		
		mApplicationObserver.set(kTTSym_baton, TTPtr(this)); // théo -- we have to register our self as a #TTPtr to not reference this instance otherwhise the destructor will never be called
		mApplicationObserver.set(kTTSym_function, TTPtr(&TTExplorerApplicationManagerCallback));
		
		return TTApplicationManagerAddApplicationObserver(mAddress.getDirectory(), mApplicationObserver);
	}
	
	return kTTErrGeneric;
}

TTErr TTExplorer::unbindApplication() 
{
	TTErr err;
	
	if (mApplicationObserver.valid()) {
		
		err = TTApplicationManagerRemoveApplicationObserver(mAddress.getDirectory(), mApplicationObserver);
		
		mApplicationObserver = TTObject();
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
	TTObject	o;
	TTValue		v, args, none;
	TTErr		err;
	
	mResult->clear();
	mLastResult.clear();
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
			if (o.valid()) {
				v.clear();
				o.attributes(v);
				
				// memorized the result in a hash table
				for (TTUInt32 i = 0; i < v.size(); i++) {
					attributeName = v[i];
					mResult->append(attributeName, none);
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
	TTAddressItemPtr    aSelection = TTModularSelectionLookup(mNamespace);
	TTAddressItemPtr    anItem = NULL;
	TTAddress           itemSymbol;
	TTInt32				i, number;
	TTBoolean			state = NO;
	
	if (aSelection && inputValue.size()) {
		
		// set one item selection state
		if (inputValue[0].type() == kTypeSymbol) {
			
			itemSymbol = inputValue[0];
			
			// get the item
			if (mOutput == kTTSym_children) {
				aSelection->find(mAddress.appendAddress(itemSymbol), &anItem);
				anItem = anItem->getParent();
			}
			else if (mOutput == kTTSym_brothers)
				aSelection->find(mAddress.appendInstance(itemSymbol), &anItem);
			
			else if (itemSymbol.getType() == kAddressRelative)
				aSelection->find(mAddress.appendAddress(itemSymbol), &anItem);
			
			else
				aSelection->find(itemSymbol, &anItem);
			
			if (anItem) {
				
				// set selection state
                if (inputValue.size() == 2) {
                    
                    if (inputValue[1].type() == kTypeInt32)
                        state = inputValue[1];
				}
				// or switch it
				else
					state = !anItem->getSelection();
				
				// set selection state
				anItem->setSelection(state, YES);
				
				// refresh all namespace handlers (TTExplorer only)
                aSelection->iterateHandlersSendingMessage(kTTSym_SelectionRefresh);
                
                return kTTErrNone;
			}
		}
		
		// set all items selection state
		else if (inputValue[0].type() == kTypeInt32 && inputValue.size() == mLastResult.size()) {
			
			// set all selection state
			for (i = 0; i < (TTInt32) mLastResult.size(); i++) {
				
				itemSymbol = mLastResult[i];
				number = inputValue[i];
				
				state = number == 1;
				
				// move to mAddress + itemSymbol namespace
				if (mOutput == kTTSym_children) {
					aSelection->find(mAddress.appendAddress(itemSymbol), &anItem);
					anItem = anItem->getParent();
				}
				else if (mOutput == kTTSym_brothers)
					aSelection->find(mAddress.appendInstance(itemSymbol), &anItem);
				
				else
					aSelection->find(mAddress.appendAddress(itemSymbol), &anItem);
				
				if (anItem)
					anItem->setSelection(state, YES);
			}
			
			// refresh all namespace handlers (TTExplorer only)
            aSelection->iterateHandlersSendingMessage(kTTSym_SelectionRefresh);
            
            return kTTErrNone;
		}
	}
	
	return kTTErrGeneric;
}

TTErr TTExplorer::SelectAll()
{
	TTAddressItemPtr    aSelection = TTModularSelectionLookup(mNamespace);
	TTAddressItemPtr    anItem;
	TTAddress           itemSymbol;	
	TTInt32				i;
	
	if (aSelection) {
		// set all selection state
		for (i = 0; i < (TTInt32) mLastResult.size(); i++) {
			
			itemSymbol = mLastResult[i];
			
			// move to mAddress + itemSymbol namespace
			if (mOutput == kTTSym_children) {
				aSelection->find(mAddress.appendAddress(itemSymbol), &anItem);
				anItem = anItem->getParent();
			}
			else if (mOutput == kTTSym_brothers)
				aSelection->find(mAddress.appendInstance(itemSymbol), &anItem);
			
			else
				aSelection->find(mAddress.appendAddress(itemSymbol), &anItem);
			
			if (anItem)
				anItem->setSelection(YES, YES);
		}
        
        // refresh all namespace handlers (TTExplorer only)
        aSelection->iterateHandlersSendingMessage(kTTSym_SelectionRefresh);
        
        return kTTErrNone;
	}
	
	// return selection to the owner of the explorer
	return returnSelectionBack();
}

/** Set all selection state to NO */
TTErr TTExplorer::SelectNone()
{
	TTAddressItemPtr    aSelection = TTModularSelectionLookup(mNamespace);
	TTAddressItemPtr    anItem;
	TTAddress           itemSymbol;	
	TTInt32				i;
	
	if (aSelection) {
        
		// set all selection state
		for (i = 0; i < (TTInt32) mLastResult.size(); i++) {
			
			itemSymbol = mLastResult[i];
			
			// move to mAddress + itemSymbol namespace
			if (mOutput == kTTSym_children) {
				aSelection->find(mAddress.appendAddress(itemSymbol), &anItem);
				anItem = anItem->getParent();
			}
			else if (mOutput == kTTSym_brothers)
				aSelection->find(mAddress.appendInstance(itemSymbol), &anItem);
			else
				aSelection->find(mAddress.appendAddress(itemSymbol), &anItem);
			
			if (anItem)
				anItem->setSelection(NO, YES);
		}
        
        // refresh all namespace handlers (TTExplorer only)
        aSelection->iterateHandlersSendingMessage(kTTSym_SelectionRefresh);
        
        return kTTErrNone;
	}
    
    return kTTErrGeneric;
}

TTErr TTExplorer::SelectionRefresh()
{
	return returnSelectionBack();
}

TTErr TTExplorer::FilterSet(const TTValue& inputValue, TTValue& outputValue)
{
	TTDictionaryBasePtr afilter = NULL;
	TTSymbol		filterName, filterKey;
	TTValue			v, filterValue;
	TTErr			err;
    
    if (inputValue.size() >= 1) {
	
        if (inputValue[0].type() == kTypeSymbol) {
            
            filterName = inputValue[0];
            
            err = mFilterBank->lookup(filterName, v);
            
            // if the filter doesn't exist : create a new one
            if (err) {
                afilter = new TTDictionaryBase();
                afilter->setSchema(kTTSym_filter);
                mFilterBank->append(filterName, (TTPtr)afilter);
            }
            // else get the existing filter and his schema
            else
                afilter = TTDictionaryBasePtr((TTPtr)v[0]);
            
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
        
        // append the new filter to the filter list
        if (afilter) {
            mFilterList->appendUnique(filterName);
            return kTTErrNone;
        }
    }
	
	return kTTErrGeneric;
}

TTErr TTExplorer::FilterRemove(const TTValue& inputValue, TTValue& outputValue)
{
	TTDictionaryBasePtr afilter;
	TTSymbol		filterName;
	TTValue			v, filterValue;
	TTErr			err;
    
    if (inputValue.size() == 1) {
        
        if (inputValue[0].type() == kTypeSymbol) {
            
            filterName = inputValue[0];
            
            err = mFilterBank->lookup(filterName, v);
            
            // if the filter exists
            if (!err) {
                
                // remove the filter from the global table
                mFilterBank->remove(filterName);
                
                // delete the filter
                afilter = TTDictionaryBasePtr((TTPtr)v[0]);
                delete afilter;
            }
            
            // remove the filter from the filter list
            mFilterList->remove(filterName);
            
            return kTTErrNone;
        }
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
	TTDictionaryBasePtr aFilter;
	TTSymbol		filterName, key;
	TTValue			v, filterKeys, filterValue;
	TTErr			err;
	
    if (inputValue.size() == 1) {
        
        if (inputValue[0].type() == kTypeSymbol) {
            
            filterName = inputValue[0];
            
            err = mFilterBank->lookup(filterName, v);
            
            // if the filter exists
            if (!err) {
                
                outputValue.append(filterName);
                
                // get the filter
                aFilter = TTDictionaryBasePtr((TTPtr)v[0]);
                
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
	TTAddressItemPtr    aSelection, anItem;
	TTAddress           relativeAddress;
	TTSymbol			newName, lastName = kTTSymEmpty;
	TTUInt32			i, j;
	TTBoolean			found;
	
	// Return the value result back
	if (mReturnValueCallback.valid()) {
		
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
		if (!(result == mLastResult) || result.empty()) {
			
			// update namespace
			aSelection = TTModularSelectionLookup(mNamespace);
			if (aSelection) {
				
				// append mAddress to the namespace 
				// and go to mAddress namespace item
                if (aSelection->find(mAddress, &aSelection) == kTTErrValueNotFound) {
                    
                    aSelection->append(mAddress, &aSelection);
                    aSelection->setSelection(YES, YES);
                }
				
				// in brother case : go to the parent namespace item
				if (mOutput == kTTSym_brothers)
					aSelection = aSelection->getParent();
				
				// append the result to the namespace
				for (i = 0; i < result.size(); i++) {
					
					relativeAddress = result[i];
                    
                    // append relativeAddress to the namespace
                    if (aSelection->find(relativeAddress, &anItem) == kTTErrValueNotFound) {
                        
                        aSelection->append(relativeAddress, &anItem);
                        anItem->setSelection(YES, YES);
                    }
				}
			}
			TTValue dummy;
			

			mLastResult = result;
			mReturnValueCallback.send("notify", result, dummy);
			
			returnSelectionBack();
		}
	}
	
	return kTTErrNone;
}

TTErr TTExplorer::returnSelectionBack()
{
	TTAddressItemPtr    aSelection = TTModularSelectionLookup(mNamespace);
	TTAddressItemPtr    anItem;
	TTAddress           itemSymbol;
	TTValue				selection;
	TTInt32				i;
	
	if (aSelection) {
		
		// return all selection state
		for (i = 0; i < (TTInt32) mLastResult.size(); i++) {
			
			itemSymbol = mLastResult[i];
			
			// get the item
			if (mOutput == kTTSym_children) {
				aSelection->find(mAddress.appendAddress(itemSymbol), &anItem);
				anItem = anItem->getParent();
			}
			else if (mOutput == kTTSym_brothers)
				aSelection->find(mAddress.appendInstance(itemSymbol), &anItem);
			
			else if (itemSymbol.getType() == kAddressRelative)
				aSelection->find(mAddress.appendAddress(itemSymbol), &anItem);
			
			else
				aSelection->find(itemSymbol, &anItem);
			
			if (anItem)
				selection.append(anItem->getSelection());
		}
		TTValue dummy;
		
		
		return mReturnSelectionCallback.send("notify", selection, dummy);
	}
	
	return kTTErrGeneric;
}

#if 0
#pragma mark -
#pragma mark Some Methods
#endif

TTErr TTExplorerDirectoryCallback(const TTValue& baton, const TTValue& data)
{
	TTValue			keys;
	TTValue			t, v;
    TTObject        o, anObserver;
	TTExplorerPtr	anExplorer;
	TTAddress       anAddress, relativeAddress;
	TTSymbol		key;
	TTNodePtr		aNode;
	TTUInt8			flag;
		
	// Unpack baton (#TTExplorerPtr)
    anExplorer = TTExplorerPtr((TTPtr)baton[0]); // théo -- we have to register our self as a #TTPtr to not reference this instance otherwhise the destructor will never be called
	
	// Unpack data (anAddress, aNode, flag, anObserver)
	anAddress = data[0];
	aNode = TTNodePtr((TTPtr)data[1]);
	flag = data[2];
	anObserver = data[3];
	
	// get attributes names
	if (anExplorer->mOutput == kTTSym_attributes) {
		if (aNode == anExplorer->mTempNode) {
			
			// always clear the result
			anExplorer->mResult->clear();
			
			o = aNode->getObject();
			if (o.valid())
				o.attributes(keys);
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
	
	if (keys.empty())
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

TTErr TTExplorerApplicationManagerCallback(const TTValue& baton, const TTValue& data)
{
	TTExplorerPtr	anExplorer;
	TTSymbol		anApplicationName;
	TTObject        anApplication;
	TTValue			v;
	TTUInt8			flag;
    
    // Unpack baton (#TTExplorerPtr)
    anExplorer = TTExplorerPtr((TTPtr)baton[0]); // théo -- we have to register our self as a #TTPtr to not reference this instance otherwhise the destructor will never be called
	
	// Unpack data (applicationName, application, flag, observer)
	anApplicationName = data[0];
    anApplication = data[1];
	flag = data[2];
	
	switch (flag) {
			
		case kApplicationInstantiated :
		{
			anExplorer->mDirectory = accessApplicationDirectoryFrom(anExplorer->mAddress);
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
			
		case kApplicationReleased :
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
	TTObject    o1, o2;
	TTValue		v;
	TTInt32		p1 = 0;
	TTInt32		p2 = 0;
	
	// get priority of v1
	n1 = TTNodePtr((TTPtr)v1[1]);
	if (n1) {
		o1 = n1->getObject();
		
		if (o1.valid())
			if (!o1.get(kTTSym_priority, v))
				p1 = v[0];
	}
	
	// get priority of v2
	n2 = TTNodePtr((TTPtr)v2[1]);
	if (n2) {
		o2 = n2->getObject();
		
		if (o2.valid())
			if (!o2.get(kTTSym_priority, v))
				p2 = v[0];
	}
	
	if (p1 == 0 && p2 == 0) return v1 < v2;
	
	if (p1 == 0) return NO;
	if (p2 == 0) return YES;
	
	return p1 < p2;
}
