/* 
 * TTObject to handle application data structure
 * like a TTNodeDirectory and a hash tables of names
 *
 * Copyright © 2010, Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTApplication.h"

#define thisTTClass			TTApplication
#define thisTTClassName		"Application"
#define thisTTClassTags		"application"


TT_MODULAR_CONSTRUCTOR,
mDebug(NO),
mDirectory(NULL),
mName(kTTSymEmpty),
mVersion(kTTSymEmpty),
mAuthor(kTTSymEmpty),
mNamespaceFile(kTTSymEmpty),
mActivity(NO),
mDirectoryListenersCache(NULL),
mAttributeListenersCache(NULL),
mAppToTT(NULL),
mTTToApp(NULL),
mTempAddress(kTTAdrsEmpty)
{
	arguments.get(0, mName);
	
	addAttributeWithSetter(Name, kTypeSymbol);
	
	addAttribute(Version, kTypeSymbol);
	addAttributeProperty(Version, readOnly, YES);
	
	addAttribute(Author, kTypeSymbol);
	addAttributeProperty(Author, readOnly, YES);
	
	addAttribute(NamespaceFile, kTypeSymbol);
	addAttributeProperty(NamespaceFile, hidden, YES);
	addAttributeProperty(NamespaceFile, readOnly, YES);
	
	addAttribute(Debug, kTypeBoolean);
	
	addAttributeWithSetter(Activity, kTypeBoolean);
	
	addAttributeWithSetter(ActivityIn, kTypeLocalValue);
	addAttributeProperty(NamespaceFile, hidden, YES);
	
	addAttributeWithSetter(ActivityOut, kTypeLocalValue);
	addAttributeProperty(NamespaceFile, hidden, YES);
	
	// relative to directory and attribute listening
	addAttribute(Directory, kTypePointer);
	addAttributeProperty(Directory, hidden, YES);
	addAttributeProperty(Directory, readOnly, YES);
	
	addMessageWithArguments(AddDirectoryListener);
	addMessageProperty(AddDirectoryListener, hidden, YES);
	
	addMessageWithArguments(AddAttributeListener);
	addMessageProperty(AddAttributeListener, hidden, YES);
	
	addMessageWithArguments(RemoveDirectoryListener);
	addMessageProperty(RemoveDirectoryListener, hidden, YES);
	
	addMessageWithArguments(RemoveAttributeListener);
	addMessageProperty(RemoveAttributeListener, hidden, YES);
	
	addMessageWithArguments(UpdateDirectory);
	addMessageProperty(UpdateDirectory, hidden, YES);
	
	addMessageWithArguments(UpdateAttribute);
	addMessageProperty(UpdateAttribute, hidden, YES);
	
	
	// relative to symbol conversion
	addAttributeWithGetter(AllAppNames, kTypeLocalValue);
	addAttributeProperty(AllAppNames, hidden, YES);
	addAttributeProperty(AllAppNames, readOnly, YES);
	
	addAttributeWithGetter(AllTTNames, kTypeLocalValue);
	addAttributeProperty(AllTTNames, hidden, YES);
	addAttributeProperty(AllTTNames, readOnly, YES);
	
	addMessageWithArguments(ConvertToAppName);
	addMessageProperty(ConvertToAppName, hidden, YES);
	
	addMessageWithArguments(ConvertToTTName);
	addMessageProperty(ConvertToTTName, hidden, YES);
	
	
	// needed to be handled by a TTXmlHandler
	addMessageWithArguments(WriteAsXml);
	addMessageProperty(WriteAsXml, hidden, YES);
	
	addMessageWithArguments(ReadFromXml);
	addMessageProperty(ReadFromXml, hidden, YES);
	
	// needed to be handled by a TTOpmlHandler
	addMessageWithArguments(ReadFromOpml);
	addMessageProperty(ReadFromOpml, hidden, YES);
	
	
	mDirectory = new TTNodeDirectory(mName);
	mDirectory->getRoot()->setObject(this);
	TT_ASSERT("NodeDirectory created successfully", mDirectory != NULL);
	
	mAppToTT = new TTHash();
	mTTToApp = new TTHash();
	
	mDirectoryListenersCache = new TTHash();
	mAttributeListenersCache = new TTHash();
	
	// add itself to the application manager
	TTValue args = TTValue((TTPtr)this);
	TTModularApplications->sendMessage(TTSymbol("ApplicationAdd"), args, kTTValNONE);
}

TTApplication::~TTApplication()
{
	TTValue hk, v;
	
	// remove itself to the application manager
	TTValue args = TTValue(mName);
	TTModularApplications->sendMessage(TTSymbol("ApplicationRemove"), args, kTTValNONE);
	
	// TODO : delete observers
	
	delete mDirectory;
	delete mTTToApp;
	delete mAppToTT;
}

TTErr TTApplication::setName(const TTValue& value)
{	
	// remove itself to the application manager
	TTValue args = TTValue(mName);
	TTModularApplications->sendMessage(TTSymbol("ApplicationRemove"), args, kTTValNONE);
	
	mName = value;
	mDirectory->setName(mName);
	
	// add itself to the application manager
	args = TTValue((TTPtr)this);
	return TTModularApplications->sendMessage(TTSymbol("ApplicationAdd"), args, kTTValNONE);
}

TTErr TTApplication::setActivity(const TTValue& value)
{	
	TTValue		protocols = getApplicationProtocols(mName);
	TTSymbol protocolName;
	
	mActivity = value;
	
	for (TTUInt32 i=0; i<protocols.getSize(); i++) {
		
		protocols.get(i, protocolName);
		getProtocol(protocolName)->setAttributeValue(kTTSym_activity, mActivity);
	}
	
	return kTTErrNone;
}

TTErr TTApplication::setActivityIn(const TTValue& value)
{	
	TTAttributePtr	anAttribute;
	TTErr			err = kTTErrNone;
	
	mActivityIn = value;
	
	err = this->findAttribute(kTTSym_activityIn, &anAttribute);
	if (!err)
		anAttribute->sendNotification(kTTSym_notify, mActivityIn);	// we use kTTSym_notify because we know that observers are TTCallback
	
	return kTTErrNone;
}

TTErr TTApplication::setActivityOut(const TTValue& value)
{	
	TTAttributePtr	anAttribute;
	TTErr			err = kTTErrNone;
	
	mActivityOut = value;
	
	err = this->findAttribute(kTTSym_activityOut, &anAttribute);
	if (!err)
		anAttribute->sendNotification(kTTSym_notify, mActivityOut);	// we use kTTSym_notify because we know that observers are TTCallback
	
	return kTTErrNone;
}

TTErr TTApplication::AddDirectoryListener(const TTValue& inputValue, TTValue& outputValue)
{
	TTString			editKey;
	TTSymbol			appToNotify, key;
	TTAddress			whereToListen;
	TTCallbackPtr		returnValueCallback;
	TTValuePtr			returnValueBaton;
	TTValue				cacheElement;
	TTErr				err;
	
	inputValue.get(1, appToNotify);
	inputValue.get(2, whereToListen);
	
	editKey = appToNotify.c_str();
	editKey += "<>";
	editKey	+= whereToListen.c_str();
	key = TT(editKey);
	
	// if this listener doesn't exist yet
	if (mAttributeListenersCache->lookup(key, cacheElement)) {
		
		// prepare a callback based on ProtocolDirectoryCallback
		returnValueCallback = NULL;			// without this, TTObjectInstantiate try to release an oldObject that doesn't exist ... Is it good ?
		TTObjectInstantiate(TTSymbol("callback"), TTObjectHandle(&returnValueCallback), kTTValNONE);
		
		returnValueBaton = new TTValue();
		*returnValueBaton = inputValue;
		
		returnValueCallback->setAttributeValue(kTTSym_baton, TTPtr(returnValueBaton));
		returnValueCallback->setAttributeValue(kTTSym_function, TTPtr(&ProtocolDirectoryCallback));
		
		err = mDirectory->addObserverForNotifications(whereToListen, returnValueCallback, 0); // ask for notification only for equal addresses
		
		if (!err) {
			
			// cache the observer in the directoryListenersCache
			cacheElement.append((TTPtr)returnValueCallback);
			return mDirectoryListenersCache->append(key, cacheElement);
		}
		else
			; // TODO : observe the directory in order to add the listener later
	}
		
	return kTTErrGeneric;
}

TTErr TTApplication::RemoveDirectoryListener(const TTValue& inputValue, TTValue& outputValue)
{
	TTString			editKey;
	TTSymbol			appToNotify, key;
	TTAddress			whereToListen;
	TTCallbackPtr		returnValueCallback;
	TTValue				cacheElement;
	
	inputValue.get(0, appToNotify);
	inputValue.get(1, whereToListen);
	
	editKey = appToNotify.c_str();
	editKey += "<>";
	editKey	+= whereToListen.c_str();
	key = TT(editKey);
	
	// if this listener exists
	if (!mDirectoryListenersCache->lookup(key, cacheElement)) {
	
		cacheElement.get(0, (TTPtr*)&returnValueCallback);
		mDirectory->removeObserverForNotifications(whereToListen, returnValueCallback);
		TTObjectRelease(TTObjectHandle(&returnValueCallback));
		return mDirectoryListenersCache->remove(key);
	}
	
	return kTTErrGeneric;
}

TTErr TTApplication::AddAttributeListener(const TTValue& inputValue, TTValue& outputValue)
{
	TTString			editKey;
	TTSymbol			appToNotify, key;
	TTAddress			whereToListen;
	TTList				aNodeList;
	TTNodePtr			nodeToListen;
	TTObjectPtr			anObject, returnValueCallback;
	TTAttributePtr		anAttribute;
	TTValuePtr			returnValueBaton;
	TTValue				cacheElement;
	TTErr				err;
	
	inputValue.get(1, appToNotify);
	inputValue.get(2, whereToListen);
	
	editKey = appToNotify.c_str();
	editKey += "<>";
	editKey	+= whereToListen.c_str();
	key = TT(editKey);

	// if this listener doesn't exist yet
	if (mAttributeListenersCache->lookup(key, cacheElement)) {
		
		err = mDirectory->Lookup(whereToListen, aNodeList, &nodeToListen);
		
		if (!err) {
			
			for (aNodeList.begin(); aNodeList.end(); aNodeList.next())
			{
				// get a node from the selection
				aNodeList.current().get(0,(TTPtr*)&nodeToListen);
				
				anObject = nodeToListen->getObject();
				if (anObject) {
					
					// create an Attribute observer 
					anAttribute = NULL;
					err = anObject->findAttribute(whereToListen.getAttribute(), &anAttribute);
					
					if (!err) {
						// prepare a callback based on ProtocolAttributeCallback
						returnValueCallback = NULL;			// without this, TTObjectInstantiate try to release an oldObject that doesn't exist ... Is it good ?
						TTObjectInstantiate(TTSymbol("callback"), &returnValueCallback, kTTValNONE);
						
						returnValueBaton = new TTValue();
						*returnValueBaton = inputValue;
						
						returnValueCallback->setAttributeValue(kTTSym_baton, TTPtr(returnValueBaton));
						returnValueCallback->setAttributeValue(kTTSym_function, TTPtr(&ProtocolAttributeCallback));
						
						anAttribute->registerObserverForNotifications(*returnValueCallback);
						
						// cache the listener in the attributeListenersCache
						cacheElement.append((TTPtr)returnValueCallback);
					}
				}
			}
			
			return mAttributeListenersCache->append(key, cacheElement);
		}
		else
			; // TODO : observe the directory in order to add the listener later
	}
	
	return kTTErrGeneric;
}

TTErr TTApplication::RemoveAttributeListener(const TTValue& inputValue, TTValue& outputValue)
{
	TTString			editKey;
	TTSymbol			appToNotify, key;
	TTAddress			whereToListen;
	TTList				aNodeList;
	TTNodePtr			nodeToListen;
	TTObjectPtr			anObject, returnValueCallback;
	TTAttributePtr		anAttribute;
	TTValue				cacheElement;
	TTUInt32			i;
	TTErr				err;
	
	inputValue.get(0, appToNotify);
	inputValue.get(1, whereToListen);
	
	editKey = appToNotify.c_str();
	editKey += "<>";
	editKey	+= whereToListen.c_str();
	key = TT(editKey);

	// if this listener exists
	if (!mAttributeListenersCache->lookup(key, cacheElement)) {
		
		err = mDirectory->Lookup(whereToListen, aNodeList, &nodeToListen);
		
		if (!err) {
			
			i = 0;
			for (aNodeList.begin(); aNodeList.end(); aNodeList.next())
			{
				// get a node from the selection
				aNodeList.current().get(0,(TTPtr*)&nodeToListen);
				
				anObject = nodeToListen->getObject();
				if (anObject) {
					
					// delete Attribute observer 
					anAttribute = NULL;
					err = anObject->findAttribute(whereToListen.getAttribute(), &anAttribute);
					
					if (!err) {
						
						cacheElement.get(i, (TTPtr*)&returnValueCallback);
						anAttribute->unregisterObserverForNotifications(*returnValueCallback);
						TTObjectRelease(TTObjectHandle(&returnValueCallback));
						i++;
					}
				}
			}
			
			return mAttributeListenersCache->remove(key);
		}
	}

	return kTTErrGeneric;
}

TTErr TTApplication::UpdateDirectory(const TTValue& inputValue, TTValue& outputValue)
{
	TTAddress	whereComesFrom;
	TTValuePtr	newValue;
	TTBoolean	enable;
	
	inputValue.get(0, whereComesFrom);
	inputValue.get(1, (TTPtr*)&newValue);
	
	newValue->get(0, enable);
	
	if (enable) {
		// TODO : create Mirror object and register it
		;//mDirectory->TTNodeCreate(whereComesFrom, ...
		
	}
	else {
		;// TODO : unregister the address and destroy the Mirror object
	}
	
	return kTTErrGeneric;
}

TTErr TTApplication::UpdateAttribute(const TTValue& inputValue, TTValue& outputValue)
{
	TTNodePtr			nodeToUpdate;
	TTAddress			whereComesFrom;
	TTValuePtr			newValue;
	TTMirrorPtr			aMirror;
	TTErr				err;
	
	inputValue.get(0, whereComesFrom);
	inputValue.get(1, (TTPtr*)&newValue);
	
	err = mDirectory->getTTNode(whereComesFrom, &nodeToUpdate);
	
	if (!err) {
		
		aMirror = (TTMirrorPtr)nodeToUpdate->getObject();
		if (aMirror)
			if (aMirror->getName() == kTTSym_Mirror)
				return aMirror->updateAttributeValue(whereComesFrom.getAttribute(), *newValue);
	}
	
	return kTTErrGeneric;
}


TTErr TTApplication::getAllAppNames(TTValue& value)
{	
	if (mAppToTT->isEmpty())
		value = kTTSymEmpty;
	else
		mAppToTT->getKeys(value);
	
	return kTTErrNone;
}

TTErr TTApplication::getAllTTNames(TTValue& value)
{	
	if (mTTToApp->isEmpty())
		value = kTTSymEmpty;
	else
		mTTToApp->getKeys(value);
	
	return kTTErrNone;
}

TTErr TTApplication::ConvertToAppName(const TTValue& inputValue, TTValue& outputValue)
{
	TTValue		c;
	TTSymbol	ttName;
	TTSymbol	appName;
	
	// if there is only 1 symbol : replace value directly by the found one.
	// because it's possible to have conversion containing several appNames for 1 ttname
	if (inputValue.getSize() == 1) 
		if (inputValue.getType(0) == kTypeSymbol){
			
			inputValue.get(0, ttName);
			return this->mTTToApp->lookup(ttName, outputValue);
		}
	
	// else convert each symbol of the value.
	// !!! in this case 1 to many conversion is not handled
	for (TTUInt8 i=0; i<inputValue.getSize(); i++)
		if (inputValue.getType(i) == kTypeSymbol) {
			inputValue.get(i, ttName);
			if (!this->mTTToApp->lookup(ttName, c)) {
				c.get(0, appName);
				outputValue.set(i, appName);
			}
		}
	
	return kTTErrNone;
}

TTErr TTApplication::ConvertToTTName(const TTValue& inputValue, TTValue& outputValue)
{
	TTValue		c;
	TTSymbol	appName;
	TTSymbol	ttName;
	
	// if there is only 1 symbol : replace value directly by the founded one.
	// because it's possible to have conversion containing several ttNames for 1 appName
	if (inputValue.getSize() == 1) 
		if (inputValue.getType(0) == kTypeSymbol){
			
			inputValue.get(0, appName);
			return this->mAppToTT->lookup(appName, outputValue);
		}
	
	// else convert each symbol of the value.
	// !!! in this case 1 to many conversion is not handled
	for (TTUInt8 i=0; i<inputValue.getSize(); i++)
		if (inputValue.getType(i) == kTypeSymbol) {
			inputValue.get(i, appName);
			if (!this->mAppToTT->lookup(appName, c)) {
				c.get(0, ttName);
				outputValue.set(i, ttName);
			}
		}
	
	return kTTErrNone;
}


TTErr TTApplication::WriteAsXml(const TTValue& inputValue, TTValue& outputValue)
{
	TTXmlHandlerPtr		aXmlHandler;
	TTSymbol			protocolName, parameterName;
	TTString			aString;
	TTHashPtr			parameters;
    TTValue				keys, p_keys, v, protocolNames;
	
	inputValue.get(0, (TTPtr*)&aXmlHandler);
	
	// For each protocol
	protocolNames = getApplicationProtocols(mName);
	for (TTUInt16 i=0; i<protocolNames.getSize(); i++) {
		
		protocolNames.get(i, protocolName);
		getProtocol(protocolName)->getAttributeValue(TTSymbol("applicationParameters"), v);
		v.get(0, (TTPtr*)&parameters);
		
		// Start "protocol" xml node
		xmlTextWriterStartElement(aXmlHandler->mWriter, BAD_CAST "protocol");
		xmlTextWriterWriteFormatAttribute(aXmlHandler->mWriter, BAD_CAST "name", "%s", BAD_CAST protocolName.c_str());
		
		// For each parameter
		parameters->getKeys(p_keys);
		for (TTUInt16 j=0; j<p_keys.getSize(); j++) {
			p_keys.get(j, parameterName);
			parameters->lookup(parameterName, v);
			v.toString();
			v.get(0, aString);
			xmlTextWriterWriteFormatAttribute(aXmlHandler->mWriter, BAD_CAST parameterName.c_str(), "%s", BAD_CAST aString.data());
		}
		
		// End "protocol" xml node
		xmlTextWriterEndElement(aXmlHandler->mWriter);
	}
	
	
	/* to -- do we need to write the Application name table ?
	 TTSymbolPtr			k;
	 TTString			aString;
	 TTValue				v, keys;
	 TTUInt16			i;
	 
	 // Write ApplicationNames table
	 xmlTextWriterWriteComment(aXmlHandler->mWriter, BAD_CAST "Conversion table");
	 xmlTextWriterStartElement(aXmlHandler->mWriter, BAD_CAST "conversionTable");
	 
	 mAppToTT->getKeys(keys);
	 for (i = 0; i < keys.getSize(); i++) {
	 
	 keys.get(i, &k);
	 mAppToTT->lookup(k, v);
	 
	 // Don't write kTTValNONE
	 if (v == kTTValNONE)
	 continue;
	 
	 v.toString();
	 v.get(0, aString);
	 
	 xmlTextWriterStartElement(aXmlHandler->mWriter, BAD_CAST "entry");
	 xmlTextWriterWriteAttribute(aXmlHandler->mWriter, BAD_CAST "App", BAD_CAST k->getCString());
	 xmlTextWriterWriteAttribute(aXmlHandler->mWriter, BAD_CAST "TT", BAD_CAST aString.data());
	 xmlTextWriterEndElement(aXmlHandler->mWriter);
	 }
	 
	 // End ApplicationNames writing
	 xmlTextWriterEndElement(aXmlHandler->mWriter);
	 */
	
	return kTTErrNone;
}

