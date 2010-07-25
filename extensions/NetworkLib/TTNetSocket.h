/* 
 * Jamoma Network Socket
 * Copyright © 2010, Tim Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __TT_NETSOCKET_H__
#define __TT_NETSOCKET_H__

#include "TTFoundationAPI.h"
#include "TTThread.h"
#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <netinet/tcp.h>
#include <netdb.h>


/** Our thread worker for receiving packets with this socket. */
void* TTNetSocketListener(void* anArgument);


class TTNetSocket {
	static const int	kConnectionBacklogSize = 20;	// how many pending connections queue will hold
	int					mSocketDescriptor;
	addrinfo*			mSocketAddressInfo;				// You'll load this struct up a bit, and then call getaddrinfo(). It'll return a pointer to a new linked list of these structures filled out with all the goodies you need.
	TTThreadPtr			mSocketListenerThread;			/// for receiving data
	
public:
	
	/**	Create a socket for network communication.
	 
		@param	address		may be symbolic (www.jamoma.org) or numeric (192.168.1.1).
							an empty string is interpreted as meaning your own local device's IP address.
		@param	port		could be a string with a port number but also could be "http" or "ftp" (etc.)
		@param	transport	should be the symbol "udp" or "tcp"
	*/
	TTNetSocket(const TTString& address, const TTString& port, const TTSymbolPtr transport) :
		mSocketAddressInfo(NULL),
		mSocketListenerThread(NULL)
	{
		int			err = 0;
		addrinfo	hints;
		const char*	cAddress = NULL;
		
		memset(&hints, 0, sizeof(hints));
		hints.ai_family = AF_UNSPEC;			// don't care IPv4 or IPv6 
		if (transport == kTTSym_udp)
			hints.ai_socktype = SOCK_DGRAM;		// UDP datagram sockets 
		else
			hints.ai_socktype = SOCK_STREAM;	// TCP stream sockets
		if (address.empty())
			hints.ai_flags = AI_PASSIVE;		// fill in my own IP for me

		// NOTE: we pass NULL as the first parameter to use our own IP address
		if (!address.empty())
			cAddress = address.c_str();
		err = getaddrinfo(cAddress, port.c_str(), &hints, &mSocketAddressInfo);
		if (err) {
			TTLogError("TTSocket call to getaddrinfo error: %s \n", gai_strerror(err));
			return; // if in a constructor, we should really throw and exception...
		}
		
		// getaddrinfo();	// 
		// the above will fill in mSocketAddressInfo with a linked list -- we could use the first one returned, but there may be other addresses in there...
		
		// the "res" linked list looking for valid entries instead of just 
		// assuming the first one is good (like many of these examples do.) 
		// See the section on client/server for real examples.]
		
		// Hooray -- we now have our address info that we can use to actually open a socket and do something with it
		
		mSocketDescriptor = socket(mSocketAddressInfo->ai_family, mSocketAddressInfo->ai_socktype, mSocketAddressInfo->ai_protocol);
		if (mSocketDescriptor == -1) {
			TTLogError("TTSocket call to socket() failed! \n");
			return; // throw and exception here instead?
		}
		
		if (transport == kTTSym_tcp) {
			int intarg = 1;
			
			err = setsockopt(mSocketDescriptor, IPPROTO_TCP, TCP_NODELAY, (char*)&intarg, sizeof(intarg));
			if (err)
				TTLogError("TTSocket call to setsockopt() failed! \n");
		}
		
		if (address.empty()) {
			Bind();
			err = listen(mSocketDescriptor, kConnectionBacklogSize);
			if (err) {
				TTLogError("TTSocket call to listen() failed! \n");
				return;
			}
			
			mSocketListenerThread = new TTThread(TTNetSocketListener, this);
			
		}
		else
			Connect();
		
		
	}
	

	~TTNetSocket()
	{
		delete mSocketListenerThread;
		if (mSocketAddressInfo)
			freeaddrinfo(mSocketAddressInfo);
		if (mSocketDescriptor)
			close(mSocketDescriptor);
	}
	

private:
	/**
	 associate that socket with a port on your local machine.
	 (This is commonly done if you're going to listen() for incoming connections on a specific port
	 
	 
	 
		????? maybe we should just do this automatically if no address is passed in to the constructor ??????
	 
	 
	 
	 */
	void Bind()
	{
		int err;
		
		err = bind(mSocketDescriptor, mSocketAddressInfo->ai_addr, mSocketAddressInfo->ai_addrlen);
		if (err == -1) {
			TTLogError("TTSocket call to bind() failed! \n");
		}
	}
	
	
public:
	/**	This function is called in the listener thread.
		Made public so it can be called by a C callback function, but should not be accessed directly by users. */
	void Accept()
	{
		sockaddr_storage	client_addr;
		socklen_t			client_addr_size = sizeof(client_addr);
		int					clientSocketDescriptor = 0;
		
		clientSocketDescriptor = accept(mSocketDescriptor, (sockaddr*)&client_addr, &client_addr_size);
		
		// we could send stuff to the client now through clientSocketDescriptor
		// however, we are simply listening to communication from the client not sending to it
		// so we don't bother with tracking the clientSocketDescriptor
		
		TTThread::sleep(10);	// TODO: is this interval appropriate?
	}
	
private:	
	// for sending, same thoughts and caveats apply here as to Bind()
	void Connect()
	{
		int err;
		
		err = connect(mSocketDescriptor, mSocketAddressInfo->ai_addr, mSocketAddressInfo->ai_addrlen);
		if (err == -1) {
			TTLogError("TTSocket call to connect() failed! \n");
		}
	}
	
public:

	/**	This should work for both udp and tcp, because we called connect.
		If for udp we do not wish to connect(), then we will need to change the call for udp to use sendto(). 
	 
		Also, there is additional work to do if we wish to send OSC.  
		For example, the packets have to be multples of 4 bytes in size.
	 */
	TTErr Send(const TTString& message)
	{
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
	}
	
};

typedef TTNetSocket* TTNetSocketPtr;


#endif // __TT_NETSOCKET_H__
