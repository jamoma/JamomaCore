/** @file
 *
 * @ingroup modularWebSocket
 *
 * @brief A WebSocket send object manager
 *
 * @details
 *
 * @authors Théo de la Hogue, Laurent Garnier
 *
 * @copyright Copyright © 2013, Théo de la Hogue @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#ifndef WEBSOCKET_SENDER_MANAGER
#define WEBSOCKET_SENDER_MANAGER

#include "WebSocket.h"

class WebSocket;
typedef WebSocket* WebSocketPtr;

class WebSocketSenderManager {
	
private:
	TTHash   mSenders;
	
public:

	WebSocketSenderManager();
	virtual ~WebSocketSenderManager();
	
    // check if the parameter are still the same and change the parameter if not
    // if the sender doesn't exist it adds a sender
    TTObject    lookup(TTSymbol applicationName);
    
private:
    // add a new sender for an application
	TTObject     add(TTSymbol applicationName);
};
typedef WebSocketSenderManager* WebSocketSenderManagerPtr;

#endif // WEBSOCKET_SENDER_MANAGER
