/* 
 * Jamoma Network Sender
 * Copyright © 2010, Tim Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTNetSend.h"

#define thisTTClass			TTNetSend
#define thisTTClassName		"net.send"
#define thisTTClassTags		"network, send"


TT_OBJECT_CONSTRUCTOR,
mAddress(kTTSymEmpty),
mPort(0),
mMode(kTTSymEmpty),
mSocket(NULL)
{
	addAttributeWithSetter(Address,		kTypeSymbol);
	addAttributeWithSetter(Port,		kTypeUInt16);
	addAttributeWithSetter(Mode,		kTypeSymbol);
	
	addMessageWithArgument(Send);
}


TTNetSend::~TTNetSend()
{
	;
}


void TTNetSend::connect()
{
	if (mAddress && mPort && mMode && (mAddress != kTTSymEmpty) && (mMode != kTTSymEmpty)) {
		char portAsCString[8];
		
		snprintf(portAsCString, 8, "%i", mPort);
		delete mSocket;
		mSocket = new TTNetSocket(mAddress->getString(), TTString(portAsCString), mMode);
	}
}


TTErr TTNetSend::setAddress(const TTValue& newValue)
{
	TTSymbolPtr	newAddress = newValue;
	TTErr		err = kTTErrNone;
	
	if (mAddress != newAddress) {
		mAddress = newAddress;
		connect();
	}
	return err;
}


TTErr TTNetSend::setPort(const TTValue& newValue)
{
	TTUInt16	newPort = newValue;
	TTErr		err = kTTErrNone;
	
	if (mPort != newPort) {
		mPort = newPort;
		connect();
	}
	return err;
}


TTErr TTNetSend::setMode(const TTValue& newValue)
{
	TTSymbolPtr	newMode = newValue;
	TTErr		err = kTTErrNone;
	
	if (mMode != newMode) {
		mMode = newMode;
		connect();
	}
	return err;
}


TTErr TTNetSend::Send(const TTValue& arguments)
{
	if (mSocket) {
		TTValue message = arguments;

		message.toString();
		return mSocket->Send(message);
	}
	else
		return kTTErrGeneric;
}
