/*
 * @file TTWebSocket.h
 * @group network library
 * @brief Jamoma WebSocket server
 * @see TTWebSend, TTWebReceive
 *
 * @copyright © 2013, Laurent Garnier
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 *
 * @details Use cross platform civetweb server from https://github.com/sunsetbrew/civetweb
 * @details Some parts of this code are taken from ws_server example
 */

#ifndef __TT_WEB_SOCKET_H__
#define __TT_WEB_SOCKET_H__

#include "TTFoundationAPI.h"
#include "civetweb.h"

// simple structure for keeping track of websocket connection
struct ws_connection {
    struct mg_connection    *conn;
    int     update;
    int     closing;
};

// time base and structure periodic updates to client for demo
#define BASETIME 100000 /* 0.1 seconds */
struct progress {
    int     limit;
    int     increment;
    int     period;
    int     value;
};

// up to 16 independent client connections
#define CONNECTIONS 16
static struct ws_connection ws_conn[CONNECTIONS];

// last connection
static struct mg_connection            *mLastConnection;

/**
 * Create a websocket server.
 */
class TTWebSocket
{
    
public:
    
	TTObjectBasePtr					mOwner;							///< The object that instantiated this socket and will receive notifications.
    
private:
    
	TTString                        mAddress;
	TTUInt16                        mPort;
    
    
    struct mg_context               *mContext;
    
public:
	
	/**	Create a socket to receive websocket messages.
     @param	owner		the TTObjectBase to notify
     @param	port		the port number
	 */
	TTWebSocket(const TTObjectBasePtr owner, const TTUInt16 port);
	
	/**	Create a socket to send websocket messages.
	 @param	address		the ip address
	 @param	port		the port number
	 */
	TTWebSocket(const TTString& address, const TTUInt16 port);

	virtual ~TTWebSocket();
	
    /**	Send message
	 @param	message         message to send
	 @param	arguments		possible arguments (not used here)
	 */
	TTErr SendMessage(TTSymbol& message, const TTValue& arguments);
};
typedef TTWebSocket* TTWebSocketPtr;


#endif // __TT_WEB_SOCKET_H__
