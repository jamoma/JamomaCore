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
mSocket(NULL)
{
	addMessageWithArguments(send);
    connect();
}

TTWebSend::~TTWebSend()
{
	delete mSocket;
}

void TTWebSend::connect()
{
    delete mSocket;
    mSocket = new TTWebSocket();
}

TTErr TTWebSend::send(const TTValue& value, TTValue& unusedOutput)
{
	TTSymbol    message;
//	TTValuePtr	arguments;
    
	if (mSocket) {
		// set all application parameters using a TTHash
        if (value.size()) {
            if (value[0].type() == kTypeSymbol) {
                message = value[0];
                return mSocket->SendMessage(message);
            }
        }
	}
	
	return kTTErrGeneric;
}