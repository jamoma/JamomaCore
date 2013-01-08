/*
 Copyright: 
 LaBRI (http://www.labri.fr) - BlueYeti (http://www.blueyeti.fr) - GMEA (http://www.gmea.net)
 
 Author(s): Laurent Garnier, Theo Delahogue
 Last modification: 16/08/2011
 
 Adviser(s): 
 Myriam Desainte-Catherine (myriam.desainte-catherine@labri.fr)
 
 This software is a computer program whose purpose is to propose
 a library for interactive scores edition and execution.
 
 This software is governed by the CeCILL-C license under French law and
 abiding by the rules of distribution of free software.  You can  use, 
 modify and/ or redistribute the software under the terms of the CeCILL-C
 license as circulated by CEA, CNRS and INRIA at the following URL
 "http://www.cecill.info". 
 
 As a counterpart to the access to the source code and  rights to copy,
 modify and redistribute granted by the license, users are provided only
 with a limited warranty  and the software's author,  the holder of the
 economic rights,  and the successive licensors  have only  limited
 liability. 
 
 In this respect, the user's attention is drawn to the risks associated
 with loading,  using,  modifying and/or developing or reproducing the
 software by the user in light of its specific status of free software,
 that may mean  that it is complicated to manipulate,  and  that  also
 therefore means  that it is reserved for developers  and  experienced
 professionals having in-depth computer knowledge. Users are therefore
 encouraged to load and test the software's suitability as regards their
 requirements in conditions enabling the security of their systems and/or 
 data to be ensured and,  more generally, to use and operate it in the 
 same conditions as regards security.
 
 The fact that you are presently reading this means that you have had
 knowledge of the CeCILL-C license and that you accept its terms.
 */

/*!
 * \class Minuit
 *
 * It's the Minuit protocol which use the Open Sound Control protocol 
 * 
 */

#include "Protocol.h"
#include "Minuit.h"

#define thisTTClass				Minuit
#define thisTTClassName			"Minuit"
#define thisTTClassTags			"network, protocol, minuit"

#define thisProtocolVersion		"0.3"
#define thisProtocolAuthor		"Raphael Marczak/Laurent Garnier/Theo de la Hogue"
#define thisProtocolExploration	YES

extern "C" TT_EXTENSION_EXPORT TTErr TTLoadJamomaExtension_Minuit(void)
{
	TTFoundationInit();
	Minuit::registerClass();
	return kTTErrNone;
}

PROTOCOL_CONSTRUCTOR,
mIp(TTSymbol("localhost")),
mPort(MINUIT_RECEPTION_PORT),
mOscSend(NULL),
mOscReceive(NULL),
mAnswerManager(NULL)
{	
	PROTOCOL_INITIALIZE
	
	addAttribute(Ip, kTypeSymbol);
	addAttribute(Port, kTypeUInt16);
	
	addMessageWithArguments(receivedMessage);
	addMessageProperty(receivedMessage, hidden, YES);
}

Minuit::~Minuit()
{
	delete mAnswerManager;
}

TTErr Minuit::getParameterNames(TTValue& value)
{
	value.clear();
	value.append(TTSymbol("ip"));
	value.append(TTSymbol("port"));
	
	return kTTErrNone;
}

TTErr Minuit::Scan()
{
	// TODO
	return kTTErrGeneric;
}

/*!
 * Run the arguments reception thread 
 * Prepare the receive callback method to be passed to the ApplicationManager to intercept the arguments
 *
 */
TTErr Minuit::Run()
{
	TTErr	err;
	
	if (!mRunning) {
		
		mAnswerManager = new MinuitAnswerManager((MinuitPtr)this);
		
		err = TTObjectBaseInstantiate(TTSymbol("osc.receive"), &mOscReceive, kTTValNONE);
		if (!err) {
				mOscReceive->setAttributeValue(TTSymbol("port"), mPort);
				mOscReceive->registerObserverForNotifications(*this);			// using our 'receivedMessage' method
			
			mRunning = YES;
		}
		
		return err;
	}
	
	return kTTErrGeneric;
}

/*!
 * Stop the arguments reception thread 
 *
 */