TTErr TTApplication::ReadFromXml(const TTValue& inputValue, TTValue& outputValue)
{
	TTXmlHandlerPtr	aXmlHandler = NULL;	
	TTString		anAppKey, aTTKey;
	TTHashPtr		parameters;
	TTSymbol		protocolName, parameterName;
	TTValue			appValue, ttValue, v, nameValue, parameterValue;
	
	inputValue.get(0, (TTPtr*)&aXmlHandler);
	if (!aXmlHandler)
		return kTTErrGeneric;
	
	// Switch on the name of the XML node
	
	// Starts reading
	if (aXmlHandler->mXmlNodeName == kTTSym_start) {
		mAppToTT = new TTHash();
		mNamespaceFile = kTTSymEmpty;
		return kTTErrNone;
	}
	
	// Ends reading
	if (aXmlHandler->mXmlNodeName == kTTSym_stop)
		return kTTErrNone;
	
	// Comment Node
	if (aXmlHandler->mXmlNodeName == kTTSym_comment)
		return kTTErrNone;
	
	// Entry node
	if (aXmlHandler->mXmlNodeName == TTSymbol("entry")) {
	
		// get App Symbol
		if (xmlTextReaderMoveToAttribute(aXmlHandler->mReader, BAD_CAST "App") == 1) {
			aXmlHandler->fromXmlChar(xmlTextReaderValue(aXmlHandler->mReader), appValue);
			v = appValue;
			v.toString();
			v.get(0, anAppKey);
		}
		
		// get TT Value
		if (xmlTextReaderMoveToAttribute(aXmlHandler->mReader, BAD_CAST "TT") == 1) {
			aXmlHandler->fromXmlChar(xmlTextReaderValue(aXmlHandler->mReader), ttValue);
			v = ttValue;
			v.toString();
			v.get(0, aTTKey);
		}
		
		mAppToTT->append(TT(anAppKey), ttValue);		// here we register the entire value to handle 1 to many conversion
		mTTToApp->append(TT(aTTKey), appValue);			// here we register the entire value to handle 1 to many conversion
	}
	
	// Protocol node
	if (aXmlHandler->mXmlNodeName == TTSymbol("protocol")) {
		
		// get the protocol name
		xmlTextReaderMoveToAttribute(aXmlHandler->mReader, (const xmlChar*)("name"));
		aXmlHandler->fromXmlChar(xmlTextReaderValue(aXmlHandler->mReader), v);
		if (v.getType() == kTypeSymbol) {
			v.get(0, protocolName);
		}
		
		// Check if the protocol have been loaded
		if (!getProtocol(protocolName))
			return kTTErrGeneric;
		
		// register the application to the protocol
		nameValue = TTValue(mName);
		getProtocol(protocolName)->sendMessage(TTSymbol("registerApplication"), nameValue, kTTValNONE);
		
		// get all protocol attributes and their value
		parameters = new TTHash();
		while (xmlTextReaderMoveToNextAttribute(aXmlHandler->mReader) == 1) {
			
			// get parameter name
			aXmlHandler->fromXmlChar(xmlTextReaderName(aXmlHandler->mReader), v);
			if (v.getType() == kTypeSymbol) {
				v.get(0, parameterName);
				
				// get parameter value
				aXmlHandler->fromXmlChar(xmlTextReaderValue(aXmlHandler->mReader), parameterValue);
				
				parameters->append(parameterName, parameterValue);
			}
		}
		
		// configure the protocol parameters for this application
		v = TTValue(mName);
		v.append((TTPtr)parameters);
		getProtocol(protocolName)->setAttributeValue(TTSymbol("applicationParameters"), v);
	}
	
	// Namespace node 
	if (aXmlHandler->mXmlNodeName == TTSymbol("namespace")) {
		
		// note : don't load namespace for local application in order 
		// to use the same configuration file for local and distant application
		// (the local application namespace could be loaded using mNamespaceFile attribute)
		if (mName != getLocalApplicationName) {
			
			// get the file path
			xmlTextReaderMoveToAttribute(aXmlHandler->mReader, (const xmlChar*)("file"));
			aXmlHandler->fromXmlChar(xmlTextReaderValue(aXmlHandler->mReader), v);
			if (v.getType() == kTypeSymbol)
				v.get(0, mNamespaceFile);
		}
	}
	
	// load namespace file if one is given and there is a protocol
	if (mNamespaceFile != kTTSymEmpty && getApplicationProtocols(mName).getSize()) {
		
		TTOpmlHandlerPtr	aOpmlHandler = NULL;
		TTValue				args, o;
		TTObjectInstantiate(kTTSym_OpmlHandler, TTObjectHandle(&aOpmlHandler), args);
		o = TTValue(TTPtr(this));
		aOpmlHandler->setAttributeValue(kTTSym_object, o);
		aOpmlHandler->sendMessage(TTSymbol("Read"), v, kTTValNONE);
		TTObjectRelease(TTObjectHandle(&aOpmlHandler));
	}
	
	return kTTErrNone;
}

