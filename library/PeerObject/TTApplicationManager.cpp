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
mPluginFactories(NULL),
mPlugins(NULL),
{
	TT_ASSERT("Correct number of args to create TTApplicationManager", arguments.getSize() == 0);
	
	addAttribute(Applications, kTypePointer);

	addMessageWithArgument(PluginLoadAll);
	addMessageWithArgument(PluginSetParameters);
	addMessageWithArgument(PluginLaunch);
	addMessageWithArgument(PluginScanallApplication);
	
	addMessageWithArgument(ApplicationAdd);
	addMessageWithArgument(ApplicationRemove);
	addMessageWithArgument(ApplicationGet);
	
	// needed to be handled by a TTXmlHandler
	addMessageWithArgument(WriteAsXml);
	addMessageWithArgument(ReadFromXml);
	
	mApplications		= new TTHash();
	mPluginFactories	= new PluginFactories();
	mPlugins			= new TTHash();
}

TTApplicationManager::~TTApplicationManager()
{
	delete mApplications;
	delete mPlugins;
}

TTErr TTApplicationManager::PluginLoadAll(const TTValue& value)
{
	TTXmlHandlerPtr	aXmlHandler	= NULL;
	TTValue			v, args;
	//TTCString		pluginsPath;
	TTSymbolPtr		pluginsPath;
	
	//value.get(0, (TTPtr*)&pluginsPath);
	value.get(0, &pluginsPath);

	mfactories->loadPlugins(pluginsPath->getCString());

	// create an instance of each plugin available
	IteratorPluginNames it = mfactories->getPluginNames();
	
	while (it.hasNext()) {
		TTString pname = it.next();
		std::cout << pname << std::endl;
		PluginPtr p = mfactories->createPlugin(pname, this);
		if (p != 0) {
			mPlugins->append(TT(pname), p);
		}
	}	
	
	// define parameters for each plugin available
	//mPlugins->iterate((TTPtr)this, definePlugins);

	// load a xml config file 
	if (value.getSize() > 1) {
		TTSymbolPtr xmlConfigPath;
		value.get(1, &xmlConfigPath);

		// instanciate a XmlHandler
		args.clear();
		TTObjectInstantiate(TT("XmlHandler"), TTObjectHandle(&aXmlHandler),	args);
		
		// set XmlHandler being used by ApplicationManager
		v = TTValue(TTPtr(this));
		aXmlHandler->setAttributeValue(kTTSym_object, v);
		aXmlHandler->setAttributeValue(TT("headerNodeName"),	TT("applicationManager"));
//		aXmlHandler->setAttributeValue(TT("version"),			TT(XML_MAPPING_VERSION));
//		aXmlHandler->setAttributeValue(TT("xmlSchemaLocation"), TT(XML_MAPPING_SCHEMA_LOCATION));
		
		v.clear();
		v.append(xmlConfigPath);
		aXmlHandler->sendMessage(TT("Read"), v);//TODO : return an error code if fail
	}

	// launch plugins
	mPlugins->iterate((TTPtr)this, launchPlugins);
	
	return kTTErrNone;
}

TTErr TTApplicationManager::PluginSetParameters(const TTValue& value)
{
	TTSymbolPtr pluginName;
	TTHashPtr pluginParameters;
	PluginPtr aPlugin;
	
	value.get(0, &pluginName);
	value.get(1, (TTPtr*)pluginParameters);
	
	if (!mPlugins->lookup(pluginName, v)) {
		v.get(0, (TTPtr*)&aPlugin);
		// aPlugin->commDefineParameters(pluginParameters); // to -- here we should just pass the pluginParameters TTHash...
	}
}

TTerr TTApplicationManager::PluginLaunch(const TTValue& value)
{
	TTSymbolPtr pluginName;
	PluginPtr aPlugin;
	
	value.get(0, &pluginName);
	
	if (!mPlugins->lookup(pluginName, v)) {
		v.get(0, (TTPtr*)&aPlugin);
		aPlugin->commRunReceivingThread();
	}
}

TTErr TTApplicationManager::AddApplication(const TTValue& value)
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
	if (applicationName = kTTSym_local)
		;
	// else : add distant application to the plugin
	else
		;
	return kTTErrNone;
}

