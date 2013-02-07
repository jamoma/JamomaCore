/* 
 * Jamoma OSC Sender
 * Copyright © 2011, Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTOscSend.h"

#define thisTTClass			TTOscSend
#define thisTTClassName		"osc.send"
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

TTOscSend::~TTOscSend()
{
	delete mSocket;
}

void TTOscSend::connect()
{
	if (mAddress && mPort && (mAddress != kTTSymEmpty)) {

		delete mSocket;
		mSocket = new TTOscSocket(mAddress.c_str(), mPort);
	}
}

TTErr TTOscSend::setAddress(const TTValue& newValue)
{
	TTSymbol	newAddress = newValue;
	TTErr		err = kTTErrNone;
	
	if (mAddress != newAddress) {
		mAddress = newAddress;
		connect();
	}
	return err;
}

TTErr TTOscSend::setPort(const TTValue& newValue)
{
	TTUInt16	newPort = newValue;
	TTErr		err = kTTErrNone;
	
	if (mPort != newPort) {
		mPort = newPort;
		connect();
	}
	return err;
}

TTErr TTOscSend::send(const TTValue& value, TTValue& unusedOutput)
{
	TTSymbol    message;
	TTValuePtr	arguments;
	
	if (mSocket) {
		
		// set all application parameters using a TTHash
        if (value.size() == 2 ) {
            
            if (value[0].type() == kTypeSymbol && value[1].type() == kTypePointer) {
                
                message = value[0];
                arguments = TTValuePtr((TTPtr)value[1]);
                
                return mSocket->SendMessage(message, *arguments);
            }
        }
	}
	
	return kTTErrGeneric;
}