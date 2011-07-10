#include "ReceiveOSCThread.hpp"


TTPtr OSCReceiveFunction(TTPtr threadArg)
{
	ReceiveOSCThread* ReceiveOSC = (ReceiveOSCThread*) threadArg;

	UdpListeningReceiveSocket* s = new UdpListeningReceiveSocket(IpEndpointName(IpEndpointName::ANY_ADDRESS, ReceiveOSC->getPort()), ReceiveOSC);
	ReceiveOSC->mListeningSocket = s;

	ReceiveOSC->mListeningSocket->Run();

	return 0;
}

ReceiveOSCThread::ReceiveOSCThread(const MinuitMethodsPtr minuitMethods)
{
	mPort = DEFAULT_RECEIVE_OSC_THREAD_PORT;
	mMethods = minuitMethods;
	mRunning = false;
	mListeningSocket = NULL;
}

ReceiveOSCThread::~ReceiveOSCThread()
{
	;
}

void ReceiveOSCThread::setPort(unsigned int port)
{
	mPort = port;
}

unsigned int ReceiveOSCThread::getPort()
{
	return mPort;
}

void ReceiveOSCThread::run()
{
	mRunning = true;
	pthread_create(&mReceiveThread, NULL, OSCReceiveFunction, this);
}

TTBoolean ReceiveOSCThread::isRunning()
{
	return mRunning;
}

void ReceiveOSCThread::asynchronousBreak()
{
	unsigned int usecToStopTheSelect = 20000;
	if (mListeningSocket != NULL) {
		mListeningSocket->AsynchronousBreak();

#ifdef TT_PLATFORM_WIN
			Sleep(usecToStopTheSelect/1000);
#else
			usleep(usecToStopTheSelect);
#endif

		delete mListeningSocket;
		mListeningSocket = NULL;
	}

	mRunning = false;
}

void ReceiveOSCThread::ProcessMessage(const osc::ReceivedMessage&m, const IpEndpointName& remoteEndPoint)
{
	TTString currentString(m.AddressPattern());
	TTString sender = "";
	TTString operation = "";
	TTInt32 operationStart;
	TTNodeAddressPtr whereTo = kTTAdrsEmpty;
	TTValue arguments;
	
	/*
	 if start with '/'
	
	 else if start with '?'
		parse sender?operation /whereTo
	
		if ?namespace
	
		if ?get
	 
		if ?listen
	
	 else if start with ':'
		parse sender:operation /whereTo
		get arguments
	 
		if :namespace
	
		if :get
	 
		if :listen
	
	 */
	
	// if start with '/'
	if (currentString[0] == '/')
	{
		whereTo = TTADRS(currentString);
		
		osc::ReceivedMessage::const_iterator arg = m.ArgumentsBegin();			// get arguments
		
		while (arg != m.ArgumentsEnd()) {
			if (arg->IsChar()) 
				arguments.append(arg->AsChar());
			else if (arg->IsInt32()) {;
				TTInt32 i = arg->AsInt32();
				arguments.append((TTInt64)i);
			} else if (arg->IsFloat())
				arguments.append(arg->AsFloat());
			else if (arg->IsString())
				arguments.append(TT(arg->AsString()));
			arg++;
		}
		
#ifdef TT_PLUGIN_DEBUG
		cout << "Receive set request (OSC style) at " << whereTo->getCString() << endl;
#endif
				
		mMethods->ReceiveSetRequest(sender, whereTo, arguments);
		return;
	} 
	else {
		
		// Is it a request ?
		operationStart = currentString.find('?');
		if (operationStart != currentString.npos)
		{
			sender = currentString.substr(0, operationStart);					// get sender
			operation = currentString.substr(operationStart);					// get request
			
			osc::ReceivedMessage::const_iterator arg = m.ArgumentsBegin();		// parse /whereTo
			if (arg->IsString())
				whereTo = TTADRS(arg->AsString());
			
#ifdef TT_PLUGIN_DEBUG
			cout << "Receive " << operation << " request from "<< sender << " at " << whereTo->getCString() << endl;
#endif
			
			// switch on request
			if (operation.compare(MINUIT_REQUEST_DISCOVER) == 0) {
				mMethods->ReceiveDiscoverRequest(sender, whereTo);
				return;
			}
			
			else if (operation.compare(MINUIT_REQUEST_GET) == 0) {
				mMethods->ReceiveGetRequest(sender, whereTo);
				return;
			}
			
			else if (operation.compare(MINUIT_REQUEST_LISTEN) == 0) {
				
				arg++;																// get 1 string argument
				
				TTString val;
				if (arg->IsString())
					val = arg->AsString();

				if (val.compare(MINUIT_REQUEST_LISTEN_ENABLE) == 0)
					mMethods->ReceiveListenRequest(sender, whereTo, true);
				else if (val.compare(MINUIT_REQUEST_LISTEN_DISABLE) == 0)
					mMethods->ReceiveListenRequest(sender, whereTo, false);
				else
					; // TODO send bad request error notification
				
				return;
			}
			
			return;
		}// end if starts by '?'
		
		// Is it an answer :
		operationStart = currentString.find(':');
		if (operationStart != currentString.npos)
		{
			sender = currentString.substr(0, operationStart);					// get sender
			operation = currentString.substr(operationStart);					// get answer
			
			osc::ReceivedMessage::const_iterator arg = m.ArgumentsBegin();		// get whereTo
			if(arg->IsString())
				
				whereTo = TTADRS(arg->AsString());
			
#ifdef TT_PLUGIN_DEBUG
			cout << "Receive " << operation << " answer from "<< sender << " at " << whereTo->getCString() << endl;
#endif
			
			arg++;																// get arguments
			while (arg != m.ArgumentsEnd()) {
				if (arg->IsChar()) 
					arguments.append(arg->AsChar());
				else if (arg->IsInt32()) {;
					TTInt32 i = arg->AsInt32();
					arguments.append((TTInt64)i);
				} else if (arg->IsFloat())
					arguments.append(arg->AsFloat());
				else if (arg->IsString())
					arguments.append(TT(arg->AsString()));
				arg++;
			}
				
			// switch on answer
			if (operation.compare(MINUIT_ANSWER_DISCOVER) == 0) {
				mMethods->ReceiveDiscoverAnswer(sender, whereTo, arguments);
				return;
			}
			
			else if (operation.compare(MINUIT_ANSWER_GET) == 0) {
				mMethods->ReceiveGetAnswer(sender, whereTo, arguments);
				return;
			}
			
			else if (operation.compare(MINUIT_ANSWER_LISTEN) == 0) {
				mMethods->ReceiveListenAnswer(sender, whereTo, arguments);
				return;
			}
			
			return;
		} // end if starts by ':'
		
	} // end else
};


