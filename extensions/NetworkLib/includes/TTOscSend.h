/* 
 * Jamoma OSC Sender
 * Copyright © 2011, Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_OSCSEND_H__
#define __TT_OSCSEND_H__

#include "TTFoundationAPI.h"
#include "TTOscSocket.h"

/**	TTOscSend is ...
 */
class TTOscSend : public TTDataObject {
	TTCLASS_SETUP(TTOscSend)

	TTSymbolPtr				mAddress;	///< www.jamoma.org, 192.168.1.1, etc.
	TTUInt16				mPort;		///< port number
	TTOscSocketPtr			mSocket;
	
	// internal helper method
	void connect();
	
	/**	Setter */
	TTErr setAddress(const TTValue& value);
	
	/**	Setter */
	TTErr setPort(const TTValue& value);
	
	/** Transmit a message using a <TTSymbolPtr message, TTValuePtr arguments> value */
	TTErr send(const TTValue& value, TTValue& unusedOutput);

};


#endif // __TT_OSCSEND_H__
