/* 
 * Jamoma OSC Receiver
 * Copyright © 2011, Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_OSCRECEIVE_H__
#define __TT_OSCRECEIVE_H__

#include "TTFoundationAPI.h"
#include "TTOscSocket.h"


/**	TTOscReceive is ...
 */
class TTOscReceive : public TTDataObjectBase {
	TTCLASS_SETUP(TTOscReceive)
	
public:
	TTUInt16				mPort;              ///< port number
	TTOscSocketPtr			mSocket;
    TTObject                mCallback;          ///< an optionnal callback to get message and baton data back
    TTThreadPtr             mWaitThread;        ///< a thread used to wait a connection status
	
	// internal method
	TTErr bind();
	
	/**	Setter */
	TTErr setPort(const TTValue& value);
	
	/**	Setter */
	TTErr setMode(const TTValue& value);
	
	/**	Callbacks from socket receive */
	TTErr oscSocketReceive(const TTValue& message, TTValue& unusedOutput);

};
typedef TTOscReceive* TTOscReceivePtr;

#endif // __TT_OSCRECEIVE_H__