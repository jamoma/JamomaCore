#ifndef RECEIVEOSCTHREAD_HPP_
#define RECEIVEOSCTHREAD_HPP_

#define DEFAULT_RECEIVE_OSC_THREAD_PORT 7002

#include "MinuitInclude.hpp"
#include "MinuitMethods.hpp"

#include <pthread.h>

#include "OscPacketListener.h"
#include "UdpSocket.h"
#include "OscOutboundPacketStream.h"

class MinuitMethods;
typedef MinuitMethods* MinuitMethodsPtr;

class ReceiveOSCThread : public osc::OscPacketListener
{
	
private:
	MinuitMethodsPtr			mMethods;
	
	TTBoolean					mRunning;
	unsigned int				mPort;
	
	pthread_t					mReceiveThread;
	UdpListeningReceiveSocket*	mListeningSocket;
	
public:
	ReceiveOSCThread(const MinuitMethodsPtr minuitMethods);
	virtual ~ReceiveOSCThread();
	
	void			run();
	TTBoolean		isRunning();
	
	void			setPort(unsigned int port);
	unsigned int	getPort();
	
	void			asynchronousBreak();
	
	friend void*	OSCReceiveFunction(void* threadArg);
	
protected :
	virtual void ProcessMessage(const osc::ReceivedMessage&m, const IpEndpointName& remoteEndPoint); 

};

typedef ReceiveOSCThread* ReceiveOSCThreadPtr;

#endif /*RECEIVEOSCTHREAD_HPP_*/
