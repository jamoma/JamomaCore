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
mIp(TT("localhost")),
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
	value.append(TT("ip"));
	value.append(TT("port"));
	
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
		
		err = TTObjectInstantiate(TT("osc.receive"), &mOscReceive, kTTValNONE);
		if (!err) {
				mOscReceive->setAttributeValue(TT("port"), mPort);
				mOscReceive->registerObserverForNotifications(*this);			// using our 'receivedMessage' method
			
			mRunning = YES;
		}
	}
	
	return kTTErrNone;
}

/*!
 * Stop the arguments reception thread 
 *
 */
TTErr Minuit::Stop()
{
	if (mRunning) {
		
		delete mAnswerManager;
		TTObjectRelease(&mOscReceive);
		mRunning = NO;
	}
	
	return kTTErrNone;
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
TTErr Minuit::SendDiscoverRequest(TTSymbolPtr to, TTNodeAddressPtr address, 
								  TTValue& returnedChildrenNames,
								  TTValue& returnedChildrenTypes,
								  TTValue& returnedAttributes)
{
	TTValue		arguments, answer;
	TTString	header;
	TTInt32		state;
	
	// edit header "localAppName?namespace"
	header = mLocalApplicationName->getCString();
	header += MINUIT_REQUEST_DISCOVER;
	
	// edit arguments <header address>
	arguments = TTValue(address);
	
	if (!sendMessage(to, TT(header), arguments)) {
		
#ifdef TT_PROTOCOL_DEBUG
		std::cout << "Minuit : applicationSendDiscoverRequest " << std::endl;
#endif
		
		// Wait for an answer
		mAnswerManager->AddDiscoverAnswer(to->getCString(), address);
		
		state = ANSWER_RECEIVED;
		do
		{
#ifdef TT_PLATFORM_WIN
			Sleep(1);
#else
			usleep(1000);
#endif
			state = mAnswerManager->CheckDiscoverAnswer(to->getCString(), address, answer);
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
TTErr Minuit::SendGetRequest(TTSymbolPtr to, TTNodeAddressPtr address, 
							 TTValue& returnedValue)
{	
	TTValue		v, arguments;
	TTString	header;
	TTInt32		state;
	
	// edit header "localAppName?get"
	header = mLocalApplicationName->getCString();
	header += MINUIT_REQUEST_GET;
	
	// edit arguments <header address>
	arguments = TTValue(address);
	
	if (!sendMessage(to, TT(header), arguments)) {
		
#ifdef TT_PROTOCOL_DEBUG
		std::cout << "Minuit : applicationSendGetRequest " << std::endl;
#endif
		
		// Wait for an answer
		mAnswerManager->AddGetAnswer(to->getCString(), address);
		
		state = ANSWER_RECEIVED;
		do
		{
#ifdef TT_PLATFORM_WIN
			Sleep(1);
#else
			usleep(1000);
#endif
			state = mAnswerManager->CheckGetAnswer(to->getCString(), address, returnedValue);
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
TTErr Minuit::SendSetRequest(TTSymbolPtr to, TTNodeAddressPtr address, 
							 TTValue& value)
{
		
#ifdef TT_PROTOCOL_DEBUG
		std::cout << "Minuit : applicationSendSetRequest " << std::endl;
#endif

	if (address->getAttribute() == kTTSym_value)
		return sendMessage(to, address->removeAttribute(), value);
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
TTErr Minuit::SendListenRequest(TTSymbolPtr to, TTNodeAddressPtr address, 
								TTBoolean enable)
{
	TTValue		v, arguments;
	TTString	header;
	
	// edit header "appName?listen"
	header = mLocalApplicationName->getCString();
	header += MINUIT_REQUEST_LISTEN;
	
	// edit arguments <header address, enable>
	arguments = TTValue(address);
	
	if (enable)
		arguments.append(TT(MINUIT_REQUEST_LISTEN_ENABLE));
	else
		arguments.append(TT(MINUIT_REQUEST_LISTEN_DISABLE));
	
#ifdef TT_PROTOCOL_DEBUG
		std::cout << "Minuit : applicationSendListenRequest " << std::endl;
#endif
	
	return sendMessage(to, TT(header), arguments);
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
TTErr Minuit::SendDiscoverAnswer(TTSymbolPtr to, TTNodeAddressPtr address, 
								 TTValue& returnedChildrenNames, 
								 TTValue& returnedChildrenTypes, 
								 TTValue& returnedAttributes, 
								 TTErr err)
{
	TTValue		v, arguments;
	TTString	header;
	
	// edit header "appName:get"
	if (!err) {
		header = mLocalApplicationName->getCString();
		header += MINUIT_ANSWER_DISCOVER;
	}
	else {
		header = mLocalApplicationName->getCString();
		header += MINUIT_ERROR_DISCOVER;
	}
	
	// edit arguments merging all returned fields
	// note : here we need to begin by the end
	// and then prepend fields one by one
	if (returnedAttributes.getSize()) {
		arguments = returnedAttributes;
		arguments.prepend(TT(MINUIT_START_ATTRIBUTES));
		arguments.append(TT(MINUIT_END_ATTRIBUTES));
	}
	
	if (returnedChildrenTypes.getSize()) {
		// if no attribute field
		if (arguments.getSize()) {
			arguments.prepend(TT(MINUIT_END_TYPES));
			arguments.prepend(returnedChildrenTypes);
			arguments.prepend(TT(MINUIT_START_TYPES));
		}
		else {
			arguments = returnedChildrenTypes;
			arguments.prepend(TT(MINUIT_START_TYPES));
			arguments.append(TT(MINUIT_END_TYPES));
		}
	}
	
	if (returnedChildrenNames.getSize()) {
		// if no types and attribute fields
		if (arguments.getSize()) {
			arguments.prepend(TT(MINUIT_END_NODES));
			arguments.prepend(returnedChildrenNames);
			arguments.prepend(TT(MINUIT_START_NODES));
		}
		else {
			arguments = returnedChildrenNames;
			arguments.prepend(TT(MINUIT_START_NODES));
			arguments.append(TT(MINUIT_END_NODES));
		}
	}
	
	if (arguments.getSize())
		arguments.prepend(address);
	else
		arguments = TTValue(address);
	
#ifdef TT_PROTOCOL_DEBUG
		std::cout << "Minuit : applicationSendDiscoverAnswer " << std::endl;
#endif
	
		return sendMessage(to, TT(header), arguments);
}

/*!
 * Send a get answer to an application which ask for.
 *
 * \param to					: the application where to send answer
 * \param address				: the address where comes from the value
 * \param returnedValue			: the value of the attribute at the address
 */
TTErr Minuit::SendGetAnswer(TTSymbolPtr to, TTNodeAddressPtr address, 
							TTValue& returnedValue, 
							TTErr err)
{
	TTValue		v, arguments;
	TTString	header;
	
	// edit header "appName:get"
	if (!err) {
		header = mLocalApplicationName->getCString();
		header += MINUIT_ANSWER_GET;
	}
	else {
		header = mLocalApplicationName->getCString();
		header += MINUIT_ERROR_GET;
	}
	
	// edit arguments copying the returned value 
	// and prepending the address
	arguments = returnedValue;
	arguments.prepend(address);
	
#ifdef TT_PROTOCOL_DEBUG
		std::cout << "Minuit : applicationSendGetAnswer" << std::endl;
#endif
	
	return sendMessage(to, TT(header), arguments);
}

/*!
 * Send a listen answer to an application which ask for.
 *
 * \param to					: the application where to send answer
 * \param address				: the address where comes from the value
 * \param returnedValue			: the value of the attribute at the address
 */
TTErr Minuit::SendListenAnswer(TTSymbolPtr to, TTNodeAddressPtr address, 
							   TTValue& returnedValue, 
							   TTErr err)
{
	TTValue		v, arguments;
	TTString	header, aString;
	
	// edit header "appName:get"
	if (!err) {
		header = mLocalApplicationName->getCString();
		header += MINUIT_ANSWER_LISTEN;
	}
	else {
		header = mLocalApplicationName->getCString();
		header += MINUIT_ERROR_LISTEN;
	}
	
	// edit arguments copying the returned value 
	// and prepending the address
	arguments = returnedValue;
	arguments.prepend(address);
	
#ifdef TT_PROTOCOL_DEBUG
		std::cout << "Minuit : applicationSendListenAnswer " << std::endl;
#endif

	return sendMessage(to, TT(header), arguments);
}

TTErr Minuit::sendMessage(TTSymbolPtr distantApplicationName, TTSymbolPtr header, TTValue& arguments)
{
	TTHashPtr	parameters = NULL;
	TTValue		v, vIp, vPort, message;
	TTErr		err, errIp, errPort;
	
	// TODO : a arguments manager to don't create a sender each time !!!!
	
	// Check the application registration
	err = mDistantApplicationParameters->lookup(distantApplicationName, v);
	
	if (!err) {
		v.get(0, (TTPtr*)&parameters);
		
		if (parameters) {
			
			errIp = parameters->lookup(TT("ip"), vIp);
			errPort = parameters->lookup(TT("port"), vPort);
			
			if (errIp || errPort)
				return kTTErrGeneric;
			
			err = TTObjectInstantiate(TT("osc.send"), &mOscSend, kTTValNONE);
			if (!err) {
				mOscSend->setAttributeValue(TT("address"), vIp);
				mOscSend->setAttributeValue(TT("port"), vPort);
				
				message = TTValue(header);
				message.append((TTPtr)&arguments);
				err = mOscSend->sendMessage(TT("send"), message, kTTValNONE);
				
				TTObjectRelease(&mOscSend);
			}
		}
	}

	return err;
}

TTErr Minuit::receivedMessage(const TTValue& message, TTValue& outputValue)
{
	TTSymbolPtr			aSymbol, sender, operation;
	TTString			headerString;
	TTInt32				operationStart;
	TTValue				arguments;
	TTNodeAddressPtr	whereTo = kTTAdrsEmpty;
	TTValue				v;
	TTErr				err;
	
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
	
	message.get(0, &aSymbol);
	headerString = aSymbol->getCString();
	
	// if message starts with '/'
	if (headerString[0] == '/')
	{
		message.get(0, &aSymbol);
		whereTo = TTADRS(aSymbol->getCString());
		
		arguments.copyFrom(message, 1);
		
#ifdef TT_PROTOCOL_DEBUG
		cout << "Receive set request at " << whereTo->getCString() << endl;
#endif
		
		return ReceiveSetRequest(NULL, whereTo, arguments);
	} 
	else {
		
		// Is it a request ?
		operationStart = headerString.find('?');
		if (operationStart != headerString.npos)
		{
			sender = TT(headerString.substr(0, operationStart));				// get sender application
			
			// Check the sender application registration
			err = mDistantApplicationParameters->lookup(sender, v);
			if (!err) {
				
				operation = TT(headerString.substr(operationStart));				// get request
				
				if (message.getType(1) == kTypeSymbol) {							// parse /whereTo
					message.get(1, &aSymbol);
					whereTo = TTADRS(aSymbol->getCString());
				}
				
#ifdef TT_PROTOCOL_DEBUG
				cout << "Receive " << operation->getCString() << " request from "<< sender->getCString() << " at " << whereTo->getCString() << endl;
#endif
				
				// switch on request
				if (operation == TT(MINUIT_REQUEST_DISCOVER))
					return ReceiveDiscoverRequest(sender, whereTo);
				
				else if (operation == TT(MINUIT_REQUEST_GET))
					return ReceiveGetRequest(sender, whereTo);
				
				else if (operation == TT(MINUIT_REQUEST_LISTEN)) {
					
					if (message.getType(2) == kTypeSymbol) {						// parse enable/disable
						message.get(2, &aSymbol);
						
						if (aSymbol == TT(MINUIT_REQUEST_LISTEN_ENABLE))
							return ReceiveListenRequest(sender, whereTo, true);
						
						else if (aSymbol == TT(MINUIT_REQUEST_LISTEN_DISABLE))
							return ReceiveListenRequest(sender, whereTo, false);
						
						else
							; // TODO send bad request error notification
					}
				}
			}
			
		}// end if starts by '?'
		
		// Is it a answer :
		operationStart = headerString.find(':');
		if (operationStart != headerString.npos)
		{
			sender = TT(headerString.substr(0, operationStart));				// get sender application
			
			// Check the sender application registration
			err = mDistantApplicationParameters->lookup(sender, v);
			if (!err) {
				
				operation = TT(headerString.substr(operationStart));				// get request
				
				if (message.getType(1) == kTypeSymbol) {							// parse /whereTo
					message.get(1, &aSymbol);
					whereTo = TTADRS(aSymbol->getCString());
				}
				
#ifdef TT_PROTOCOL_DEBUG
				cout << "Receive " << operation->getCString() << " answer from "<< sender->getCString() << " at " << whereTo->getCString() << endl;
#endif
				
				arguments.copyFrom(message, 2);
				
				// switch on answer
				if (operation == TT(MINUIT_ANSWER_DISCOVER))
					return mAnswerManager->ReceiveDiscoverAnswer(sender->getCString(), whereTo, arguments);
				
				else if (operation == TT(MINUIT_ANSWER_GET))
					return mAnswerManager->ReceiveGetAnswer(sender->getCString(), whereTo, arguments);
				
				else if (operation == TT(MINUIT_ANSWER_LISTEN))
					return ReceiveListenAnswer(sender, whereTo, arguments);
				
			}	
		} // end if starts by ':'
		
	} // end else
	
	return kTTErrNone;
}