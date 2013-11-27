/* 
 * Jamoma Network Socket
 * Copyright © 2010, Tim Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTNetSocket.h"
#include "TTNetReceive.h"


void* TTNetSocketListener(void* anArgument)
{
	TTNetSocketPtr self = (TTNetSocketPtr)anArgument;
	self->Accept();
	return NULL;
}


void* TTNetSocketReceiver(void* anArgument)
{
	TTNetSocketConnectionPtr self = (TTNetSocketConnectionPtr)anArgument;
	self->Receive();
	return NULL;
}


TTNetSocket::TTNetSocket(const TTObjectBasePtr owner, const TTString& address, const TTString& port, const TTSymbol& transport) :
mSocketAddressInfo(NULL),
mSocketListenerThread(NULL),
mOwner(owner)
{
#ifndef TT_PLATFORM_WIN
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
		
		// udp is connectionless, and so a call to listen() on a udp socket will fail
		if (transport == kTTSym_tcp) {
			err = listen(mSocketDescriptor, kConnectionBacklogSize);
			if (err) {
				TTLogError("TTSocket call to listen() failed! \n");
				return;
			}
			mSocketListenerThread = new TTThread(TTNetSocketListener, this);
		}
		else {
			// for udp we skip the listener / accept stuff for connecting and go straight to receiving...
			TTNetSocketConnectionPtr	connection;
			TTValue						v;
			
			connection = new TTNetSocketConnection(this);	// The connection instance manages its own thread for receiving
			v.set(0, connection);
			mConnections.append(v);							// We need to track connection instances so that we can close them all later
		}
		
		
	}
	else
		Connect();

#else
	;
#endif
}


void TTNetSocket::Accept()
{
#ifndef TT_PLATFORM_WIN
	sockaddr_storage			client_addr;
	socklen_t					client_addr_size = sizeof(client_addr);
	int							clientSocketDescriptor = 0;
	TTNetSocketConnectionPtr	connection;
	TTValue						v;
	
	clientSocketDescriptor = accept(mSocketDescriptor, (sockaddr*)&client_addr, &client_addr_size);
	if (clientSocketDescriptor == -1) {
		TTLogError("TTSocket call to accept() failed! \n");
		goto out;
	}
	
	connection = new TTNetSocketConnection(this);	// The connection instance manages its own thread for receiving
	v.set(0, connection);
	mConnections.append(v);							// We need to track connection instances so that we can close them all later
	
	// we could send stuff to the client now through clientSocketDescriptor
	// however, we are simply listening to communication from the client not sending to it
	// so we don't bother with tracking the clientSocketDescriptor
out:
	TTThread::sleep(100);	// TODO: is this interval appropriate?

#else
	;
#endif
}


void TTNetSocketConnection::Receive()
{
#ifndef TT_PLATFORM_WIN
	int		status;
	TTValue	v, none;
	
	while (true) {
		// TODO: should optimize this by having separate TCP and UDP receive routines
		if ( ((TTNetReceive*)mSocket->mOwner)->mMode == kTTSym_udp ) {
			sockaddr	remote_addr;
			socklen_t	addr_len;
			
			status = recvfrom(mSocket->mSocketDescriptor, mReceiveBuffer, kReceiveBufferSize-1, 0, &remote_addr, &addr_len);
		}
		else
			status = recv(mSocket->mSocketDescriptor, mReceiveBuffer, kReceiveBufferSize, 0);
		
		if (status < 0) {
			//			sys_sockerror("tcpreceive_read: recv");
			//			sys_rmpollfn(sockfd);
			//			sys_closesocket(sockfd);
			//			tcpreceive_removeconnection(x, sockfd);
			//			outlet_float(x->x_connectout, --x->x_nconnections);
		}
		else if (status == 0) {
			//			post("tcpreceive: EOF on socket %d\n", sockfd);
			//			sys_rmpollfn(sockfd);
			//			sys_closesocket(sockfd);
			//			tcpreceive_removeconnection(x, sockfd);
			//			outlet_float(x->x_connectout, --x->x_nconnections);
		}
		else {			
            TTString    message(mReceiveBuffer);
            
            message.resize(status-1);
			v.set(0, message);
			mSocket->mOwner->sendMessage(TTSymbol("networkSocketReceive"), v, none);
		}
		TTThread::sleep(10); // TODO: is this appropriate?
	}

#else
	;
#endif
}
