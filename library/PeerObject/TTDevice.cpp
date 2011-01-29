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
mName(kTTSymEmpty),
mAddress(kTTSymEmpty),
mPlugin(NULL),
mEnabled(YES)
{
	TT_ASSERT("Correct number of args to create TTDevice", arguments.getSize() >= 2);
	arguments.get(0, &mName);
	arguments.get(1, (TTPtr*)&mPlugin);
	TT_ASSERT("Plugin passed to TTDevice is not NULL", mPlugin);
	arguments.get(2, (TTPtr*)&mParameters);
	
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

TTErr TTDevice::Discover(const TTValue& value)
{
	
	
//	switch(result){
//		case REQUEST_NOT_SENT :{
//			;//post("dvmg_discover %s %s : REQUEST_NOT_SENT", device->s_name, address->s_name);
//			break;
//		}
//		case TIMEOUT_EXCEEDED :{
//			;//post("dvmg_discover %s %s : TIMEOUT_EXCEEDED", device->s_name, address->s_name);
//			break;
//		}
//		case NO_ANSWER :{
//			;//post("dvmg_discover %s %s : NO_ANSWER", device->s_name, address->s_name);
//			break;
//		}
//		case ANSWER_RECEIVED :{
//			;//post("dvmg_discover %s %s : ANSWER_RECEIVED", device->s_name, address->s_name);
//			
//			;//post("		+ Nodes");
//			for(i = 0; i < returnedNodes.size(); i++){
//				;//post("		+ %s", returnedNodes.at(i).data());
//			}
//			
//			;//post("		<> Leaves");
//			for(i = 0; i < returnedLeaves.size(); i++){
//				;//post("		<> %s", returnedLeaves.at(i).data());
//			}
//			
//			;//post("		: Attributes");
//			for(i = 0; i < returnedAttributes.size(); i++){
//				;//post("		: %s", returnedAttributes.at(i).data());
//			}
//			
//			break;
//		}
//		default :{
//			;//post("dvmg_discover %s %s : NO_ANSWER", device->s_name, address->s_name);
//			break;
//		}
//	}
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
	err = getDirectoryFrom(this)->getTTNodeForOSC(address, &nodeToSet);
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