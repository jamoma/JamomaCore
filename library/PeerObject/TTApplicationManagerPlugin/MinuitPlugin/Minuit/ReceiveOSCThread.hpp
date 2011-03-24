#ifndef RECEIVEOSCTHREAD_HPP_
#define RECEIVEOSCTHREAD_HPP_

#define DEFAULT_RECEIVE_OSC_THREAD_PORT 7002

#include <pthread.h>

#include "../NetworkCommunication/osc/OscPacketListener.h"
#include "../NetworkCommunication/ip/UdpSocket.h"
#include "../NetworkCommunication/osc/OscOutboundPacketStream.h"

class MinuitCommunicationMethods;

class ReceiveOSCThread : public osc::OscPacketListener
{
public:
	ReceiveOSCThread(MinuitCommunicationMethods *minuitMethods);
	virtual ~ReceiveOSCThread();
	
	UdpListeningReceiveSocket* m_listeningSocket;
	
	void setPort(unsigned int port);
	unsigned int getPort();
	
	bool isRunning();
	
	void run();
	void asynchronousBreak();
	
	friend void* OSCReceiveFunction(void* threadArg);
protected :
	virtual void ProcessMessage(const osc::ReceivedMessage&m, const IpEndpointName& remoteEndPoint); 
	
private:
	MinuitCommunicationMethods *m_minuitMethods;
	
	bool m_isRunning;
	
	pthread_t m_receiveThread;
	
	unsigned int m_port;
};

#endif /*RECEIVEOSCTHREAD_HPP_*/
