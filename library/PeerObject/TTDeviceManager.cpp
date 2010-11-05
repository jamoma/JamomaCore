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
mApplication(NULL), 
mName(kTTSymEmpty)
{
	TT_ASSERT("Correct number of args to create TTDeviceManager", arguments.getSize() == 2);
	
	arguments.get(0, (TTPtr*)&mApplication);
	TT_ASSERT("Application passed to TTDeviceManager is not NULL", mApplication);
	arguments.get(1, &mName);
	
	addAttribute(Name, kTypeSymbol);
	
	addMessageWithArgument(LoadPlugins);
	addMessageWithArgument(AddDevice);
	
	addMessageWithArgument(Scan);
	addMessageWithArgument(Discover);
	addMessageWithArgument(Get);
	addMessageWithArgument(Set);
	addMessageWithArgument(Listen);
	addMessageWithArgument(Snapshot);
	
	
	this->mDeviceManager = new DeviceManager(mName->getCString());
	
	// Pass callbacks to the DeviceManager
	this->mDeviceManager->namespaceDiscoverAddCallback(this, &TTDeviceManagerDiscoverCallback);
	this->mDeviceManager->namespaceGetAddCallback(this, &TTDeviceManagerGetCallback);
	this->mDeviceManager->namespaceSetAddCallback(this, &TTDeviceManagerSetCallback);
	this->mDeviceManager->namespaceListenAddCallback(this, &TTDeviceManagerListenCallback);
	
	this->mListernersCache = new TTHash();
}

TTDeviceManager::~TTDeviceManager()
{
	delete this->mDeviceManager;
	delete mListernersCache;
	
}

TTErr TTDeviceManager::LoadPlugins(const TTValue& value)
{
	TTSymbolPtr pluginsPath;
	value.get(0, &pluginsPath);

	mDeviceManager->pluginLoad(pluginsPath->getCString());

	if (value.getSize() > 1) {
		TTSymbolPtr xmlConfigPath;
		value.get(1, &xmlConfigPath);

		mDeviceManager->pluginLoadConfigXml(xmlConfigPath->getCString());
	}

	mDeviceManager->pluginLaunch();
	return kTTErrNone;
}

TTErr TTDeviceManager::AddDevice(const TTValue& value)
{
	TTSymbolPtr	pluginToUse;
	TTSymbolPtr deviceName;
	TTSymbolPtr commParamName;
	TTSymbolPtr commParam_SymValue;
	TTInt32		commParam_IntValue = 0;
	TTFloat64	commParam_FloatValue;
	TTValue		commParamValue;
	TTString	commParamValueStr;
	TTUInt8		i;
	std::map<std::string, std::string> commDatas;

	value.get(0, &deviceName);
	value.get(1, &pluginToUse);
	
	// prepare commDatas
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
				
				commDatas[commParamName->getCString()] = commParamValueStr.data();
			}
			else return kTTErrGeneric;
		}
		else return kTTErrGeneric;
	}
	

	// create device
	this->mDeviceManager->deviceAdd(deviceName->getCString(), pluginToUse->getCString(), &commDatas);
	
	return kTTErrNone;
}

TTErr TTDeviceManager::LoadDeviceXmlConfig(const TTValue& value)
{
	TTSymbolPtr path;
	value.get(0, &path);
	mDeviceManager->deviceLoadConfigXml(path->getCString());
	return kTTErrNone;
}

TTErr TTDeviceManager::Scan()
{
	std::string deviceName;
	bool understandDiscover;
	
	// scan the network
	mDeviceManager->deviceSetCurrent();
	
	// get all Devices
	std::map<std::string, Device*>* mapDevices = mDeviceManager->deviceGetCurrent();
	
	map<string, Device*>::iterator it = mapDevices->begin();
	
	while(it != mapDevices->end())
	{
		deviceName = it->first;
		understandDiscover = mDeviceManager->deviceUnderstandDiscoverRequest(deviceName);
		
		if(understandDiscover)
			;//post("Device \"%s\" understands discover request", deviceName.data());
		else
			;//post("Device \"%s\" doesn't understand discover request", deviceName.data());
		
		++it;
	}
	
	return kTTErrNone;
}

