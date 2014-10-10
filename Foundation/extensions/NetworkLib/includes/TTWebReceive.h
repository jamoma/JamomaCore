/*
 * @file TTWebReceive.h
 * @group network library
 * @brief Jamoma WebSocket Receiver
 * @see TTWebSocket, TTWebSend
 *
 * @copyright © 2013, Laurent Garnier
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_WEB_RECEIVE_H__
#define __TT_WEB_RECEIVE_H__

#include "TTFoundationAPI.h"
#include "TTWebSocket.h"


/**	
 * TTWebReceive is a websocket protocol receiver class
 */
class TTWebReceive : public TTDataObjectBase {
	TTCLASS_SETUP(TTWebReceive)
	
public:
	TTUInt16				mPort;		///< port number
    TTSymbol				mHtmlPath;	///< path to index.html file
	TTWebSocketPtr			mSocket;
    TTObject                mCallback;  ///< an optionnal callback to get message and baton data back
	
	// internal method
	TTErr bind();
	
	/**	Setter */
	TTErr setPort(const TTValue& value);
	
	/**	Setter */
	TTErr setHtmlPath(const TTValue& value);
	
	/**	Callback from socket receive */
	TTErr WebSocketReceive(const TTValue& message, TTValue& unusedOutput);
    
};
typedef TTWebReceive* TTWebReceivePtr;


#endif // __TT_WEB_RECEIVE_H__