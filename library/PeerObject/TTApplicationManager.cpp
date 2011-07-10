/* 
 * An Application Manager Object
 * Copyright © 2010, Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTApplicationManager.h"
#include "TTPluginHandler.h"
#include "PluginFactories.h"

#define thisTTClass			TTApplicationManager
#define thisTTClassName		"ApplicationManager"
#define thisTTClassTags		"application, manager"

TT_MODULAR_CONSTRUCTOR,
mApplications(NULL),
mApplicationNames(kTTValNONE),
mPluginNames(kTTValNONE),
mCurrentApplication(NULL),
mApplicationObservers(NULL),
mApplicationObserversMutex(NULL)
{	
	TTString pluginFolderPath;
	
	TT_ASSERT("Correct number of args to create TTApplicationManager", arguments.getSize() == 1);
	arguments.get(0, pluginFolderPath);
	
	addAttribute(Applications, kTypePointer);
	addAttributeProperty(applications, readOnly, YES);
	addAttributeProperty(applications, hidden, YES);
	
	addAttributeWithGetter(ApplicationNames, kTypeLocalValue);
	addAttributeProperty(applicationNames, readOnly, YES);
	
	registerAttribute(TT("applicationLocalName"), kTypeSymbol, kTTSym_localApplicationName, (TTGetterMethod)& TTApplicationManager::getApplicationLocalName);
	addAttributeProperty(applicationLocalName, readOnly, YES);
	
	addAttributeWithGetter(PluginNames, kTypeLocalValue);
	addAttributeProperty(pluginNames, readOnly, YES);
	
	addMessageWithArgument(Configure);
	
	addMessageWithArgument(ApplicationAdd);
	addMessageWithArgument(ApplicationRemove);
	
	addMessageWithArgument(ApplicationDiscover);
	addMessageProperty(ApplicationDiscover, hidden, YES);
	
	addMessageWithArgument(ApplicationGet);
	addMessageProperty(ApplicationGet, hidden, YES);
	
	addMessageWithArgument(ApplicationSet);
	addMessageProperty(ApplicationSet, hidden, YES);
	
	addMessageWithArgument(ApplicationListen);
	addMessageProperty(ApplicationListen, hidden, YES);
	
	addMessageWithArgument(PluginScan);
	addMessageWithArgument(PluginRun);
	addMessageWithArgument(PluginStop);
	
	// needed to be handled by a TTXmlHandler
	addMessageWithArgument(WriteAsXml);
	addMessageProperty(WriteAsXml, hidden, YES);
	
	addMessageWithArgument(ReadFromXml);
	addMessageProperty(ReadFromXml, hidden, YES);
	
	mApplications = new TTHash();
	mPlugins = new TTHash();
	
	// create a ApplicationObservers table and protect it from multithreading access
	// why ? because observers could disappear when they know an application is destroyed
	mApplicationObservers = new TTHash();
	mApplicationObservers->setThreadProtection(true);
	mApplicationObserversMutex = new TTMutex(true);
	
	// Load plugins from the pluginFolderPath
	if (pluginFolderPath.size()) {
		
		mPluginFactories = new PluginFactories();
		
		mPluginFactories->loadPlugins(pluginFolderPath.data());
		
		IteratorPluginNames it = mPluginFactories->getPluginNames();
		
		while (it.hasNext()) {
			TTString pluginName = it.next();
			TTPluginHandlerPtr aPluginObject = NULL;
			TTValue args;
			PluginPtr plugin = mPluginFactories->createPlugin(pluginName, (TTObjectPtr)this);
			
			if (plugin != 0) {
				
				// DEBUG
				TTLogDebug("%s plugin loaded", pluginName.data());
				
				// create an instance of TTPluginHandler object
				args = TTValue((TTPtr)plugin);
				TTObjectInstantiate(TT("PluginHandler"), TTObjectHandle(&aPluginObject), args);
				
				// add it to Modular plugins table
				args = TTValue((TTPtr)aPluginObject);
				mPlugins->append(TT(pluginName), args);
			}
		}
	}
}

TTApplicationManager::~TTApplicationManager()
{
	TTValue				v, allPluginNames;
	TTSymbolPtr			pluginName;
	TTPluginHandlerPtr	aPlugin;
	TTErr				err;
	
	delete mApplications;
	
	// destroy each plugin
	mPlugins->getKeys(allPluginNames);
	for (TTUInt16 i=0; i<allPluginNames.getSize(); i++) {
		
		allPluginNames.get(i, &pluginName);
		err = mPlugins->lookup(pluginName, v);
		
		if (!err) {
			v.get(0, (TTPtr*)&aPlugin);
			TTObjectRelease(TTObjectHandle(&aPlugin));
		}
	}
}

TTErr TTApplicationManager::getApplicationNames(TTValue& value)
{
	return mApplications->getKeys(value);
}

TTErr TTApplicationManager::getApplicationLocalName(TTValue& value)
{
	value = kTTSym_localApplicationName;
	return kTTErrNone;
}

TTErr TTApplicationManager::getPluginNames(TTValue& value)
{
	return mPlugins->getKeys(value);
}

TTErr TTApplicationManager::Configure(const TTValue& value)
{
	TTSymbolPtr			applicationName;
	TTApplicationPtr	anApplication;
	TTValue				v;
	TTErr				err;
	
	if (value.getSize() > 3) {
		value.get(0, &applicationName);
		
		err = mApplications->lookup(applicationName, v);
		
		if (!err) {
			v.get(0, (TTPtr*)&anApplication);
			
			v.clear();
			v.copyFrom(value, 1);
			return anApplication->sendMessage(TT("Configure"), v);
		}
	}
	
	return kTTErrGeneric;
}

TTErr TTApplicationManager::ApplicationAdd(const TTValue& value)
{
	TTValue				v, args, allPluginNames;
	TTSymbolPtr			applicationName;
	TTApplicationPtr	anApplication;
	
	value.get(0, &applicationName);
	
	// if no given application, instantiate it
	if (value.getSize() == 2)
		value.get(1, (TTPtr*) &anApplication);
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

TTErr TTApplicationManager::ApplicationRemove(const TTValue& value)
{	
	TTValue				v;
	TTSymbolPtr			applicationName;
	TTApplicationPtr	anApplication;
	TTErr				err;

	value.get(0, &applicationName);
	
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

TTErr TTApplicationManager::PluginScan(const TTValue& value)
{
	TTValue v, allPluginNames;
	TTSymbolPtr pluginName;
	TTPluginHandlerPtr aPlugin;
	TTErr				err;
	
	// if no name do it for all plugin
	if (value.getSize()) {
		
		value.get(0, &pluginName);
		
		if (!mPlugins->lookup(pluginName, v)) {
			v.get(0, (TTPtr*)&aPlugin);
			aPlugin->sendMessage(TT("Scan"));
		}
	}
	else {
		// Scan each plugin
		mPlugins->getKeys(allPluginNames);
		for (TTUInt16 i=0; i<allPluginNames.getSize(); i++) {
			
			allPluginNames.get(i, &pluginName);
			err = mPlugins->lookup(pluginName, v);
			
			if (!err) {
				v.get(0, (TTPtr*)&aPlugin);
				aPlugin->sendMessage(TT("Scan"));
			}
		}
	}
	
	return kTTErrNone;
}

TTErr TTApplicationManager::PluginRun(const TTValue& value)
{
	TTValue				v, allPluginNames, allApplicationNames;
	TTSymbolPtr			pluginName, applicationName, appPluginName;
	TTPluginHandlerPtr	aPlugin;
	TTApplicationPtr	anApplication;
	TTErr				err;
	
	// if no name do it for all plugin
	if (value.getSize()) {
		
		value.get(0, &pluginName);
		
		if (!mPlugins->lookup(pluginName, v)) {
			v.get(0, (TTPtr*)&aPlugin);
			aPlugin->sendMessage(TT("Run"));
		}
	}
	else {
		
		// Run each plugin
		mPlugins->getKeys(allPluginNames);
		for (TTUInt16 i=0; i<allPluginNames.getSize(); i++) {
			
			allPluginNames.get(i, &pluginName);
			this->PluginRun(pluginName);
		}
		
		return kTTErrNone;
	}
	
	// notify application obervers for application that use this plugin
	mApplications->getKeys(allApplicationNames);
	for (TTUInt16 j=0; j<allApplicationNames.getSize(); j++) {
		
		allApplicationNames.get(j, &applicationName);
		
		if (applicationName != kTTSym_localApplicationName) {
			err = mApplications->lookup(applicationName, v);
			
			if (!err) {
				v.get(0, (TTPtr*)&anApplication);
				
				anApplication->getAttributeValue(TT("pluginNames"), v); 
				v.get(0, &appPluginName);
				
				if (appPluginName == pluginName)
					notifyApplicationObservers(applicationName, anApplication, kApplicationPluginStarted);
			}
		}
	}
	
	return kTTErrNone;
}

TTErr TTApplicationManager::PluginStop(const TTValue& value)
{
	TTValue				v, allPluginNames, allApplicationNames;
	TTSymbolPtr			pluginName, applicationName, appPluginName;
	TTPluginHandlerPtr	aPlugin;
	TTApplicationPtr	anApplication;
	TTErr				err;
	
	// if no name do it for all plugin
	if (value.getSize()) {
		
		value.get(0, &pluginName);
		
		if (!mPlugins->lookup(pluginName, v)) {
			v.get(0, (TTPtr*)&aPlugin);
			aPlugin->sendMessage(TT("Stop"));
		}
	}
	else {
		
		// Stop each plugin
		mPlugins->getKeys(allPluginNames);
		for (TTUInt16 i=0; i<allPluginNames.getSize(); i++) {
			
			allPluginNames.get(i, &pluginName);
			this->PluginStop(pluginName);
		}
		
		return kTTErrNone;
	}
	
	// notify application obervers for application that use this plugin
	mApplications->getKeys(allApplicationNames);
	for (TTUInt16 j=0; j<allApplicationNames.getSize(); j++) {
		
		allApplicationNames.get(j, &applicationName);
		
		if (applicationName != kTTSym_localApplicationName) {
			err = mApplications->lookup(applicationName, v);
			
			if (!err) {
				v.get(0, (TTPtr*)&anApplication);
				
				anApplication->getAttributeValue(TT("pluginNames"), v); 
				v.get(0, &appPluginName);
				
				if (appPluginName == pluginName)
					notifyApplicationObservers(applicationName, anApplication, kApplicationPluginStopped);
			}
		}
	}

	return kTTErrNone;
}

TTErr TTApplicationManager::ApplicationDiscover(TTValue& value)
{
	TTNodeDirectoryPtr	directory;
	TTNodeAddressPtr	whereToDiscover;
	TTValuePtr			returnedChildrenNames;
	TTValuePtr			returnedChildrenTypes;
	TTValuePtr			returnedAttributes;
	
	value.get(0, &whereToDiscover);
	value.get(1, (TTPtr*)&returnedChildrenNames);
	value.get(2, (TTPtr*)&returnedChildrenTypes);
	value.get(3, (TTPtr*)&returnedAttributes);
	
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

TTErr TTApplicationManager::ApplicationGet(TTValue& value)
{
	TTNodeDirectoryPtr	directory;
	TTNodeAddressPtr	whereToGet;
	TTValuePtr			returnedValue;
	
	value.get(0, &whereToGet);
	value.get(1, (TTPtr*)&returnedValue);
	
	TTLogDebug("TTApplicationManager::Get");
	
	TTNodePtr			nodeToGet;
	TTObjectPtr			anObject;
	TTErr				err;
	
	directory = getDirectoryFrom(whereToGet);
	if (!directory)
		return kTTErrGeneric;
	
	err = directory->getTTNode(whereToGet, &nodeToGet);
	
	if (!err)
		if (anObject = nodeToGet->getObject())
			return anObject->getAttributeValue(whereToGet->getAttribute(), *returnedValue);

	return kTTErrGeneric;
}

TTErr TTApplicationManager::ApplicationSet(TTValue& value)
{
	TTNodeDirectoryPtr	directory;
	TTNodeAddressPtr	whereToSet;
	TTValuePtr			newValue;
	
	value.get(0, &whereToSet);
	value.get(1, (TTPtr*)&newValue);
	
	TTLogDebug("TTApplicationManager::Set");
	
	TTNodePtr			nodeToSet;
	TTSymbolPtr			objectType;
	TTObjectPtr			anObject;
	TTErr				err;
	
	directory = getDirectoryFrom(whereToSet);
	if (!directory)
		return kTTErrGeneric;
	
	err = directory->getTTNode(whereToSet, &nodeToSet);
	
	if (!err) {
		
		anObject = nodeToSet->getObject();
		objectType = anObject->getName();
		
		// TTData case : for value attribute use Command message
		if (objectType == TT("Data")) {
			
			if (whereToSet->getAttribute() == kTTSym_value)
				anObject->sendMessage(kTTSym_Command, *newValue);
			else
				return anObject->setAttributeValue(whereToSet->getAttribute(), *newValue);
		}
		else 
			return anObject->setAttributeValue(whereToSet->getAttribute(), *newValue);
	}
	
	return kTTErrGeneric; // TODO : return an error notification
}

TTErr TTApplicationManager::ApplicationListen(TTValue& value)
{
	TTApplicationPtr	appToNotify;
	TTNodeAddressPtr	whereToListen;
	TTSymbolPtr			pluginName;
	TTBoolean			enableListening;
	
	value.get(0, &pluginName);
	value.get(1, (TTPtr*)&appToNotify);
	value.get(2, &whereToListen);
	value.get(3, enableListening);
	
	TTLogDebug("TTApplicationManager::Listen");
	
	TTApplicationPtr	appWhereToListen;
	TTPluginHandlerPtr	aPlugin;
	TTValue				v, args;
	TTErr				err;
	
	appWhereToListen = getApplicationFrom(whereToListen);
	err = mPlugins->lookup(pluginName, v);
	
	if (!err && appWhereToListen) 
	{
		v.get(0, (TTPtr*)&aPlugin);
		
		// add observer
		if (enableListening) {
			
			args.append((TTPtr)aPlugin);
			args.append((TTPtr)appToNotify);
			args.append(whereToListen);
			
			// start directory listening
			if (whereToListen->getAttribute() == TT("life")) // TODO : find a better name
				return appWhereToListen->sendMessage(TT("AddDirectoryListener"), args);
	
			// start attribute listening
			else 
				return appWhereToListen->sendMessage(TT("AddAttributeListener"), args);
		}
		// remove listener
		else {
			
			args.append(whereToListen);
			
			// stop directory listening
			if (whereToListen->getAttribute() == TT("life")) // TODO : find a better name
				return appWhereToListen->sendMessage(TT("RemoveDirectoryListener"), args);

			// stop attribute listening
			else
				return appWhereToListen->sendMessage(TT("RemoveAttributeListener"), args);
		}
	}	

	return kTTErrGeneric;
}

TTErr TTApplicationManager::WriteAsXml(const TTValue& value)
{
	TTXmlHandlerPtr		aXmlHandler;
	TTSymbolPtr			applicationName, version;
	TTApplicationPtr	anApplication;
    TTValue				keys, v;
	
	value.get(0, (TTPtr*)&aXmlHandler);
	
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

TTErr TTApplicationManager::ReadFromXml(const TTValue& value)
{
	TTXmlHandlerPtr		aXmlHandler = NULL;	
	TTSymbolPtr			applicationName, currentApplicationName, version;
	TTApplicationPtr	anApplication;
	TTValue				v, args, allAppNames;
	TTErr				err;
	
	value.get(0, (TTPtr*)&aXmlHandler);
	if (!aXmlHandler)
		return kTTErrGeneric;
	
	// switch on the name of the XML node
	
	// starts reading
	if (aXmlHandler->mXmlNodeName == TT("start")) {
		
		mCurrentApplication = NULL;
		
		// stop plugin reception threads
		PluginStop(v);
		
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
		
		// start plugin reception threads
		PluginRun(v);
		
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
					ApplicationAdd(v);
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
	
	// pass the current application to the XmlHandler to fill plugin parameters
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
						anObserver->notify(data);
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

TTPluginHandlerPtr TTApplicationManagerGetPlugin(TTSymbolPtr pluginName)
{
	TTValue				v;
	TTPluginHandlerPtr	aPlugin;
	TTErr				err;
	
	if (TTModularApplications) {
		
		err = TTModularApplications->mPlugins->lookup(pluginName, v);
		
		if (!err) {
			v.get(0, (TTPtr*)&aPlugin);
			return aPlugin;
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