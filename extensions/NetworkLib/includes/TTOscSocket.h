/* 
 * Jamoma OSC Receiver
 * Copyright © 2011, Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_OSC_SOCKET_H__
#define __TT_OSC_SOCKET_H__

#include "TTFoundationAPI.h"

#include "OscPacketListener.h"
#include "UdpSocket.h"
#include "OscOutboundPacketStream.h"

/** ...
 @param anArgument		a TTOscSocket pointer
 @return				NULL					*/
TTPtr TTOscSocketListener(TTPtr anArgument);

/**	TTOscSocket is ...
 */
class TTOscSocket : public osc::OscPacketListener
{
	
private:
	
	TTObjectPtr					mOwner;							///< The object that instantiated this socket and will receive notifications.
	
	TTString					mAddress;
	TTUInt16					mPort;
	
	UdpListeningReceiveSocket*	mSocketListener;
	UdpTransmitSocket*			mSocketTransmitter;
	
	TTThreadPtr					mSocketListenerThread;			/// for receiving data
	
public:
	
	/**	Create a socket to receive osc messages.
		@param	owner		the TTObject to notify
		@param	port		the port number
	 */
	TTOscSocket(const TTObjectPtr owner, const TTUInt16 port);
	
	/**	Create a socket to send osc messages.
	 @param	address		the ip address
	 @param	port		the port number
	 */
	TTOscSocket(const TTString& address, const TTUInt16 port);
	
	virtual ~TTOscSocket();
	
	TTErr		SendMessage(TTSymbol& message, const TTValue& arguments);
	
private:
	// internal helper method
	TTUInt32	computeMessageSize(TTSymbol& message, const TTValue& arguments);
	
protected:
	
	virtual void ProcessMessage(const osc::ReceivedMessage&m, const IpEndpointName& remoteEndPoint);

	
	friend TTPtr TTOscSocketListener(TTPtr anArgument);
};
typedef TTOscSocket* TTOscSocketPtr;

#endif // __TT_OSC_SOCKET_H__
