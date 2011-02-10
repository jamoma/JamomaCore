/*
 *  TTDevice.cpp
 *  TTModular
 *
 *  Created by laurent on 06/01/11.
 *  Copyright 2011 __MyCompanyName__. All rights reserved.
 *
 */

#include "TTDevice.h"
#include "Plugin.h"

#define thisTTClass			TTDevice
#define thisTTClassName		"Device"
#define thisTTClassTags		"device"

TT_MODULAR_CONSTRUCTOR,
mDeviceManager(NULL),
mName(kTTSymEmpty),
mAddress(kTTSymEmpty),
mPlugin(NULL),
mEnabled(YES)
{
	TT_ASSERT("Correct number of args to create TTDevice", arguments.getSize() >= 3);
	arguments.get(0, (TTPtr*)&mDeviceManager);
	TT_ASSERT("DeviceManager passed to TTDevice is not NULL", mDeviceManager);
	arguments.get(1, &mName);
	arguments.get(2, (TTPtr*)&mPlugin);
	TT_ASSERT("Plugin passed to TTDevice is not NULL", mPlugin);
	arguments.get(3, (TTPtr*)&mParameters);
	
	addAttribute(Name, kTypeSymbol);
	addAttribute(Address, kTypeSymbol);
	addAttribute(AddressToSpeakWith, kTypeSymbol);
	
	addMessageWithArgument(Command);
	addMessageWithArgument(Discover);
	addMessageWithArgument(Get);
	addMessageWithArgument(Set);
	addMessageWithArgument(ListenRequest);
	addMessageWithArgument(ListenAnswer);
	addMessageWithArgument(Snapshot);

}

TTDevice::~TTDevice()
{
	delete mParameters;
	mParameters = NULL;
}

TTErr TTDevice::getCommParameter(TTSymbolPtr name, TTValue &value)
{
	TTValue v;
	TTErr	err;
	
	err = mParameters->lookup(name, v);
	
	if (err) {
		return kTTErrGeneric;
	}
	
	value = v;
	
	return kTTErrNone;
}

TTErr TTDevice::Command(const TTValue& command)
{
	std::cout << "Command" << std::endl;
	return kTTErrNone;
}

TTErr TTDevice::Discover(TTValue& value)
{
	std::cout << "Discover" << std::endl;
	
	TTValue		vAddress, vNodes, vLeaves, vAttributes;
	TTSymbolPtr sAddress, sLeaveName;
	TTNodePtr	nodeToSet;
	TTErr		err;
	
	// extract address to discover
	vAddress = value;
	vAddress.get(0, &sAddress);
	
	// send a discover request at a remote device using plugin instance
	mPlugin->deviceSendDiscoverRequest(this, sAddress, vNodes, vLeaves, vAttributes);
	
	for (int i = 0; i < vLeaves.getSize(); i++) {
		vLeaves.get(i, &sLeaveName);
		
		// for each leave create a TTData if don't exist yet
	
		// update the local directory of the remote device
		err = getDirectoryFrom(mDeviceManager)->getTTNodeForOSC(sLeaveName, &nodeToSet);
		if (!err) {
			
		} else {
			// Create a TTData
			/////////////////////////////////////////////////////////
			std::cout << "create a TTData" << std::endl;
			TTValue			args;
			TTDataPtr		myData = NULL;
			TTCallbackPtr	p_returnValueCallback = NULL;
			TTValuePtr		p_returnValueBaton;
			
			// prepare arguments : see TTData.h to know which args are needed
			args.clear();
			TTObjectInstantiate(TT("callback"), TTObjectHandle(&p_returnValueCallback), kTTValNONE);
			p_returnValueBaton = new TTValue(NULL);
//			p_returnValueCallback->setAttributeValue(TT("baton"), TTPtr(p_returnValueBaton));
//			p_returnValueCallback->setAttributeValue(TT("function"), TTPtr(myData_return_value_callback));
			args.append(p_returnValueCallback);
			
			// create an instance of TTData
			TTObjectInstantiate(TT("Data"), TTObjectHandle(&myData), args);
			
			// set TTData attributes
			
			
			
			// Register a TTObject into the TTModularDirectory
			/////////////////////////////////////////////////////////
			TTNodePtr		returnedNode;
			TTBoolean		newInstanceCreated;
			
			getDirectoryFrom(mDeviceManager)->TTNodeCreate(sLeaveName, myData, NULL, &returnedNode, &newInstanceCreated);
		}
	}
	
	// clear the value and return the got value
	value.clear();
	
	
	return kTTErrNone;
}

TTErr TTDevice::Get(TTValue& value)
{
	std::cout << "Get" << std::endl;
	TTValue		v, addressAndAttr;
	TTSymbolPtr address, attr;
	TTNodePtr	nodeToSet;
	TTObjectPtr	o;
	TTErr		err;
	
	// extract address and attribute to get
	value.get(0, &address);
	value.get(1, &attr);
	
	addressAndAttr.append(address);
	addressAndAttr.append(attr);
	
	// send a get request at a remote device using plugin instance
	mPlugin->deviceSendGetRequest(this, addressAndAttr, v);
	
	// update the local directory of the remote device if it was already discovered
	err = getDirectoryFrom(mDeviceManager)->getTTNodeForOSC(address, &nodeToSet);
	if (!err) {
		if (o = nodeToSet->getObject()) {
			o->setAttributeValue(attr, v);
		}
	}
	
	// clear the value and return the got value
	value.clear();
	value = v;
	
	return kTTErrNone;
}

TTErr TTDevice::Set(const TTValue& value)
{
	std::cout << "Set" << std::endl;
	TTValue		valueToSend;
	TTString	s;
	
	valueToSend = value;
	
//	v.toString();
//	v.get(0, s);
//	std::cout << s << std::endl;
	
	// send a set request at a remote device using plugin instance
	mPlugin->deviceSendSetRequest(this, mAddressToSpeakWith, valueToSend);
	
	return kTTErrNone;
}

TTErr TTDevice::ListenRequest(const TTValue& value)
{
	//TTSymbolPtr address, TTSymbolPtr attribute, TTBoolean enable)
	return kTTErrNone;
}

TTErr TTDevice::ListenAnswer(const TTValue& value)
{
	//TTSymbolPtr address, TTSymbolPtr attribute, TTValue& value)
	return kTTErrNone;
}

TTErr TTDevice::Snapshot(const TTValue& value)
{
	//TTSymbolPtr address)
//	unsigned int i;
//	vector<std::string> snapshot = this->mDeviceManager->deviceSnapshot(device->getCString(), address->getCString());
//	
//	;//post("Snapshot on the device %s at %s", device->s_name, address->s_name);
//	for(i = 0; i < snapshot.size(); i++)
//	{
//		;//post("%s", snapshot.at(i).data());
//	}
	
	return kTTErrNone;
}