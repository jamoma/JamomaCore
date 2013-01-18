/*
 * A OSC send object manager
 * Copyright © 2013, Théo de la Hogue
 *
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef MINUIT_SENDER_MANAGER
#define MINUIT_SENDER_MANAGER

#include "Minuit.h"

class Minuit;
typedef Minuit* MinuitPtr;

class MinuitSenderManager {
	
private:
	TTHashPtr   mSenders;
	
public:

	MinuitSenderManager();
	virtual ~MinuitSenderManager();
	
    // check if the parameter are still the same and change the parameter if not
    // if the sender doesn't exist it adds a sender
    TTObjectPtr     lookup(TTSymbol applicationName, TTSymbol ip, TTUInt16 port);
    
private:
    // add a new sender for an application
	TTObjectPtr     add(TTSymbol applicationName, TTSymbol ip, TTUInt16 port);
};
typedef MinuitSenderManager* MinuitSenderManagerPtr;

#endif // MINUIT_SENDER_MANAGER
