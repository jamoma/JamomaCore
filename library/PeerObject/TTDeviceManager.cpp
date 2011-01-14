/* 
 * A Device Manager Object
 * Copyright © 2010, Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTDeviceManager.h"

#define thisTTClass			TTDeviceManager
#define thisTTClassName		"DeviceManager"
#define thisTTClassTags		"device, manager"

TT_MODULAR_CONSTRUCTOR,
mName(kTTSymEmpty),
mAddress(TT("/deviceManager")),
mApplication(NULL)
{
	TT_ASSERT("Correct number of args to create TTDeviceManager", arguments.getSize() == 2);
	
	arguments.get(0, (TTPtr*)&mApplication);
	TT_ASSERT("Application passed to TTDeviceManager is not NULL", mApplication);
	arguments.get(1, &mName);
	
	addAttribute(Name, kTypeSymbol);
	
	addMessageWithArgument(LoadPlugins);
	addMessageWithArgument(AddDevice);
	addMessageWithArgument(Scan);
	
	// Pass callbacks to the DeviceManager
//	this->mDeviceManager->namespaceDiscoverAddCallback(this, &TTDeviceManagerDiscoverCallback);
//	this->mDeviceManager->namespaceGetAddCallback(this, &TTDeviceManagerGetCallback);
//	this->mDeviceManager->namespaceSetAddCallback(this, &TTDeviceManagerSetCallback);
//	this->mDeviceManager->namespaceListenAddCallback(this, &TTDeviceManagerListenCallback);
	
	this->mListernersCache = new TTHash();
}

TTDeviceManager::~TTDeviceManager()
{
	delete mListernersCache;
}

TTErr TTDeviceManager::LoadPlugins(const TTValue& value)
{
	TTSymbolPtr pluginsPath;
	value.get(0, &pluginsPath);

	mfactories->loadPlugins(pluginsPath->getString());
	
	// create an instance of each plugin available
	IteratorPluginNames it = mfactories->getPluginNames();
	
	while (it.hasNext()) {
		std::string pname = it.next();
		//std::cout << pname << std::endl;
		PluginPtr p = mfactories->createPlugin(pname, this);
		if (p != 0) {
			mPlugins->append(TT(pname), p);//have to cast to TTValue ?
		}
	}	
	
	// define parameters for each plugin available
	TTHashMapIter itr = mPlugins->begin();
	while (itr != mPlugins->end()) {
		PluginPtr pluginPtr = NULL;
		TTValue v = itr->second;
		v.get(0, (TTPtr*)pluginPtr);
		if (pluginPtr != NULL) {
			pluginPtr->commDefineParameters();
		}
		itr++;
	}

	// TODO : add xml config file load using TTXmlHandler
//	if (value.getSize() > 1) {
//		TTSymbolPtr xmlConfigPath;
//		value.get(1, &xmlConfigPath);
//
//		mDeviceManager->pluginLoadConfigXml(xmlConfigPath->getCString());
//	}

	launchPlugins();
	
	return kTTErrNone;
}

TTErr TTDeviceManager::launchPlugins()
{
	//run a reception thread for each plugin available
	TTHashMapIter itr = mPlugins->begin();
	while (itr != mPlugins->end()) {		
		PluginPtr pluginPtr = NULL;
		TTValue v = itr->second;
		v.get(0, (TTPtr*)pluginPtr);
		if (pluginPtr != NULL) {
			pluginPtr->commRunReceivingThread();
		}
		
		itr++;
	}
	
	return kTTErrNone;
}

TTErr TTDeviceManager::AddDevice(const TTValue& value)
{
	TTSymbolPtr	pluginToUse;
	TTSymbolPtr deviceName, deviceAddress;
	TTSymbolPtr commParamName;
	TTSymbolPtr commParam_SymValue;
	TTInt32		commParam_IntValue = 0;
	TTFloat64	commParam_FloatValue;
	TTValue		commParamValue, pluginPtrValue, args;
	TTString	commParamValueStr;
	TTUInt8		i;
	PluginPtr	pluginPtr	= NULL;
	TTDevicePtr device		= NULL;
	TTNodePtr	returnedNode= NULL;
	TTBoolean	newInstanceCreated;
	TTPtr		vName, vValue;
	TTHashPtr	commDatas;

	value.get(0, &deviceName);
	value.get(1, &pluginToUse);
	
	// get the plugin ptr corresponding to it name
	mPlugins->lookup(pluginToUse, pluginPtrValue);
	
	pluginPtrValue.get(0, (TTPtr*)pluginPtr);
	//pluginPtr->deviceAdd(deviceName);//really need it ?
	
	// prepare TTDevice arguments
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
				
				commParamValue.toString();
				commParamValue.get(0, commParamValueStr);
				
				commDatas->append(commParamName, commParamValueStr);
			}
			else return kTTErrGeneric;
		}
		else return kTTErrGeneric;
	}
	
	// append commDatas
	args.append(commDatas);
	
	// instanciate TTDevice object with arguments
	TTObjectInstantiate(TT("Device"), TTObjectHandle(&device), args);
	
	// register the TTDevice object in the namespace directory
	deviceAddress = TT("/" + deviceName->getString());
	getDirectoryFrom(this)->TTNodeCreate(deviceAddress, (TTObjectPtr)device, NULL, &returnedNode, &newInstanceCreated);
	
	mDevices->append(deviceAddress, device);
	
	return kTTErrNone;
}

TTErr TTDeviceManager::LoadDeviceXmlConfig(const TTValue& value)
{
	// TODO : use a TTXmlHandler
//	TTSymbolPtr path;
//	value.get(0, &path);
//	mDeviceManager->deviceLoadConfigXml(path->getCString());
	return kTTErrNone;
}

TTErr TTDeviceManager::Scan()
{
//	std::string deviceName;
//	bool understandDiscover;
//	
//	// scan the network
//	mDeviceManager->deviceSetCurrent();
//	
//	// get all Devices
//	std::map<std::string, Device*>* mapDevices = mDeviceManager->deviceGetCurrent();
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
	TTValuePtr			b;
	TTDeviceManagerPtr	aDeviceManager;
	TTSymbolPtr			whereToSend;
	TTSymbolPtr			whereToListen;
	TTSymbolPtr			attributeToListen;
	TTString			returnedValue;
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
				
				// prepare prepare ListenAnswer message arguments
				args.append(whereToListen);
				args.append(attributeToListen);
				args.append(&data);
				
				o->sendMessage(TT("ListenAnswer"), args);
				
				return kTTErrNone;
			}
		}
	}
	
	return kTTErrGeneric;
}

TTErr TTDeviceManagerDiscoverCallback(TTPtr arg, std::string whereToDiscover, std::vector<std::string>& returnedNodes, std::vector<std::string>& returnedLeaves, std::vector<std::string>& returnedAttributes)
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
	b->get(1, &whereToSet);
	b->get(2, &attrName);
	
	if(aTTDeviceManager){
		
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
					o->sendMessage(kTTSym_Command, data);
				else
					o->setAttributeValue(attrName, data);
				
				// TODO : case of RangeBondsMin and Max
				// managed by the Data ?
			}
		}
		else{
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
	TTBoolean		enableListening;
	
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
	TTErr			err;
	TTNodePtr		nodeToListen;
	TTAttributePtr	anAttribute = NULL;
	TTObjectPtr		newListener, o;
	TTValuePtr		newBaton;
	TTValue			v;
	TTString		keyLink;
	
	// Get the Node at the given address
	err = getDirectoryFrom(this)->getTTNodeForOSC(whereToListen, &nodeToListen);
	
	if(!err){
		
		// enable life cycle observing
		if(attributeToListen == kTTSym_life)
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
		else{
			
			// if the attribute exist
			o = nodeToListen->getObject();
			err = o->findAttribute(attributeToListen, &anAttribute);
			
			
			if(!err){
				
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
		
		if(!err){
			// memorize the link in order to remove it with the unlink operation
			keyLink = whereToSend->getString() + "<>" + whereToListen->getString() + ":" + attributeToListen->getString();
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