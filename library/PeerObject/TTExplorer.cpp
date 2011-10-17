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
mOutput(kTTSymEmpty),
mDirectory(NULL),
mAddressObserver(NULL),
mApplicationObserver(NULL),
mReturnValueCallback(NULL),
mCriteriaList(NULL),
mTempNode(NULL),
mTempName(kTTSymEmpty),
mResult(NULL),
mLastResult(kTTValNONE)
{
	if(arguments.getSize() >= 1)
		arguments.get(0, (TTPtr*)&mReturnValueCallback);
	
	// It is possible to pass a default criteria bank
	if(arguments.getSize() >= 2)
		arguments.get(1, (TTPtr*)&mCriteriaBank);
	else 
		mCriteriaBank = new TTHash();
	
	addAttributeWithSetter(Address, kTypeSymbol);
	addAttributeWithSetter(Output, kTypeSymbol);
	
	registerAttribute(TT("criterias"), kTypeLocalValue, NULL, (TTGetterMethod)&TTExplorer::getCriterias, (TTSetterMethod)&TTExplorer::setCriterias);
	
	addMessage(Explore);
	
	addMessageWithArgument(CriteriaAdd);
	addMessageWithArgument(CriteriaRemove);
	
	addMessageWithArgument(WriteAsOpml);
	addMessageProperty(WriteAsOpml, hidden, YES);
	
	mCriteriaList = new TTList();
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
	
	delete mCriteriaBank;
	delete mCriteriaList;
	delete mResult;
}

