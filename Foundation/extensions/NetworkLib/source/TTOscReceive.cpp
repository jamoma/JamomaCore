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
mSocket(NULL),
mCallback(NULL)
{
    if (arguments.size() == 1)
        mCallback = TTCallbackPtr((TTObjectBasePtr)arguments[0]);
    
	addAttributeWithSetter(Port, kTypeUInt16);

	// callback from mSocket
	addMessageWithArguments(oscSocketReceive);
	addMessageProperty(oscSocketReceive, hidden, YES);
}

TTOscReceive::~TTOscReceive()
{
	delete mSocket;
    
    if (mCallback) {
		delete (TTValuePtr)mCallback->getBaton();
		TTObjectBaseRelease(TTObjectBaseHandle(&mCallback));
	}
}

void TTOscReceive::bind()
{
	if (mPort) {
		delete mSocket;
		mSocket = new TTOscSocket((TTObjectBasePtr)this, mPort);
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

TTErr TTOscReceive::oscSocketReceive(const TTValue& message, TTValue& unusedOutput)
{
    if (mCallback)
        this->mCallback->notify(message, unusedOutput);
	else
        this->sendNotification(TTSymbol("receivedMessage"), message);
    
	return kTTErrNone;
}
