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
	
	addAttribute(LocalApplication, kTypeObject);
	
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
	if (protocolNames.size()) {
		
		TTSymbol    protocolName;
		ProtocolPtr	aProtocolObject = NULL;
		TTObjectBasePtr	activityInCallback, activityOutCallback;
		TTValuePtr	activityInBaton, activityOutBaton;
		TTValue		args;
		TTErr		err;
		
		// for each protocol name
		for (TTUInt32 i = 0; i < protocolNames.size(); i++) {
			
			protocolName = protocolNames[i];
			
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
				args = TTValue(aProtocolObject);
				mProtocols->append(protocolName, args);
				
				TTLogMessage("%s protocol loaded\n", protocolName.c_str());
			}
			else
				TTLogMessage("%s protocol can't be loaded\n", protocolName.c_str());
				
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
	for (TTUInt16 i = 0; i < protocolNames.size(); i++) {
		
		protocolName = protocolNames[i];
		err = mProtocols->lookup(protocolName, v);
		
		if (!err) {
			aProtocol = ProtocolPtr((TTObjectBasePtr)v[0]);
			TTObjectBaseRelease(TTObjectBaseHandle(&aProtocol));
		}
	}
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
    
    if (inputValue.size() == 1) {
        
        // get the given application and his name
        if (inputValue[0].type() == kTypeObject) {
            
            anApplication = TTApplicationPtr((TTObjectBasePtr)inputValue[0]);
            
            anApplication->getAttributeValue(kTTSym_name, v);
            applicationName = v[0];
            
            // add application to the manager
            mApplications->append(applicationName, anApplication);
            
            // notify applications observer that an application has been added
            notifyApplicationObservers(applicationName, anApplication, kApplicationAdded);
            
            return kTTErrNone;
        }
    }
	
	return kTTErrGeneric;
}

TTErr TTApplicationManager::ApplicationRemove(const TTValue& inputValue, TTValue& outputValue)
{	
	TTValue				v;
	TTSymbol			applicationName;
	TTApplicationPtr	anApplication;
	TTErr				err;

	applicationName = inputValue[0];
	
	err = mApplications->lookup(applicationName, v);
	
	if (!err) {
		anApplication = TTApplicationPtr((TTObjectBasePtr)v[0]);
		
		// notify applications observer that an application will be removed
		notifyApplicationObservers(applicationName, anApplication, kApplicationAdded);
		
		return mApplications->remove(applicationName);
	}
	
	return kTTErrGeneric;
}

