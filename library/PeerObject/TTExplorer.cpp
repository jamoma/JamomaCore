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
mAddress(kTTAdrsRoot),
mOutput(kTTSym_descendants),
mUpdate(YES),
mSort(kTTSym_alphabetic),
mDirectory(NULL),
mAddressObserver(NULL),
mApplicationObserver(NULL),
mReturnValueCallback(NULL),
mFilterList(NULL),
mTempNode(NULL),
mResult(NULL),
mLastResult(kTTValNONE)
{
	if(arguments.getSize() >= 1)
		arguments.get(0, (TTPtr*)&mReturnValueCallback);
	
	// It is possible to pass a default filter bank
	if(arguments.getSize() >= 2)
		arguments.get(1, (TTPtr*)&mFilterBank);
	else 
		mFilterBank = new TTHash();
	
	addAttributeWithSetter(Address, kTypeSymbol);
	addAttributeWithSetter(Output, kTypeSymbol);
	addAttributeWithSetter(Update, kTypeBoolean);
	addAttributeWithSetter(Sort, kTypeSymbol);
	
	registerAttribute(TT("filterList"), kTypeLocalValue, NULL, (TTGetterMethod)&TTExplorer::getFilterList, (TTSetterMethod)&TTExplorer::setFilterList);
	
	addMessage(Explore);
	
	addMessageWithArguments(FilterSet);
	addMessageWithArguments(FilterRemove);
	addMessageWithArguments(FilterInfo);
	
	addMessageWithArguments(WriteAsOpml);
	addMessageProperty(WriteAsOpml, hidden, YES);
	
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
}

TTErr TTExplorer::setOutput(const TTValue& value)
{
	TTSymbolPtr newOutput = value;
	
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
	value.get(0, &mAddress);
	
	if (mDirectory = getDirectoryFrom(mAddress))
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
	TTSymbolPtr oldSort = mSort;
	
	mSort = value;
	
	// check change
	if (mSort == oldSort)
		return kTTErrNone;
	
	if (mSort == kTTSym_none || mSort == kTTSym_alphabetic || mSort == kTTSym_priority) {
		Explore();
		return kTTErrNone;
	}
	else
		return kTTErrGeneric;
}

TTErr TTExplorer::bindAddress() 
{
	TTValuePtr	newBaton;
	
	// it works only for absolute address
	if (mAddress->getType() == kAddressAbsolute) {
		
		// change the address observer
		if (mUpdate && mAddress != kTTAdrsEmpty) {
			
			// observe any creation or destruction below the address
			mAddressObserver = NULL;				// without this, TTObjectInstantiate try to release an oldObject that doesn't exist ... Is it good ?
			TTObjectInstantiate(TT("callback"), TTObjectHandle(&mAddressObserver), kTTValNONE);
			
			newBaton = new TTValue(TTPtr(this));
			newBaton->append(TTPtr(kTTSymEmpty));
			
			mAddressObserver->setAttributeValue(kTTSym_baton, TTPtr(newBaton));
			mAddressObserver->setAttributeValue(kTTSym_function, TTPtr(&TTExplorerDirectoryCallback));
			
			mAddressObserver->setAttributeValue(TT("owner"), TT("TTExplorer"));						// this is usefull only to debug
			
			mDirectory->addObserverForNotifications(mAddress, *mAddressObserver);
		}
		
		return kTTErrNone;
	}
	
	return kTTErrGeneric;
}

TTErr TTExplorer::unbindAddress() 
{
	// delete the old observer
	if (mDirectory && mAddressObserver && mAddress != kTTSymEmpty) {
		
		mDirectory->removeObserverForNotifications(mAddress, *mAddressObserver);
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
		TTObjectInstantiate(TT("callback"), TTObjectHandle(&mApplicationObserver), kTTValNONE);
		
		newBaton = new TTValue(TTPtr(this));
		
		mApplicationObserver->setAttributeValue(kTTSym_baton, TTPtr(newBaton));
		mApplicationObserver->setAttributeValue(kTTSym_function, TTPtr(&TTExplorerApplicationManagerCallback));
		
		mApplicationObserver->setAttributeValue(TT("owner"), TT("TTExplorer"));		// this is usefull only to debug
		
		return TTApplicationManagerAddApplicationObserver(mAddress->getDirectory(), *mApplicationObserver);
	}
	
	return kTTErrGeneric;
}

TTErr TTExplorer::unbindApplication() 
{
	TTErr err = kTTErrNone;
	
	if (mApplicationObserver) {
		
		err = TTApplicationManagerRemoveApplicationObserver(mAddress->getDirectory(), *mApplicationObserver);
		
		delete (TTValuePtr)mApplicationObserver->getBaton();
		TTObjectRelease(TTObjectHandle(&mApplicationObserver));
	}
	
	mDirectory = NULL;
	
	return kTTErrNone;
}

