/*
 * An OSC send object manager
 * Copyright © 2013, Théo de la Hogue
 *
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef OSC_SENDER_MANAGER
#define OSC_SENDER_MANAGER

#include "OSC.h"

class OSC;
typedef OSC* OSCPtr;

class OSCSenderManager {
	
private:
	TTHashPtr   mSenders;
	
public:

	OSCSenderManager();
	virtual ~OSCSenderManager();
	
    // check if the parameter are still the same and change the parameter if not
    // if the sender doesn't exist it adds a sender
    TTObjectBasePtr     lookup(TTSymbol applicationName, TTSymbol ip, TTUInt16 port);
    
private:
    // add a new sender for an application
	TTObjectBasePtr     add(TTSymbol applicationName, TTSymbol ip, TTUInt16 port);
};
typedef OSCSenderManager* OSCSenderManagerPtr;

#endif // OSC_SENDER_MANAGER
