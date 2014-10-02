/*
 * @file TTWebSend.h
 * @group network library
 * @brief Jamoma WebSocket Sender
 * @see TTWebSocket, TTWebReceive
 *
 * @copyright © 2013, Laurent Garnier
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_WEB_SEND_H__
#define __TT_WEB_SEND_H__

#include "TTFoundationAPI.h"
#include "TTWebSocket.h"

/**	
 * TTWebSend is a websocket protocol sender class
 */
class TTWebSend : public TTDataObjectBase {
	TTCLASS_SETUP(TTWebSend)
    
	TTSymbol				mAddress;	///< www.jamoma.org, 192.168.1.1, etc.
	TTUInt16				mPort;		///< port number
	TTWebSocketPtr			mSocket;
	
	// internal helper method
	void connect();
	
	/**	Setter */
	TTErr setAddress(const TTValue& value);
	
	/**	Setter */
	TTErr setPort(const TTValue& value);
	
	/** Transmit a message using a <TTSymbolPtr message, TTValuePtr arguments> value */
	TTErr send(const TTValue& value, TTValue& unusedOutput);
    
};


#endif // __TT_WEB_SEND_H__
