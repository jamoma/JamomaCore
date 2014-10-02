/*
 * @file TTWebSend.cpp
 * @group network library
 * @brief Jamoma WebSocket Sender
 * @see TTWebSocket, TTWebReceive
 *
 * @copyright © 2013, Laurent Garnier
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTWebSend.h"

#define thisTTClass			TTWebSend
#define thisTTClassName		"web.send"
#define thisTTClassTags		"network, send"


TT_OBJECT_CONSTRUCTOR,
mAddress(kTTSymEmpty),
mPort(0),
mSocket(NULL)
{
	addAttributeWithSetter(Address,	kTypeSymbol);
	addAttributeWithSetter(Port,	kTypeUInt16);
	
	addMessageWithArguments(send);
}

TTWebSend::~TTWebSend()
{
	delete mSocket;
}

void TTWebSend::connect()
{
	if (mAddress && mPort && (mAddress != kTTSymEmpty)) {
        
		delete mSocket;
		mSocket = new TTWebSocket(mAddress.c_str(), mPort);
	}
}

TTErr TTWebSend::setAddress(const TTValue& newValue)
{
	TTSymbol	newAddress = newValue;
	TTErr		err = kTTErrNone;
	
	if (mAddress != newAddress) {
		mAddress = newAddress;
		connect();
	}
	return err;
}

TTErr TTWebSend::setPort(const TTValue& newValue)
{
	TTUInt16	newPort = newValue;
	TTErr		err = kTTErrNone;
	
	if (mPort != newPort) {
		mPort = newPort;
		connect();
	}
	return err;
}

TTErr TTWebSend::send(const TTValue& value, TTValue& unusedOutput)
{
	TTSymbol    message;
	TTValuePtr	arguments;
	
	if (mSocket) {
		// set all application parameters using a TTHash
        if (value.size()) {
            if (value[0].type() == kTypeSymbol) {
                message = value[0];
                return mSocket->SendMessage(message, *arguments);
            }
        }
	}
	
	return kTTErrGeneric;
}