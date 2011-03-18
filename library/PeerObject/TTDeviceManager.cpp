/* 
 * A Device Manager Object
 * Copyright © 2010, Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTDeviceManager.h"
#include "PluginFactories.h"
#include "Plugin.h"

#define thisTTClass			TTDeviceManager
#define thisTTClassName		"DeviceManager"
#define thisTTClassTags		"device, manager"

TT_MODULAR_CONSTRUCTOR,
mApplication(NULL),
mName(kTTSymEmpty),
mfactories(NULL),
mListernersCache(NULL),
mPlugins(NULL),
mDevices(NULL),
mDiscoverCallback(NULL),
mGetCallback(NULL),
mSetCallback(NULL),
mListenCallback(NULL)
{
	TT_ASSERT("Correct number of args to create TTDeviceManager", arguments.getSize() == 2);
	
	arguments.get(0, (TTPtr*)&mApplication);
	TT_ASSERT("Application passed to TTDeviceManager is not NULL", mApplication);
	arguments.get(1, &mName);
	
	addAttribute(Name, kTypeSymbol);
	addAttribute(Devices, kTypePointer);
	
	addMessageWithArgument(LoadPlugins);
	addMessageWithArgument(AddDevice);
	addMessageWithArgument(Scan);
	
	// needed to be handled by a TTXmlHandler
	addMessageWithArgument(WriteAsXml);
	addMessageWithArgument(ReadFromXml);
	
	mfactories = new PluginFactories();
	
	mListernersCache	= new TTHash();
	mPlugins			= new TTHash();
	mDevices			= new TTHash();
}

TTDeviceManager::~TTDeviceManager()
{
	delete mListernersCache;
	delete mPlugins;
	delete mDevices;
}

void definePlugins(const TTPtr target, const TTKeyVal& iter)
{
	PluginPtr pluginPtr = NULL;
	TTValue v = iter.second;
	v.get(0, (TTPtr*)&pluginPtr);
	if (pluginPtr != NULL) {
		TTValue v;
		//pluginPtr->commDefineParameters();
	}
}

void launchPlugins(const TTPtr target, const TTKeyVal& iter)
{
	PluginPtr pluginPtr = NULL;
	TTValue v = iter.second;
	v.get(0, (TTPtr*)&pluginPtr);
	if (pluginPtr != NULL) {
		pluginPtr->commRunReceivingThread();
	}
}

TTErr TTDeviceManager::LoadPlugins(const TTValue& value)
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
		
		// set XmlHandler being used by DeviceManager
		v = TTValue(TTPtr(this));
		aXmlHandler->setAttributeValue(kTTSym_object, v);
		aXmlHandler->setAttributeValue(TT("headerNodeName"),	TT("deviceManager"));
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

TTErr TTDeviceManager::AddDevice(const TTValue& value)
{
	TTSymbolPtr	pluginToUse;
	TTSymbolPtr deviceName, deviceAddress;
	TTSymbolPtr commParamName, commParam_SymValue;
	TTInt32		commParam_IntValue = 0;
	TTFloat64	commParam_FloatValue;
	TTValue		commParamValue, pluginPtrValue, args;
	TTString	commParamValueStr;
	TTUInt8		i;
	PluginPtr	pluginPtr	= NULL;
	TTDevicePtr device		= NULL;
	TTNodePtr	returnedNode= NULL;
	TTBoolean	newInstanceCreated;
	TTHashPtr	commDatas;
	TTErr		err;

	std::cout << "AddDevice" << std::endl;
	value.get(0, &deviceName);
	value.get(1, &pluginToUse);
	
	// get the plugin ptr corresponding to it name
	err = mPlugins->lookup(pluginToUse, pluginPtrValue);
	if (err) {
		return kTTErrGeneric;
	}
	
	pluginPtrValue.get(0, (TTPtr*)&pluginPtr);
	//pluginPtr->deviceAdd(deviceName);//really need it ?
	
	// prepare TTDevice arguments
	args.append(this);
	args.append(deviceName);
	args.append(pluginPtr);
	
	// extract commDatas
	commDatas = new TTHash();
	for (i=2; i<(value.getSize()-1); i=i+2) {
		
		if (value.getType(i) == kTypeSymbol) {
			value.get(i, &commParamName);
			if ((i+1)<value.getSize() ) {
				
				commParamValue.clear();
				if (value.getType(i+1) == kTypeSymbol) {
					value.get(i+1, &commParam_SymValue);
					commParamValue.append(commParam_SymValue);
				}
				else if (value.getType(i+1) == kTypeInt32) {
					value.get(i+1, commParam_IntValue);
					commParamValue.append((int)commParam_IntValue);
				}
				else if (value.getType(i+1) == kTypeFloat64) {
					value.get(i+1, commParam_FloatValue);
					commParamValue.append(commParam_FloatValue);
				}
				else return kTTErrGeneric;
				
				commDatas->append(commParamName, commParamValue);
				
			}
			else return kTTErrGeneric;
		}
		else return kTTErrGeneric;
	}
	
	// append commDatas
	args.append(commDatas);
	
	// instanciate TTDevice object with arguments
	TTObjectInstantiate(TT("Device"), TTObjectHandle(&device), args);
	
	// register the TTDevice object in the namespace directory at /"deviceName"
	deviceAddress = TT("/" + deviceName->getString());
	
	getDirectoryFrom(this)->TTNodeCreate(deviceAddress, (TTObjectPtr)device, NULL, &returnedNode, &newInstanceCreated);
	
	mDevices->append(deviceAddress, device);
	
	return kTTErrNone;
}

TTErr TTDeviceManager::Scan()
{
//	TTString deviceName;
//	bool understandDiscover;
//	
//	// scan the network
//	mDeviceManager->deviceSetCurrent();
//	
//	// get all Devices
//	std::map<TTString, Device*>* mapDevices = mDeviceManager->deviceGetCurrent();
//	
//	map<string, Device*>::iterator it = mapDevices->begin();
//	
//	while(it != mapDevices->end())
//	{
//		deviceName = it->first;
//		understandDiscover = mDeviceManager->deviceUnderstandDiscoverRequest(deviceName);
//		
//		if(understandDiscover)
//			;//post("Device \"%s\" understands discover request", deviceName.data());
//		else
//			;//post("Device \"%s\" doesn't understand discover request", deviceName.data());
//		
//		++it;
//	}
	
	return kTTErrNone;
}

TTErr TTDeviceManager::namespaceSet(TTSymbolPtr address, TTSymbolPtr attribute, TTValue& newValue)
{
	std::cout << "TTDeviceManager::namespaceSet" << std::endl;
	TTErr				err;
	TTNodePtr			nodeToSet;
	TTSymbolPtr			nodeType;
	TTObjectPtr			o;
	
	err = getDirectoryFrom(this)->getTTNodeForOSC(address, &nodeToSet);
	
	if (!err) {
	
		// test node type to get the access status
		o = nodeToSet->getObject();
		nodeType = o->getName();
		
		if (nodeType == TT("Data")) {
			
			//attrName = aTTDeviceManager->convertAttributeToJamoma(attribute);
			
			if (attribute == kTTSym_value)
				o->sendMessage(kTTSym_Command, newValue);
			else
				o->setAttributeValue(attribute, newValue);
			
			// TODO : case of RangeBondsMin and Max
			// managed by the Data ?
		}
		
		return kTTErrNone;
	}
	else {
		return kTTErrGeneric; //TODO send a notification : Jamoma!set #address /address:attribute value
	}
}

TTErr TTDeviceManager::namespaceGet(TTSymbolPtr address, TTSymbolPtr attribute, TTValue& newValue)
{
	std::cout << "TTDeviceManager::namespaceGet" << std::endl;
	TTErr				err;
	TTNodePtr			nodeToGet;
	TTSymbolPtr			nodeType;
	TTObjectPtr			o;
	
	err = getDirectoryFrom(this)->getTTNodeForOSC(address, &nodeToGet);
	
	if (!err) {
		// test node type to get the access status
		o = nodeToGet->getObject();
		nodeType = o->getName();
		
		if (nodeType == TT("Data")) {
			//attrName = aTTDeviceManager->convertAttributeToJamoma(attribute);
			
			o->getAttributeValue(attribute, newValue);
		}
		
		return kTTErrNone;
		
	} 
	else {
		return kTTErrGeneric; //TODO send a notification : Jamoma!set #address /address:attribute value
	}
}

TTErr TTDeviceManager::namespaceDiscover(TTSymbolPtr address, TTValue& returnedNodes, TTValue& returnedLeaves, TTValue& returnedAttributes)
{
	std::cout << "TTDeviceManager::namespaceDiscover" << std::endl;
	TTErr				err;
	TTList				nodeList, childList;
	TTNodePtr			firstNode, aNode;
	TTSymbolPtr			nodeAddress;
	TTObjectPtr			o;
	
	err = getDirectoryFrom(this)->Lookup(address, nodeList, &firstNode);
	firstNode->getChildren(S_WILDCARD, S_WILDCARD, childList);
	
	if (!err) {
		
		for (childList.begin(); childList.end(); childList.next()) {
			
			// get the returned node
			childList.current().get(0, (TTPtr*)&aNode);
			
			// get the node osc absolute address
			aNode->getOscAddress(&nodeAddress);
			
			// test node type
			if (o = aNode->getObject()) {
				if (o->getName() == TT("Data")) {
					returnedLeaves.append((TTPtr*)(nodeAddress->getCString()));
				} else {
					returnedNodes.append((TTPtr*)(nodeAddress->getCString()));
				}
			}
		}
		
		return kTTErrNone;
		
	} 
	else {
		return kTTErrGeneric; //TODO send a notification : Jamoma!set #address /address:attribute value
	}
}

TTErr TTDeviceManager::namespaceListen(TTDevicePtr whereToSend, TTSymbolPtr whereToListen, TTSymbolPtr attributeToListen, TTBoolean enable)
{
	std::cout << "namespaceListen" << std::endl;
	TTValue v;
	TTSymbolPtr deviceName, deviceAddress;
	TTString tmp;

	whereToSend->getAttributeValue(TT("name"), v);
	v.get(0, &deviceName);

	tmp = "/";
	tmp += deviceName->getCString();
	deviceAddress = TT(tmp);

	if (enable)
		enableListening(deviceAddress, whereToListen, attributeToListen);
	else
		disableListening(deviceAddress, whereToListen, attributeToListen);

	return kTTErrNone;
}

TTErr TTDeviceManager::WriteAsXml(const TTValue& value)
{

	
	return kTTErrNone;
}

TTErr TTDeviceManager::ReadFromXml(const TTValue& value)
{
	TTXmlHandlerPtr	aXmlHandler = NULL;	
	TTSymbolPtr		deviceName, pluginName, attributeName;
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
	
	// device node
	if (aXmlHandler->mXmlNodeName == TT("device")) {
		
		// get the device name 
		xmlTextReaderMoveToAttribute(aXmlHandler->mReader, (const xmlChar*)("name"));
		aXmlHandler->fromXmlChar(xmlTextReaderValue(aXmlHandler->mReader), v);
		if (v.getType() == kTypeSymbol) {
			v.get(0, &deviceName);
		}
		
		//std::cout << "deviceName " << deviceName->getString() << std::endl;
		
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
		
		// local Device process (define plugin parameters)
		if (deviceName == mName) {
			TTValue params;
			
			// browse other attributes in xml
			while (xmlTextReaderMoveToNextAttribute(aXmlHandler->mReader) == 1) {
				
				// get attribute name
				aXmlHandler->fromXmlChar(xmlTextReaderName(aXmlHandler->mReader), v);
				if (v.getType() == kTypeSymbol) {
					v.get(0, &attributeName);
					v.clear();
					
					// get attribute value
					aXmlHandler->fromXmlChar(xmlTextReaderValue(aXmlHandler->mReader), v);
					
					// fill the parameter TTValue array <attrName1, attrValue1, attrName2, attrValue2....>
					params.append(attributeName);
					params.append(v);
				}
			}
			
			// define plugin parameters
			plugin->commDefineParameters(params);
			
		} 
		// remote Device process (add the device)
		else {
			args.append(deviceName);
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
					
					// add device arguments
					args.append(attributeName);
					args.append(&v);
				}
			}
			
			// add the Device
			AddDevice(args); 
		}
	}
	
	return kTTErrNone;
}

#if 0
#pragma mark -
#pragma mark Some Methods
#endif

TTErr TTDeviceManagerDirectoryCallback(TTPtr baton, TTValue& data)
{
	TTValuePtr			b;
	TTDeviceManagerPtr	aDeviceManager;
	TTSymbolPtr			whereToSend;
	TTSymbolPtr			whereToListen;
	TTSymbolPtr			attributeToListen;
	TTString			returnedValue;
	TTSymbolPtr			oscAddress;
	TTSymbolPtr			aNode;
	TTUInt8				flag;
	TTCallbackPtr		anObserver;
	TTNodePtr			deviceNodeToAnswer;
	TTErr				err;
	TTObjectPtr			o;
	
	// unpack baton (a t_object* and the name of the method to call)
	b = (TTValuePtr)baton;
	b->get(0, (TTPtr*)&aDeviceManager);
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
	
	err = getDirectoryFrom(aDeviceManager)->getTTNodeForOSC(whereToSend, &deviceNodeToAnswer);
	if (!err) {
		if (o = deviceNodeToAnswer->getObject()) {
			if (o->getName() == TT("Device")) {
				
				//o->sendMessage(TT("ListenAnswer"), args);
				
				return kTTErrNone;
			}
		}
	}
	
	return kTTErrGeneric;
}

TTErr TTDeviceManagerAttributeCallback(TTPtr baton, TTValue& data)
{
	std::cout << "TTDeviceManagerAttributeCallback" << std::endl;
	TTValuePtr			b;
	TTDeviceManagerPtr	aDeviceManager;
	TTSymbolPtr			whereToSend, whereToListen, attributeToListen;
	TTNodePtr			deviceNodeToAnswer;
	TTErr				err;
	TTObjectPtr			o;
	TTValue				args;
	
	// unpack baton
	b = (TTValuePtr)baton;
	b->get(0, (TTPtr*)&aDeviceManager);
	b->get(1, &whereToSend);
	b->get(2, &whereToListen);
	b->get(3, &attributeToListen);
	
	// send a listen answer
	err = getDirectoryFrom(aDeviceManager)->getTTNodeForOSC(whereToSend, &deviceNodeToAnswer);
	if (!err) {
		if (o = deviceNodeToAnswer->getObject()) {
			if (o->getName() == TT("Device")) {
				
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

TTErr TTDeviceManagerDiscoverCallback(TTPtr arg, TTString whereToDiscover, std::vector<TTString>& returnedNodes, std::vector<TTString>& returnedLeaves, std::vector<TTString>& returnedAttributes)
{
	TTErr err;
	TTNodePtr nodeToDiscover, aChild;
	TTList allChildren;
	TTString instanceName, sAttribute;
	TTSymbolPtr attributeName, type;
	TTValue attributeNameList, v;
	TTObjectPtr o;
	int i;
	
	TTDeviceManagerPtr aTTDeviceManager = (TTDeviceManagerPtr) arg;
	
	if(aTTDeviceManager){
		
		// Get the Node at the given address
		err = getDirectoryFrom(aTTDeviceManager)->getTTNodeForOSC(whereToDiscover.c_str(), &nodeToDiscover);
		
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

TTErr TTDeviceManagerGetCallback(TTPtr baton, TTValue& data)
{
	TTValuePtr			b;
	TTDeviceManagerPtr	aTTDeviceManager;
	TTSymbolPtr			whereToGet, attrName, nodeType;
	TTErr				err; 
	TTNodePtr			nodeToGet;
	TTList				allChildren;
	TTValue				v;
	TTObjectPtr			o;
	
	// unpack baton
	b = (TTValuePtr)baton;
	b->get(0, (TTPtr*)&aTTDeviceManager);
	b->get(1, &whereToGet);
	b->get(2, &attrName);
	
	if(aTTDeviceManager){
		
		// Get the Node at the given address
		err = getDirectoryFrom(aTTDeviceManager)->getTTNodeForOSC(whereToGet, &nodeToGet);
		
		if(!err){
			
			// test node type to get the access status
			o = nodeToGet->getObject();
			nodeType = o->getName();
			
			// Convert attribute into Jamoma style
			//attributeName = aTTDeviceManager->convertAttributeToJamoma(attribute);
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

TTErr TTDeviceManagerSetCallback(TTPtr baton, TTValue& data)
{
	std::cout << "TTDeviceManagerSetCallback" << std::endl;
	
	TTValuePtr			b;
	TTDeviceManagerPtr	aTTDeviceManager;
	TTSymbolPtr			whereToSet, attrName, nodeType;
	TTErr				err;
	TTNodePtr			nodeToSet;
	TTList				allChildren;
	TTValue				attributeValue, v;
	TTObjectPtr			o;
	
	// unpack baton
	b = (TTValuePtr)baton;
	b->get(0, (TTPtr*)&aTTDeviceManager);
	
	// unpack data
	data.get(0, &whereToSet);
	data.get(1, &attrName);
	data.get(2, (TTPtr*)&attributeValue);
	
	if (aTTDeviceManager) {
		
		// Get the Node at the given address
		err = getDirectoryFrom(aTTDeviceManager)->getTTNodeForOSC(whereToSet, &nodeToSet);
		
		if(!err){
			// test node type to get the access status
			o = nodeToSet->getObject();
			nodeType = o->getName();
			
			if(nodeType == TT("Data")){
				
				//attrName = aTTDeviceManager->convertAttributeToJamoma(attribute);
				//attrName = TT(attribute);
				if (attrName == kTTSym_value)
					o->sendMessage(kTTSym_Command, attributeValue);
				else
					o->setAttributeValue(attrName, attributeValue);
				
				// TODO : case of RangeBondsMin and Max
				// managed by the Data ?
			}
		}
		else {
			; //TODO send a notification : Jamoma!set #address /address:attribute value
		}
		
		return kTTErrNone;
	}	
	
	return kTTErrGeneric;
}

TTErr TTDeviceManagerListenCallback(TTPtr baton, TTValue& data)
{
	TTValuePtr			b;
	TTDeviceManagerPtr	aTTDeviceManager;
	TTSymbolPtr			whereToSend, whereToListen, attributeToListen;
	TTBoolean			enableListening;
	
	// unpack baton
	b = (TTValuePtr)baton;
	b->get(0, (TTPtr*)&aTTDeviceManager);
	b->get(1, &whereToSend);
	b->get(2, &whereToListen);
	b->get(3, &attributeToListen);
	b->get(4, enableListening);
	
	if (aTTDeviceManager) {	
		if (enableListening)
			aTTDeviceManager->enableListening(whereToSend, whereToListen, attributeToListen);
		else
			aTTDeviceManager->disableListening(whereToSend, whereToListen, attributeToListen);
		
		return kTTErrNone;
	}
	
	return kTTErrGeneric;
}

TTErr TTDeviceManager::enableListening(TTSymbolPtr whereToSend, TTSymbolPtr whereToListen, TTSymbolPtr attributeToListen)
{
	std::cout << "enableListening" << std::endl;
	TTErr			err;
	TTNodePtr		nodeToListen;
	TTAttributePtr	anAttribute = NULL;
	TTObjectPtr		newListener, o;
	TTValuePtr		newBaton;
	TTValue			v;
	TTString		keyLink;
	
	// Get the Node at the given address
	err = getDirectoryFrom(this)->getTTNodeForOSC(whereToListen, &nodeToListen);
	
	if (!err) {
		
		// enable life cycle observing
		if (attributeToListen == kTTSym_life)
		{
			// create an observer of the root in order to notify the device manager
			// for creation and destruction of node
			newListener = NULL;					// without this, TTObjectInstantiate try to release an oldObject that doesn't exist ... Is it good ?
			TTObjectInstantiate(TT("callback"), &newListener, kTTValNONE);
			
			newBaton = new TTValue(TTPtr(this));
			newBaton->append(whereToSend);
			newBaton->append(whereToListen);
			newBaton->append(attributeToListen);
			
			newListener->setAttributeValue(kTTSym_baton, TTPtr(newBaton));
			newListener->setAttributeValue(kTTSym_function, TTPtr(&TTDeviceManagerDirectoryCallback));
			
			getDirectoryFrom(this)->addObserverForNotifications(S_SEPARATOR, *newListener);
		}
		// enable attribute listening
		else {
			
			// if the attribute exist
			o = nodeToListen->getObject();
			err = o->findAttribute(attributeToListen, &anAttribute);
			
			
			if (!err) {
				newListener = NULL; // without this, TTObjectInstantiate try to release an oldObject that doesn't exist ... Is it good ?
				TTObjectInstantiate(TT("callback"), &newListener, kTTValNONE);
				
				newBaton = new TTValue(TTPtr(this));
				newBaton->append(whereToSend);
				newBaton->append(whereToListen);
				newBaton->append(attributeToListen);
				
				newListener->setAttributeValue(kTTSym_baton, TTPtr(newBaton));
				newListener->setAttributeValue(kTTSym_function, TTPtr(&TTDeviceManagerAttributeCallback));
				
				anAttribute->registerObserverForNotifications(*newListener);
			}
		}
		
		if (!err) {
			std::cout << "ok" << std::endl;
			// memorize the link in order to remove it with the unlink operation
			keyLink = whereToSend->getCString();
			keyLink += "<>";
			keyLink += whereToListen->getCString();
			keyLink += ":";
			keyLink += attributeToListen->getCString();
			std::cout << keyLink << std::endl;
			this->mListernersCache->append(TT(keyLink), (TTPtr)newListener);
		}
		
		return kTTErrNone;
	}
	
	return kTTErrGeneric;
}

TTErr TTDeviceManager::disableListening(TTSymbolPtr whereToSend, TTSymbolPtr whereToListen, TTSymbolPtr attributeToListen)
{
	TTErr			err;
	TTAttributePtr	anAttribute = NULL;
	TTNodePtr		nodeListened;
	TTObjectPtr		oldListener, o;
	TTValue			temp, v;
	TTString		keyLink;
	
	// Get the Node at the given address
	err = getDirectoryFrom(this)->getTTNodeForOSC(whereToListen, &nodeListened);
	
	if(!err){
		
		// looking for an observer
		keyLink = whereToSend->getString() + "<>" + whereToListen->getString() + ":" + attributeToListen->getString();
		err = mListernersCache->lookup(TT(keyLink), temp);
		temp.get(0, (TTPtr*)&oldListener);
		
		// disable life cycle observing
		if(attributeToListen == kTTSym_life)
		{
			if(!err) {
				
				err = getDirectoryFrom(this)->removeObserverForNotifications(whereToListen, *oldListener);
				
				if(!err)
					TTObjectRelease(&oldListener);
				
			}
		}
		// disable attribute listening
		else{
			
			if(!err) {
				
				// if the attribute exist
				o = nodeListened->getObject();
				err = o->findAttribute(attributeToListen, &anAttribute);
				
				if(!err){
					
					err = anAttribute->unregisterObserverForNotifications(*oldListener);
					
					if(!err)
						TTObjectRelease(&oldListener);

				}
			}
		}
		
		return kTTErrNone;
	}
	
	return kTTErrGeneric;
}