TTErr Minuit::Stop()
{
	if (mRunning) {
		
		delete mAnswerManager;
		TTObjectBaseRelease(&mOscReceive);
		mRunning = NO;
		
		return kTTErrNone;
	}
	
	return kTTErrGeneric;
}

/**************************************************************************************************************************
 *
 *	SEND REQUEST METHODS
 *
 **************************************************************************************************************************/

/*!
 * Send a discover request to an application to get a part of the namespace at the given address
 *
 * \param to					: the application where to discover
 * \param address				: the address to discover
 * \param returnedChildrenNames : all names of nodes below the address
 * \param returnedChildrenTypes : all types of nodes below the address (default is none which means no type)
 * \param returnedAttributes	: all attributes the node at the address
 * \return errorcode			: kTTErrNone means the answer has been received, kTTErrValueNotFound means something is bad in the request
 else it returns kTTErrGeneric if no answer or timeout
 */
TTErr Minuit::SendDiscoverRequest(TTSymbol to, TTAddress address, 
								  TTValue& returnedChildrenNames,
								  TTValue& returnedChildrenTypes,
								  TTValue& returnedAttributes)
{
	TTValue		arguments, answer;
	TTString	header;
	TTInt32		state;
	
	// edit header "localAppName?namespace"
	header = protocolGetLocalApplicationName.c_str();
	header += MINUIT_REQUEST_DISCOVER;
	
	// edit arguments <header address>
	arguments = TTValue(address);
	
	if (!sendMessage(to, TTSymbol(header), arguments)) {
		
#ifdef TT_PROTOCOL_DEBUG
		std::cout << "Minuit : applicationSendDiscoverRequest " << std::endl;
#endif
		
		// Wait for an answer
		mAnswerManager->AddDiscoverAnswer(to.c_str(), address);
		
		state = ANSWER_RECEIVED;
		do
		{
#ifdef TT_PLATFORM_WIN
			Sleep(1);
#else
			usleep(1000);
#endif
			state = mAnswerManager->CheckDiscoverAnswer(to.c_str(), address, answer);
		}
		while (state == NO_ANSWER);
		
		if (state == ANSWER_RECEIVED)
			mAnswerManager->ParseDiscoverAnswer(answer, returnedChildrenNames, returnedChildrenTypes, returnedAttributes);
	}
	
	return kTTErrGeneric;
}

/*!
 * Send a get request to an application to get a value at the given address
 *
 * \param to					: the application where to get
 * \param address				: the address to get
 * \param returnedValue			: the value which is going to be filled
 * \return errorcode			: kTTErrNone means the answer has been received, kTTErrValueNotFound means something is bad in the request
 else it returns kTTErrGeneric if no answer or timeout
 */
TTErr Minuit::SendGetRequest(TTSymbol to, TTAddress address, 
							 TTValue& returnedValue)
{	
	TTValue		v, arguments;
	TTString	header;
	TTInt32		state;
	
	// edit header "localAppName?get"
	header = protocolGetLocalApplicationName.c_str();
	header += MINUIT_REQUEST_GET;
	
	// edit arguments <header address>
	arguments = TTValue(address);
	
	if (!sendMessage(to, TTSymbol(header), arguments)) {
		
#ifdef TT_PROTOCOL_DEBUG
		std::cout << "Minuit : applicationSendGetRequest " << std::endl;
#endif
		
		// Wait for an answer
		mAnswerManager->AddGetAnswer(to.c_str(), address);
		
		state = ANSWER_RECEIVED;
		do
		{
#ifdef TT_PLATFORM_WIN
			Sleep(1);
#else
			usleep(1000);
#endif
			state = mAnswerManager->CheckGetAnswer(to.c_str(), address, returnedValue);
		}
		while(state == NO_ANSWER);
		
		if (state == ANSWER_RECEIVED)
			return kTTErrNone;
		else
			return kTTErrGeneric;
	}
	
	return kTTErrGeneric;
}

/*!
 * Send a set request to set a value of a specific application
 *
 * \param to					: the application where to set
 * \param address				: the address to set
 * \param value					: anything to send
 * \return errorcode			: kTTErrNone means the answer has been received, kTTErrValueNotFound means something is bad in the request
 */
