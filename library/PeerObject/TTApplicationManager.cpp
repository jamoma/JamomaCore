/* 
 * An Application Manager Object
 * Copyright © 2010, Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTApplicationManager.h"
#include "PluginFactories.h"
#include "Plugin.h"

#define thisTTClass			TTApplicationManager
#define thisTTClassName		"ApplicationManager"
#define thisTTClassTags		"application, manager"

TT_MODULAR_CONSTRUCTOR,
mApplications(NULL),
mPlugins(NULL),	
mApplicationNames(kTTValNONE),
mPluginNames(kTTValNONE),	
mPluginFactories(NULL),
mCurrentApplication(NULL)
{
	TTSymbolPtr	pluginFolderPath;
	
	TT_ASSERT("Correct number of args to create TTApplicationManager", arguments.getSize() == 1);
	
	arguments.get(0, &pluginFolderPath);
	
	addAttributeWithGetter(ApplicationNames, kTypeLocalValue);
	addAttributeProperty(applicationNames, readOnly, YES);
	
	addAttributeWithGetter(PluginNames, kTypeLocalValue);
	addAttributeProperty(pluginNames, readOnly, YES);
	
	addMessageWithArgument(Add);
	addMessageWithArgument(Remove);
	
	addMessageWithArgument(PluginSetParameters);
	addMessageWithArgument(PluginLaunch);
	addMessageWithArgument(PluginScanAllApplication);
	
	// needed to be handled by a TTXmlHandler
	addMessageWithArgument(WriteAsXml);
	addMessageWithArgument(ReadFromXml);
	
	mApplications		= new TTHash();
	mPluginFactories	= new PluginFactories();
	mPlugins			= new TTHash();
	
	// load plugins and create an instance of each plugin available
	mPluginFactories->loadPlugins(pluginFolderPath->getCString());
	
	IteratorPluginNames it = mPluginFactories->getPluginNames();
	
	while (it.hasNext()) {
		TTString pname = it.next();
		
		// DEBUG
		TTLogDebug("%s plugin loaded", pname.data());
		
		PluginPtr p = mPluginFactories->createPlugin(pname, this);
		if (p != 0) {
			mPlugins->append(TT(pname), p);
		}
	}	
}

TTApplicationManager::~TTApplicationManager()
{
	delete mApplications;
	delete mPlugins;
}

TTErr TTApplicationManager::getApplicationNames(TTValue& value)
{
	return mApplications->getKeys(value);
}

TTErr TTApplicationManager::getPluginNames(TTValue& value)
{
	return mPlugins->getKeys(value);
}

TTErr TTApplicationManager::Add(const TTValue& value)
{
	TTValue v;
	TTSymbolPtr applicationName, pluginName;
	TTObjectPtr anApplication;
	PluginPtr	aPlugin;
	
	value.get(0, &applicationName);
	value.get(1, (TTPtr*) anApplication);
	
	// add application to the manager
	mApplications->append(applicationName, (TTPtr)anApplication);
	
	// get application plugin name
	anApplication->getAttributeValue(TT("commPlugin"), v);
	v.get(0, &pluginName);
	
	// get plugin
	if (mPlugins->lookup(pluginName, v))
		return kTTErrGeneric;
	v.get(0, (TTPtr*)&aPlugin);
	
	// if local application : set plugin parameters
	if (applicationName = kTTSym_localApplicationName)
		;
	// else : add distant application to the plugin
	else
		;
	
	return kTTErrNone;
}

TTErr TTApplicationManager::Remove(const TTValue& value)
{
	TTValue v;
	TTSymbolPtr applicationName;
	
	value.get(0, &applicationName);
	
	mApplications->remove(applicationName);
	
	return kTTErrNone;
}

TTErr TTApplicationManager::PluginSetParameters(const TTValue& value)
{
	
	TTValue	v;
	TTSymbolPtr pluginName;
	TTHashPtr pluginParameters;
	PluginPtr aPlugin;
	
	value.get(0, &pluginName);
	value.get(1, (TTPtr*)pluginParameters);
	
	if (!mPlugins->lookup(pluginName, v)) {
		v.get(0, (TTPtr*)&aPlugin);
		// aPlugin->commDefineParameters(pluginParameters); // to -- here we should just pass the pluginParameters TTHash...
	}
	
	return kTTErrNone;
}

TTErr TTApplicationManager::PluginLaunch(const TTValue& value)
{

	TTValue v;
	TTSymbolPtr pluginName;
	PluginPtr aPlugin;
	
	value.get(0, &pluginName);
	
	if (!mPlugins->lookup(pluginName, v)) {
		v.get(0, (TTPtr*)&aPlugin);
		aPlugin->commRunReceivingThread();
	}
	
	return kTTErrNone;
}

TTErr TTApplicationManager::PluginScanAllApplication()
{
	TTValue			v, keys;
	TTSymbolPtr		pluginName;
	PluginPtr		aPlugin;
	
	// for each plugin
	mPlugins->getKeys(keys);
	for (TTUInt16 i=0; i<keys.getSize(); i++) {
			
			keys.get(i, &pluginName);
			mPlugins->lookup(pluginName, v);
			v.get(0, (TTPtr*)&aPlugin);
			
			// TODO : scan the network to look for distant applications
			// and then add them to the ApplicationManager
	}

	return kTTErrNone;
}


TTErr TTApplicationManager::WriteAsXml(const TTValue& value)
{
	return kTTErrNone;
}

TTErr TTApplicationManager::ReadFromXml(const TTValue& value)
{
	TTXmlHandlerPtr		aXmlHandler = NULL;	
	TTSymbolPtr			applicationName, version;
	TTApplicationPtr	anApplication;
	TTValue				v, args;
	
	value.get(0, (TTPtr*)&aXmlHandler);
	if (!aXmlHandler)
		return kTTErrGeneric;
	
	// switch on the name of the XML node
	
	// starts reading
	if (aXmlHandler->mXmlNodeName == TT("start")) {
		
		mCurrentApplication = NULL;
		
		// stop plugin reception threads
		mPlugins->iterate((TTPtr)this, TTApplicationManagerStopPlugins);

		return kTTErrNone;
	}
	
	// ends reading
	if (aXmlHandler->mXmlNodeName == TT("end")) {
		
		// start plugin reception threads
		mPlugins->iterate((TTPtr)this, TTApplicationManagerStartPlugins);
		
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
		
		// get the application version 
		xmlTextReaderMoveToAttribute(aXmlHandler->mReader, (const xmlChar*)("version"));
		aXmlHandler->fromXmlChar(xmlTextReaderValue(aXmlHandler->mReader), v);
		if (v.getType() == kTypeSymbol) {
			v.get(0, &version);
		}
		
		// if the application exists : get it
		if (!mApplications->lookup(applicationName, v))
			v.get(0, (TTPtr*)&anApplication);
		
		// else create one and add it
		else {
			anApplication = NULL;
			args = TTValue((TTPtr)this);
			args.append(applicationName);
			args.append(version);
			TTObjectInstantiate(TT("application"), TTObjectHandle(&anApplication), args);
			
			v = TTValue(applicationName);
			v.append((TTPtr)anApplication);
			Add(v);
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

TTApplicationPtr TTApplicationManagerGetApplication(TTSymbolPtr anAddress)
{
	TTValue v;
	TTSymbolPtr applicationName;
	TTApplicationPtr anApplication;
	TTErr err;
	
	if (TTModularApplications) {
		// the address could be simply the name of the application name or a complete address
		// TODO : parse the application name from address
		
		err = TTModularApplications->mApplications->lookup(applicationName, v);
		
		if (err)
			TTModularApplications->mApplications->lookup(kTTSym_localApplicationName, v);
		
		v.get(0, (TTPtr*)&anApplication);
		return anApplication;
	}
	
	return NULL;
}

PluginPtr TTApplicationManagerGetPlugin(TTSymbolPtr pluginName)
{
	TTValue v;
	PluginPtr aPlugin;
	TTErr err;
	
	if (TTModularApplications) {
		
		err = TTModularApplications->mPlugins->lookup(pluginName, v);
		v.get(0, (TTPtr*)&aPlugin);
		return aPlugin;
	}
	
	return NULL;
}

TTErr TTApplicationManagerLocalApplicationDirectoryCallback(TTPtr baton, TTValue& data)
{
	TTValuePtr			b;
	TTApplicationManagerPtr	aApplicationManager;
	TTSymbolPtr			whereToSend;
	TTSymbolPtr			whereToListen;
	TTSymbolPtr			attributeToListen;
	TTString			returnedValue;
	TTSymbolPtr			oscAddress;
	TTSymbolPtr			aNode;
	TTUInt8				flag;
	TTCallbackPtr		anObserver;
	TTNodePtr			applicationNodeToAnswer;
	TTErr				err;
	TTObjectPtr			o;
	
	// unpack baton (a t_object* and the name of the method to call)
	b = (TTValuePtr)baton;
	b->get(0, (TTPtr*)&aApplicationManager);
	b->get(1, &whereToSend);
	b->get(2, &whereToListen);
	b->get(3, &attributeToListen);
	
	// unpack data (oscAddress, aNode, flag, anObserver)
	data.get(0, &oscAddress);
	data.get(1, (TTPtr*)&aNode);
	data.get(2, flag);
	data.get(3, (TTPtr*)&anObserver);
	
	returnedValue = "" + flag;
	
	// DEBUG
	if(flag)
		;//post("Notify %s about %s creation", whereToSend.data(), whereToListen.data());
	else
		;//post("Notify %s about %s destruction", whereToSend.data(), whereToListen.data());
	
	err = getDirectoryFrom(whereToSend)->getTTNodeForOSC(whereToSend, &applicationNodeToAnswer);
	if (!err) {
		if (o = applicationNodeToAnswer->getObject()) {
			if (o->getName() == TT("Application")) {
				
				//o->sendMessage(TT("ListenAnswer"), args);
				
				return kTTErrNone;
			}
		}
	}
	
	return kTTErrGeneric;
}

TTErr TTApplicationManagerLocalApplicationAttributeCallback(TTPtr baton, TTValue& data)
{
	TTLogDebug("TTApplicationManagerAttributeCallback");
	
	TTValuePtr			b;
	TTApplicationManagerPtr	aApplicationManager;
	TTSymbolPtr			whereToSend, whereToListen, attributeToListen;
	TTNodePtr			applicationNodeToAnswer;
	TTErr				err;
	TTObjectPtr			o;
	TTValue				args;
	
	// unpack baton
	b = (TTValuePtr)baton;
	b->get(0, (TTPtr*)&aApplicationManager);
	b->get(1, &whereToSend);
	b->get(2, &whereToListen);
	b->get(3, &attributeToListen);
	
	// send a listen answer
	err = getDirectoryFrom(whereToSend)->getTTNodeForOSC(whereToSend, &applicationNodeToAnswer);
	if (!err) {
		if (o = applicationNodeToAnswer->getObject()) {
			if (o->getName() == TT("Application")) {
				
				// prepare ListenAnswer message arguments
				//args.append(whereToListen);
				//args.append(attributeToListen);
				o->setAttributeValue(TT("addressToSpeakWith"), whereToListen);
				o->setAttributeValue(TT("attributeToSpeakWith"), attributeToListen);
				
				//TTSymbolPtr	s;
				//data.get.get(0, &s);
				//std::cout << data.getSize() << std::endl;
				//std::cout << s->getCString() << std::endl;
				
				args.append(data);
				
				o->sendMessage(TT("ListenAnswer"), args);
				
				return kTTErrNone;
			}
		}
	}
	
	return kTTErrGeneric;
}

TTErr TTApplicationManagerLocalApplicationDiscover(TTSymbolPtr whereToDiscover, TTValue& returnedNodes, TTValue& returnedLeaves, TTValue& returnedAttributes)
{
	TTLogDebug("TTApplicationManagerLocalApplicationDiscover");
	
	TTList				nodeList, childList;
	TTNodePtr			firstNode, aNode;
	TTSymbolPtr			nodeAddress, objectType;
	TTObjectPtr			anObject;
	TTErr				err;
	
	err = getDirectoryFrom(whereToDiscover)->Lookup(whereToDiscover, nodeList, &firstNode);
	firstNode->getChildren(S_WILDCARD, S_WILDCARD, childList);
	
	if (!err) {
		
		for (childList.begin(); childList.end(); childList.next()) {
			
			// get the returned node
			childList.current().get(0, (TTPtr*)&aNode);
			
			// get the node osc absolute address
			// to -- if we change the way to exchange TTNodeDirectory description 
			// we should avoid to return the absolute address
			aNode->getOscAddress(&nodeAddress);
			
			// to -- is the leaves field is still good ? 
			// maybe something like an object type field would be more generic ? not sure...
			// but we have to think on a specific way to explore a TTNodeDirectory in order 
			// to don't loose the specificity of his structure but without sending too much request
			if (anObject = aNode->getObject()) {
				
				objectType = anObject->getName();
				
				if (objectType == TT("Data"))
					returnedLeaves.append(nodeAddress);
				else
					returnedNodes.append(nodeAddress);
			}
		}
	} 
	else
		return kTTErrGeneric; // TODO : return an error notification
	
	return kTTErrNone;
}

TTErr TTApplicationManagerLocalApplicationListen(TTApplicationPtr appWhereToSend, TTSymbolPtr whereToListen, TTSymbolPtr attributeToListen, TTBoolean enableListening)
{
	TTLogDebug("TTApplicationManagerLocalApplicationListen");
	
	TTApplicationPtr	appWhereToListen;
	TTNodePtr			nodeToListen;
	TTObjectPtr			anObject;
	TTErr				err;
	
	appWhereToListen = TTApplicationManagerGetApplication(whereToListen);
	err = appWhereToListen->mDirectory->getTTNodeForOSC(whereToListen, &nodeToListen);
	
	if (!err) 
	{
		
		anObject = nodeToListen->getObject();
		
		// add observer
		if (enableListening) {
			
			// start directory observation
			if (attributeToListen == TT("life")) { // TODO : find a better name
				
				; // TODO : prepare a callback based on TTApplicationManagerLocalApplicationDirectoryCallback
				; // TODO : add it to the appWhereToListen application directory using addObserverForNotifications
				; // TODO : cache the observer in a hashtable (into the appWhereToListen application, not into the applicationManager)
			}
			// start attribute observation
			else {
				
				; // TODO : prepare a callback based on TTApplicationManagerLocalApplicationAttributeCallback
				; // TODO : add it to the object using registerObserverForNotifications
				; // TODO : cache the observer in a hashtable (into the appWhereToListen application, not into the applicationManager)
			}
		}
		// remove observer
		else {
			
			// stop directory observation
			if (attributeToListen == kTTSymEmpty) {
				
				; // TODO : get the old observer from the observers cache of the appWhereToListen application
				; // TODO : remove it from the appWhereToListen application directory using removeObserverForNotifications
			}
			// stop attribute observation
			else {
				; // TODO : get the old observer from the observers cache of the appWhereToListen application
				; // TODO : prepare a callback using TTApplicationManagerLocalApplicationAttributeCallback
			}
		}
	}	
	else
		return kTTErrGeneric; // TODO : return an error notification
	
	return kTTErrNone;
}

TTErr TTApplicationManagerLocalApplicationSet(TTSymbolPtr whereToSet, TTSymbolPtr attributeToSet, TTValue& value)
{
	TTLogDebug("TTApplicationManagerLocalApplicationSet");
	
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
				anObject->sendMessage(kTTSym_Command, value);
			else
				anObject->setAttributeValue(attributeToSet, value);
		}
		else 
			anObject->setAttributeValue(attributeToSet, value);
	}
	else
		return kTTErrGeneric; // TODO : return an error notification
	
	return kTTErrNone;
}

TTErr TTMODULAR_EXPORT TTApplicationManagerLocalApplicationGet(TTSymbolPtr whereToGet, TTSymbolPtr attributeToGet, TTValue& returnedValue)
{
	TTLogDebug("TTApplicationManagerLocalApplicationGet");
	
	TTNodePtr			nodeToGet;
	TTObjectPtr			anObject;
	TTErr				err;
	
	err = getDirectoryFrom(whereToGet)->getTTNodeForOSC(whereToGet, &nodeToGet);
	
	if (!err) {
		
		if (anObject = nodeToGet->getObject())
			anObject->getAttributeValue(attributeToGet, returnedValue);
	}
	else
		return kTTErrGeneric; // TODO : return an error notification
	
	return kTTErrNone;
}

void TTApplicationManagerStartPlugins(const TTPtr target, const TTKeyVal& iter)
{
	PluginPtr pluginPtr = NULL;
	TTValue v = iter.second;
	v.get(0, (TTPtr*)&pluginPtr);
	if (pluginPtr != NULL) {
		pluginPtr->commRunReceivingThread();
	}
}

void TTApplicationManagerStopPlugins(const TTPtr target, const TTKeyVal& iter)
{
	PluginPtr pluginPtr = NULL;
	TTValue v = iter.second;
	v.get(0, (TTPtr*)&pluginPtr);
	if (pluginPtr != NULL) {
		;// TODO : add a way to stop the reception thread
	}
}