TTErr TTDeviceManager::Discover(TTSymbolPtr device, TTSymbolPtr address)
{
	vector<string> returnedNodes;
	vector<string> returnedLeaves;
	vector<string> returnedAttributes;
	vector<Value> returnedValues;
	unsigned int i;
	TTString deviceAndAddress = device->getCString();
	deviceAndAddress += address->getCString();
	
	int result = this->mDeviceManager->deviceSendDiscoverRequest(deviceAndAddress, &returnedNodes, &returnedLeaves, &returnedAttributes, &returnedValues);
	
	switch(result){
		case REQUEST_NOT_SENT :{
			;//post("dvmg_discover %s %s : REQUEST_NOT_SENT", device->s_name, address->s_name);
			break;
		}
		case TIMEOUT_EXCEEDED :{
			;//post("dvmg_discover %s %s : TIMEOUT_EXCEEDED", device->s_name, address->s_name);
			break;
		}
		case NO_ANSWER :{
			;//post("dvmg_discover %s %s : NO_ANSWER", device->s_name, address->s_name);
			break;
		}
		case ANSWER_RECEIVED :{
			;//post("dvmg_discover %s %s : ANSWER_RECEIVED", device->s_name, address->s_name);
			
			;//post("		+ Nodes");
			for(i = 0; i < returnedNodes.size(); i++){
				;//post("		+ %s", returnedNodes.at(i).data());
			}
			
			;//post("		<> Leaves");
			for(i = 0; i < returnedLeaves.size(); i++){
				;//post("		<> %s", returnedLeaves.at(i).data());
			}
			
			;//post("		: Attributes");
			for(i = 0; i < returnedAttributes.size(); i++){
				;//post("		: %s", returnedAttributes.at(i).data());
			}
			
			break;
		}
		default :{
			;//post("dvmg_discover %s %s : NO_ANSWER", device->s_name, address->s_name);
			break;
		}
	}
	return kTTErrNone;
}

TTErr TTDeviceManager::Get(TTSymbolPtr device, TTSymbolPtr address, TTValue& data)
{
	Value returnedValue;
	
	// TODO : deal with any attribute
	int result = this->mDeviceManager->deviceSendGetRequest(device->getCString(), address->getCString(), NAMESPACE_ATTR_VALUE, &returnedValue); 
	
	switch(result){
		case REQUEST_NOT_SENT :{
			;//post("dvmg_get %s %s : REQUEST_NOT_SENT", device->s_name, address->s_name);
			break;
		}
		case TIMEOUT_EXCEEDED :{
			;//post("dvmg_get %s %s : TIMEOUT_EXCEEDED", device->s_name, address->s_name);
			break;
		}
		case NO_ANSWER :{
			;//post("dvmg_get %s %s : NO_ANSWER", device->s_name, address->s_name);
			break;
		}
		case ANSWER_RECEIVED :{
			;//post("dvmg_get %s %s : ANSWER_RECEIVED", device->s_name, address->s_name);
			;//post("		<Value = %s", returnedValue.data());
			
			break;
		}
		default :{
			;//post("dvmg_get %s %s : NO_ANSWER", device->s_name, address->s_name);
			break;
		}
	}
	return kTTErrNone;
}

TTErr TTDeviceManager::Set(TTSymbolPtr device, TTSymbolPtr address, const TTValue& data)
{
	TTString valueToSend;
	
	// TODO : data.toString();
	data.get(0, valueToSend);

	this->mDeviceManager->deviceSendSetRequest(device->getCString(), address->getCString(), valueToSend);
	
	return kTTErrNone;
}

TTErr TTDeviceManager::Listen(TTSymbolPtr device, TTSymbolPtr address, TTSymbolPtr attribute, TTBoolean enable)
{
	return kTTErrNone;
}

