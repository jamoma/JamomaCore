/* 
 * Jamoma Network Receiver
 * Copyright © 2010, Tim Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTNetReceive.h"

#define thisTTClass			TTNetReceive
#define thisTTClassName		"net.receive"
#define thisTTClassTags		"network, receive"


TT_OBJECT_CONSTRUCTOR,
mPort(0),
mMode(kTTSymEmpty),
mSocket(NULL)
{
	addAttributeWithSetter(Port,	kTypeUInt16);
	addAttributeWithSetter(Mode,	kTypeSymbol);

	// callback from mSocket
	addMessageWithArguments(networkSocketReceive);
	addMessageProperty(networkSocketReceive, hidden, YES);
}


TTNetReceive::~TTNetReceive()
{
	;
}


void TTNetReceive::bind()
{
	if (mPort && mMode && (mMode != kTTSymEmpty)) {
		char		portAsCString[8];
		TTString	address = "";
		
		snprintf(portAsCString, 8, "%i", mPort);
		delete mSocket;
		mSocket = new TTNetSocket(this, address, TTString(portAsCString), mMode);
	}
}


TTErr TTNetReceive::setPort(const TTValue& newValue)
{
	TTUInt16	newPort = newValue;
	TTErr		err = kTTErrNone;
	
	if (mPort != newPort) {
		mPort = newPort;
		bind();
	}
	return err;
}


TTErr TTNetReceive::setMode(const TTValue& newValue)
{
	TTSymbolPtr	newMode = newValue;
	TTErr		err = kTTErrNone;
	
	if (mMode != newMode) {
		mMode = newMode;
		bind();
	}
	return err;
}


TTErr TTNetReceive::networkSocketReceive(const TTValue& message, TTValue& unusedOutput)
{
	this->sendNotification(TT("receivedMessage"), message);
	return kTTErrNone;
}

