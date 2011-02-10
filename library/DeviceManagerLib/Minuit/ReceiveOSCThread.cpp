#include "ReceiveOSCThread.hpp"
#include "MinuitCommunicationMethods.hpp"

#include <iostream>
#include <sstream>

using namespace std;

void* OSCReceiveFunction(void* threadArg)
{
	ReceiveOSCThread* ReceiveOSC = (ReceiveOSCThread*) threadArg;

	UdpListeningReceiveSocket* s = new UdpListeningReceiveSocket(IpEndpointName(IpEndpointName::ANY_ADDRESS, ReceiveOSC->getPort()), ReceiveOSC);
	ReceiveOSC->m_listeningSocket = s;

	ReceiveOSC->m_listeningSocket->Run();

	return 0;
}

ReceiveOSCThread::ReceiveOSCThread(MinuitCommunicationMethods *minuitMethods)
{
	m_port = DEFAULT_RECEIVE_OSC_THREAD_PORT;
	m_minuitMethods = minuitMethods;
	m_isRunning = false;
	m_listeningSocket = NULL;
}

ReceiveOSCThread::~ReceiveOSCThread()
{
}

void
ReceiveOSCThread::setPort(unsigned int port)
{
	m_port = port;
}

unsigned int
ReceiveOSCThread::getPort()
{
	return m_port;
}

void
ReceiveOSCThread::run()
{
	m_isRunning = true;
	pthread_create(&m_receiveThread, NULL, OSCReceiveFunction, this);
}

bool
ReceiveOSCThread::isRunning()
{
	return m_isRunning;
}

void
ReceiveOSCThread::asynchronousBreak()
{
	unsigned int usecToStopTheSelect = 20000;
	if (m_listeningSocket != NULL) {
		m_listeningSocket->AsynchronousBreak();

#ifdef TT_PLATFORM_WIN
			Sleep(usecToStopTheSelect/1000);
#else
			usleep(usecToStopTheSelect);
#endif

		delete m_listeningSocket;
		m_listeningSocket = NULL;
	}

	m_isRunning = false;
}

