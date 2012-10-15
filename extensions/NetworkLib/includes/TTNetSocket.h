/* 
 * Jamoma Network Socket
 * Copyright © 2010, Tim Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_NETSOCKET_H__
#define __TT_NETSOCKET_H__

#include "TTFoundationAPI.h"
#include "TTThread.h"
#include <sys/types.h>

#ifndef TT_PLATFORM_WIN
	#include <sys/socket.h>
	#include <netinet/in.h>
	#include <netinet/tcp.h>
	#include <netdb.h>
#endif





/** Our thread worker for receiving packets with this socket. */
void* TTNetSocketListener(void* anArgument);
void* TTNetSocketReceiver(void* anArgument);


class TTNetSocketConnection;
typedef TTNetSocketConnection* TTNetSocketConnectionPtr;


class TTNetSocket {
	friend class TTNetSocketConnection;
	
	static const int	kConnectionBacklogSize = 20;	// how many pending connections queue will hold
	int					mSocketDescriptor;

#ifndef TT_PLATFORM_WIN
	addrinfo*			mSocketAddressInfo;				// You'll load this struct up a bit, and then call getaddrinfo(). It'll return a pointer to a new linked list of these structures filled out with all the goodies you need.
#else
	void*				mSocketAddressInfo;
#endif

	TTThreadPtr			mSocketListenerThread;			/// for receiving data
	TTList				mConnections;
	TTObjectPtr			mOwner;							///< The object that instantiated this socket and will receive notifications.
	
public:
	
	/**	Create a socket for network communication.
	 
		@param	address		may be symbolic (www.jamoma.org) or numeric (192.168.1.1).
							an empty string is interpreted as meaning your own local device's IP address.
		@param	port		could be a string with a port number but also could be "http" or "ftp" (etc.)
		@param	transport	should be the symbol "udp" or "tcp"
	*/
	TTNetSocket(const TTObjectPtr owner, const TTString& address, const TTString& port, const TTSymbol& transport);

	~TTNetSocket()
	{
	#ifndef TT_PLATFORM_WIN
		delete mSocketListenerThread;
		if (mSocketAddressInfo)
			freeaddrinfo(mSocketAddressInfo);
		if (mSocketDescriptor)
			close(mSocketDescriptor);
	#else
		;
	#endif
	}
	

private:
	/**
	 associate that socket with a port on your local machine.
	 (This is commonly done if you're going to listen() for incoming connections on a specific port
	 
	 
	 
		????? maybe we should just do this automatically if no address is passed in to the constructor ??????
	 
	 
	 
	 */
	void Bind()
	{
	#ifndef TT_PLATFORM_WIN
		int err;
		
		err = bind(mSocketDescriptor, mSocketAddressInfo->ai_addr, mSocketAddressInfo->ai_addrlen);
		if (err == -1) {
			TTLogError("TTSocket call to bind() failed! \n");
		}

	#else
		;
	#endif
	}
	
	
public:
	/**	This function is called in the listener thread.
		Made public so it can be called by a C callback function, but should not be accessed directly by users. */
	void Accept();
	
	
private:	
	// for sending, same thoughts and caveats apply here as to Bind()
	void Connect()
	{
	#ifndef TT_PLATFORM_WIN
		int err;
		
		err = connect(mSocketDescriptor, mSocketAddressInfo->ai_addr, mSocketAddressInfo->ai_addrlen);
		if (err == -1) {
			TTLogError("TTSocket call to connect() failed! \n");
		}
	#else
		;
	#endif
	}
	
public:

	/**	This should work for both udp and tcp, because we called connect.
		If for udp we do not wish to connect(), then we will need to change the call for udp to use sendto(). 
	 
		Also, there is additional work to do if we wish to send OSC.  
		For example, the packets have to be multples of 4 bytes in size.
	 */
	TTErr Send(const TTString& message)
	{
	#ifndef TT_PLATFORM_WIN
		int result;
		
		result = send(mSocketDescriptor, message.c_str(),  message.size(), 0);
		if (result == -1) {
			TTLogError("TTSocket call to sendto() failed! \n");
		}
		else if (result != message.size()) {
			TTLogError("TTSocket call to sendto() didn't send all of the bytes \n");
			// only transmitted 'result' number of bytes, need to try again with the rest of the bytes...
		}
		return (TTErr)result;

	#else
		return kTTErrGeneric;
	#endif
	}
	
};

typedef TTNetSocket* TTNetSocketPtr;



class TTNetSocketConnection {
	static const int	kReceiveBufferSize = 65536;
	char				mReceiveBuffer[kReceiveBufferSize];
	TTNetSocketPtr		mSocket;
	TTThreadPtr			mReceiverThread;
	
public:
	
	TTNetSocketConnection(TTNetSocketPtr socket) : 
		mSocket(socket)
	{
		mReceiverThread = new TTThread(TTNetSocketReceiver, this);
	}
	
	
	~TTNetSocketConnection()
	{
		delete mReceiverThread;
	}
	
	
	/** Try to receive data from a connection. */
	void Receive();
	
};




#endif // __TT_NETSOCKET_H__
