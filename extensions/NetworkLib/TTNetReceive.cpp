/* 
 * Jamoma Network Receiver
 * Copyright © 2010, Tim Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTNetReceive.h"

#define thisTTClass			TTNetReceive
#define thisTTClassName		"net.receive"
#define thisTTClassTags		"network, receive"


TT_OBJECT_CONSTRUCTOR,
mPort(0),
mMode(NULL),
mSocket(NULL)
{
	addAttributeWithSetter(	Port,		kTypeUInt16);
	addAttributeWithSetter( Mode,		kTypeSymbol);
}


TTNetReceive::~TTNetReceive()
{
	;
}



TTErr TTNetReceive::setPort(const TTValue& newValue)
{
	TTUInt16	newPort = newValue;
	TTErr		err = kTTErrNone;
	
	if (mPort != newPort) {
		mPort = newPort;
	}
	return err;
}


TTErr TTNetReceive::setMode(const TTValue& newValue)
{
	TTSymbolPtr	newMode = newValue;
	TTErr		err = kTTErrNone;
	
	if (mMode != newMode) {
		mMode = newMode;
	}
	return err;
}

