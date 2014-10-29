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
mWaitThread(NULL)
{
    if (arguments.size() == 1)
        mCallback = arguments[0];
    
	addAttributeWithSetter(Port, kTypeUInt16);

	// callbacks from mSocket
	addMessageWithArguments(oscSocketReceive);
	addMessageProperty(oscSocketReceive, hidden, YES);
    
    mWaitThread = new TTThread(NULL, NULL);
}

TTOscReceive::~TTOscReceive()
{
	delete mSocket;
    
    // théo : is it necessary ? we used to do this in Minuit::Stop and OSC::Stop to avoid strange crash ...
    mWaitThread->sleep(1);
    
    if (mWaitThread)
		mWaitThread->wait();
    
	delete mWaitThread;
}

TTErr TTOscReceive::bind()
{
	if (mPort) {
        
		delete mSocket;

        mSocket = new TTOscSocket((TTObjectBasePtr)this, mPort);
        
        do {
            mWaitThread->sleep(1);
        }
        while (mSocket->getSocketListenerStatus() == kOscSocketConnectionTrying);
        
        if (mSocket->getSocketListenerStatus() == kOscSocketConnectionSucceeded)
            return kTTErrNone;
	}
    
    return kTTErrGeneric;
}

TTErr TTOscReceive::setPort(const TTValue& newValue)
{
	TTUInt16	newPort = newValue;
	
	if (mPort != newPort) {
        
		mPort = newPort;
		return bind();
	}
    
	return kTTErrGeneric;
}

TTErr TTOscReceive::oscSocketReceive(const TTValue& message, TTValue& unusedOutput)
{
    if (mCallback.valid())
        this->mCallback.send("notify", message, unusedOutput);
	else
        this->sendNotification(TTSymbol("receivedMessage"), message);
    
	return kTTErrNone;
}