TTErr Minuit::SendSetRequest(TTSymbol to, TTAddress address, 
							 TTValue& value)
{
		
#ifdef TT_PROTOCOL_DEBUG
		std::cout << "Minuit : applicationSendSetRequest " << std::endl;
#endif

	if (address.getAttribute() == kTTSym_value)
		return sendMessage(to, address.removeAttribute(), value);
	else
		return sendMessage(to, address, value);
}

/*!
 * Send a listen request to a specific application
 *
 * \param to					: the application where to listen
 * \param address				: the address to listen
 * \param enable				: enable/disable the listening
 * \return errorcode			: kTTErrNone means the answer has been received, kTTErrValueNotFound means something is bad in the request
 */
TTErr Minuit::SendListenRequest(TTSymbol to, TTAddress address, 
								TTBoolean enable)
{
	TTValue		v, arguments;
	TTString	header;
	
	// edit header "appName?listen"
	header = protocolGetLocalApplicationName.c_str();
	header += MINUIT_REQUEST_LISTEN;
	
	// edit arguments <header address, enable>
	arguments = TTValue(address);
	
	if (enable)
		arguments.append(TTSymbol(MINUIT_REQUEST_LISTEN_ENABLE));
	else
		arguments.append(TTSymbol(MINUIT_REQUEST_LISTEN_DISABLE));
	
#ifdef TT_PROTOCOL_DEBUG
		std::cout << "Minuit : applicationSendListenRequest " << std::endl;
#endif
	
	return sendMessage(to, TTSymbol(header), arguments);
}


/**************************************************************************************************************************
 *
 *	SEND ANSWER METHODS
 *
 **************************************************************************************************************************/

/*!
 * Send a disover answer to an application which ask for.
 *
 * \param to					: the application where to send answer
 * \param address				: the address where comes from the description
 * \param returnedChildrenNames : all names of nodes below the address
 * \param returnedChildrenTypes : all types of nodes below the address(default is none which means no type)
 * \param returnedAttributes	: all attributes the node at the address
 */
TTErr Minuit::SendDiscoverAnswer(TTSymbol to, TTAddress address, 
								 TTValue& returnedChildrenNames, 
								 TTValue& returnedChildrenTypes, 
								 TTValue& returnedAttributes, 
								 TTErr err)
{
	TTValue		v, arguments;
	TTString	header;
	
	// edit header "appName:get"
	if (!err) {
		header = protocolGetLocalApplicationName.c_str();
		header += MINUIT_ANSWER_DISCOVER;
	}
	else {
		header = protocolGetLocalApplicationName.c_str();
		header += MINUIT_ERROR_DISCOVER;
	}
	
	// edit arguments merging all returned fields
	// note : here we need to begin by the end
	// and then prepend fields one by one
	if (returnedAttributes.getSize()) {
		arguments = returnedAttributes;
		arguments.prepend(TTSymbol(MINUIT_START_ATTRIBUTES));
		arguments.append(TTSymbol(MINUIT_END_ATTRIBUTES));
	}
	
	if (returnedChildrenTypes.getSize()) {
		// if no attribute field
		if (arguments.getSize()) {
			arguments.prepend(TTSymbol(MINUIT_END_TYPES));
			arguments.prepend(returnedChildrenTypes);
			arguments.prepend(TTSymbol(MINUIT_START_TYPES));
		}
		else {
			arguments = returnedChildrenTypes;
			arguments.prepend(TTSymbol(MINUIT_START_TYPES));
			arguments.append(TTSymbol(MINUIT_END_TYPES));
		}
	}
	
	if (returnedChildrenNames.getSize()) {
		// if no types and attribute fields
		if (arguments.getSize()) {
			arguments.prepend(TTSymbol(MINUIT_END_NODES));
			arguments.prepend(returnedChildrenNames);
			arguments.prepend(TTSymbol(MINUIT_START_NODES));
		}
		else {
			arguments = returnedChildrenNames;
			arguments.prepend(TTSymbol(MINUIT_START_NODES));
			arguments.append(TTSymbol(MINUIT_END_NODES));
		}
	}
	
	if (arguments.getSize())
		arguments.prepend(address);
	else
		arguments = TTValue(address);
	
#ifdef TT_PROTOCOL_DEBUG
		std::cout << "Minuit : applicationSendDiscoverAnswer " << std::endl;
#endif
	
		return sendMessage(to, TTSymbol(header), arguments);
}