TTErr TTDeviceManager::Snapshot(TTSymbolPtr device, TTSymbolPtr address)
{
	unsigned int i;
	vector<std::string> snapshot = this->mDeviceManager->deviceSnapshot(device->getCString(), address->getCString());
	
	;//post("Snapshot on the device %s at %s", device->s_name, address->s_name);
	for(i = 0; i < snapshot.size(); i++)
	{
		;//post("%s", snapshot.at(i).data());
	}
	
	return kTTErrNone;
}



// Convert Jamoma attributes into / from Device Manager attributes
////////////////////////////////////////////////////////////////

std::string TTDeviceManager::convertAttributeFromJamoma(std::string attribute)
{
	if(attribute == "Value")
		return NAMESPACE_ATTR_VALUE;
	
	if(attribute == "Access")
		return NAMESPACE_ATTR_ACCESS;
	
	if(attribute == "Type")
		return NAMESPACE_ATTR_TYPE;
	
	if(attribute == "Priority")
		return NAMESPACE_ATTR_PRIORITY;
	
	if(attribute == "Description")
		return NAMESPACE_ATTR_COMMENT;
	
	if(attribute == "RangeBounds")
		return NAMESPACE_ATTR_RANGE;
	
	return "";
}

TTSymbolPtr TTDeviceManager::convertAttributeToJamoma(std::string attribute)
{
	if(attribute == NAMESPACE_ATTR_VALUE)
		return TT("Value");
	
	if(attribute == NAMESPACE_ATTR_ACCESS)
		return TT("Access");
	
	if(attribute == NAMESPACE_ATTR_TYPE)
		return TT("Type");
	
	if(attribute == NAMESPACE_ATTR_PRIORITY)
		return TT("Priority");
	
	if(attribute == NAMESPACE_ATTR_COMMENT)
		return TT("Description");
	
	if(attribute == NAMESPACE_ATTR_RANGE)
		return TT("RangeBounds");
	
	return kTTSymEmpty;
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
	
	aDeviceManager->mDeviceManager->deviceSendListenAnswer(whereToSend->getCString(), whereToListen->getCString(), attributeToListen->getCString(), returnedValue);
	
	return kTTErrNone;
}

TTErr TTDeviceManagerAttributeCallback(TTPtr baton, TTValue& data)
{
	TTValuePtr			b;
	TTDeviceManagerPtr	aDeviceManager;
	TTSymbolPtr			whereToSend;
	TTSymbolPtr			whereToListen;
	TTSymbolPtr			attributeToListen;
	TTString			returnedValue;
	
	// unpack baton
	b = (TTValuePtr)baton;
	b->get(0, (TTPtr*)&aDeviceManager);
	b->get(1, &whereToSend);
	b->get(2, &whereToListen);
	b->get(3, &attributeToListen);

	data.toString();
	data.get(0, returnedValue);	
	
	// send a listen answer
	aDeviceManager->mDeviceManager->deviceSendListenAnswer(whereToSend->getCString(), whereToListen->getCString(), attributeToListen->getCString(), returnedValue);
	
	return kTTErrNone;
}