void
ReceiveOSCThread::ProcessMessage(const osc::ReceivedMessage&m, const IpEndpointName& remoteEndPoint)
{
	std::string currentString(m.AddressPattern());
	std::string sender = "";
	std::string operation = "";
	int operationStart;
	std::string address;
	std::string whereTo = "";
	std::string attribute = "";
	int attributeStart;
	//std::ostringstream arguments;
	TTValue arguments;
	
	/*
	 if start with '/'
	
	 else if start with '?'
		parse sender?operation /whereTo:attribute
	
		if ?namespace
	
		if ?get
	 
		if ?listen
	
	 else if start with ':'
		parse sender:operation /whereTo:attribute
		get arguments
	 
		if :namespace
	
		if :get
	 
		if :listen
	
	 */
	
	// if start with '/'
	if (currentString[0] == '/')
	{
		attributeStart = currentString.find(':');								// parse /whereTo:attribute
		if(attributeStart != currentString.npos)
		{
			whereTo = currentString.substr(0, attributeStart);					// get whereTo
			attribute = currentString.substr(attributeStart+1);					// get attribute
		}
		else
		{
			whereTo = currentString;											// get where to
			attribute = "value";												// default attribute is 'value'
		}
		
		osc::ReceivedMessage::const_iterator arg = m.ArgumentsBegin();			// get arguments
		
		while(arg != m.ArgumentsEnd()){
			
			if (arg->IsChar()) {
				//cout << "char" << endl;
				//arguments << arg->AsChar();
				arguments.append(arg->AsChar());
			} else if (arg->IsInt32()) {
				//cout << "int" << endl;
				//arguments << arg->AsInt32();
				TTInt32 i = arg->AsInt32();
				arguments.append((TTInt64)i);
			} else if (arg->IsFloat()) {
				//cout << "float" << endl;
				//arguments << arg->AsFloat();
				arguments.append(arg->AsFloat());
			} else if (arg->IsString()) {
				//cout << "string" << endl;
				//arguments << arg->AsString();
				arguments.append(arg->AsString());
			}
			
			arg++;
			
//			if(arg != m.ArgumentsEnd())
//				arguments << " ";
		}
		
		// DEBUG
		cout << "Receive set request (OSC style) at " << whereTo << endl;
//		cout << "Arguments : " << arguments.str() << endl;
		
		m_minuitMethods->minuitReceiveNetworkSetRequest(sender, whereTo, attribute, arguments);
		return;
	} 
	else {
		
		// Is it a request ?
		operationStart = currentString.find('?');
		if(operationStart != currentString.npos)
		{
			sender = currentString.substr(0, operationStart);					// get sender
			operation = currentString.substr(operationStart);					// get request
			
			osc::ReceivedMessage::const_iterator arg = m.ArgumentsBegin();		// parse /whereTo:attribute
			if(arg->IsString()){
				
				address = arg->AsString();
				
				attributeStart = address.find(':');
				if(attributeStart != address.npos)
				{
					whereTo = address.substr(0, attributeStart);				// get whereTo
					attribute = address.substr(attributeStart+1);				// get attribute
				}
				else
				{
					whereTo = address;											// get where to
					attribute = "value";										// default attribute is 'value'
				}
			}
			
			// DEBUG
			cout << "Receive " << operation << " request from "<< sender << " at " << whereTo << " for " << attribute << endl;
			
			// switch on request
			if(operation.compare(MINUIT_REQUEST_DISCOVER) == 0){
				m_minuitMethods->minuitReceiveNetworkDiscoverRequest(sender, whereTo);
				return;
			}
			
			else if(operation.compare(MINUIT_REQUEST_GET) == 0){
				m_minuitMethods->minuitReceiveNetworkGetRequest(sender, whereTo, attribute);
				return;
			}
			
			else if(operation.compare(MINUIT_REQUEST_LISTEN) == 0){
				
				arg++;																// get 1 string argument
				
				std::string val;
				if (arg->IsString()) {
//					arguments << arg->AsString();
					val = arg->AsString();
				}
				// DEBUG
				cout << "Arguments : " << val << endl;

				if(val.compare(MINUIT_REQUEST_LISTEN_ENABLE) == 0)
					m_minuitMethods->minuitReceiveNetworkListenRequest(sender, whereTo, attribute, true);
				else if(val.compare(MINUIT_REQUEST_LISTEN_DISABLE) == 0)
					m_minuitMethods->minuitReceiveNetworkListenRequest(sender, whereTo, attribute, false);
				
				return;
			}
			
			return;
		}// end if starts by '?'
		
		
		// Is it a return ?
		operationStart = currentString.find(':');
		if(operationStart != currentString.npos)
		{
			sender = currentString.substr(0, operationStart);					// get sender
			operation = currentString.substr(operationStart);					// get answer
			
			osc::ReceivedMessage::const_iterator arg = m.ArgumentsBegin();		// get where to
			if(arg->IsString())
				whereTo = arg->AsString();
			
			// DEBUG
			cout << "Receive " << operation << " answer from "<< sender << " at " << whereTo << endl;
			
			arg++;																// get arguments
			while(arg != m.ArgumentsEnd()){
				
				if (arg->IsChar()) {
					//cout << "char" << endl;
					//arguments << arg->AsChar();
					arguments.append(arg->AsChar());
				} else if (arg->IsInt32()) {
					//cout << "int" << endl;
					//arguments << arg->AsInt32();
					TTInt32 i = arg->AsInt32();
					arguments.append((TTInt64)i);
				} else if (arg->IsFloat()) {
					//cout << "float" << endl;
					//arguments << arg->AsFloat();
					arguments.append(arg->AsFloat());
				} else if (arg->IsString()) {
					//cout << "string" << endl;
					//arguments << arg->AsString();
					arguments.append(arg->AsString());
				}
				
				arg++;
				
			}
			
			// DEBUG
//			cout << "Arguments : " << arguments.str() << endl;
			
			// switch on answer
			if(operation.compare(MINUIT_ANSWER_DISCOVER) == 0){
				m_minuitMethods->minuitParseDiscoverAnswer(sender, whereTo, m);
				return;
			}
			
			else if(operation.compare(MINUIT_ANSWER_GET) == 0){
				m_minuitMethods->minuitParseGetAnswer(sender, whereTo, m);
				return;
			}
			
			else if(operation.compare(MINUIT_ANSWER_LISTEN) == 0){
				// TODO : what ?
				return;
			}
			
			return;
		} // end if starts by ':'
		
	} // end else
};


