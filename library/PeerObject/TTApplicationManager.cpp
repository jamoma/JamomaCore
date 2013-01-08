/* 
 * An Application Manager Object
 * Copyright © 2010, Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTApplicationManager.h"
#include "Protocol.h"
#include <libxml/encoding.h>
#include <libxml/xmlwriter.h>
#include <libxml/xmlreader.h>

#define thisTTClass			TTApplicationManager
#define thisTTClassName		"ApplicationManager"
#define thisTTClassTags		"application, manager"

TT_MODULAR_CONSTRUCTOR,
mApplications(NULL),
mLocalApplication(NULL),
mCurrentApplication(NULL),
mApplicationObservers(NULL),
mApplicationObserversMutex(NULL)
{		
	addAttribute(Applications, kTypePointer);
	addAttributeProperty(Applications, readOnly, YES);
	addAttributeProperty(Applications, hidden, YES);
	
	addAttributeWithSetter(LocalApplication, kTypePointer);
	
	registerAttribute(TTSymbol("applicationNames"), kTypeLocalValue, NULL, (TTGetterMethod)& TTApplicationManager::getApplicationNames);
	registerAttribute(TTSymbol("protocolNames"), kTypeLocalValue, NULL, (TTGetterMethod)& TTApplicationManager::getProtocolNames);
	
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
		
		TTSymbol protocolName;
		ProtocolPtr	aProtocolObject = NULL;
		TTObjectBasePtr	activityInCallback, activityOutCallback;
		TTValuePtr	activityInBaton, activityOutBaton;
		TTValue		args;
		TTErr		err;
		
		// for each protocol name
		for (TTUInt32 i=0; i<protocolNames.getSize(); i++) {
			
			protocolNames.get(i, protocolName);
			
			// create 2 callbacks to get raw protocol messages back
			activityInCallback = NULL;
			TTObjectBaseInstantiate(TTSymbol("callback"), &activityInCallback, kTTValNONE);
			activityInBaton = new TTValue(protocolName);
			activityInCallback->setAttributeValue(kTTSym_baton, TTPtr(activityInBaton));
			activityInCallback->setAttributeValue(kTTSym_function, TTPtr(&TTApplicationManagerProtocolActivityInCallback));
			
			activityOutCallback = NULL;
			TTObjectBaseInstantiate(TTSymbol("callback"), &activityOutCallback, kTTValNONE);
			activityOutBaton = new TTValue(protocolName);
			activityOutCallback->setAttributeValue(kTTSym_baton, TTPtr(activityOutBaton));
			activityOutCallback->setAttributeValue(kTTSym_function, TTPtr(&TTApplicationManagerProtocolActivityOutCallback));
			
			// create an instance of a Protocol object
			err = ProtocolLib::createProtocol(protocolName, &aProtocolObject, (TTObjectBasePtr)this, (TTCallbackPtr)activityInCallback, (TTCallbackPtr)activityOutCallback);
			
			if (!err) {
				
				// add it to Modular protocols table
				args = TTValue((TTPtr)aProtocolObject);
				mProtocols->append(protocolName, args);
				
				TTLogDebug("%s protocol loaded", protocolName.c_str());
			}
			else
				TTLogDebug("%s protocol can't be loaded ", protocolName.c_str());
				
		}
	}
}

TTApplicationManager::~TTApplicationManager()
{
	TTValue		v, protocolNames;
	TTSymbol	protocolName;
	ProtocolPtr	aProtocol;
	TTErr		err;
	
	delete mApplications;
	
	// destroy each protocol
	mProtocols->getKeys(protocolNames);
	for (TTUInt16 i=0; i<protocolNames.getSize(); i++) {
		
		protocolNames.get(i, protocolName);
		err = mProtocols->lookup(protocolName, v);
		
		if (!err) {
			v.get(0, (TTPtr*)&aProtocol);
			TTObjectBaseRelease(TTObjectBaseHandle(&aProtocol));
		}
	}
}

TTErr TTApplicationManager::setLocalApplication(TTValue& value)
{
	// change local application
	if (value.getType() == kTypePointer) {
		
		value.get(0, (TTPtr*)&mLocalApplication);
		
		return kTTErrNone;
	}
	
	return kTTErrGeneric;
}

TTErr TTApplicationManager::getApplicationNames(TTValue& value)
{
	return mApplications->getKeys(value);
}

TTErr TTApplicationManager::getProtocolNames(TTValue& value)
{
	return mProtocols->getKeys(value);
}

TTErr TTApplicationManager::ApplicationAdd(const TTValue& inputValue, TTValue& outputValue)
{
	TTValue				v;
	TTSymbol			applicationName;
	TTApplicationPtr	anApplication;
	
	// get the given application and his name
	if (inputValue.getType() == kTypePointer) {
		
		inputValue.get(0, (TTPtr*)&anApplication);
		
		anApplication->getAttributeValue(kTTSym_name, v);
		applicationName = v;
		
		// add application to the manager
		mApplications->append(applicationName, (TTPtr)anApplication);
		
		// notify applications observer that an application has been added
		notifyApplicationObservers(applicationName, anApplication, kApplicationAdded);
		
		return kTTErrNone;
	}
	
	return kTTErrGeneric;
}

TTErr TTApplicationManager::ApplicationRemove(const TTValue& inputValue, TTValue& outputValue)
{	
	TTValue				v;
	TTSymbol			applicationName;
	TTApplicationPtr	anApplication;
	TTErr				err;

	inputValue.get(0, applicationName);
	
	err = mApplications->lookup(applicationName, v);
	
	if (!err) {
		v.get(0, (TTPtr*)&anApplication);
		
		// notify applications observer that an application will be removed
		notifyApplicationObservers(applicationName, anApplication, kApplicationAdded);
		
		return mApplications->remove(applicationName);
	}
	
	return kTTErrGeneric;
}

TTErr TTApplicationManager::ProtocolScan(const TTValue& inputValue, TTValue& outputValue)
{
	TTValue v, allProtocolNames;
	TTSymbol protocolName;
	ProtocolPtr aProtocol;
	TTErr				err;
	
	// if no name do it for all protocol
	if (inputValue.getSize()) {
		
		inputValue.get(0, protocolName);
		
		if (!mProtocols->lookup(protocolName, v)) {
			v.get(0, (TTPtr*)&aProtocol);
			aProtocol->sendMessage(TTSymbol("Scan"));
		}
	}
	else {
		// Scan each protocol
		mProtocols->getKeys(allProtocolNames);
		for (TTUInt16 i=0; i<allProtocolNames.getSize(); i++) {
			
			allProtocolNames.get(i, protocolName);
			err = mProtocols->lookup(protocolName, v);
			
			if (!err) {
				v.get(0, (TTPtr*)&aProtocol);
				aProtocol->sendMessage(TTSymbol("Scan"));
			}
		}
	}
	
	return kTTErrNone;
}

TTErr TTApplicationManager::ProtocolRun(const TTValue& inputValue, TTValue& outputValue)
{
	TTValue				v, protocolNames, applicationNames;
	TTSymbol			protocolName, applicationName;
	ProtocolPtr			aProtocol;
	TTApplicationPtr	anApplication;
	TTBoolean			isRegistered;
	TTErr				start;
	
	// if no name do it for all protocol
	if (inputValue.getSize()) {
		
		inputValue.get(0, protocolName);
		
		if (!mProtocols->lookup(protocolName, v)) {
			v.get(0, (TTPtr*)&aProtocol);
			start = aProtocol->sendMessage(TTSymbol("Run"));
		}
	}
	else {
		
		// Run each protocol
		mProtocols->getKeys(protocolNames);
		for (TTUInt16 i=0; i<protocolNames.getSize(); i++) {
			
			protocolNames.get(i, protocolName);
			this->ProtocolRun(protocolName, kTTValNONE);
		}
		
		return kTTErrNone;
	}
	
	// if the protocol starts
	if (start == kTTErrNone) {
		
		// notify application obervers for application that use this protocol
		mApplications->getKeys(applicationNames);
		for (TTUInt16 j=0; j<applicationNames.getSize(); j++) {
			
			// get application
			applicationNames.get(j, applicationName);
			mApplications->lookup(applicationName, v);
			v.get(0, (TTPtr*)&anApplication);
			
			// don't notify local application observers
			if (anApplication != mLocalApplication) {
				
				aProtocol->sendMessage(TTSymbol("isRegistered"), applicationName, v);
				v.get(0, isRegistered);
				
				if (isRegistered)
					notifyApplicationObservers(applicationName, anApplication, kApplicationProtocolStarted);
				
			}
		}
	}
	
	return kTTErrNone;
}

TTErr TTApplicationManager::ProtocolStop(const TTValue& inputValue, TTValue& outputValue)
{
	TTValue				v, protocolNames, applicationNames;
	TTSymbol			protocolName, applicationName;
	ProtocolPtr			aProtocol;
	TTApplicationPtr	anApplication;
	TTBoolean			isRegistered;
	TTErr				stop;
	
	// if no name do it for all protocol
	if (inputValue.getSize()) {
		
		inputValue.get(0, protocolName);
		
		if (!mProtocols->lookup(protocolName, v)) {
			v.get(0, (TTPtr*)&aProtocol);
			stop = aProtocol->sendMessage(TTSymbol("Stop"));
		}
	}
	else {
		
		// Stop each protocol
		mProtocols->getKeys(protocolNames);
		for (TTUInt16 i=0; i<protocolNames.getSize(); i++) {
			
			protocolNames.get(i, protocolName);
			this->ProtocolStop(protocolName, kTTValNONE);
		}
		
		return kTTErrNone;
	}
	
	// if the protocol stops
	if (stop == kTTErrNone) {
		
		// notify application obervers for application that use this protocol
		mApplications->getKeys(applicationNames);
		for (TTUInt16 j=0; j<applicationNames.getSize(); j++) {
			
			// get application
			applicationNames.get(j, applicationName);
			mApplications->lookup(applicationName, v);
			v.get(0, (TTPtr*)&anApplication);
			
			// don't notify local application observers
			if (anApplication != mLocalApplication) {
				
				aProtocol->sendMessage(TTSymbol("isRegistered"), applicationName, v);
				v.get(0, isRegistered);
				
				if (isRegistered)
					notifyApplicationObservers(applicationName, anApplication, kApplicationProtocolStopped);
				
			}
		}
	}

	return kTTErrNone;
}

TTErr TTApplicationManager::ApplicationDiscover(const TTValue& inputValue, TTValue& outputValue)
{
	TTNodeDirectoryPtr	directory;
	TTAddress	whereToDiscover;
	TTValuePtr			returnedChildrenNames;
	TTValuePtr			returnedChildrenTypes;
	TTValuePtr			returnedAttributes;
	
	inputValue.get(0, whereToDiscover);
	
	outputValue.get(0, (TTPtr*)&returnedChildrenNames);
	outputValue.get(1, (TTPtr*)&returnedChildrenTypes);
	outputValue.get(2, (TTPtr*)&returnedAttributes);
	
	TTLogDebug("TTApplicationManager::Discover");
	
	TTList				nodeList, childList;
	TTNodePtr			firstNode, aNode;
	TTAddress			nodeAddress;
	TTSymbol			objectType;
	TTObjectBasePtr			anObject;
	TTErr				err;
	
	directory = getDirectoryFrom(whereToDiscover);
	if (!directory)
		return kTTErrGeneric;
	
	err = directory->Lookup(whereToDiscover, nodeList, &firstNode);
	
	if (!err) {
		
		firstNode->getChildren(S_WILDCARD, S_WILDCARD, childList);
		
		// fill returned attributes
		anObject = firstNode->getObject();
		if (anObject)
			anObject->getAttributeNames(*returnedAttributes);
		
		// fill returned children names and types value
		for (childList.begin(); childList.end(); childList.next()) {
			
			// get the returned node
			childList.current().get(0, (TTPtr*)&aNode);
			
			// get the relative address
			aNode->getAddress(nodeAddress, whereToDiscover);
			returnedChildrenNames->append(nodeAddress);
			
			// add the type of each refered object
			anObject = aNode->getObject();
			if (anObject) {
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
	TTAddress	whereToGet;
	
	inputValue.get(0, whereToGet);
	
	TTLogDebug("TTApplicationManager::Get");
	
	TTNodePtr			nodeToGet;
	TTObjectBasePtr			anObject;
	TTErr				err;
	
	directory = getDirectoryFrom(whereToGet);
	if (!directory)
		return kTTErrGeneric;
	
	// can't allow to use wilcards here because one value is returned
	err = directory->getTTNode(whereToGet, &nodeToGet);
	
	if (!err) {
		
		anObject = nodeToGet->getObject();
		if (anObject)
			return anObject->getAttributeValue(whereToGet.getAttribute(), outputValue);
	}

	return kTTErrGeneric;
}

TTErr TTApplicationManager::ApplicationSet(const TTValue& inputValue, TTValue& outputValue)
{
	TTNodeDirectoryPtr	directory;
	TTAddress	whereToSet;
	TTValuePtr			newValue;
	
	inputValue.get(0, whereToSet);
	inputValue.get(1, (TTPtr*)&newValue);
	
	TTLogDebug("TTApplicationManager::Set");
	
	TTList				aNodeList;
	TTNodePtr			nodeToSet;
	TTSymbol			objectType;
	TTObjectBasePtr			anObject;
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
			if (objectType == kTTSym_Data) {
				
				if (whereToSet.getAttribute() == kTTSym_value)
					anObject->sendMessage(kTTSym_Command, *newValue, kTTValNONE);
				else
					return anObject->setAttributeValue(whereToSet.getAttribute(), *newValue);
			}
			else 
				return anObject->setAttributeValue(whereToSet.getAttribute(), *newValue);
		}
	}
	
	return kTTErrGeneric; // TODO : return an error notification
}

TTErr TTApplicationManager::ApplicationListen(const TTValue& inputValue, TTValue& outputValue)
{
	TTAddress	whereToListen;
	TTSymbol	appToNotify, protocolName;
	TTBoolean	enableListening;
	
	inputValue.get(0, protocolName);
	inputValue.get(1, appToNotify);
	inputValue.get(2, whereToListen);
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
			if (whereToListen.getAttribute() == TTSymbol("life")) // TODO : find a better name
				return appWhereToListen->sendMessage(TTSymbol("AddDirectoryListener"), args, kTTValNONE);
	
			// start attribute listening
			else 
				return appWhereToListen->sendMessage(TTSymbol("AddAttributeListener"), args, kTTValNONE);
		}
		// remove listener
		else {
			
			args.append(appToNotify);
			args.append(whereToListen);
			
			// stop directory listening
			if (whereToListen.getAttribute() == TTSymbol("life")) // TODO : find a better name
				return appWhereToListen->sendMessage(TTSymbol("RemoveDirectoryListener"), args, kTTValNONE);

			// stop attribute listening
			else
				return appWhereToListen->sendMessage(TTSymbol("RemoveAttributeListener"), args, kTTValNONE);
		}
	}	

	return kTTErrGeneric;
}

TTErr TTApplicationManager::ApplicationListenAnswer(const TTValue& inputValue, TTValue& outputValue)
{
	TTSymbol	appAnswering;
	TTAddress	whereComesFrom;
	TTValuePtr	newValue;
	TTValue		args;
	
	inputValue.get(0, appAnswering);
	inputValue.get(1, whereComesFrom);
	inputValue.get(2, (TTPtr*)&newValue);
	
	TTLogDebug("TTApplicationManager::ListenAnswer");
	
	args.append(whereComesFrom);
	args.append((TTPtr)newValue);
	
	// notify directory updates
	if (whereComesFrom.getAttribute() == TTSymbol("life")) // TODO : find a better name
		return getApplication(appAnswering)->sendMessage(TTSymbol("UpdateDirectory"), args, kTTValNONE);
	
	// notify attribute updates
	else 
		return getApplication(appAnswering)->sendMessage(TTSymbol("UpdateAttribute"), args, kTTValNONE);
	
	return kTTErrGeneric;	
}

TTErr TTApplicationManager::WriteAsXml(const TTValue& inputValue, TTValue& outputValue)
{
	TTXmlHandlerPtr		aXmlHandler;
	TTSymbol			applicationName, version;
	TTApplicationPtr	anApplication;
    TTValue				keys, v;
	
	inputValue.get(0, (TTPtr*)&aXmlHandler);
	
    xmlTextWriterWriteComment((xmlTextWriterPtr)aXmlHandler->mWriter, BAD_CAST "TODO : a TTApplication Manager comment");
	
	// For each application
	mApplications->getKeys(keys);
	for (TTUInt16 i=0; i<keys.getSize(); i++) {
		
		keys.get(i, applicationName);
		mApplications->lookup(applicationName, v);
		v.get(0, (TTPtr*)&anApplication);
		
		// Start "application" xml node
		xmlTextWriterStartElement((xmlTextWriterPtr)aXmlHandler->mWriter, BAD_CAST "application");
		xmlTextWriterWriteFormatAttribute((xmlTextWriterPtr)aXmlHandler->mWriter, BAD_CAST "name", "%s", BAD_CAST applicationName.c_str());
		
		anApplication->getAttributeValue(TTSymbol("version"), v);
		v.get(0, version);
		xmlTextWriterWriteFormatAttribute((xmlTextWriterPtr)aXmlHandler->mWriter, BAD_CAST "version", "%s", BAD_CAST version.c_str());
		
		v = TTValue(TTPtr(anApplication));
		aXmlHandler->setAttributeValue(kTTSym_object, v);
		aXmlHandler->sendMessage(TTSymbol("Write"));
		
		// End "application" xml node
		xmlTextWriterEndElement((xmlTextWriterPtr)aXmlHandler->mWriter);
	}
	
	return kTTErrNone;
}

TTErr TTApplicationManager::ReadFromXml(const TTValue& inputValue, TTValue& outputValue)
{
	TTXmlHandlerPtr		aXmlHandler = NULL;	
	TTSymbol			applicationName, currentApplicationName, version;
	TTApplicationPtr	anApplication;
	TTValue				v, args, applicationNames;
	
	inputValue.get(0, (TTPtr*)&aXmlHandler);
	if (!aXmlHandler)
		return kTTErrGeneric;
	
	// switch on the name of the XML node
	
	// starts reading
	if (aXmlHandler->mXmlNodeName == kTTSym_start) {
		
		mCurrentApplication = NULL;
		
		// stop protocol reception threads
		ProtocolStop(v, kTTValNONE);
		
		// remove all applications except the local one
		mApplications->getKeys(applicationNames);
		for (TTUInt16 i=0; i<applicationNames.getSize(); i++) {
			
			applicationNames.get(i, applicationName);
			mApplications->lookup(applicationName, v);
			v.get(0, (TTPtr*)&anApplication);
			
			if (anApplication != mLocalApplication) {
				TTObjectBaseRelease(TTObjectBaseHandle(&anApplication));
				mApplications->remove(applicationName);
			}
		}
		
		return kTTErrNone;
	}
	
	// ends reading
	if (aXmlHandler->mXmlNodeName == kTTSym_stop) {
		
		// start protocol reception threads
		ProtocolRun(v, kTTValNONE);
		
		return kTTErrNone;
	}
	
	// comment node
	if (aXmlHandler->mXmlNodeName == TTSymbol("#comment"))
		return kTTErrNone;
	
	// application node
	if (aXmlHandler->mXmlNodeName == TTSymbol("application")) {
		
		// get the application name 
		xmlTextReaderMoveToAttribute((xmlTextReaderPtr)aXmlHandler->mReader, (const xmlChar*)("name"));
		aXmlHandler->fromXmlChar(xmlTextReaderValue((xmlTextReaderPtr)aXmlHandler->mReader), v);
		if (v.getType() == kTypeSymbol) {
			v.get(0, applicationName);
		}
		
		// if it is the end of a "application" xml node
		if (aXmlHandler->mXmlNodeStart && mCurrentApplication) {
			mCurrentApplication->getAttributeValue(kTTSym_name, v);
			v.get(0, currentApplicationName);
			
			if (applicationName == currentApplicationName) {
				mCurrentApplication = NULL;
				return kTTErrNone;
			}
		}
		
		// get the application version 
		xmlTextReaderMoveToAttribute((xmlTextReaderPtr)aXmlHandler->mReader, (const xmlChar*)("version"));
		aXmlHandler->fromXmlChar(xmlTextReaderValue((xmlTextReaderPtr)aXmlHandler->mReader), v);
		if (v.getType() == kTypeSymbol) {
			v.get(0, version);
		}
		
		// if the application exists : get it
		if (!mApplications->lookup(applicationName, v))
			v.get(0, (TTPtr*)&anApplication);
		
		// else create one
		else {
			anApplication = NULL;
			args = TTValue(applicationName);
			TTObjectBaseInstantiate(kTTSym_Application, TTObjectBaseHandle(&anApplication), args);
			
			args = TTValue(version);
			anApplication->setAttributeValue(TTSymbol("version"), args);
		}
		
		mCurrentApplication = anApplication;
		
		return kTTErrNone;
	}
	
	if (!mCurrentApplication) 
		return kTTErrNone;
	
	// pass the current application to the XmlHandler to fill protocol parameters
	v = TTValue((TTPtr)mCurrentApplication);
	aXmlHandler->setAttributeValue(kTTSym_object, v);
	return aXmlHandler->sendMessage(TTSymbol("Read"));
}

TTErr TTApplicationManager::notifyApplicationObservers(TTSymbol anApplicationName, TTApplicationPtr anApplication, TTApplicationNotificationFlag flag)
{
	unsigned int i;
	TTValue hk, lk, o, f, data;
	TTSymbol key;
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
			
			hk.get(i, key);
			
			// compare the key with the applicationName
			if (key == anApplicationName){
				
				// get the Observers list
				mApplicationObservers->lookup(key, lk);
				lk.get(0,(TTPtr*)&lk_o);
				
				if (!lk_o->isEmpty()) {
					for (lk_o->begin(); lk_o->end(); lk_o->next())
					{
						anObserver = NULL;
						lk_o->current().get(0, TTObjectBaseHandle(&anObserver));
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

TTSymbol TTApplicationManagerGetLocalApplicationName()
{
	TTValue		v;
	TTSymbol localName;
	
	TTModularApplications->mLocalApplication->getAttributeValue(kTTSym_name, v);
	localName = v;
	
	return localName;
}

TTBoolean TTApplicationManagerGetLocalApplicationDebug()
{	
	return TTModularApplications->mLocalApplication->mDebug;
}

TTApplicationPtr TTApplicationManagerGetApplication(TTSymbol applicationName)
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

TTApplicationPtr TTApplicationManagerGetApplicationFrom(TTAddress anAddress)
{
	TTSymbol			applicationName;
	TTApplicationPtr	anApplication;
	
	if (TTModularApplications) {
		
		applicationName = anAddress.getDirectory();
		
		if (applicationName != NO_DIRECTORY)
			anApplication = TTApplicationManagerGetApplication(applicationName);
		else
			anApplication = TTModularApplications->mLocalApplication;
		
		return anApplication;
	}
	
	return NULL;
}

TTObjectBasePtr TTApplicationManagerGetProtocol(TTSymbol protocolName)
{
	TTValue		v;
	ProtocolPtr	aProtocol;
	TTErr		err;
	
	if (TTModularApplications) {
		
		err = TTModularApplications->mProtocols->lookup(protocolName, v);
		
		if (!err) {
			v.get(0, (TTPtr*)&aProtocol);
			return (TTObjectBasePtr)aProtocol;
		}
	}
	
	return NULL;
}

TTValue TTApplicationManagerGetApplicationProtocols(TTSymbol applicationName)
{
	TTValue		protocolNames, applicationProtocols, result;
	TTSymbol protocolName;
	TTBoolean	isRegistered;
	
	TTModularApplications->mProtocols->getKeys(protocolNames);
	for (TTUInt8 i=0; i<protocolNames.getSize(); i++) {
		
		protocolNames.get(i, protocolName);
		getProtocol(protocolName)->sendMessage(TTSymbol("isRegistered"), applicationName, result);
		result.get(0, isRegistered);
		
		if (isRegistered)
			applicationProtocols.append(protocolName);
	}
	
	return applicationProtocols;
}

TTErr TTApplicationManagerAddApplicationObserver(TTSymbol anApplicationName, const TTObjectBase& anObserver)
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

TTErr TTApplicationManagerRemoveApplicationObserver(TTSymbol anApplicationName, const TTObjectBase& anObserver)
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

TTErr TTApplicationManagerProtocolActivityInCallback(TTPtr baton, TTValue& data)
{
	TTValuePtr		b;
	TTSymbol		aProtocolName;
	TTValue			v;
	
	// unpack baton
	b = (TTValuePtr)baton;
	b->get(0, aProtocolName);
	
	// set the activityIn attribute of the local application
	v = data;
	v.prepend(aProtocolName);
	TTModularApplications->mLocalApplication->setAttributeValue(kTTSym_activityIn, v);
	
	return kTTErrNone;
}

TTErr TTApplicationManagerProtocolActivityOutCallback(TTPtr baton, TTValue& data)
{
	TTValuePtr		b;
	TTSymbol		aProtocolName;
	TTValue			v;
	
	// unpack baton
	b = (TTValuePtr)baton;
	b->get(0, aProtocolName);
	
	// set the activityOut attribute of the local application
	v = data;
	v.prepend(aProtocolName);
	TTModularApplications->mLocalApplication->setAttributeValue(kTTSym_activityOut, v);
	
	return kTTErrNone;
}