TTErr TTExplorer::Explore()
{
	TTNodeAddressPtr relativeAddress;
	TTSymbolPtr	attributeName;
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
		err = mDirectory->Lookup(mAddress->getParent(), aNodeList, &mTempNode);
	else
		err = mDirectory->Lookup(mAddress, aNodeList, &mTempNode);
	
	if (!err){
		
		// get attributes names of the node at mAddress
		if (mOutput == kTTSym_attributes) {
			
			if (o = mTempNode->getObject()) {
				v.clear();
				o->getAttributeNames(v);
				
				// memorized the result in a hash table
				for (TTUInt32 i=0; i<v.getSize(); i++) {
					v.get(i, (TTSymbolPtr*)&attributeName);
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
			// TODO : for the children case, we should avoid exploration below
			mDirectory->LookFor(&aNodeList, testNodeUsingFilter, (TTPtr)&args, allObjectNodes, &aNode);
			
			// memorized the result in a hash table (the node is stored in order to sort the result)
			for (allObjectNodes.begin(); allObjectNodes.end(); allObjectNodes.next()) {
				
				allObjectNodes.current().get(0, (TTPtr*)&aNode);
				
				if (mOutput == kTTSym_brothers)
					aNode->getAddress(&relativeAddress, mAddress->getParent());
				else
					aNode->getAddress(&relativeAddress, mAddress);
				
				// children or brothers case : ignore address with a parent part
				// TODO : for the children and brothers case, we should avoid exploration below the first level
				if ((mOutput == kTTSym_children || mOutput == kTTSym_brothers) && relativeAddress->getParent() != kTTAdrsEmpty)
					continue;
				
				// brothers case : store only the relative address for node with the same name
				if (mOutput == kTTSym_brothers) {
					if (mAddress->getName() == relativeAddress->getName())
						mResult->append(relativeAddress, TTValue((TTPtr)aNode));
				}
				// any other case : store the relative address
				else mResult->append(relativeAddress, TTValue((TTPtr)aNode));
			}
		}
		
		// Return the value result back
		return returnResultBack();
	}
	
	return kTTErrGeneric;
}

TTErr TTExplorer::FilterSet(const TTValue& inputValue, TTValue& outputValue)
{
	TTDictionaryPtr afilter = NULL;
	TTSymbolPtr		filterName, filterKey, filterSchema = kTTSymEmpty;
	TTValue			v, filterValue;
	TTErr			err;
	
	if (inputValue.getType() == kTypeSymbol) {
	
		inputValue.get(0, &filterName);
		
		err = mFilterBank->lookup(filterName, v);
		
		// if the filter doesn't exist : create a new one
		if (err) {
			afilter = new TTDictionary();
			afilter->setSchema(kTTSym_filter);
			mFilterBank->append(filterName, (TTPtr)afilter);
		}
		// else get the existing filter and his schema
		else {
			v.get(0, (TTPtr*)&afilter);
			filterSchema = afilter->getSchema();
		}
		
		// set the keys of the filter
		for (TTUInt32 i=1; i<inputValue.getSize(); i=i+2) {
			
			inputValue.get(i, &filterKey);
			filterValue.copyRange(inputValue, i+1, i+2);
			
			// convert Int32 into symbol for instance parsing
			if (filterValue.getType() == kTypeInt32) {
				filterValue.toString();
				TTString instanceString;
				filterValue.get(0, instanceString);
				filterValue.set(0, TT(instanceString));
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
	TTSymbolPtr		filterName;
	TTValue			v, filterValue;
	TTErr			err;
	
	if (inputValue.getType() == kTypeSymbol) {
		
		inputValue.get(0, &filterName);
		
		err = mFilterBank->lookup(filterName, v);
		
		// if the filter exists
		if (!err) {
			
			// remove the filter from the global table
			mFilterBank->remove(filterName);
			
			// delete the filter
			v.get(0, (TTPtr*)&afilter);
			delete afilter;
		}
		
		// remove the filter from the filter list
		mFilterList->remove(filterName);
		
		return kTTErrNone;
	}
	
	return kTTErrGeneric;
}

TTErr TTExplorer::FilterInfo(const TTValue& inputValue, TTValue& outputValue)
{
	TTDictionaryPtr aFilter;
	TTSymbolPtr		filterName, key;
	TTValue			v, filterKeys, filterValue;
	TTErr			err;
	
	if (inputValue.getType() == kTypeSymbol) {
		
		inputValue.get(0, &filterName);
		
		err = mFilterBank->lookup(filterName, v);
		
		// if the filter exists
		if (!err) {
			
			outputValue.append(filterName);
						
			// get the filter
			v.get(0, (TTPtr*)&aFilter);
			
			// get all keys
			aFilter->getKeys(filterKeys);
			
			// for all key, get the value
			for (TTUInt8 i=0; i<filterKeys.getSize(); i++) {
				
				filterKeys.get(i, &key);
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
	TTSymbolPtr filterName;
	value.clear();
	
	for (mFilterList->begin(); mFilterList->end(); mFilterList->next())
	{
		mFilterList->current().get(0, &filterName);
		value.append(filterName);
	}
	
	return kTTErrNone;
}

TTErr TTExplorer::setFilterList(const TTValue& value)
{
	TTSymbolPtr filterName;
	TTUInt32	i;
	TTValue		v;
	TTBoolean	anError = NO;
	TTErr		err = kTTErrNone;
	
	mFilterList->clear();
	
	for (i=0; i<value.getSize(); i++)
	{
		value.get(i, &filterName);
		
		err = mFilterBank->lookup(filterName, v);
		
		if (!err)
			mFilterList->append(filterName);
		else anError = YES;
	}
	
	if (anError) return kTTErrValueNotFound;
	else return kTTErrNone;
}


TTErr TTExplorer::WriteAsOpml(const TTValue& inputValue, TTValue& outputValue)
{
	TTOpmlHandlerPtr	anOpmlHandler;
	TTNodePtr			aNode;
	
	inputValue.get(0, (TTPtr*)&anOpmlHandler);
	
	if (mDirectory && mAddress != kTTAdrsEmpty) {
		
		// get the mAddress node
		mDirectory->getTTNode(mAddress, &aNode);
		if (aNode) writeNode(anOpmlHandler, aNode);
		else writeNode(anOpmlHandler, mDirectory->getRoot());
		
	}

	return kTTErrNone;
}

void TTExplorer::writeNode(TTOpmlHandlerPtr anOpmlHandler, TTNodePtr aNode)
{
	TTNodeAddressPtr nameInstance;
	TTSymbolPtr objectName, attributeName;
	TTObjectPtr anObject;
	TTValue		attributeNameList, v, c;
	TTList		nodeList;
	TTNodePtr	aChild;
	TTString	aString;
	
	// Start opml node
	xmlTextWriterStartElement(anOpmlHandler->mWriter, BAD_CAST "outline");
	
	// Write address attribute
	nameInstance = makeTTNodeAddress(NO_DIRECTORY, NO_PARENT, aNode->getName(), aNode->getInstance(), NO_ATTRIBUTE);
	xmlTextWriterWriteAttribute(anOpmlHandler->mWriter, BAD_CAST "text", BAD_CAST nameInstance->getCString());
	
	if (anObject = aNode->getObject()) {
		
		// Write object name attribute
		objectName = anObject->getName();
		if (objectName != kTTSymEmpty)
			xmlTextWriterWriteAttribute(anOpmlHandler->mWriter, BAD_CAST "object", BAD_CAST objectName->getCString());
		else
			xmlTextWriterWriteAttribute(anOpmlHandler->mWriter, BAD_CAST "object", BAD_CAST kTTSym_none->getCString());
		
		// write attributes
		anObject->getAttributeNames(attributeNameList);
		
		for(TTUInt8 i = 0; i < attributeNameList.getSize(); i++)
		{
			attributeNameList.get(i, &attributeName);
			
			// Filter object type : Data, Viewer and Container
			if (anObject->getName() == TT("Data") || anObject->getName() == TT("View") || anObject->getName() == TT("Container")) {
				
				// Filter attribute names
				if (attributeName != kTTSym_value && 
					attributeName != kTTSym_address && 
					// attributeName != TT("content") &&
					attributeName != kTTSym_bypass &&
					attributeName != kTTSym_activityIn &&
					attributeName != kTTSym_activityOut) {
					
					anObject->getAttributeValue(attributeName, v);
					
					// Replace TTName by AppName (because object name can be customized in order to have a specific application's namespace)
					ToAppNames(v, c);
					
					c.toString();
					c.get(0, aString);
					
					xmlTextWriterWriteAttribute(anOpmlHandler->mWriter, BAD_CAST attributeName->getCString(), BAD_CAST aString.data());
				}
			}
		}
		
		// write messages ?
	}
	
	aNode->getChildren(S_WILDCARD, S_WILDCARD, nodeList);

	for (nodeList.begin(); nodeList.end(); nodeList.next())
	{
		nodeList.current().get(0, (TTPtr*)&aChild);
		writeNode(anOpmlHandler, aChild);
	}
	
	// Close opml node
	xmlTextWriterEndElement(anOpmlHandler->mWriter);
}

/** */
TTErr TTExplorer::returnResultBack()
{
	TTValue				keys, result;
	TTNodeAddressPtr	relativeAddress;
	TTSymbolPtr			lastName = kTTSymEmpty;
	TTUInt32			i;
	
	// Return the value result back
	if (mReturnValueCallback) {
		
		// sort keys if needed
		if (mSort == kTTSym_alphabetic)
			mResult->getKeysSorted(keys);
		
		else if (mSort == kTTSym_priority)
			mResult->getKeysSorted(keys, &comparePriority);
		
		// children case : keep only the name part and filter repetitions
		if (mOutput == kTTSym_children) {
			
			for (i=0; i<keys.getSize(); i++) {
				
				keys.get(i, &relativeAddress);
				
				// filter repetitions
				if (relativeAddress->getName() == lastName)
					continue;
				
				lastName = relativeAddress->getName();
				result.append(lastName);
			}
		}
		
		// brothers case : keep only instance part
		else if (mOutput == kTTSym_brothers) {
			
			for (i=0; i<keys.getSize(); i++) {
				
				keys.get(i, &relativeAddress);
				result.append(relativeAddress->getInstance());
			}
		}
		
		// any other case
		else
			result = keys;
		
		// filter repetitions of a same result
		if (!(result == mLastResult)) {
			
			mLastResult = result;
			return mReturnValueCallback->notify(result, kTTValNONE);
		}
	}
	
	return kTTErrNone;
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
	TTNodeAddressPtr anAddress, relativeAddress;
	TTSymbolPtr		key;
	TTNodePtr		aNode;
	TTUInt8			flag;
	TTCallbackPtr	anObserver;
	TTObjectPtr		o;
		
	// Unpack baton
	b = (TTValuePtr)baton;
	b->get(0, (TTPtr*)&anExplorer);
	
	// Unpack data (anAddress, aNode, flag, anObserver)
	data.get(0, &anAddress);
	data.get(1, (TTPtr*)&aNode);
	data.get(2, flag);
	data.get(3, (TTPtr*)&anObserver);
	
	// get attributes names
	if (anExplorer->mOutput == kTTSym_attributes) {
		if (aNode == anExplorer->mTempNode) {
			
			// always clear the result
			anExplorer->mResult->clear();
			
			if (o = aNode->getObject())
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
		
		if (testNodeUsingFilter(aNode, (TTPtr)&args)) {
			
			if (anExplorer->mOutput == kTTSym_brothers)
				aNode->getAddress(&relativeAddress, anExplorer->mAddress->getParent());
			else
				aNode->getAddress(&relativeAddress, anExplorer->mAddress);
			
			// brothers case : store only the relative address for node with the same name
			if (anExplorer->mOutput == kTTSym_brothers) {
				if (anExplorer->mAddress->getName() == relativeAddress->getName())
					keys.append(relativeAddress);
			}
			// any other case : store the relative address
			else
				keys.append(relativeAddress);

			v.append(TTPtr(aNode));
		}
		// sometimes the object can be destroyed before his address
		else if (flag == kAddressDestroyed) {
			aNode->getAddress(&relativeAddress, anExplorer->mAddress);
			keys.append(relativeAddress);
		}
	}
	
	if (keys == kTTValNONE)
		return kTTErrGeneric;
	
	// Add or remove names depending on 
	// if the node is created or destroyed
	switch (flag) {
			
		case kAddressCreated :
		{
			for (TTUInt32 i=0; i<keys.getSize(); i++) {
				keys.get(i, &key);
				anExplorer->mResult->append(key, v);
			}
			break;
		}
			
		case kAddressDestroyed :
		{
			for (TTUInt32 i=0; i<keys.getSize(); i++) {
				keys.get(i, &key);
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
	TTSymbolPtr		anApplicationName;
	TTApplicationPtr anApplication;
	TTValue			v;
	TTUInt8			flag;
	
	// unpack baton (a TTExplorerPtr)
	b = (TTValuePtr)baton;
	b->get(0, (TTPtr*)&anExplorer);
	
	// Unpack data (applicationName, application, flag, observer)
	data.get(0, &anApplicationName);
	data.get(1, (TTPtr*)&anApplication);
	data.get(2, flag);
	
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

TTBoolean comparePriority(TTValue& v1, TTValue& v2) 
{
	TTNodePtr	n1, n2;
	TTObjectPtr o1, o2;
	TTValue		v;
	TTInt32		p1, p2;
	
	// get priority of v1
	v1.get(1, (TTPtr*)&n1);
	if (n1) {
		o1 = n1->getObject();
	
		if (o1)
			if (!o1->getAttributeValue(kTTSym_priority, v))
				v.get(0, p1);
	}
	
	// get priority of v2
	v2.get(1, (TTPtr*)&n2);
	if (n2) {
		o2 = n2->getObject();
	
		if (o2)
			if (!o2->getAttributeValue(kTTSym_priority, v))
				v.get(0, p2);
	}
	
	if (p1 == 0 && p2 == 0) return v1 < v2;
	
	if (p1 == 0) return NO;
	if (p2 == 0) return YES;
	
	return p1 < p2;
}
