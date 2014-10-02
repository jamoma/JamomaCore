/*
 * @file TTWebReceive.cpp
 * @group network library
 * @brief Jamoma WebSocket Receiver
 * @see TTWebSocket, TTWebSend
 *
 * @copyright © 2013, Laurent Garnier
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTWebReceive.h"

#define thisTTClass			TTWebReceive
#define thisTTClassName		"web.receive"
#define thisTTClassTags		"network, receive"


TT_OBJECT_CONSTRUCTOR,
mPort(0),
mSocket(NULL),
mCallback(NULL)
{
    if (arguments.size() == 1)
        mCallback = arguments[0];
    
	addAttributeWithSetter(Port, kTypeUInt16);
    
	// callback from mSocket
	addMessageWithArguments(WebSocketReceive);
	addMessageProperty(WebSocketReceive, hidden, YES);
}

TTWebReceive::~TTWebReceive()
{
	delete mSocket;
}

void TTWebReceive::bind()
{
	if (mPort) {
		delete mSocket;
		mSocket = new TTWebSocket((TTObjectBasePtr)this, mPort);
	}
}

TTErr TTWebReceive::setPort(const TTValue& newValue)
{
	TTUInt16	newPort = newValue;
	TTErr		err = kTTErrNone;
	
	if (mPort != newPort) {
		mPort = newPort;
		bind();
	}
	return err;
}

TTErr TTWebReceive::WebSocketReceive(const TTValue& message, TTValue& unusedOutput)
{
    if (mCallback.valid())
        this->mCallback.send("notify", message, unusedOutput);
	else
        this->sendNotification(TTSymbol("receivedMessage"), message);
    
	return kTTErrNone;
}
