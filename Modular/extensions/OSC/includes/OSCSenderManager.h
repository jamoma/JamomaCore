/** @file
 *
 * @ingroup modularOSC
 *
 * @brief A OSC send object manager
 *
 * @details
 *
 * @authors Théo de la Hogue
 *
 * @copyright Copyright © 2013, Théo de la Hogue @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#ifndef OSC_SENDER_MANAGER
#define OSC_SENDER_MANAGER

#include "OSC.h"

class OSC;
typedef OSC* OSCPtr;

class OSCSenderManager {
	
private:
	TTHash      mSenders;       ///< table of osc.send object
    TTList      mSending;       ///< table of osc.send object currently used
	
public:
    
	OSCSenderManager();
	virtual ~OSCSenderManager();
	
    // check if the parameter are still the same and change the parameter if not
    // if the sender doesn't exist it adds a sender
    TTErr   send(TTSymbol applicationName, TTSymbol ip, TTUInt16 port, const TTValue& message);
};
typedef OSCSenderManager* OSCSenderManagerPtr;

#endif // OSC_SENDER_MANAGER