/*!
 * Send a get answer to an application which ask for.
 *
 * \param to					: the application where to send answer
 * \param address				: the address where comes from the value
 * \param returnedValue			: the value of the attribute at the address
 */
TTErr Minuit::SendGetAnswer(TTSymbol to, TTAddress address, 
							TTValue& returnedValue, 
							TTErr err)
{
	TTValue		v, arguments;
	TTString	header;
	
	// edit header "appName:get"
	if (!err) {
		header = protocolGetLocalApplicationName.c_str();
		header += MINUIT_ANSWER_GET;
	}
	else {
		header = protocolGetLocalApplicationName.c_str();
		header += MINUIT_ERROR_GET;
	}
	
	// edit arguments copying the returned value 
	// and prepending the address
	arguments = returnedValue;
	arguments.prepend(address);
	
#ifdef TT_PROTOCOL_DEBUG
		std::cout << "Minuit : applicationSendGetAnswer" << std::endl;
#endif
	
	return sendMessage(to, TTSymbol(header), arguments);
}

/*!
 * Send a listen answer to an application which ask for.
 *
 * \param to					: the application where to send answer
 * \param address				: the address where comes from the value
 * \param returnedValue			: the value of the attribute at the address
 */
TTErr Minuit::SendListenAnswer(TTSymbol to, TTAddress address, 
							   TTValue& returnedValue, 
							   TTErr err)
{
	TTValue		v, arguments;
	TTString	header, aString;
	
	// edit header "appName:get"
	if (!err) {
		header = protocolGetLocalApplicationName.c_str();
		header += MINUIT_ANSWER_LISTEN;
	}
	else {
		header = protocolGetLocalApplicationName.c_str();
		header += MINUIT_ERROR_LISTEN;
	}
	
	// edit arguments copying the returned value 
	// and prepending the address
	arguments = returnedValue;
	arguments.prepend(address);
	
#ifdef TT_PROTOCOL_DEBUG
		std::cout << "Minuit : applicationSendListenAnswer " << std::endl;
#endif

	return sendMessage(to, TTSymbol(header), arguments);
}

TTErr Minuit::sendMessage(TTSymbol distantApplicationName, TTSymbol header, TTValue& arguments)
{
	TTHashPtr	parameters = NULL;
	TTValue		v, vIp, vPort, message;
	TTErr		err, errIp, errPort;
	
	// TODO : an argument manager to don't create a sender each time !!!!
	
	// Check the application registration
	err = mDistantApplicationParameters->lookup(distantApplicationName, v);
	
	if (!err) {
		v.get(0, (TTPtr*)&parameters);
		
		if (parameters) {
			
			errIp = parameters->lookup(TTSymbol("ip"), vIp);
			errPort = parameters->lookup(TTSymbol("port"), vPort);
			
			if (errIp || errPort)
				return kTTErrGeneric;
			
			err = TTObjectBaseInstantiate(TTSymbol("osc.send"), &mOscSend, kTTValNONE);
			if (!err) {
				mOscSend->setAttributeValue(TTSymbol("address"), vIp);
				mOscSend->setAttributeValue(TTSymbol("port"), vPort);
				
				message = TTValue(header);
				message.append((TTPtr)&arguments);
				
				err = mOscSend->sendMessage(TTSymbol("send"), message, kTTValNONE);
				
				TTObjectBaseRelease(&mOscSend);
				
				if (mActivity) {
					v = arguments;
					v.prepend(header);
					ActivityOutMessage(v);
				}
			}
		}
	}

	return err;
}