TTErr TTApplicationManager::RemoveApplication(const TTValue& value)
{
	TTValue v;
	TTSymbolPtr applicationName;
	
	value.get(0, &applicationName);
	
	mApplications->remove(applicationName);
	
	return kTTErrNone;
}

TTErr TTApplicationManager::GetApplication(TTValue& value)
{
	TTSymbolPtr applicationName;
	
	if (value.getSize())
		if (value.getType() = kTypeSymbol)
			value.get(0, &applicationName);
	
	return mApplications->lookup(applicationName, value);
}

TTErr TTApplicationManager::Scan()
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
	TTXmlHandlerPtr	aXmlHandler = NULL;	
	TTSymbolPtr		applicationName, pluginName, attributeName;
	TTValue			v, args;
	PluginPtr		plugin;
	
	value.get(0, (TTPtr*)&aXmlHandler);
	if (!aXmlHandler)
		return kTTErrGeneric;
	
	// switch on the name of the XML node
	
	// starts reading
	if (aXmlHandler->mXmlNodeName == TT("start")) {

		return kTTErrNone;
	}
	
	// ends reading
	if (aXmlHandler->mXmlNodeName == TT("end")) {
		
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
		
		//std::cout << "applicationName " << applicationName->getString() << std::endl;
		
		// get the plugin name
		v.clear();
		xmlTextReaderMoveToAttribute(aXmlHandler->mReader, (const xmlChar*)("plugin"));
		aXmlHandler->fromXmlChar(xmlTextReaderValue(aXmlHandler->mReader), v);
		if (v.getType() == kTypeSymbol) {
			v.get(0, &pluginName);
		}
		
		//std::cout << "pluginName " << pluginName->getString() << std::endl;
		
		// get the plugin instance
		v.clear();
		mPlugins->lookup(pluginName, v);
		v.get(0, (TTPtr*)&plugin);
		
		// Set local application plugin parameters
		if (applicationName == kTTSym_local) {
			TTHashPtr pluginParameters = new TTHash();
			
			// browse other attributes in xml
			while (xmlTextReaderMoveToNextAttribute(aXmlHandler->mReader) == 1) {
				
				// get attribute name
				aXmlHandler->fromXmlChar(xmlTextReaderName(aXmlHandler->mReader), v);
				if (v.getType() == kTypeSymbol) {
					v.get(0, &attributeName);
					v.clear();
					
					// get attribute value
					aXmlHandler->fromXmlChar(xmlTextReaderValue(aXmlHandler->mReader), v);
					
					// fill the commParameters table
					pluginParameters.append(attributeName, v);
				}
			}
			
			// define plugin parameters
			// to -- here we should just pass the pluginParameters TTHash...
			plugin->commDefineParameters(pluginParameters);
			
		} 
		// add distant applications
		else {
			
			args.append(applicationName);
			args.append(pluginName);
			
			// browse other attributes in xml
			while (xmlTextReaderMoveToNextAttribute(aXmlHandler->mReader) == 1) {
				
				// get attribute name
				aXmlHandler->fromXmlChar(xmlTextReaderName(aXmlHandler->mReader), v);
				if (v.getType() == kTypeSymbol) {
					v.get(0, &attributeName);
					v.clear();
					
					// get attribute value
					aXmlHandler->fromXmlChar(xmlTextReaderValue(aXmlHandler->mReader), v);
					
					// add application arguments
					args.append(attributeName);
					args.append(&v);
				}
			}
			
			// add the Application
			AddApplication(args); 
		}
	}
	
	return kTTErrNone;
}

#if 0
#pragma mark -
#pragma mark Some Methods
#endif

TTNodeDirectoryPtr TTApplicationManagerGetDirectory(TTObjectPtr anApplicationManager, TTSymbolPtr anAddress)
{
	TTValue v;
	TTSymbolPtr applicationName;
	TTApplicationPtr anApplication;
	TTErr err;
	
	if (anApplicationManager) {
		
		// TODO : parse the application name from address
		
		err = TTApplicationManagerPtr(anApplicationManager)->mApplications->lookup(applicationName, v);
		
		if (err)
			TTApplicationManagerPtr(anApplicationManager)->mApplications->lookup(kTTSym_local, v);
		
		v.get(0, (TTPtr*)&anApplication);
		return anApplication->mDirectory
	}
	
	return NULL;
}


