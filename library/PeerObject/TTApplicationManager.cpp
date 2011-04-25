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
mCurrentApplication(NULL)
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
	return mApplications->append(applicationName, (TTPtr)anApplication);
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
	TTValue v, allPluginNames;
	TTSymbolPtr pluginName;
	TTPluginHandlerPtr aPlugin;
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
			err = mPlugins->lookup(pluginName, v);
			
			if (!err) {
				v.get(0, (TTPtr*)&aPlugin);
				aPlugin->sendMessage(TT("Run"));
			}
		}
	}
	
	return kTTErrNone;
}

TTErr TTApplicationManager::PluginStop(const TTValue& value)
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
			aPlugin->sendMessage(TT("Stop"));
		}
	}
	else {
		// Stop each plugin
		mPlugins->getKeys(allPluginNames);
		for (TTUInt16 i=0; i<allPluginNames.getSize(); i++) {
			
			allPluginNames.get(i, &pluginName);
			err = mPlugins->lookup(pluginName, v);
			
			if (!err) {
				v.get(0, (TTPtr*)&aPlugin);
				aPlugin->sendMessage(TT("Stop"));
			}
		}
	}
	
	return kTTErrNone;
}

TTErr TTApplicationManager::ApplicationDiscover(TTValue& value)
{
	TTSymbolPtr whereToDiscover;
	TTValuePtr returnedChildrenNames;
	TTValuePtr returnedChildrenTypes;
	TTValuePtr returnedAttributes;
	
	value.get(0, &whereToDiscover);
	value.get(1, (TTPtr*)&returnedChildrenNames);
	value.get(2, (TTPtr*)&returnedChildrenTypes);
	value.get(3, (TTPtr*)&returnedAttributes);
	
	TTLogDebug("TTApplicationManager::Discover");
	
	TTList				nodeList, childList;
	TTNodePtr			firstNode, aNode;
	TTSymbolPtr			nodeAddress, objectType;
	TTObjectPtr			anObject;
	TTErr				err;
	
	err = getDirectoryFrom(whereToDiscover)->Lookup(whereToDiscover, nodeList, &firstNode);
	
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
			aNode->getOscAddress(&nodeAddress, whereToDiscover);
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
	TTSymbolPtr whereToGet;
	TTSymbolPtr attributeToGet;
	TTValuePtr returnedValue;
	
	value.get(0, &whereToGet);
	value.get(1, &attributeToGet);
	value.get(2, (TTPtr*)&returnedValue);
	
	TTLogDebug("TTApplicationManager::Get");
	
	TTNodePtr			nodeToGet;
	TTObjectPtr			anObject;
	TTErr				err;
	
	err = getDirectoryFrom(whereToGet)->getTTNodeForOSC(whereToGet, &nodeToGet);
	
	if (!err)
		if (anObject = nodeToGet->getObject())
			return anObject->getAttributeValue(attributeToGet, *returnedValue);

	return kTTErrGeneric;
}

TTErr TTApplicationManager::ApplicationSet(TTValue& value)
{
	TTSymbolPtr whereToSet;
	TTSymbolPtr attributeToSet;
	TTValuePtr newValue;
	
	value.get(0, &whereToSet);
	value.get(1, &attributeToSet);
	value.get(2, (TTPtr*)&newValue);
	
	TTLogDebug("TTApplicationManager::Set");
	
	TTNodePtr			nodeToSet;
	TTSymbolPtr			objectType;
	TTObjectPtr			anObject;
	TTErr				err;
	
	err = getDirectoryFrom(whereToSet)->getTTNodeForOSC(whereToSet, &nodeToSet);
	
	if (!err) {
		
		anObject = nodeToSet->getObject();
		objectType = anObject->getName();
		
		// TTData case : for value attribute use Command message
		if (objectType == TT("Data")) {
			
			if (attributeToSet == kTTSym_value)
				anObject->sendMessage(kTTSym_Command, *newValue);
			else
				return anObject->setAttributeValue(attributeToSet, *newValue);
		}
		else 
			return anObject->setAttributeValue(attributeToSet, *newValue);
	}
	
	return kTTErrGeneric; // TODO : return an error notification
}

TTErr TTApplicationManager::ApplicationListen(TTValue& value)
{
	TTApplicationPtr appToNotify;
	TTSymbolPtr whereToListen;
	TTSymbolPtr attributeToListen, pluginName;
	TTBoolean enableListening;
	
	value.get(0, &pluginName);
	value.get(1, (TTPtr*)&appToNotify);
	value.get(2, &whereToListen);
	value.get(3, &attributeToListen);
	value.get(4, enableListening);
	
	TTLogDebug("TTApplicationManager::Listen");
	
	TTApplicationPtr	appWhereToListen;
	TTPluginHandlerPtr	aPlugin;
	TTValue				v, args;
	TTErr				err;
	
	appWhereToListen = TTApplicationManagerGetApplication(whereToListen);
	err = mPlugins->lookup(pluginName, v);
	
	if (!err && appWhereToListen) 
	{
		v.get(0, (TTPtr*)&aPlugin);
		
		// add observer
		if (enableListening) {
			
			// start directory listening
			if (attributeToListen == TT("life")) { // TODO : find a better name
				args.append((TTPtr)aPlugin);
				args.append((TTPtr)appToNotify);
				args.append(whereToListen);
				return appWhereToListen->sendMessage(TT("AddDirectoryListener"), args);
			}
			// start attribute listening
			else {
				args.append((TTPtr)aPlugin);
				args.append((TTPtr)appToNotify);
				args.append(whereToListen);
				args.append(attributeToListen);
				return appWhereToListen->sendMessage(TT("AddAttributeListener"), args);
			}
		}
		// remove listener
		else {
			
			// stop directory listening
			if (attributeToListen == TT("life")) { // TODO : find a better name
				args.append(whereToListen);
				return appWhereToListen->sendMessage(TT("RemoveDirectoryListener"), args);
			}
			// stop attribute listening
			else {
				args.append(whereToListen);
				args.append(attributeToListen);
				return appWhereToListen->sendMessage(TT("RemoveAttributeListener"), args);
			}
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

TTErr TTApplicationManagerSplitAppNameFromAddress(TTSymbolPtr address, TTSymbolPtr* returnedAppName, TTSymbolPtr* returnedAddress)
{
	TTErr err = kTTErrNone;
	long nb, pos;
	TTString part1, part2;
	
	part1 = "";
	part2 = address->getCString();
	
	nb = std::count(part2.begin(), part2.end(), '@');
		
	if(nb)
	{
		pos = part2.find_first_of('@');
		part1 += part2.substr(0, pos+1);
		part2 = part2.substr(pos+1, part2.size());
	}
	else
		err = kTTErrGeneric;

	*returnedAppName = TT(part1);
	*returnedAddress = TT(part2);
	
	return err;
}
