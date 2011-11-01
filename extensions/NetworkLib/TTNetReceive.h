/* 
 * Jamoma Network Receiver
 * Copyright © 2010, Tim Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_NETRECEIVE_H__
#define __TT_NETRECEIVE_H__

#include "TTFoundationAPI.h"
#include "TTNetSocket.h"


/**	TTNetReceive is a simple server that echoes network data to a user-provided callback. 
	This code is based on the awesome tutorial @ http://beej.us/guide/bgnet/ */
class TTNetReceive : public TTDataObject {
	TTCLASS_SETUP(TTNetReceive)

public:
	TTUInt16				mPort;		///< port number
	TTSymbolPtr				mMode;		///< "tcp" or "udp"
	
	TTNetSocketPtr			mSocket;
	
	// internal method
	void bind();
	
	/**	Setter */
	TTErr setPort(const TTValue& value);
	
	/**	Setter */
	TTErr setMode(const TTValue& value);

	/**	Callback from socket receive */
	TTErr networkSocketReceive(const TTValue& message, TTValue& unusedOutput);

};


#endif // __TT_NETRECEIVE_H__