TTErr TTApplicationManager::ProtocolScan(const TTValue& inputValue, TTValue& outputValue)
{
	TTValue     v, allProtocolNames;
	TTSymbol    protocolName;
	ProtocolPtr aProtocol;
	TTErr       err;
	
	// if no name do it for all protocol
	if (inputValue.size()) {
		
		protocolName = inputValue[0];
		
		if (!mProtocols->lookup(protocolName, v)) {
			aProtocol = ProtocolPtr((TTObjectBasePtr)v[0]);
			aProtocol->sendMessage(TTSymbol("Scan"));
		}
	}
	else {
		// Scan each protocol
		mProtocols->getKeys(allProtocolNames);
		for (TTUInt16 i = 0; i < allProtocolNames.size(); i++) {
			
			protocolName = allProtocolNames[i];
			err = mProtocols->lookup(protocolName, v);
			
			if (!err) {
				aProtocol = ProtocolPtr((TTObjectBasePtr)v[0]);
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
	if (inputValue.size()) {
		
		protocolName = inputValue[0];
		
		if (!mProtocols->lookup(protocolName, v)) {
			aProtocol = ProtocolPtr((TTObjectBasePtr)v[0]);
			start = aProtocol->sendMessage(kTTSym_Run);
		}
	}
	else {
		
		// Run each protocol
		mProtocols->getKeys(protocolNames);
		for (TTUInt16 i = 0; i < protocolNames.size(); i++) {
			
			protocolName = protocolNames[i];
			this->ProtocolRun(protocolName, kTTValNONE);
		}
		
		return kTTErrNone;
	}
	
	// if the protocol starts
	if (start == kTTErrNone) {
		
		// notify application obervers for application that use this protocol
		mApplications->getKeys(applicationNames);
		for (TTUInt16 j = 0; j < applicationNames.size(); j++) {
			
			// get application
			applicationName = applicationNames[j];
			mApplications->lookup(applicationName, v);
			anApplication = TTApplicationPtr((TTObjectBasePtr)v[0]);
			
			// don't notify local application observers
			if (anApplication != mLocalApplication) {
				
				aProtocol->sendMessage(TTSymbol("isRegistered"), applicationName, v);
				isRegistered = v[0];
				
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
	if (inputValue.size()) {
		
		protocolName = inputValue[0];
		
		if (!mProtocols->lookup(protocolName, v)) {
			aProtocol = ProtocolPtr((TTObjectBasePtr)v[0]);
			stop = aProtocol->sendMessage(TTSymbol("Stop"));
		}
	}
	else {
		
		// Stop each protocol
		mProtocols->getKeys(protocolNames);
		for (TTUInt16 i = 0; i < protocolNames.size(); i++) {
			
			protocolName = protocolNames[i];
			this->ProtocolStop(protocolName, kTTValNONE);
		}
		
		return kTTErrNone;
	}
	
	// if the protocol stops
	if (stop == kTTErrNone) {
		
		// notify application obervers for application that use this protocol
		mApplications->getKeys(applicationNames);
		for (TTUInt16 j = 0; j < applicationNames.size(); j++) {
			
			// get application
			applicationName = applicationNames[j];
			mApplications->lookup(applicationName, v);
			anApplication = TTApplicationPtr((TTObjectBasePtr)v[0]);
			
			// don't notify local application observers
			if (anApplication != mLocalApplication) {
				
				aProtocol->sendMessage(TTSymbol("isRegistered"), applicationName, v);
				isRegistered = v[0];
				
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
	TTAddress           whereToDiscover;
    TTSymbol            *returnedType = NULL;
	TTValuePtr			returnedChildren;
	TTValuePtr			returnedAttributes;
	
	whereToDiscover = inputValue[0];
	
	returnedType = (TTSymbol*)((TTPtr)outputValue[0]);
	returnedChildren = TTValuePtr((TTPtr)outputValue[1]);
	returnedAttributes = TTValuePtr((TTPtr)outputValue[2]);
	
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
	
    // if the address to discover exist : fill the answer
	if (!err) {
		
		firstNode->getChildren(S_WILDCARD, S_WILDCARD, childList);
		
        // check if there is an object
		anObject = firstNode->getObject();
		if (anObject) {
            
            // fill returned type
            objectType = anObject->getName();
            
            if (objectType != kTTSymEmpty)
                *returnedType = objectType;
            else
                *returnedType = kTTSym_none;
            
            // fill returned attributes
			anObject->getAttributeNames(*returnedAttributes);
        }
		
		// fill returned children names
		for (childList.begin(); childList.end(); childList.next()) {
			
			// get the returned node
			aNode = TTNodePtr((TTPtr)childList.current()[0]);
			
			// get the relative address
			aNode->getAddress(nodeAddress, whereToDiscover);
			returnedChildren->append(nodeAddress);
		}
		
		return kTTErrNone;
	}
	
	return kTTErrGeneric;
}

TTErr TTApplicationManager::ApplicationGet(const TTValue& inputValue, TTValue& outputValue)
{
	TTNodeDirectoryPtr	directory;
	TTAddress           whereToGet;
	
	whereToGet = inputValue[0];
	
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
	TTAddress           whereToSet;
	TTValuePtr			newValue;
	
	whereToSet = inputValue[0];
	newValue = TTValuePtr((TTPtr)inputValue[1]);
	
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
			nodeToSet = TTNodePtr((TTPtr)aNodeList.current()[0]);
			
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
	
	protocolName = inputValue[0];
	appToNotify = inputValue[1];
	whereToListen = inputValue[2];
	enableListening = inputValue[3];
	
	TTLogDebug("TTApplicationManager::Listen");
	
	TTApplicationPtr	appWhereToListen;
	ProtocolPtr			aProtocol;
	TTValue				v, args;
	TTErr				err;
	
	appWhereToListen = getApplicationFrom(whereToListen);
	err = mProtocols->lookup(protocolName, v);
	
	if (!err && appWhereToListen) 
	{
		aProtocol = ProtocolPtr((TTObjectBasePtr)v[0]);
		
		// add observer
		if (enableListening) {
			
			args.append(aProtocol);
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
	
	appAnswering = inputValue[0];
	whereComesFrom = inputValue[1];
	newValue = TTValuePtr((TTPtr)inputValue[2]);
	
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
	
	aXmlHandler = TTXmlHandlerPtr((TTObjectBasePtr)inputValue[0]);
	
    xmlTextWriterWriteComment((xmlTextWriterPtr)aXmlHandler->mWriter, BAD_CAST "TODO : a TTApplication Manager comment");
	
	// For each application
	mApplications->getKeys(keys);
	for (TTUInt16 i = 0; i < keys.size(); i++) {
		
		applicationName = keys[i];
		mApplications->lookup(applicationName, v);
		anApplication = TTApplicationPtr((TTObjectBasePtr)v[0]);
		
		// Start "application" xml node
		xmlTextWriterStartElement((xmlTextWriterPtr)aXmlHandler->mWriter, BAD_CAST "application");
		xmlTextWriterWriteFormatAttribute((xmlTextWriterPtr)aXmlHandler->mWriter, BAD_CAST "name", "%s", BAD_CAST applicationName.c_str());
		
		anApplication->getAttributeValue(TTSymbol("version"), v);
		version = v[0];
		xmlTextWriterWriteFormatAttribute((xmlTextWriterPtr)aXmlHandler->mWriter, BAD_CAST "version", "%s", BAD_CAST version.c_str());
		
		v = TTValue(anApplication);
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
	
	aXmlHandler = TTXmlHandlerPtr((TTObjectBasePtr)inputValue[0]);
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
		for (TTUInt16 i = 0; i < applicationNames.size(); i++) {
			
			applicationName = applicationNames[i];
			mApplications->lookup(applicationName, v);
			anApplication = TTApplicationPtr((TTObjectBasePtr)v[0]);
			
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
        
        if (v.size() == 1)
            if (v[0].type() == kTypeSymbol)
                applicationName = v[0];

		
		// if it is the end of a "application" xml node
		if (aXmlHandler->mXmlNodeStart && mCurrentApplication) {
			mCurrentApplication->getAttributeValue(kTTSym_name, v);
			currentApplicationName = v[0];
			
			if (applicationName == currentApplicationName) {
				mCurrentApplication = NULL;
				return kTTErrNone;
			}
		}
		
		// get the application version 
		xmlTextReaderMoveToAttribute((xmlTextReaderPtr)aXmlHandler->mReader, (const xmlChar*)("version"));
		aXmlHandler->fromXmlChar(xmlTextReaderValue((xmlTextReaderPtr)aXmlHandler->mReader), v);
        
        if (inputValue.size() == 1)
            if (v[0].type() == kTypeSymbol)
                version = v[0];
		
		// if the application exists : get it
		if (!mApplications->lookup(applicationName, v))
			anApplication = TTApplicationPtr((TTObjectBasePtr)v[0]);
		
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
	v = TTValue(mCurrentApplication);
	aXmlHandler->setAttributeValue(kTTSym_object, v);
	return aXmlHandler->sendMessage(TTSymbol("Read"));
}

TTErr TTApplicationManager::notifyApplicationObservers(TTSymbol anApplicationName, TTApplicationPtr anApplication, TTApplicationNotificationFlag flag)
{
	unsigned int    i;
	TTValue         hk, lk, o, f, data;
	TTSymbol        key;
	TTListPtr       lk_o;
	TTCallbackPtr   anObserver;
	bool            foundObsv = false;
	
	// if there are observers
	if (!mApplicationObservers->isEmpty()) {
		
		// enable observers protection
		mApplicationObserversMutex->lock();
		
		this->mApplicationObservers->getKeys(hk);
		
		// for each key of mObserver tab
		for (i = 0; i < hk.size(); i++) {
			
			 key = hk[i];
			
			// compare the key with the applicationName
			if (key == anApplicationName){
				
				// get the Observers list
				mApplicationObservers->lookup(key, lk);
				lk_o = TTListPtr((TTPtr)lk[0]);
				
				if (!lk_o->isEmpty()) {
					for (lk_o->begin(); lk_o->end(); lk_o->next())
					{
						anObserver = NULL;
						anObserver = TTCallbackPtr((TTObjectBasePtr)lk_o->current()[0]);
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
	TTValue     v;
	TTSymbol    localName;
	
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
			anApplication = TTApplicationPtr((TTObjectBasePtr)v[0]);
			return anApplication;
		}
	}
	
	return NULL;
}

TTNodeDirectoryPtr TTApplicationManagerGetApplicationDirectory(TTSymbol applicationName)
{
    TTValue				v;
    TTApplicationPtr	anApplication = NULL;
    TTErr				err;
    
    anApplication = TTApplicationManagerGetApplication(applicationName);
    
    if (anApplication) {
		
		err = anApplication->getAttributeValue(kTTSym_directory, v);
		
		if (!err)
			return TTNodeDirectoryPtr((TTPtr)v[0]);
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

ProtocolPtr TTApplicationManagerGetProtocol(TTSymbol protocolName)
{
	TTValue		v;
	ProtocolPtr	aProtocol;
	TTErr		err;
	
	if (TTModularApplications) {
		
		err = TTModularApplications->mProtocols->lookup(protocolName, v);
		
		if (!err) {
			aProtocol = ProtocolPtr((TTObjectBasePtr)v[0]);
			return aProtocol;
		}
	}
	
	return NULL;
}

TTValue TTApplicationManagerGetApplicationProtocols(TTSymbol applicationName)
{
	TTValue		protocolNames, applicationProtocols, result;
	TTSymbol    protocolName;
	TTBoolean	isRegistered;
	
	TTModularApplications->mProtocols->getKeys(protocolNames);
	for (TTUInt8 i = 0; i < protocolNames.size(); i++) {
		
		protocolName = protocolNames[i];
		getProtocol(protocolName)->sendMessage(TTSymbol("isRegistered"), applicationName, result);
		isRegistered = result[0];
		
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
			lk_o = TTListPtr((TTPtr)lk[0]);
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
	TTErr		err;
	TTValue		lk, o, v;
	TTListPtr	lk_o;
	
	if (TTModularApplications) {
		
		// enable observers protection
		TTModularApplications->mApplicationObserversMutex->lock();
		
		// is the key exists ?
		err = TTModularApplications->mApplicationObservers->lookup(anApplicationName, lk);
		
		if(err != kTTErrValueNotFound){
			// get the observers list
			lk_o = TTListPtr((TTPtr)lk[0]);
			
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
	TTValuePtr	b;
	TTSymbol	aProtocolName;
	TTValue		v;
	
	// unpack baton
	b = (TTValuePtr)baton;
	aProtocolName = (*b)[0];
	
	// set the activityIn attribute of the local application
	v = data;
	v.prepend(aProtocolName);
	TTModularApplications->mLocalApplication->setAttributeValue(kTTSym_activityIn, v);
	
	return kTTErrNone;
}

TTErr TTApplicationManagerProtocolActivityOutCallback(TTPtr baton, TTValue& data)
{
	TTValuePtr	b;
	TTSymbol	aProtocolName;
	TTValue		v;
	
	// unpack baton
	b = (TTValuePtr)baton;
	aProtocolName = (*b)[0];
	
	// set the activityOut attribute of the local application
	v = data;
	v.prepend(aProtocolName);
	TTModularApplications->mLocalApplication->setAttributeValue(kTTSym_activityOut, v);
	
	return kTTErrNone;
}