void TTDeviceManagerDiscoverCallback(void* arg, Address whereToDiscover, std::vector<std::string>& returnedNodes, std::vector<std::string>& returnedLeaves, std::vector<std::string>& returnedAttributes)
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
				
				// if the node is a data : add it as a leaf
				// else : add it as a node
				aChild->getAttributeValue(TT("Object"), v);
				v.get(0, (TTPtr*)&o);
				
				// if the object is a Data : push his name in the leaves list
				if (o) {
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
			nodeToDiscover->getAttributeValue(TT("Object"), v);
			v.get(0, (TTPtr*)&o);
			
			// if there is an object push all
			// this attributes in the attribute list
			if (o) {
				
				type = o->getName();
				
				// Add the access attribute which is not a jamoma attribute
				// only for the data
				if(type == TT("Data"))
					returnedAttributes.push_back(NAMESPACE_ATTR_ACCESS);
				
				// Add all other attributes
				o->getAttributeNames(attributeNameList);
				for(i = 0; i < attributeNameList.getSize(); i++)
				{
					attributeNameList.get(i,(TTSymbolPtr*)&attributeName);
					//sAttribute = aTTDeviceManager->convertAttributeFromJamoma(attributeName->getCString());
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
}

void TTDeviceManagerGetCallback(void* arg, Address whereToGet, std::string attribute, Value& returnedValue)
{
	TTErr err; 
	TTNodePtr nodeToGet;
	TTList allChildren;
	TTSymbolPtr nodeType, attributeName;
	TTValue v, min, max;
	TTString s_min, s_max;
	TTObjectPtr o;
	
	TTDeviceManagerPtr aTTDeviceManager = (TTDeviceManagerPtr) arg;
	
	if(aTTDeviceManager){
		
		// Get the Node at the given address
		err = getDirectoryFrom(aTTDeviceManager)->getTTNodeForOSC(whereToGet.c_str(), &nodeToGet);
		
		if(!err){
			
			// test node type to get the access status
			nodeToGet->getAttributeValue(TT("Object"), v);
			v.get(0, (TTPtr*)&o);
			nodeType = o->getName();
			
			// Convert attribute into Jamoma style
			//attributeName = aTTDeviceManager->convertAttributeToJamoma(attribute);
			attributeName = TT(attribute);
			
			// filter Access attribute
			if(attributeName == TT("Access")){
				
				// TODO : add a Jamoma attribute for this
				returnedValue = "getsetter";
				
			}
			// filter RangBounds attribute
			else if(attributeName == TT("RangeBounds")){
				
				err = o->getAttributeValue(TT("RangeBoundsMin"), min);
				err = o->getAttributeValue(TT("RangeBoundsMax"), max);
				min.toString();
				max.toString();
				min.get(0, s_min);
				max.get(0, s_max);
				returnedValue = s_min + s_max;
			}
			else{
				
				// get the value of the attribute
				v.clear();
				err = o->getAttributeValue(attributeName, v);
				
				// and convert it in string
				if(!err){
					
					v.toString();
					v.get(0, returnedValue);
				}
			}
		}
	}
	else{
		; //TODO send a notification : Jamoma!get #address /address:attribute
	}
}	

void TTDeviceManagerSetCallback(void* arg, Address whereToSet, std::string attribute, Value& newValue)
{
	TTErr err;
	TTNodePtr nodeToSet;
	TTList allChildren;
	TTSymbolPtr nodeType, attrName;
	TTValue attributeValue, v;
	TTObjectPtr o;
	
	TTDeviceManagerPtr aTTDeviceManager = (TTDeviceManagerPtr) arg;
	
	if(aTTDeviceManager){
		
		// Get the Node at the given address
		err = getDirectoryFrom(aTTDeviceManager)->getTTNodeForOSC(whereToSet.c_str(), &nodeToSet);
		
		if(!err){
			
			// test node type to get the access status
			nodeToSet->getAttributeValue(TT("Object"), v);
			v.get(0, (TTPtr*)&o);
			nodeType = o->getName();
			
			if(nodeType == TT("Data")){
				
				v.clear();
				v.append(newValue);
				v.fromString();
				
				//attrName = aTTDeviceManager->convertAttributeToJamoma(attribute);
				attrName = TT(attribute);
				if (attrName == kTTSym_Value)
					o->sendMessage(kTTSym_command, v);
				else
					o->setAttributeValue(attrName, v);
				
				// TODO : case of RangeBondsMin and Max
			}
		}
		else{
			; //TODO send a notification : Jamoma!set #address /address:attribute value
		}
	}	
}

void TTDeviceManagerListenCallback(void* arg, std::string whereToSend, Address whereToListen, std::string attributeToListen, bool enableListening)
{
	TTDeviceManagerPtr aTTDeviceManager = (TTDeviceManagerPtr) arg;
	
	if(enableListening)
		aTTDeviceManager->enableListening(whereToSend, whereToListen, attributeToListen);
	else
		aTTDeviceManager->disableListening(whereToSend, whereToListen, attributeToListen);
}

void TTDeviceManager::enableListening(std::string whereToSend, Address whereToListen, std::string attributeToListen)
{
	TTErr err;
	TTNodePtr		nodeToListen;
	TTAttributePtr	anAttribute = NULL;
	TTObjectPtr		newListener, o;
	TTValuePtr		newBaton;
	TTValue			v;
	TTString		keyLink;
	
	// Get the Node at the given address
	err = getDirectoryFrom(this)->getTTNodeForOSC(whereToListen.c_str(), &nodeToListen);
	
	if(!err){
		
		// enable life cycle observing
		if(attributeToListen.c_str() == NAMESPACE_ATTR_LIFE)
		{
			// create an observer of the root in order to notify the device manager
			// for creation and destruction of node
			newListener = NULL;					// without this, TTObjectInstantiate try to release an oldObject that doesn't exist ... Is it good ?
			TTObjectInstantiate(TT("Callback"), &newListener, kTTValNONE);
			
			newBaton = new TTValue(TTPtr(this));
			newBaton->append(TT(whereToSend));
			newBaton->append(TT(whereToListen));
			newBaton->append(TT(attributeToListen));
			
			newListener->setAttributeValue(TT("Baton"), TTPtr(newBaton));
			newListener->setAttributeValue(TT("Function"), TTPtr(&TTDeviceManagerDirectoryCallback));
			
			getDirectoryFrom(this)->addObserverForNotifications(S_SEPARATOR, *newListener);
		}
		// enable attribute listening
		else{
			
			// if the attribute exist
			nodeToListen->getAttributeValue(TT("Object"), v);
			v.get(0, (TTPtr*)&o);
			err = o->findAttribute(convertAttributeToJamoma(attributeToListen.c_str()), &anAttribute);
			
			
			if(!err){
				
				newListener = NULL; // without this, TTObjectInstantiate try to release an oldObject that doesn't exist ... Is it good ?
				TTObjectInstantiate(TT("Callback"), &newListener, kTTValNONE);
				
				newBaton = new TTValue(TTPtr(this));
				newBaton->append(TT(whereToSend));
				newBaton->append(TT(whereToListen));
				newBaton->append(TT(attributeToListen));
				
				newListener->setAttributeValue(TT("Baton"), TTPtr(newBaton));
				newListener->setAttributeValue(TT("Function"), TTPtr(&TTDeviceManagerAttributeCallback));
				
				anAttribute->registerObserverForNotifications(*newListener);
			}
		}
		
		if(!err){
			// memorize the link in order to remove it with the unlink operation
			keyLink = whereToSend + "<>" + whereToListen + ":" + attributeToListen;
			this->mListernersCache->append(TT(keyLink), (TTPtr)newListener);
		}
	}
}

void TTDeviceManager::disableListening(std::string whereToSend, Address whereToListen, std::string attributeToListen)
{
	TTErr err;
	TTAttributePtr anAttribute = NULL;
	TTNodePtr nodeListened;
	TTObjectPtr oldListener, o;
	TTValue	temp, v;
	TTString keyLink;
	
	// Get the Node at the given address
	err = getDirectoryFrom(this)->getTTNodeForOSC(whereToListen.c_str(), &nodeListened);
	
	if(!err){
		
		// looking for an observer
		keyLink = whereToSend + "<>" + whereToListen + ":" + attributeToListen;
		err = mListernersCache->lookup(TT(keyLink), temp);
		temp.get(0, (TTPtr*)&oldListener);
		
		// disable life cycle observing
		if(attributeToListen.c_str() == NAMESPACE_ATTR_LIFE)
		{
			if(!err) {
				
				err = getDirectoryFrom(this)->removeObserverForNotifications(TT(whereToListen), *oldListener);
				
				if(!err)
					TTObjectRelease(&oldListener);
				
			}
		}
		// disable attribute listening
		else{
			
			if(!err) {
				
				// if the attribute exist
				nodeListened->getAttributeValue(TT("Object"), v);
				v.get(0, (TTPtr*)&o);
				err = o->findAttribute(convertAttributeToJamoma(attributeToListen), &anAttribute);
				
				if(!err){
					
					err = anAttribute->unregisterObserverForNotifications(*oldListener);
					
					if(!err)
						TTObjectRelease(&oldListener);

				}
			}
		}
	}
}