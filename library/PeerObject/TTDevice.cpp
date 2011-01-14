/*
 *  TTDevice.cpp
 *  TTModular
 *
 *  Created by laurent on 06/01/11.
 *  Copyright 2011 __MyCompanyName__. All rights reserved.
 *
 */

#include "TTDevice.h"

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

TTErr TTDevice::Command(const TTValue& command)
{
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

TTErr TTDevice::Get(const TTValue& value)
{
	//TSymbolPtr address, TTValue& data)
//	Value returnedValue;
//	
//	// TODO : deal with any attribute
//	int result = this->mDeviceManager->deviceSendGetRequest(device->getCString(), address->getCString(), NAMESPACE_ATTR_VALUE, &returnedValue); 
	
//	switch(result){
//		case REQUEST_NOT_SENT :{
//			;//post("dvmg_get %s %s : REQUEST_NOT_SENT", device->s_name, address->s_name);
//			break;
//		}
//		case TIMEOUT_EXCEEDED :{
//			;//post("dvmg_get %s %s : TIMEOUT_EXCEEDED", device->s_name, address->s_name);
//			break;
//		}
//		case NO_ANSWER :{
//			;//post("dvmg_get %s %s : NO_ANSWER", device->s_name, address->s_name);
//			break;
//		}
//		case ANSWER_RECEIVED :{
//			;//post("dvmg_get %s %s : ANSWER_RECEIVED", device->s_name, address->s_name);
//			;//post("		<Value = %s", returnedValue.data());
//			
//			break;
//		}
//		default :{
//			;//post("dvmg_get %s %s : NO_ANSWER", device->s_name, address->s_name);
//			break;
//		}
//	}
	return kTTErrNone;
}

TTErr TTDevice::Set(const TTValue& value)
{
	TTSymbolPtr address;
	TTValue		valueToSend;
	
	value.get(0, &address);
	value.get(1, (TTPtr*)&valueToSend);
	
	mPlugin->deviceSendSetRequest(address, valueToSend);
	
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