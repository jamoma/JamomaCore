/* 
 * Jamoma OSC Receiver
 * Copyright © 2011, Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTOscReceive.h"

#define thisTTClass			TTOscReceive
#define thisTTClassName		"osc.receive"
#define thisTTClassTags		"network, receive"


TT_OBJECT_CONSTRUCTOR,
mPort(0),
mSocket(NULL)
{
	addAttributeWithSetter(Port, kTypeUInt16);

	// callback from mSocket
	addMessageWithArgument(oscSocketReceive);
	addMessageProperty(oscSocketReceive, hidden, YES);
}

TTOscReceive::~TTOscReceive()
{
	delete mSocket;
}

void TTOscReceive::bind()
{
	if (mPort) {
		delete mSocket;
		mSocket = new TTOscSocket((TTObjectPtr)this, mPort);
	}
}

TTErr TTOscReceive::setPort(const TTValue& newValue)
{
	TTUInt16	newPort = newValue;
	TTErr		err = kTTErrNone;
	
	if (mPort != newPort) {
		mPort = newPort;
		bind();
	}
	return err;
}

TTErr TTOscReceive::oscSocketReceive(const TTValue& message)
{
	this->sendNotification(TT("receivedMessage"), message);
	return kTTErrNone;
}