TTErr TTApplication::ReadFromOpml(const TTValue& inputValue, TTValue& outputValue)
{
	TTOpmlHandlerPtr	aOpmlHandler = NULL;	
	TTSymbol			nodeNameInstance, objectName, attributeName, protocolName;
	TTAddress	absoluteAddress;
	TTMirrorPtr			aMirror;
	TTNodePtr			aNode;
	TTBoolean			empty, newInstanceCreated;
	TTObjectPtr			getAttributeCallback, setAttributeCallback, sendMessageCallback, listenAttributeCallback;
	TTValuePtr			getAttributeBaton, setAttributeBaton, sendMessageBaton, listenAttributeBaton;
	ProtocolPtr			aProtocol;
	TTValue				v, args, protocolNames;
	
	inputValue.get(0, (TTPtr*)&aOpmlHandler);
	if (!aOpmlHandler)
		return kTTErrGeneric;
	
	// Switch on the name of the XML node
	
	// Starts reading
	if (aOpmlHandler->mXmlNodeName == TTSymbol("start")) {
		
		mDirectory->init();
		mTempAddress = kTTAdrsEmpty;
		
		return kTTErrNone;
	}
	
	// Ends reading
	if (aOpmlHandler->mXmlNodeName == TTSymbol("end"))
		return kTTErrNone;
	
	// Text Node
	if (aOpmlHandler->mXmlNodeName == TTSymbol("#text"))
		return kTTErrNone;
	
	// Outline node
	if (aOpmlHandler->mXmlNodeName == TTSymbol("outline")) {
		
		empty = (TTBoolean)xmlTextReaderIsEmptyElement(aOpmlHandler->mReader);
		
		// get the relative address
		xmlTextReaderMoveToAttribute(aOpmlHandler->mReader, (const xmlChar*)("text"));
		aOpmlHandler->fromXmlChar(xmlTextReaderValue(aOpmlHandler->mReader), v, YES);
		if (v.getType() == kTypeSymbol) {
			v.get(0, nodeNameInstance);
		}
		
		// Is it the beginning of a new node or the end of one ?
		if (mTempAddress.getNameInstance() != nodeNameInstance) {
			
			absoluteAddress = mTempAddress.appendAddress(TTAddress(nodeNameInstance.c_str()));
			
			// get the object name
			if (xmlTextReaderMoveToAttribute(aOpmlHandler->mReader, (const xmlChar*)("object")) == 1) {
				aOpmlHandler->fromXmlChar(xmlTextReaderValue(aOpmlHandler->mReader), v);
				
				if (v.getType() == kTypeSymbol) {
					v.get(0, objectName);
					
					// a distant application should have one protocol
					protocolNames = getApplicationProtocols(mName);
					protocolNames.get(0, protocolName);
					
					aProtocol = (ProtocolPtr)getProtocol(protocolName);
					if (aProtocol) {
						
						// instantiate Mirror object for distant application
						aMirror = NULL;
						args = TTValue(objectName);
						
						getAttributeCallback = NULL;
						TTObjectInstantiate(TTSymbol("callback"), &getAttributeCallback, kTTValNONE);
						getAttributeBaton = new TTValue(TTPtr(aProtocol));
						getAttributeBaton->append(mName);
						getAttributeBaton->append(absoluteAddress);
						getAttributeCallback->setAttributeValue(kTTSym_baton, TTPtr(getAttributeBaton));
						getAttributeCallback->setAttributeValue(kTTSym_function, TTPtr(&ProtocolGetAttributeCallback));
						args.append(getAttributeCallback);
						
						setAttributeCallback = NULL;
						TTObjectInstantiate(TTSymbol("callback"), &setAttributeCallback, kTTValNONE);
						setAttributeBaton = new TTValue(TTPtr(aProtocol));
						setAttributeBaton->append(mName);
						setAttributeBaton->append(absoluteAddress);
						setAttributeCallback->setAttributeValue(kTTSym_baton, TTPtr(setAttributeBaton));
						setAttributeCallback->setAttributeValue(kTTSym_function, TTPtr(&ProtocolSetAttributeCallback));
						args.append(setAttributeCallback);
						
						sendMessageCallback = NULL;
						TTObjectInstantiate(TTSymbol("callback"), &sendMessageCallback, kTTValNONE);
						sendMessageBaton = new TTValue(TTPtr(aProtocol));
						sendMessageBaton->append(mName);
						sendMessageBaton->append(absoluteAddress);
						sendMessageCallback->setAttributeValue(kTTSym_baton, TTPtr(sendMessageBaton));
						sendMessageCallback->setAttributeValue(kTTSym_function, TTPtr(&ProtocolSendMessageCallback));
						args.append(sendMessageCallback);
						
						listenAttributeCallback = NULL;
						TTObjectInstantiate(TTSymbol("callback"), &listenAttributeCallback, kTTValNONE);
						listenAttributeBaton = new TTValue(TTPtr(aProtocol));
						listenAttributeBaton->append(mName);
						listenAttributeBaton->append(absoluteAddress);
						listenAttributeCallback->setAttributeValue(kTTSym_baton, TTPtr(listenAttributeBaton));
						listenAttributeCallback->setAttributeValue(kTTSym_function, TTPtr(&ProtocolListenAttributeCallback));
						args.append(listenAttributeCallback);
						
						TTObjectInstantiate(kTTSym_Mirror, TTObjectHandle(&aMirror), args);
						
						// register object into the directory
						this->mDirectory->TTNodeCreate(absoluteAddress, (TTObjectPtr)aMirror, NULL,  &aNode, &newInstanceCreated);
						
						// ?? to -- is it usefull to set attribute value ?
						// yes : in modul8 case for example...
						// so it depends of the protocol features : isGetRequestAllowed ?
						
						/*
						// get all object attributes and their value
						while (xmlTextReaderMoveToNextAttribute(aOpmlHandler->mReader) == 1) {
							
							// get attribute name
							aOpmlHandler->fromXmlChar(xmlTextReaderName(aOpmlHandler->mReader), v);
							if (v.getType() == kTypeSymbol) {
								v.get(0, &attributeName);
								
								// get attribute value
								aOpmlHandler->fromXmlChar(xmlTextReaderValue(aOpmlHandler->mReader), v);
								

								// aMirror->setAttributeValue(attributeName, v);
							}
						}
						 */
					}
				}
			}
			
			// if there are other nodes below :
			// keep absolute address for next nodes
			if (!empty)
				mTempAddress = absoluteAddress;
		}
		// when a node ends : 
		// keep the parent address for next nodes
		else
			mTempAddress = mTempAddress.getParent();
			
	}
	
	return kTTErrNone;
}

