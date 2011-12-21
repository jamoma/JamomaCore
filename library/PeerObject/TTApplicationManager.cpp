/* 
 * An Application Manager Object
 * Copyright © 2010, Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTApplicationManager.h"
#include "Protocol.h"

#define thisTTClass			TTApplicationManager
#define thisTTClassName		"ApplicationManager"
#define thisTTClassTags		"application, manager"

TT_MODULAR_CONSTRUCTOR,
mApplications(NULL),
mApplicationNames(kTTValNONE),
mProtocolNames(kTTValNONE),
mCurrentApplication(NULL),
mApplicationObservers(NULL),
mApplicationObserversMutex(NULL)
{		
	addAttribute(Applications, kTypePointer);
	addAttributeProperty(Applications, readOnly, YES);
	addAttributeProperty(Applications, hidden, YES);
	
	addAttributeWithGetter(ApplicationNames, kTypeLocalValue);
	addAttributeProperty(ApplicationNames, readOnly, YES);
	
	registerAttribute(TT("localApplicationName"), kTypeSymbol, kTTSym_localApplicationName, (TTGetterMethod)& TTApplicationManager::getLocalApplicationName, (TTSetterMethod)& TTApplicationManager::setLocalApplicationName);
	
	addAttributeWithGetter(ProtocolNames, kTypeLocalValue);
	addAttributeProperty(ProtocolNames, readOnly, YES);
	
	addMessageWithArguments(ApplicationAdd);
	addMessageWithArguments(ApplicationRemove);
	
	addMessageWithArguments(ApplicationDiscover);
	addMessageProperty(ApplicationDiscover, hidden, YES);
	
	addMessageWithArguments(ApplicationGet);
	addMessageProperty(ApplicationGet, hidden, YES);
	
	addMessageWithArguments(ApplicationSet);
	addMessageProperty(ApplicationSet, hidden, YES);
	
	addMessageWithArguments(ApplicationListen);
	addMessageProperty(ApplicationListen, hidden, YES);
	
	addMessageWithArguments(ApplicationListenAnswer);
	addMessageProperty(ApplicationListenAnswer, hidden, YES);
	
	addMessageWithArguments(ProtocolScan);
	addMessageWithArguments(ProtocolRun);
	addMessageWithArguments(ProtocolStop);
	
	// needed to be handled by a TTXmlHandler
	addMessageWithArguments(WriteAsXml);
	addMessageProperty(WriteAsXml, hidden, YES);
	
	addMessageWithArguments(ReadFromXml);
	addMessageProperty(ReadFromXml, hidden, YES);
	
	mApplications = new TTHash();
	mProtocols = new TTHash();
	
	// create a ApplicationObservers table and protect it from multithreading access
	// why ? because observers could disappear when they know an application is destroyed
	mApplicationObservers = new TTHash();
	mApplicationObservers->setThreadProtection(true);
	mApplicationObserversMutex = new TTMutex(true);
	
	// Instantiate all existing protocols (all ready loaded by Foundation framework)
	TTValue protocolNames;
	ProtocolLib::getProtocolNames(protocolNames);
	if (protocolNames.getSize()) {
		
		TTSymbolPtr protocolName = NULL;
		ProtocolPtr	aProtocolObject = NULL;
		TTValue		args;
		TTErr		err;
		
		// for each protocol name
		for (TTUInt32 i=0; i<protocolNames.getSize(); i++) {
			
			protocolNames.get(i, &protocolName);
			
			// create an instance of a Protocol object
			err = ProtocolLib::createProtocol(protocolName, &aProtocolObject, (TTObjectPtr)this);
			
			if (!err) {
				// add it to Modular protocols table
				args = TTValue((TTPtr)aProtocolObject);
				mProtocols->append(protocolName, args);
				
				TTLogDebug("%s protocol loaded", protocolName->getCString());
			}
			else
				TTLogDebug("%s protocol can't be loaded ", protocolName->getCString());
				
		}
	}
}

TTApplicationManager::~TTApplicationManager()
{
	TTValue				v, allProtocolNames;
	TTSymbolPtr			protocolName;
	ProtocolPtr	aProtocol;
	TTErr				err;
	
	delete mApplications;
	
	// destroy each protocol
	mProtocols->getKeys(allProtocolNames);
	for (TTUInt16 i=0; i<allProtocolNames.getSize(); i++) {
		
		allProtocolNames.get(i, &protocolName);
		err = mProtocols->lookup(protocolName, v);
		
		if (!err) {
			v.get(0, (TTPtr*)&aProtocol);
			TTObjectRelease(TTObjectHandle(&aProtocol));
		}
	}
}

TTErr TTApplicationManager::getApplicationNames(TTValue& value)
{
	return mApplications->getKeys(value);
}

TTErr TTApplicationManager::getLocalApplicationName(TTValue& value)
{
	value = kTTSym_localApplicationName;
	return kTTErrNone;
}

TTErr TTApplicationManager::setLocalApplicationName(TTValue& value)
{
	TTValue				v;
	TTApplicationPtr	localApplication = NULL;
	TTErr				err;
	
	// get the local application
	err = mApplications->lookup(kTTSym_localApplicationName, v);
	
	// if the local application exists
	// rename it and remove it
	if (!err) {
		v.get(0, (TTPtr*)&localApplication);
		localApplication->setAttributeValue(kTTSym_name, value);
		mApplications->remove(kTTSym_localApplicationName);
	}
	
	// in any case change localApplicacationName
	kTTSym_localApplicationName = value;
	
	// if the local application exists
	// register it to using the new name
	if (!err)
		mApplications->append(kTTSym_localApplicationName, v);
	
	return kTTErrNone;
}

TTErr TTApplicationManager::getProtocolNames(TTValue& value)
{
	return mProtocols->getKeys(value);
}

TTErr TTApplicationManager::ApplicationAdd(const TTValue& inputValue, TTValue& outputValue)
{
	TTValue				v, args, allProtocolNames;
	TTSymbolPtr			applicationName;
	TTApplicationPtr	anApplication;
	
	inputValue.get(0, &applicationName);
	
	// if no given application, instantiate it
	if (inputValue.getSize() == 2)
		inputValue.get(1, (TTPtr*) &anApplication);
	else {
		anApplication = NULL;
		args.append(applicationName);
		args.append(TT("unknown version"));
		TTObjectInstantiate(TT("Application"), TTObjectHandle(&anApplication), args);
	}
	
	// add application to the manager
	mApplications->append(applicationName, (TTPtr)anApplication);
	
	// TODO : notify distant application creation observers
	if (applicationName != kTTSym_localApplicationName)
		;
	
	// notify applications observer that an application has been added
	notifyApplicationObservers(applicationName, anApplication, kApplicationAdded);
	
	return kTTErrNone;
}

TTErr TTApplicationManager::ApplicationRemove(const TTValue& inputValue, TTValue& outputValue)
{	
	TTValue				v;
	TTSymbolPtr			applicationName;
	TTApplicationPtr	anApplication;
	TTErr				err;

	inputValue.get(0, &applicationName);
	
	err = mApplications->lookup(applicationName, v);
	
	if (!err) {
		v.get(0, (TTPtr*)&anApplication);
		
		// notify applications observer that an application will be removed
		notifyApplicationObservers(applicationName, anApplication, kApplicationAdded);
		
		mApplications->remove(applicationName);
		return TTObjectRelease(TTObjectHandle(&anApplication));
	}
	
	return kTTErrGeneric;
}

TTErr TTApplicationManager::ProtocolScan(const TTValue& inputValue, TTValue& outputValue)
{
	TTValue v, allProtocolNames;
	TTSymbolPtr protocolName;
	ProtocolPtr aProtocol;
	TTErr				err;
	
	// if no name do it for all protocol
	if (inputValue.getSize()) {
		
		inputValue.get(0, &protocolName);
		
		if (!mProtocols->lookup(protocolName, v)) {
			v.get(0, (TTPtr*)&aProtocol);
			aProtocol->sendMessage(TT("Scan"));
		}
	}
	else {
		// Scan each protocol
		mProtocols->getKeys(allProtocolNames);
		for (TTUInt16 i=0; i<allProtocolNames.getSize(); i++) {
			
			allProtocolNames.get(i, &protocolName);
			err = mProtocols->lookup(protocolName, v);
			
			if (!err) {
				v.get(0, (TTPtr*)&aProtocol);
				aProtocol->sendMessage(TT("Scan"));
			}
		}
	}
	
	return kTTErrNone;
}

TTErr TTApplicationManager::ProtocolRun(const TTValue& inputValue, TTValue& outputValue)
{
	TTValue				v, allProtocolNames, allApplicationNames;
	TTSymbolPtr			protocolName, applicationName, appProtocolName;
	ProtocolPtr	aProtocol;
	TTApplicationPtr	anApplication;
	TTErr				err;
	
	// if no name do it for all protocol
	if (inputValue.getSize()) {
		
		inputValue.get(0, &protocolName);
		
		if (!mProtocols->lookup(protocolName, v)) {
			v.get(0, (TTPtr*)&aProtocol);
			aProtocol->sendMessage(TT("Run"));
		}
	}
	else {
		
		// Run each protocol
		mProtocols->getKeys(allProtocolNames);
		for (TTUInt16 i=0; i<allProtocolNames.getSize(); i++) {
			
			allProtocolNames.get(i, &protocolName);
			this->ProtocolRun(protocolName, kTTValNONE);
		}
		
		return kTTErrNone;
	}
	
	// notify application obervers for application that use this protocol
	mApplications->getKeys(allApplicationNames);
	for (TTUInt16 j=0; j<allApplicationNames.getSize(); j++) {
		
		allApplicationNames.get(j, &applicationName);
		
		if (applicationName != kTTSym_localApplicationName) {
			err = mApplications->lookup(applicationName, v);
			
			if (!err) {
				v.get(0, (TTPtr*)&anApplication);
				
				anApplication->getAttributeValue(TT("protocolNames"), v); 
				v.get(0, &appProtocolName);
				
				if (appProtocolName == protocolName)
					notifyApplicationObservers(applicationName, anApplication, kApplicationProtocolStarted);
			}
		}
	}
	
	return kTTErrNone;
}

TTErr TTApplicationManager::ProtocolStop(const TTValue& inputValue, TTValue& outputValue)
{
	TTValue				v, allProtocolNames, allApplicationNames;
	TTSymbolPtr			protocolName, applicationName, appProtocolName;
	ProtocolPtr			aProtocol;
	TTApplicationPtr	anApplication;
	TTErr				err;
	
	// if no name do it for all protocol
	if (inputValue.getSize()) {
		
		inputValue.get(0, &protocolName);
		
		if (!mProtocols->lookup(protocolName, v)) {
			v.get(0, (TTPtr*)&aProtocol);
			aProtocol->sendMessage(TT("Stop"));
		}
	}
	else {
		
		// Stop each protocol
		mProtocols->getKeys(allProtocolNames);
		for (TTUInt16 i=0; i<allProtocolNames.getSize(); i++) {
			
			allProtocolNames.get(i, &protocolName);
			this->ProtocolStop(protocolName, kTTValNONE);
		}
		
		return kTTErrNone;
	}
	
	// notify application obervers for application that use this protocol
	mApplications->getKeys(allApplicationNames);
	for (TTUInt16 j=0; j<allApplicationNames.getSize(); j++) {
		
		allApplicationNames.get(j, &applicationName);
		
		if (applicationName != kTTSym_localApplicationName) {
			err = mApplications->lookup(applicationName, v);
			
			if (!err) {
				v.get(0, (TTPtr*)&anApplication);
				
				anApplication->getAttributeValue(TT("protocolNames"), v); 
				v.get(0, &appProtocolName);
				
				if (appProtocolName == protocolName)
					notifyApplicationObservers(applicationName, anApplication, kApplicationProtocolStopped);
			}
		}
	}

	return kTTErrNone;
}

TTErr TTApplicationManager::ApplicationDiscover(const TTValue& inputValue, TTValue& outputValue)
{
	TTNodeDirectoryPtr	directory;
	TTNodeAddressPtr	whereToDiscover;
	TTValuePtr			returnedChildrenNames;
	TTValuePtr			returnedChildrenTypes;
	TTValuePtr			returnedAttributes;
	
	inputValue.get(0, &whereToDiscover);
	
	outputValue.get(0, (TTPtr*)&returnedChildrenNames);
	outputValue.get(1, (TTPtr*)&returnedChildrenTypes);
	outputValue.get(2, (TTPtr*)&returnedAttributes);
	
	TTLogDebug("TTApplicationManager::Discover");
	
	TTList				nodeList, childList;
	TTNodePtr			firstNode, aNode;
	TTNodeAddressPtr	nodeAddress;
	TTSymbolPtr			objectType;
	TTObjectPtr			anObject;
	TTErr				err;
	
	directory = getDirectoryFrom(whereToDiscover);
	if (!directory)
		return kTTErrGeneric;
	
	err = directory->Lookup(whereToDiscover, nodeList, &firstNode);
	
	if (!err) {
		
		firstNode->getChildren(S_WILDCARD, S_WILDCARD, childList);
		
		// fill returned attributes
		if (anObject = firstNode->getObject())
			anObject->getAttributeNames(*returnedAttributes);
		
		// fill returned children names and types value
		for (childList.begin(); childList.end(); childList.next()) {
			
			// get the returned node
			childList.current().get(0, (TTPtr*)&aNode);
			
			// get the relative address
			aNode->getAddress(&nodeAddress, whereToDiscover);
			returnedChildrenNames->append(nodeAddress);
			
			// add the type of each refered object
			if (anObject = aNode->getObject()) {
				objectType = anObject->getName();
				
				if (objectType != kTTSymEmpty)
					returnedChildrenTypes->append(objectType);
				else
					returnedChildrenTypes->append(kTTSym_none);
			}
			else
				returnedChildrenTypes->append(kTTSym_none);
		}
		
		return kTTErrNone;
	} 
	
	return kTTErrGeneric;
}

TTErr TTApplicationManager::ApplicationGet(const TTValue& inputValue, TTValue& outputValue)
{
	TTNodeDirectoryPtr	directory;
	TTNodeAddressPtr	whereToGet;
	
	inputValue.get(0, &whereToGet);
	
	TTLogDebug("TTApplicationManager::Get");
	
	TTNodePtr			nodeToGet;
	TTObjectPtr			anObject;
	TTErr				err;
	
	directory = getDirectoryFrom(whereToGet);
	if (!directory)
		return kTTErrGeneric;
	
	// can't allow to use wilcards here because one value is returned
	err = directory->getTTNode(whereToGet, &nodeToGet);
	
	if (!err)
		if (anObject = nodeToGet->getObject())
			return anObject->getAttributeValue(whereToGet->getAttribute(), outputValue);

	return kTTErrGeneric;
}

TTErr TTApplicationManager::ApplicationSet(const TTValue& inputValue, TTValue& outputValue)
{
	TTNodeDirectoryPtr	directory;
	TTNodeAddressPtr	whereToSet;
	TTValuePtr			newValue;
	
	inputValue.get(0, &whereToSet);
	inputValue.get(1, (TTPtr*)&newValue);
	
	TTLogDebug("TTApplicationManager::Set");
	
	TTList				aNodeList;
	TTNodePtr			nodeToSet;
	TTSymbolPtr			objectType;
	TTObjectPtr			anObject;
	TTErr				err;
	
	directory = getDirectoryFrom(whereToSet);
	if (!directory)
		return kTTErrGeneric;
	
	// allow to use wilcards
	err = directory->Lookup(whereToSet, aNodeList, &nodeToSet);
	
	if (!err) {
		
		for (aNodeList.begin(); aNodeList.end(); aNodeList.next())
		{
			// get a node from the selection
			aNodeList.current().get(0,(TTPtr*)&nodeToSet);
			
			anObject = nodeToSet->getObject();
			objectType = anObject->getName();
			
			// TTData case : for value attribute use Command message
			if (objectType == TT("Data")) {
				
				if (whereToSet->getAttribute() == kTTSym_value)
					anObject->sendMessage(kTTSym_Command, *newValue, kTTValNONE);
				else
					return anObject->setAttributeValue(whereToSet->getAttribute(), *newValue);
			}
			else 
				return anObject->setAttributeValue(whereToSet->getAttribute(), *newValue);
		}
	}
	
	return kTTErrGeneric; // TODO : return an error notification
}

TTErr TTApplicationManager::ApplicationListen(const TTValue& inputValue, TTValue& outputValue)
{
	TTNodeAddressPtr	whereToListen;
	TTSymbolPtr			appToNotify, protocolName;
	TTBoolean			enableListening;
	
	inputValue.get(0, &protocolName);
	inputValue.get(1, &appToNotify);
	inputValue.get(2, &whereToListen);
	inputValue.get(3, enableListening);
	
	TTLogDebug("TTApplicationManager::Listen");
	
	TTApplicationPtr	appWhereToListen;
	ProtocolPtr			aProtocol;
	TTValue				v, args;
	TTErr				err;
	
	appWhereToListen = getApplicationFrom(whereToListen);
	err = mProtocols->lookup(protocolName, v);
	
	if (!err && appWhereToListen) 
	{
		v.get(0, (TTPtr*)&aProtocol);
		
		// add observer
		if (enableListening) {
			
			args.append((TTPtr)aProtocol);
			args.append(appToNotify);
			args.append(whereToListen);
			
			// start directory listening
			if (whereToListen->getAttribute() == TT("life")) // TODO : find a better name
				return appWhereToListen->sendMessage(TT("AddDirectoryListener"), args, kTTValNONE);
	
			// start attribute listening
			else 
				return appWhereToListen->sendMessage(TT("AddAttributeListener"), args, kTTValNONE);
		}
		// remove listener
		else {
			
			args.append(appToNotify);
			args.append(whereToListen);
			
			// stop directory listening
			if (whereToListen->getAttribute() == TT("life")) // TODO : find a better name
				return appWhereToListen->sendMessage(TT("RemoveDirectoryListener"), args, kTTValNONE);

			// stop attribute listening
			else
				return appWhereToListen->sendMessage(TT("RemoveAttributeListener"), args, kTTValNONE);
		}
	}	

	return kTTErrGeneric;
}

TTErr TTApplicationManager::ApplicationListenAnswer(const TTValue& inputValue, TTValue& outputValue)
{
	TTSymbolPtr			appAnswering;
	TTNodeAddressPtr	whereComesFrom;
	TTValuePtr			newValue;
	TTValue				args;
	
	inputValue.get(0, &appAnswering);
	inputValue.get(1, &whereComesFrom);
	inputValue.get(2, (TTPtr*)&newValue);
	
	TTLogDebug("TTApplicationManager::ListenAnswer");
	
	args.append(whereComesFrom);
	args.append((TTPtr)newValue);
	
	// notify directory updates
	if (whereComesFrom->getAttribute() == TT("life")) // TODO : find a better name
		return getApplication(appAnswering)->sendMessage(TT("UpdateDirectory"), args, kTTValNONE);
	
	// notify attribute updates
	else 
		return getApplication(appAnswering)->sendMessage(TT("UpdateAttribute"), args, kTTValNONE);
	
	return kTTErrGeneric;	
}

TTErr TTApplicationManager::WriteAsXml(const TTValue& inputValue, TTValue& outputValue)
{
	TTXmlHandlerPtr		aXmlHandler;
	TTSymbolPtr			applicationName, version;
	TTApplicationPtr	anApplication;
    TTValue				keys, v;
	
	inputValue.get(0, (TTPtr*)&aXmlHandler);
	
    xmlTextWriterWriteComment(aXmlHandler->mWriter, BAD_CAST "TODO : a TTApplication Manager comment");
	
	// For each application
	mApplications->getKeys(keys);
	for (TTUInt16 i=0; i<keys.getSize(); i++) {
		
		keys.get(i, &applicationName);
		mApplications->lookup(applicationName, v);
		v.get(0, (TTPtr*)&anApplication);
		
		// Start "application" xml node
		xmlTextWriterStartElement(aXmlHandler->mWriter, BAD_CAST "application");
		xmlTextWriterWriteFormatAttribute(aXmlHandler->mWriter, BAD_CAST "name", "%s", BAD_CAST applicationName->getCString());
		
		anApplication->getAttributeValue(TT("version"), v);
		v.get(0, &version);
		xmlTextWriterWriteFormatAttribute(aXmlHandler->mWriter, BAD_CAST "version", "%s", BAD_CAST version->getCString());
		
		v = TTValue(TTPtr(anApplication));
		aXmlHandler->setAttributeValue(kTTSym_object, v);
		aXmlHandler->sendMessage(TT("Write"));
		
		// End "application" xml node
		xmlTextWriterEndElement(aXmlHandler->mWriter);
	}
	
	return kTTErrNone;
}

TTErr TTApplicationManager::ReadFromXml(const TTValue& inputValue, TTValue& outputValue)
{
	TTXmlHandlerPtr		aXmlHandler = NULL;	
	TTSymbolPtr			applicationName, currentApplicationName, version;
	TTApplicationPtr	anApplication;
	TTValue				v, args, allAppNames;
	TTErr				err;
	
	inputValue.get(0, (TTPtr*)&aXmlHandler);
	if (!aXmlHandler)
		return kTTErrGeneric;
	
	// switch on the name of the XML node
	
	// starts reading
	if (aXmlHandler->mXmlNodeName == TT("start")) {
		
		mCurrentApplication = NULL;
		
		// stop protocol reception threads
		ProtocolStop(v, kTTValNONE);
		
		// remove all applications except the local one
		mApplications->getKeys(allAppNames);
		for (TTUInt16 i=0; i<allAppNames.getSize(); i++) {
			
			allAppNames.get(i, &applicationName);
			err = mApplications->lookup(applicationName, v);
			
			if (!err && applicationName != kTTSym_localApplicationName) {
				v.get(0, (TTPtr*)&anApplication);
				TTObjectRelease(TTObjectHandle(&anApplication));
				mApplications->remove(applicationName);
			}
		}
		
		return kTTErrNone;
	}
	
	// ends reading
	if (aXmlHandler->mXmlNodeName == TT("end")) {
		
		// start protocol reception threads
		ProtocolRun(v, kTTValNONE);
		
		return kTTErrNone;
	}
	
	// comment node
	if (aXmlHandler->mXmlNodeName == TT("#comment"))
		return kTTErrNone;
	
	// application node
	if (aXmlHandler->mXmlNodeName == TT("application")) {
		
		// get the application name 
		xmlTextReaderMoveToAttribute(aXmlHandler->mReader, (const xmlChar*)("name"));
		aXmlHandler->fromXmlChar(xmlTextReaderValue(aXmlHandler->mReader), v);
		if (v.getType() == kTypeSymbol) {
			v.get(0, &applicationName);
		}
		
		// if it is the end of a "application" xml node
		if (mCurrentApplication) {
			mCurrentApplication->getAttributeValue(kTTSym_name, v);
			v.get(0, &currentApplicationName);
			
			if (applicationName == currentApplicationName) {
				
				// if the application is not registered : add it
				if (mApplications->lookup(applicationName, v)) {
					v = TTValue(applicationName);
					v.append((TTPtr)mCurrentApplication);
					ApplicationAdd(v, kTTValNONE);
				}
				
				mCurrentApplication = NULL;
				return kTTErrNone;
			}
		}
		
		// get the application version 
		xmlTextReaderMoveToAttribute(aXmlHandler->mReader, (const xmlChar*)("version"));
		aXmlHandler->fromXmlChar(xmlTextReaderValue(aXmlHandler->mReader), v);
		if (v.getType() == kTypeSymbol) {
			v.get(0, &version);
		}
		
		// if the application exists : get it
		if (!mApplications->lookup(applicationName, v))
			v.get(0, (TTPtr*)&anApplication);
		
		// else create one
		else {
			anApplication = NULL;
			args = TTValue(applicationName);
			args.append(version);
			TTObjectInstantiate(TT("Application"), TTObjectHandle(&anApplication), args);
		}
		
		mCurrentApplication = anApplication;
		
		return kTTErrNone;
	}
	
	if (!mCurrentApplication) 
		return kTTErrNone;
	
	// pass the current application to the XmlHandler to fill protocol parameters
	v = TTValue((TTPtr)mCurrentApplication);
	aXmlHandler->setAttributeValue(kTTSym_object, v);
	return aXmlHandler->sendMessage(TT("Read"));
}

TTErr TTApplicationManager::notifyApplicationObservers(TTSymbolPtr anApplicationName, TTApplicationPtr anApplication, TTApplicationNotificationFlag flag)
{
	unsigned int i;
	TTValue hk, lk, o, f, data;
	TTSymbolPtr key;
	TTListPtr lk_o;
	TTCallbackPtr anObserver;
	bool foundObsv = false;
	
	// if there are observers
	if (!mApplicationObservers->isEmpty()) {
		
		// enable observers protection
		mApplicationObserversMutex->lock();
		
		this->mApplicationObservers->getKeys(hk);
		
		// for each key of mObserver tab
		for (i=0; i<hk.getSize(); i++) {
			
			hk.get(i, &key);
			
			// compare the key with the applicationName
			if (key == anApplicationName){
				
				// get the Observers list
				mApplicationObservers->lookup(key, lk);
				lk.get(0,(TTPtr*)&lk_o);
				
				if (!lk_o->isEmpty()) {
					for (lk_o->begin(); lk_o->end(); lk_o->next())
					{
						anObserver = NULL;
						lk_o->current().get(0, TTObjectHandle(&anObserver));
						TT_ASSERT("TTApplication observer list member is not NULL", anObserver);
						data.append(anApplicationName);
						data.append((TTPtr*)anApplication);
						data.append((TTInt8)flag);
						data.append((TTPtr*)anObserver);
						anObserver->notify(data, kTTValNONE);
					}
					
					foundObsv = true;
				}
			}
		}
		
		// disable observers protection
		mApplicationObserversMutex->unlock();
		
		if (foundObsv)
			return kTTErrNone;
		else
			return kTTErrGeneric;
	}
	else
		return kTTErrGeneric;
}

#if 0
#pragma mark -
#pragma mark Some Methods
#endif

TTApplicationPtr TTApplicationManagerGetApplication(TTSymbolPtr applicationName)
{
	TTValue				v;
	TTApplicationPtr	anApplication;
	TTErr				err;
	
	if (TTModularApplications) {
		
		err = TTModularApplications->mApplications->lookup(applicationName, v);
		
		if (!err) {
			v.get(0, (TTPtr*)&anApplication);
			return anApplication;
		}
	}
	
	return NULL;
}

TTApplicationPtr TTApplicationManagerGetApplicationFrom(TTNodeAddressPtr anAddress)
{
	TTSymbolPtr			applicationName;
	TTApplicationPtr	anApplication;
	
	if (TTModularApplications) {
		
		applicationName = anAddress->getDirectory();
		
		if (applicationName != NO_DIRECTORY)
			anApplication = TTApplicationManagerGetApplication(applicationName);
		else
			anApplication = TTApplicationManagerGetApplication(kTTSym_localApplicationName);
		
		return anApplication;
	}
	
	return NULL;
}

TTObjectPtr TTApplicationManagerGetProtocol(TTSymbolPtr protocolName)
{
	TTValue		v;
	ProtocolPtr	aProtocol;
	TTErr		err;
	
	if (TTModularApplications) {
		
		err = TTModularApplications->mProtocols->lookup(protocolName, v);
		
		if (!err) {
			v.get(0, (TTPtr*)&aProtocol);
			return (TTObjectPtr)aProtocol;
		}
	}
	
	return NULL;
}

TTErr TTApplicationManagerAddApplicationObserver(TTSymbolPtr anApplicationName, const TTObject& anObserver)
{
	TTErr		err;
	TTValue		lk;
	TTValue		o = anObserver;
	TTListPtr	lk_o;
	
	if (TTModularApplications) {
		
		// enable observers protection
		TTModularApplications->mApplicationObserversMutex->lock();
		
		// is the key already exists ?
		err = TTModularApplications->mApplicationObservers->lookup(anApplicationName, lk);
		
		// create a new observers list for this address
		if(err == kTTErrValueNotFound){
			lk_o = new TTList();
			lk_o->appendUnique(o);
			
			TTModularApplications->mApplicationObservers->append(anApplicationName, TTValue(lk_o));
		}
		// add it to the existing list
		else{
			lk.get(0,(TTPtr*)&lk_o);
			lk_o->appendUnique(o);
		}
		
		// disable observers protection
		TTModularApplications->mApplicationObserversMutex->unlock();
		
		return kTTErrNone;
	}
	
	return kTTErrGeneric;
}

TTErr TTApplicationManagerRemoveApplicationObserver(TTSymbolPtr anApplicationName, const TTObject& anObserver)
{
	TTErr			err;
	TTValue			lk, o, v;
	TTListPtr		lk_o;
	
	if (TTModularApplications) {
		
		// enable observers protection
		TTModularApplications->mApplicationObserversMutex->lock();
		
		// is the key exists ?
		err = TTModularApplications->mApplicationObservers->lookup(anApplicationName, lk);
		
		if(err != kTTErrValueNotFound){
			// get the observers list
			lk.get(0,(TTPtr*)&lk_o);
			
			// is observer exists ?
			o = TTValue(anObserver);
			err = lk_o->findEquals(o, v);
			if(!err)
				lk_o->remove(v);
			
			// was it the last observer ?
			if(lk_o->getSize() == 0) {
				// remove the key
				TTModularApplications->mApplicationObservers->remove(anApplicationName);
			}
		}
		
		// disable observers protection
		TTModularApplications->mApplicationObserversMutex->unlock();
		
		return err;
		
	}
	
	return kTTErrGeneric;
}