TTErr Minuit::receivedMessage(const TTValue& message, TTValue& outputValue)
{
	TTSymbol	aSymbol, sender, operation;
	TTString	headerString;
	TTInt32		operationStart;
	TTValue		arguments;
	TTAddress   whereTo = kTTAdrsEmpty;
	TTValue		v;
	TTErr		err;
	
	/*
	 if message starts with '/'
	 
	 else if first element contains '?'
	 parse sender?operation /whereTo
	 
	 if ?namespace
	 
	 if ?get
	 
	 if ?listen
	 
	 else if first element contains ':'
	 parse sender:operation /whereTo
	 get arguments
	 
	 if :namespace
	 
	 if :get
	 
	 if :listen
	 
	 */
	
	if (mActivity) ActivityInMessage(message);
	
	message.get(0, aSymbol);
	headerString = aSymbol.c_str();
    
#ifdef TT_PROTOCOL_DEBUG
    cout << "Message header is " << aSymbol.c_str() << endl;
#endif
	
	// if message starts with '/'
	if (headerString[0] == '/')
	{
		message.get(0, aSymbol);
		whereTo = TTAddress(aSymbol.c_str());
		
		arguments.copyFrom(message, 1);
		
#ifdef TT_PROTOCOL_DEBUG
		cout << "Receive set request at " << whereTo.c_str() << endl;
#endif
		
		return ReceiveSetRequest(kTTSymEmpty, whereTo, arguments);
	} 
	else {
		
		// Is it a request ?
		operationStart = headerString.find_first_of('?');
		if (operationStart >= 0)
		{
			sender = TTSymbol(headerString.substr(0, operationStart));				// get sender application
			
			// Check the sender application registration
			err = mDistantApplicationParameters->lookup(sender, v);
			if (!err) {
				
				operation = TTSymbol(headerString.substr(operationStart, headerString.size() - operationStart));			// get request
				
				if (message.getType(1) == kTypeSymbol) {							// parse /whereTo
					message.get(1, aSymbol);
					whereTo = TTAddress(aSymbol.c_str());
				}
				
#ifdef TT_PROTOCOL_DEBUG
				cout << "Receive " << operation.c_str() << " request from "<< sender.c_str() << " at " << whereTo.c_str() << endl;
#endif
				
				// switch on request
				if (operation == TTSymbol(MINUIT_REQUEST_DISCOVER))
					return ReceiveDiscoverRequest(sender, whereTo);
				
				else if (operation == TTSymbol(MINUIT_REQUEST_GET))
					return ReceiveGetRequest(sender, whereTo);
				
				else if (operation == TTSymbol(MINUIT_REQUEST_LISTEN)) {
					
					if (message.getType(2) == kTypeSymbol) {						// parse enable/disable
						message.get(2, aSymbol);
						
						if (aSymbol == TTSymbol(MINUIT_REQUEST_LISTEN_ENABLE))
							return ReceiveListenRequest(sender, whereTo, true);
						
						else if (aSymbol == TTSymbol(MINUIT_REQUEST_LISTEN_DISABLE))
							return ReceiveListenRequest(sender, whereTo, false);
						
						else
							; // TODO send bad request error notification
					}
				}
			}
			
		}// end if starts by '?'
		
		// Is it a answer :
		operationStart = headerString.find_first_of(':');
		if (operationStart >= 0)
		{
			sender = TTSymbol(headerString.substr(0, operationStart));				// get sender application
			
			// Check the sender application registration
			err = mDistantApplicationParameters->lookup(sender, v);
			if (!err) {
				
				operation = TTSymbol(headerString.substr(operationStart, headerString.size() - operationStart));				// get request
				
				if (message.getType(1) == kTypeSymbol) {							// parse /whereTo
					message.get(1, aSymbol);
					whereTo = TTAddress(aSymbol.c_str());
				}
				
#ifdef TT_PROTOCOL_DEBUG
				cout << "Receive " << operation.c_str() << " answer from "<< sender.c_str() << " at " << whereTo.c_str() << endl;
#endif
				
				arguments.copyFrom(message, 2);
				
				// switch on answer
				if (operation == TTSymbol(MINUIT_ANSWER_DISCOVER))
					return mAnswerManager->ReceiveDiscoverAnswer(sender.c_str(), whereTo, arguments);
				
				else if (operation == TTSymbol(MINUIT_ANSWER_GET))
					return mAnswerManager->ReceiveGetAnswer(sender.c_str(), whereTo, arguments);
				
				else if (operation == TTSymbol(MINUIT_ANSWER_LISTEN))
					return ReceiveListenAnswer(sender, whereTo, arguments);
				
			}	
		} // end if starts by ':'
		
	} // end else
	
	return kTTErrNone;
}