TTErr TTApplicationManagerDirectoryCallback(TTPtr baton, TTValue& data)
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
	
	err = getDirectoryFrom(aApplicationManager)->getTTNodeForOSC(whereToSend, &applicationNodeToAnswer);
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

TTErr TTApplicationManagerAttributeCallback(TTPtr baton, TTValue& data)
{
	std::cout << "TTApplicationManagerAttributeCallback" << std::endl;
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
	err = getDirectoryFrom(aApplicationManager)->getTTNodeForOSC(whereToSend, &applicationNodeToAnswer);
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

TTErr TTApplicationManagerDiscoverCallback(TTPtr arg, TTString whereToDiscover, std::vector<TTString>& returnedNodes, std::vector<TTString>& returnedLeaves, std::vector<TTString>& returnedAttributes)
{
	TTErr err;
	TTNodePtr nodeToDiscover, aChild;
	TTList allChildren;
	TTString instanceName, sAttribute;
	TTSymbolPtr attributeName, type;
	TTValue attributeNameList, v;
	TTObjectPtr o;
	int i;
	
	TTApplicationManagerPtr aTTApplicationManager = (TTApplicationManagerPtr) arg;
	
	if(aTTApplicationManager){
		
		// Get the Node at the given address
		err = getDirectoryFrom(aTTApplicationManager)->getTTNodeForOSC(whereToDiscover.c_str(), &nodeToDiscover);
		
		if(!err){
			
			// Edit the vector with all name+instance of each children
			nodeToDiscover->getChildren(S_WILDCARD, S_WILDCARD, allChildren);
			for(allChildren.begin(); allChildren.end(); allChildren.next())
			{
				allChildren.current().get(0,(TTPtr*)&aChild);
				
				instanceName = aChild->getName()->getString();
				
				if(aChild->getInstance() != NO_INSTANCE){
					instanceName += ".";
					instanceName += aChild->getInstance()->getString();
				}
				
				// if the object is a Data : push his name in the leaves list
				if (o = aChild->getObject()) {
					type = o->getName();
					if(type == TT("Data")) {
						returnedLeaves.push_back(instanceName.c_str());
						continue;
					}
				}
				
				// else in the nodes list
				returnedNodes.push_back(instanceName.c_str());
			}
			
			// Edit the vector with all attributes name
			// if there is an object push all
			// this attributes in the attribute list
			if (o = nodeToDiscover->getObject()) {
				
				type = o->getName();
				
				// Add the access attribute which is not a jamoma attribute
				// only for the data
				//				if(type == TT("Data"))
				//					returnedAttributes.push_back(NAMESPACE_ATTR_ACCESS);
				
				// Add all other attributes
				o->getAttributeNames(attributeNameList);
				for(i = 0; i < attributeNameList.getSize(); i++)
				{
					attributeNameList.get(i,(TTSymbolPtr*)&attributeName);
					sAttribute = attributeName->getCString();
					
					if(strcmp(sAttribute.c_str(), ""))
						returnedAttributes.push_back(sAttribute);
				}
			}
		}
		else{
			; //TODO send a notification : Jamoma!namespace #address /address
		}
	}	
	return kTTErrNone;
}

TTErr TTApplicationManagerGetCallback(TTPtr baton, TTValue& data)
{
	TTValuePtr			b;
	TTApplicationManagerPtr	aTTApplicationManager;
	TTSymbolPtr			whereToGet, attrName, nodeType;
	TTErr				err; 
	TTNodePtr			nodeToGet;
	TTList				allChildren;
	TTValue				v;
	TTObjectPtr			o;
	
	// unpack baton
	b = (TTValuePtr)baton;
	b->get(0, (TTPtr*)&aTTApplicationManager);
	b->get(1, &whereToGet);
	b->get(2, &attrName);
	
	if(aTTApplicationManager){
		
		// Get the Node at the given address
		err = getDirectoryFrom(aTTApplicationManager)->getTTNodeForOSC(whereToGet, &nodeToGet);
		
		if(!err){
			
			// test node type to get the access status
			o = nodeToGet->getObject();
			nodeType = o->getName();
			
			// Convert attribute into Jamoma style
			//attributeName = aTTApplicationManager->convertAttributeToJamoma(attribute);
			//attributeName = TT(attribute);
			
			// filter Access attribute
			if(attrName == kTTSym_service){
				
				// TODO : add a Jamoma attribute for this
				data = TT("getsetter");
				
			}
			//			// filter RangBounds attribute
			//			else if(attrName == kTTSym_rangeBounds){
			//				
			//				err = o->getAttributeValue(kTTSym_rangeBounds, v);
			//				
			//				v.toString();
			//				v.get(0, returnedValue);
			//			}
			//			else{
			//				
			//				// get the value of the attribute
			//				v.clear();
			//				err = o->getAttributeValue(attributeName, v);
			//				
			//				// and convert it in string
			//				if(!err){
			//					
			//					v.toString();
			//					v.get(0, returnedValue);
			//				}
			//			}
			else {
				// get the value of the attribute
				v.clear();
				err = o->getAttributeValue(attrName, v);
				
				// and convert it in string
				if(!err){
					data = v;
				}
				
			}
		}
	}
	else{
		; //TODO send a notification : Jamoma!get #address /address:attribute
	}
	
	return kTTErrNone;
}	

TTErr TTApplicationManagerSetCallback(TTPtr baton, TTValue& data)
{
	std::cout << "TTApplicationManagerSetCallback" << std::endl;
	
	TTValuePtr			b;
	TTApplicationManagerPtr	aTTApplicationManager;
	TTSymbolPtr			whereToSet, attrName, nodeType;
	TTErr				err;
	TTNodePtr			nodeToSet;
	TTList				allChildren;
	TTValue				attributeValue, v;
	TTObjectPtr			o;
	
	// unpack baton
	b = (TTValuePtr)baton;
	b->get(0, (TTPtr*)&aTTApplicationManager);
	
	// unpack data
	data.get(0, &whereToSet);
	data.get(1, &attrName);
	data.get(2, (TTPtr*)&attributeValue);
	
	if (aTTApplicationManager) {
		
		// Get the Node at the given address
		err = TTApplicationManagerGetDirectory(aTTApplicationManager, whereToSet)->getTTNodeForOSC(whereToSet, &nodeToSet);
		
		if(!err){
			// test node type to get the access status
			o = nodeToSet->getObject();
			nodeType = o->getName();
			
			if(nodeType == TT("Data")){
				
				//attrName = aTTApplicationManager->convertAttributeToJamoma(attribute);
				//attrName = TT(attribute);
				if (attrName == kTTSym_value)
					o->sendMessage(kTTSym_Command, attributeValue);
				else
					o->setAttributeValue(attrName, attributeValue);
				
			}
		}
		else {
			; //TODO send a notification : Jamoma!set #address /address:attribute value
		}
		
		return kTTErrNone;
	}	
	
	return kTTErrGeneric;
}

TTErr TTApplicationManagerListenCallback(TTPtr baton, TTValue& data)
{
	TTValuePtr			b;
	TTApplicationManagerPtr	aTTApplicationManager;
	TTSymbolPtr			whereToSend, whereToListen, attributeToListen;
	TTBoolean			enableListening;
	
	// unpack baton
	b = (TTValuePtr)baton;
	b->get(0, (TTPtr*)&aTTApplicationManager);
	b->get(1, &whereToSend);
	b->get(2, &whereToListen);
	b->get(3, &attributeToListen);
	b->get(4, enableListening);
	
	if (aTTApplicationManager) {	
		if (enableListening)
			aTTApplicationManager->enableListening(whereToSend, whereToListen, attributeToListen);
		else
			aTTApplicationManager->disableListening(whereToSend, whereToListen, attributeToListen);
		
		return kTTErrNone;
	}
	
	return kTTErrGeneric;
}