#if 0
#pragma mark -
#pragma mark Some Methods
#endif

TTNodeDirectoryPtr TTApplicationGetDirectory(TTAddress anAddress)
{
	TTSymbol			applicationName;
	TTApplicationPtr	anApplication;
	
	if (TTModularApplications && anAddress != kTTAdrsEmpty) {
		
		applicationName = anAddress.getDirectory();
		
		if (applicationName != NO_DIRECTORY)
			anApplication = TTApplicationManagerGetApplication(applicationName);
		else
			anApplication = getLocalApplication;
		
		if (anApplication)
			return anApplication->mDirectory;
	}
	
	return NULL;
}

TTSymbol TTApplicationConvertAppNameToTTName(TTSymbol anAppName)
{
	TTErr		err;
	TTValue		c;
	TTSymbol	converted = anAppName;
	
	if (TTModularApplications) {
		
		err = getLocalApplication->mAppToTT->lookup(anAppName, c);
		
		if (!err)
			c.get(0, converted);
		
	}
	
	return converted;
}

TTSymbol TTApplicationConvertTTNameToAppName(TTSymbol aTTName)
{
	TTErr		err;
	TTValue		c;
	TTSymbol	converted = kTTSymEmpty;
	
	if (TTModularApplications) {
		
		err = getLocalApplication->mTTToApp->lookup(aTTName, c);
		
		if (!err)
			c.get(0, converted);
		
	}
	
	return converted;
}