TTErr TTExplorer::setOutput(const TTValue& value)
{
	mOutput = value;
	
	setAddress(mAddress);
	
	return kTTErrNone;
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

TTErr TTExplorer::bindAddress() 
{
	TTValuePtr	newBaton;
	
	// it works only for absolute address
	if (mAddress->getType() == kAddressAbsolute) {
		
		// change internal values
		mTempParent = mAddress->getParent();
		mTempName = mAddress->getName();
		
		// bind the new node
		if (mOutput == kTTSym_instances)
			mTempObserve = mTempParent;
		else
			mTempObserve = mAddress;
		
		// change the observer
		if (mTempObserve != kTTSymEmpty){
			
			// observe any creation or destruction below the address
			mAddressObserver = NULL;				// without this, TTObjectInstantiate try to release an oldObject that doesn't exist ... Is it good ?
			TTObjectInstantiate(TT("callback"), TTObjectHandle(&mAddressObserver), kTTValNONE);
			
			newBaton = new TTValue(TTPtr(this));
			newBaton->append(TTPtr(kTTSymEmpty));
			
			mAddressObserver->setAttributeValue(kTTSym_baton, TTPtr(newBaton));
			mAddressObserver->setAttributeValue(kTTSym_function, TTPtr(&TTExplorerDirectoryCallback));
			
			mAddressObserver->setAttributeValue(TT("owner"), TT("TTExplorer"));						// this is usefull only to debug
			
			mDirectory->addObserverForNotifications(mTempObserve, *mAddressObserver);
		}
		
		return kTTErrNone;
	}
	
	return kTTErrGeneric;
}

TTErr TTExplorer::unbindAddress() 
{
	// delete the old observer
	if (mDirectory && mAddressObserver && mTempObserve != kTTSymEmpty) {
		mDirectory->removeObserverForNotifications(mTempObserve, *mAddressObserver);
		TTObjectRelease(TTObjectHandle(&mAddressObserver));
		
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
		
		mApplicationObserver->setAttributeValue(TT("owner"), TT("TTReceiver"));		// this is usefull only to debug
		
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
	TTNodeAddressPtr name;
	TTList		aNodeList, nameList, allObjectNodes;
	TTNodePtr	aNode;
	TTObjectPtr	o;
	TTValue		v;
	TTErr		err;
	
	mResult->clear();
	mLastResult = kTTValNONE;
	mTempNode = NULL;
	
	if (!mDirectory)
		return kTTErrGeneric;
	
	// bind the right node
	if (mOutput == kTTSym_instances)
		err = mDirectory->Lookup(mTempParent, aNodeList, &mTempNode);
	else
		err = mDirectory->Lookup(mAddress, aNodeList, &mTempNode);
	
	if (!err){
		
		// get children names
		if (mOutput == kTTSym_children)
			mTempNode->getChildrenName(nameList);
		
		// get instances names
		else if (mOutput == kTTSym_instances)
			mTempNode->getChildrenInstance(mTempName, nameList);
		
		// get attributes names
		else if (mOutput == kTTSym_attributes) {
			if (o = mTempNode->getObject()) {
				v.clear();
				o->getAttributeNames(v);
				// Memorized the result in a hash table
				for (TTUInt32 i=0; i<v.getSize(); i++) {
					v.get(i, (TTSymbolPtr*)&name);
					mResult->append(name, kTTValNONE);
				}
			}
		}
		
		// get relative address of objects looking at mCriteriaList
		else {
			
			TTValue args = TTValue((TTPtr)mCriteriaBank);
			args.append((TTPtr)mCriteriaList);
			
			mDirectory->LookFor(&aNodeList, testNodeUsingCriteria, (TTPtr)&args, allObjectNodes, &aNode);
			
			// Memorized the result in a hash table
			for (allObjectNodes.begin(); allObjectNodes.end(); allObjectNodes.next()) {
				
				allObjectNodes.current().get(0, (TTPtr*)&aNode);
				aNode->getAddress(&name, mAddress);
				
				mResult->append(name, kTTValNONE);
			}
		}
		
		// For Children and Instances cases : 
		// Memorized the result in a hash table
		if (!nameList.isEmpty()) {
			for (nameList.begin(); nameList.end(); nameList.next()) {
				
				nameList.current().get(0,(TTSymbol **)&name);
				
				mResult->append(name, kTTValNONE);
			}
		}
		
		// Return the value result back
		v.clear();
		if (mReturnValueCallback) {
			mResult->getKeysSorted(v);
			if (!(v == mLastResult)) {
				mReturnValueCallback->notify(v);
				mLastResult = v;
			}
		}
	}
	
	return kTTErrNone;
}

TTErr TTExplorer::CriteriaAdd(const TTValue& value)
{
	TTDictionaryPtr aCriteria = NULL;
	TTSymbolPtr		criteriaName, criteriaKey, criteriaSchema = kTTSymEmpty;
	TTValue			v, criteriaValue;
	TTErr			err;
	
	if (value.getType() == kTypeSymbol) {
	
		value.get(0, &criteriaName);
		
		err = mCriteriaBank->lookup(criteriaName, v);
		
		// if the criteria doesn't exist : create a new one
		if (err) {
			aCriteria = new TTDictionary();
			mCriteriaBank->append(criteriaName, (TTPtr)aCriteria);
		}
		// else get the existing criteria and his schema
		else {
			v.get(0, (TTPtr*)&aCriteria);
			criteriaSchema = aCriteria->getSchema();
		}
		
		// set the keys of the criteria
		for (TTUInt32 i=1; i<value.getSize(); i=i+2) {
			
			value.get(i, &criteriaKey);
			criteriaValue.copyRange(value, i+1, i+2);
			
			aCriteria->append(criteriaKey, criteriaValue);
			
			// criteria schema detection on the first key
			if (criteriaSchema == kTTSymEmpty && i == 1) {
				
				if (criteriaKey == kTTSym_object || criteriaKey == kTTSym_attribute || criteriaKey == kTTSym_value)
					criteriaSchema = kTTSym_criteriaOnObject;
				
				else if (criteriaKey == kTTSym_name || criteriaKey == kTTSym_instance)
					criteriaSchema = kTTSym_criteriaOnAddress;
				
				// set the schema
				aCriteria->setSchema(criteriaSchema);
				
			}
			// then check each keys considering the detected schema
			else {
				
				if (criteriaSchema != kTTSym_criteriaOnObject && (criteriaKey == kTTSym_object || criteriaKey == kTTSym_attribute || criteriaKey == kTTSym_value))
					return kTTErrGeneric;
				
				else if (criteriaSchema != kTTSym_criteriaOnAddress && (criteriaKey == kTTSym_name || criteriaKey == kTTSym_instance))
					return kTTErrGeneric;
			}
		}
	}
	// the first element have to be a symbol
	else
		return kTTErrGeneric;
	
	// append the new criteria to the criteria list
	if (aCriteria) {
		mCriteriaList->appendUnique(criteriaName);
		return kTTErrNone;
	}
	
	return kTTErrGeneric;
}

TTErr TTExplorer::CriteriaRemove(const TTValue& value)
{
	TTDictionaryPtr aCriteria;
	TTSymbolPtr		criteriaName;
	TTValue			v, criteriaValue;
	TTErr			err;
	
	if (value.getType() == kTypeSymbol) {
		
		value.get(0, &criteriaName);
		
		err = mCriteriaBank->lookup(criteriaName, v);
		
		// if the criteria exists
		if (!err) {
			
			// remove the criteria from the global table
			mCriteriaBank->remove(criteriaName);
			
			// delete the criteria
			v.get(0, (TTPtr*)&aCriteria);
			delete aCriteria;
		}
		
		// remove the criteria from the criteria list
		mCriteriaList->remove(criteriaName);
		
		return kTTErrNone;
	}
	
	return kTTErrGeneric;
}

TTErr TTExplorer::getCriterias(TTValue& value)
{
	TTSymbolPtr criteriaName;
	value.clear();
	
	for (mCriteriaList->begin(); mCriteriaList->end(); mCriteriaList->next())
	{
		mCriteriaList->current().get(0, &criteriaName);
		value.append(criteriaName);
	}
	
	return kTTErrNone;
}

TTErr TTExplorer::setCriterias(const TTValue& value)
{
	TTSymbolPtr criteriaName;
	TTUInt32	i;
	TTValue		v;
	TTBoolean	anError = NO;
	TTErr		err = kTTErrNone;
	
	mCriteriaList->clear();
	
	for (i=0; i<value.getSize(); i++)
	{
		value.get(i, &criteriaName);
		
		err = mCriteriaBank->lookup(criteriaName, v);
		
		if (!err)
			mCriteriaList->append(criteriaName);
		else anError = YES;
	}
	
	if (anError) return kTTErrValueNotFound;
	else return kTTErrNone;
}


TTErr TTExplorer::WriteAsOpml(const TTValue& value)
{
	TTOpmlHandlerPtr	anOpmlHandler;
	TTNodePtr			aNode;
	
	value.get(0, (TTPtr*)&anOpmlHandler);
	
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
	TTValue		attributeNameList, v;
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
					attributeName != TT("content") &&
					attributeName != kTTSym_bypass &&
					attributeName != kTTSym_activityIn &&
					attributeName != kTTSym_activityOut) {
					
					anObject->getAttributeValue(attributeName, v);
					
					// Replace TTName by AppName (because object name can be customized in order to have a specific application's namespace)
					ToAppNames(v);
					
					v.toString();
					v.get(0, aString);
					
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

#if 0
#pragma mark -
#pragma mark Some Methods
#endif

TTErr TTExplorerDirectoryCallback(TTPtr baton, TTValue& data)
{
	TTValue			v = kTTValNONE;
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
	
	// get children names
	if (anExplorer->mOutput == kTTSym_children) {
		if (aNode->getParent() == anExplorer->mTempNode)
			v.append(aNode->getName());
	}
	
	// get instances names
	else if (anExplorer->mOutput == kTTSym_instances) {
		 // TODO : if the TempNode is destroyed then rebuilt, the test below fails => observe his destruction and replace mTempNode
		if ((aNode->getParent() == anExplorer->mTempNode) && (aNode->getName() == anExplorer->mTempName))
			v.append(aNode->getInstance());
	}
	
	// get attributes names
	else if (anExplorer->mOutput == kTTSym_attributes) {
		if (aNode == anExplorer->mTempNode) {
			
			// always clear the result
			anExplorer->mResult->clear();
			
			if (o = aNode->getObject())
				o->getAttributeNames(v);
		}
	}
	
	// get relative address of nodes matching criteria
	else {
		
		TTValue args = TTValue((TTPtr)anExplorer->mCriteriaBank);
		args.append((TTPtr)anExplorer->mCriteriaList);
			
		if (testNodeUsingCriteria(aNode, (TTPtr)&args)) { 
				aNode->getAddress(&relativeAddress, anExplorer->mAddress);
				v.append(relativeAddress);
		}
		// sometimes the object can be destroyed before his address
		else if (flag == kAddressDestroyed) {
			aNode->getAddress(&relativeAddress, anExplorer->mAddress);
			v.append(relativeAddress);
		}
	}
	
	if (v == kTTValNONE)
		return kTTErrGeneric;
	
	// Add or remove names depending on 
	// if the node is created or destroyed
	switch (flag) {
			
		case kAddressCreated :
		{
			for (TTUInt32 i=0; i<v.getSize(); i++) {
				v.get(i, &key);
				anExplorer->mResult->append(key, kTTValNONE);
			}
			break;
		}
			
		case kAddressDestroyed :
		{
			for (TTUInt32 i=0; i<v.getSize(); i++) {
				v.get(i, &key);
				anExplorer->mResult->remove(key);
			}
			break;
		}
			
		default :
			break;
	}
	
	// Return the value result back
	if (anExplorer->mReturnValueCallback) {
		anExplorer->mResult->getKeysSorted(v);
		if (!(v == anExplorer->mLastResult)) {
			anExplorer->mReturnValueCallback->notify(v);
			anExplorer->mLastResult = v;
		}
	}
	
	return kTTErrNone;
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
			
		case kApplicationPluginStarted :
		{
			anExplorer->Explore();
			break;
		}
			
		case kApplicationPluginStopped :
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
