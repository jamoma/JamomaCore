/**
 * @file WebSocket.cpp
 * @ingroup modularWebSocket
 * @brief It's the WebSocket protocol
 * @authors Laurent Garnier
 *
 * @copyright © 2013, Laurent Garnier @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 *
 * @details Use cross platform libjson library from http://libjson.sourceforge.net/
 */

#include "TTProtocol.h"
#include "WebSocket.h"

#define thisTTClass				WebSocket
#define thisTTClassName			"WebSocket"
#define thisTTClassTags			"network, protocol, websocket"

#define thisProtocolVersion		"0.1"
#define thisProtocolAuthor		"Laurent Garnier"
#define thisProtocolGet         YES
#define thisProtocolSet         YES
#define thisProtocolListen      YES
#define thisProtocolDiscover	YES
#define thisProtocolDiscoverAll	YES

void addChildToJson(JSONNode* jsonNode, TTSymbol childName, TTValue value);
void addAttributeToJson(TTObjectBasePtr param, JSONNode* jsonNode, TTSymbol attrName);
void parseChildren(JSONNode* jsonNode, TTNodePtr ttNode, TTBoolean isFirstParsing);

extern "C" TT_EXTENSION_EXPORT TTErr TTLoadJamomaExtension_WebSocket(void)
{
	TTFoundationInit();
	WebSocket::registerClass();
	return kTTErrNone;
}

TT_PROTOCOL_CONSTRUCTOR,
mWaitThread(NULL),
mAnswerManager(NULL),
mSenderManager(NULL)
{
	TT_PROTOCOL_INITIALIZE
	
	addAttributeAsProtocolParameter(Port, kTypeUInt16);
    addAttributeAsProtocolParameter(HtmlPath, kTypeSymbol);
	
	addMessageWithArguments(receivedMessage);
	addMessageProperty(receivedMessage, hidden, YES);
    
    mWaitThread = new TTThread(NULL, NULL);
}

WebSocket::~WebSocket()
{
    TTObject webSocketProtocol(this);
    
    if (mAnswerManager)
        delete mAnswerManager;
    
    if (mSenderManager)
        delete mSenderManager;
    
    if (mWebSocketReceive.valid()) {
        
        mWebSocketReceive.unregisterObserverForNotifications(webSocketProtocol);
        mWebSocketReceive = TTObject();
    }
    
    if (mWaitThread)
		mWaitThread->wait();
    
	delete mWaitThread;
}

TTErr WebSocket::Scan(const TTValue& inputValue, TTValue& outputValue)
{
    return kTTErrNone;
}

/*!
 * Run the reception thread 
 *
 */
TTErr WebSocket::Run(const TTValue& inputValue, TTValue& outputValue)
{
	TTValue     v, out;
    TTUInt16    port;
    TTSymbol    htmlPath;
	TTErr       err;
    
    if (inputValue.size())
        return kTTErrGeneric;
	
	if (!mRunning) {
        
        TTObject webSocketProtocol(this);
        
        // select local application to get its port parameter
        ApplicationSelectLocal();
        webSocketProtocol.get("port", v);
        
        // if the local application already setup its port
        if (v.size()) {
            
            port = v[0];
            
            // create all internal objects
            mAnswerManager = new WebSocketAnswerManager((WebSocketPtr)this);
            mSenderManager = new WebSocketSenderManager();
            
            mWebSocketReceive = TTObject("web.receive");
            
            if (mWebSocketReceive.valid()) {
                
                err = mWebSocketReceive.set("port", v);
                
                if (!err) {
                    
                    // select local application to get its HtmlPath parameter
                    v.clear();
                    webSocketProtocol.get("htmlPath", v);
                    
                    if (v.size())
                        htmlPath = v[0];
                    
                    if (htmlPath == "")
                        v = WEBSOCKET_DEFAULT_HTML_PATH;
                    
                    mWebSocketReceive.set("htmlPath", v);
                    
                    mWebSocketReceive.registerObserverForNotifications(webSocketProtocol);			// using our 'receivedMessage' method
                    
                    // wait to avoid strange crash when run and stop are called to quickly
                    mWaitThread->sleep(1);
                    
                    mRunning = YES;
                    
                    // Create a distant application called "telecommande" and register it
                    err = mApplicationManager.send("ApplicationInstantiateDistant", WEBSOCKET_DEFAULT_REMOTE_APPNAME, out);
                    if (!err) {
                        ApplicationRegister(WEBSOCKET_DEFAULT_REMOTE_APPNAME, out);
                        
                        return kTTErrNone;
                    }
                    else
                        TTLogError("unable to create %s distant application \n", WEBSOCKET_DEFAULT_REMOTE_APPNAME);
                }
                else
                    TTLogError("unable to bind to port %ld", port);
            }
            else
                TTLogError("unable to create a websocket receiver");
        }
	}
	
	return kTTErrGeneric;
}

/*!
 * Stop the reception thread
 *
 */
TTErr WebSocket::Stop(const TTValue& inputValue, TTValue& outputValue)
{
    // WebSocket doesn't need a thread per application
    if (inputValue.size())
        return kTTErrGeneric;
    
	if (mRunning) {
        
        TTObject webSocketProtocol(this);
		
        if (mAnswerManager)
            delete mAnswerManager;
        
        if (mSenderManager)
            delete mSenderManager;
        
        if (mWebSocketReceive.valid()) {
            
            mWebSocketReceive.unregisterObserverForNotifications(webSocketProtocol);
            mWebSocketReceive = TTObject();
        }
        
        // wait to avoid strange crash when run and stop are called to quickly
        mWaitThread->sleep(1);
        
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
 * \param returnedType          : the type of the node at the address (default is none which means no type)
 * \param returnedChildren      : all names of nodes below the address
 * \param returnedAttributes	: all attributes the node at the address
 * \return errorcode			: kTTErrNone means the answer has been received, kTTErrValueNotFound means something is bad in the request
 else it returns kTTErrGeneric if no answer or timeout
 */
TTErr WebSocket::SendDiscoverRequest(TTSymbol to, TTAddress address,
                                  TTSymbol& returnedType,
                                  TTValue& returnedChildren,
                                  TTValue& returnedAttributes,
                                  TTUInt8 tryCount)
{
//	TTValue		answer;
//	TTString	localAppName, operation;
//	TTInt32		state;
//    JSONNode*   jsonNode;
//    
//    // create JSonNode
//    jsonNode = new JSONNode(JSON_NODE);
//	
//	// edit local app name and operation
//	localAppName = mLocalApplicationName.c_str();
//	operation = WEBSOCKET_REQUEST_DISCOVER;
//    
//    jsonNode->push_back(JSONNode(WEBSOCKET_JSON_SENDER, localAppName));
//    jsonNode->push_back(JSONNode(WEBSOCKET_JSON_OPERATION, operation));
//    jsonNode->push_back(JSONNode(address.c_str(), NULL));
//    
//	if (!sendMessage(to, TTSymbol(localAppName), TTSymbol(operation), jsonNode)) {
//		
//#ifdef TT_PROTOCOL_DEBUG
//		std::cout << "WebSocket : applicationSendDiscoverRequest " << std::endl;
//#endif
//		
//		// Wait for an answer
//		mAnswerManager->AddDiscoverAnswer(to, address);
//		
//		state = NO_ANSWER;
//		do
//		{
//			state = mAnswerManager->CheckDiscoverAnswer(to, address, answer);
//		}
//		while (state == NO_ANSWER);
//		
//		if (state == ANSWER_RECEIVED)
//			return mAnswerManager->ParseDiscoverAnswer(answer, returnedType, returnedChildren, returnedAttributes);
//        
//        else if (state == TIMEOUT_EXCEEDED && tryCount < MAX_TRY)
//            return SendDiscoverRequest(to, address, returnedType, returnedChildren, returnedAttributes, tryCount+1);
//	}
	
	return kTTErrGeneric;
}

/*!
 * Send a discover all request to an application to fill all the directory under this address
 *
 * \param to					: the application where to discover
 * \param address				: the address to discover
 * \param node                  : the node for this address
 * \param tryCount              : number of try for this request
 * \return errorcode			: kTTErrNone means the answer has been received, kTTErrValueNotFound means something is bad in the request
 else it returns kTTErrGeneric if no answer or timeout
 */
TTErr WebSocket::SendDiscoverAllRequest(TTSymbol to, TTAddress address,
                             TTNodePtr node,
                             TTUInt8 tryCount)
{
//    TTValue		answer;
//	TTString	localAppName, operation;
//	TTInt32		state;
//    JSONNode*   jsonNode;
//    
//    // create JSonNode
//    jsonNode = new JSONNode(JSON_NODE);
//	
//	// edit local app name and operation
//	localAppName = mLocalApplicationName.c_str();
//	operation = WEBSOCKET_REQUEST_DISCOVER_ALL;
//    
//    jsonNode->push_back(JSONNode(WEBSOCKET_JSON_SENDER, localAppName));
//    jsonNode->push_back(JSONNode(WEBSOCKET_JSON_OPERATION, operation));
//    jsonNode->push_back(JSONNode(address.c_str(), NULL));
//    
//	if (!sendMessage(to, TTSymbol(localAppName), TTSymbol(operation), jsonNode)) {
//		
//#ifdef TT_PROTOCOL_DEBUG
//		std::cout << "WebSocket : applicationSendDiscoverRequest " << std::endl;
//#endif
//		
//		// Wait for an answer
//		mAnswerManager->AddDiscoverAllAnswer(to, address);
//		
//		state = NO_ANSWER;
//		do
//		{
//			state = mAnswerManager->CheckDiscoverAllAnswer(to, address, answer);
//		}
//		while (state == NO_ANSWER);
//		
//		if (state == ANSWER_RECEIVED)
//			return mAnswerManager->ParseDiscoverAllAnswer(answer, node);
//        
//        else if (state == TIMEOUT_EXCEEDED && tryCount < MAX_TRY)
//            return SendDiscoverAllRequest(to, address, node, tryCount+1);
//	}
	
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
TTErr WebSocket::SendGetRequest(TTSymbol to, TTAddress address, 
							 TTValue& returnedValue,
                             TTUInt8 tryCount)
{
//	TTValue		v, arguments;
//	TTString	localAppName, operation;
//	TTInt32		state;
//    JSONNode*   jsonNode;
//    
//    // create JSonNode
//    jsonNode = new JSONNode(JSON_NODE);
//	
//	// edit local app name and operation
//	localAppName = mLocalApplicationName.c_str();
//	operation = WEBSOCKET_REQUEST_GET;
//    
//    jsonNode->push_back(JSONNode(WEBSOCKET_JSON_SENDER, localAppName));
//    jsonNode->push_back(JSONNode(WEBSOCKET_JSON_OPERATION, operation));
//    jsonNode->push_back(JSONNode(address.c_str(), NULL));
//	
//    // TODO : add possibility to get several attributes
//	if (!sendMessage(to, TTSymbol(localAppName), TTSymbol(operation), jsonNode)) {
//        
//#ifdef TT_PROTOCOL_DEBUG
//        std::cout << "WebSocket : applicationSendGetRequest " << std::endl;
//#endif
//        
//        // Wait for an answer
//        mAnswerManager->AddGetAnswer(to, address);
//        
//        state = ANSWER_RECEIVED;
//        do
//        {
//            state = mAnswerManager->CheckGetAnswer(to, address, returnedValue);
//        }
//        while(state == NO_ANSWER);
//        
//        if (state == ANSWER_RECEIVED)
//            return kTTErrNone;
//        
//        else if (state == TIMEOUT_EXCEEDED && tryCount < MAX_TRY)
//            return SendGetRequest(to, address, returnedValue, tryCount+1);
//        
//    }
	
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
TTErr WebSocket::SendSetRequest(TTSymbol to, TTAddress address, 
							 TTValue& value,
                             TTUInt8 tryCount)
{
//    TTValue		arguments;
//    TTString	localAppName, operation;
//    JSONNode*   jsonNode;
//    
//    // create JSonNode
//    jsonNode = new JSONNode(JSON_NODE);
//    
//    // edit local app name and operation
//    localAppName = mLocalApplicationName.c_str();
//	operation = WEBSOCKET_REQUEST_SET;
//    
//    jsonNode->push_back(JSONNode(WEBSOCKET_JSON_SENDER, localAppName));
//    jsonNode->push_back(JSONNode(WEBSOCKET_JSON_OPERATION, operation));
//    addChildToJson(jsonNode, address.c_str(), value);
//		
//#ifdef TT_PROTOCOL_DEBUG
//		std::cout << "WebSocket : applicationSendSetRequest " << std::endl;
//#endif
//    
//    // TODO : add possibility to set several attributes
//    return sendMessage(to, TTSymbol(localAppName), TTSymbol(operation), jsonNode);
    
    return kTTErrGeneric;
}

/*!
 * Send a listen request to a specific application
 *
 * \param to					: the application where to listen
 * \param address				: the address to listen
 * \param enable				: enable/disable the listening
 * \return errorcode			: kTTErrNone means the answer has been received, kTTErrValueNotFound means something is bad in the request
 */
TTErr WebSocket::SendListenRequest(TTSymbol to, TTAddress address, 
								TTBoolean enable,
                                TTUInt8 tryCount)
{
//	TTValue		arguments;
//    TTString	localAppName, operation;
//    JSONNode*   jsonNode;
//    
//    // create JSonNode
//    jsonNode = new JSONNode(JSON_NODE);
//    
//    // edit local app name and operation
//    localAppName = mLocalApplicationName.c_str();
//	operation = WEBSOCKET_REQUEST_LISTEN;
//    
//    jsonNode->push_back(JSONNode(WEBSOCKET_JSON_SENDER, localAppName));
//    jsonNode->push_back(JSONNode(WEBSOCKET_JSON_OPERATION, operation));
//    jsonNode->push_back(JSONNode(address.c_str(), enable));
//	
//#ifdef TT_PROTOCOL_DEBUG
//		std::cout << "WebSocket : applicationSendListenRequest " << std::endl;
//#endif
//	
//	return sendMessage(to, TTSymbol(localAppName), TTSymbol(operation), jsonNode);
    
    return kTTErrGeneric;
}


/**************************************************************************************************************************
 *
 *	SEND ANSWER METHODS
 *
 **************************************************************************************************************************/

/*!
 * Send a disover answer to a application which ask for.
 *
 * \param to					: the application where to send answer
 * \param address				: the address where comes from the description
 * \param returnedType          : the type of the node at the address (default is none which means no type)
 * \param returnedChildren      : all names of nodes below the address
 * \param returnedAttributes	: all attributes the node at the address
 */
TTErr WebSocket::SendDiscoverAnswer(TTSymbol to, TTAddress address,
                         TTSymbol& returnedType,
                         TTValue& returnedChildren,
                         TTValue& returnedAttributes,
                         TTErr err)
{
	TTString	localAppName, operation;
    TTString    attributesString, childrenString;
    TTSymbol    symValue;
    JSONNode    *jsonNode, *childNode;
    
    // create JSonNode
    jsonNode = new JSONNode(JSON_NODE);
    
	// edit local app name and operation
	if (!err) {
		localAppName = mLocalApplicationName.c_str();
		operation = WEBSOCKET_ANSWER_DISCOVER;
        childNode = new JSONNode(JSON_NODE);
        
        // edit arguments merging all returned fields
        // note : here we need to begin by the end
        // and then prepend fields one by one
        if (returnedAttributes.size()) {
            
            for (TTUInt32 i = 0; i < returnedAttributes.size(); ++i) {
                symValue = returnedAttributes[i];
                attributesString += symValue;
                if (i < returnedAttributes.size()-1)
                    attributesString += " ";
            }
            
            childNode->push_back(JSONNode(WEBSOCKET_JSON_ATTRIBUTES, attributesString));
        }
        
        if (returnedChildren.size()) {
            for (TTUInt32 i = 0; i < returnedChildren.size(); ++i) {
                symValue = returnedChildren[i];
                childrenString += symValue;
                if (i < returnedChildren.size()-1)
                    childrenString += " ";
            }
            
            childNode->push_back(JSONNode(WEBSOCKET_JSON_CHILDREN, childrenString));
        }
        
        childNode->push_back(JSONNode(WEBSOCKET_JSON_TYPE, returnedType.c_str()));
        
        childNode->set_name(address.removeAttribute().c_str());
	}
	else {
		localAppName = mLocalApplicationName.c_str();
		operation = WEBSOCKET_ERROR_DISCOVER;
        
        // TODO : send explicit error description
        childNode = new JSONNode(WEBSOCKET_JSON_ERROR, err);
	}
    
    // append sender & operation to json
    jsonNode->push_back(JSONNode(WEBSOCKET_JSON_SENDER, localAppName));
    jsonNode->push_back(JSONNode(WEBSOCKET_JSON_OPERATION, operation));
    jsonNode->push_back(*childNode);
	
#ifdef TT_PROTOCOL_DEBUG
		std::cout << "WebSocket : applicationSendDiscoverAnswer " << std::endl;
#endif
	
		return sendMessage(to, TTSymbol(localAppName), TTSymbol(operation), jsonNode);
}

/*!
 * Send a discover all answer to a application which ask for.
 *
 * \param to					: the application where to send answer
 * \param address				: the address where comes from the description
 * \param node                  : the node for this address
 */
TTErr WebSocket::SendDiscoverAllAnswer(TTSymbol to, TTAddress address,
                            TTNodePtr node,
                            TTErr err)
{
	TTString	localAppName, operation;
    TTString    attributesString, childrenString;
    TTSymbol    symValue;
    JSONNode    *jsonNode, *childNode;
    
    // create JSonNode
    jsonNode = new JSONNode(JSON_NODE);
    childNode = new JSONNode(JSON_NODE);
	
	// edit local app name and operation
	if (!err) {
		localAppName = mLocalApplicationName.c_str();
		operation = WEBSOCKET_ANSWER_DISCOVER_ALL;
        
        // go throught node tree and build json string of the whole namespace under address
        parseChildren(childNode, node, true);
	}
	else {
		localAppName = mLocalApplicationName.c_str();
		operation = WEBSOCKET_ERROR_DISCOVER_ALL;
        
        // TODO : send explicit error description
        childNode = new JSONNode(WEBSOCKET_JSON_ERROR, err);
	}
    
    // append sender & operation to json
    jsonNode->push_back(JSONNode(WEBSOCKET_JSON_SENDER, localAppName));
    jsonNode->push_back(JSONNode(WEBSOCKET_JSON_OPERATION, operation));
    jsonNode->push_back(*childNode);
    
#ifdef TT_PROTOCOL_DEBUG
    std::cout << "WebSocket : applicationSendDiscoverAllAnswer " << std::endl;
#endif
	
    return sendMessage(to, TTSymbol(localAppName), TTSymbol(operation), jsonNode);
}

/*!
 * Send a get answer to an application which ask for.
 *
 * \param to					: the application where to send answer
 * \param address				: the address where comes from the value
 * \param returnedValue			: the value of the attribute at the address
 */
TTErr WebSocket::SendGetAnswer(TTSymbol to, TTAddress address, 
							const TTValue& returnedValue,
							TTErr err)
{
	TTString	localAppName, operation;
    JSONNode    *jsonNode, *childNode;
    
    // create JSonNode
    jsonNode = new JSONNode(JSON_NODE);
	
	// edit local app name and operation
	if (!err) {
		localAppName = mLocalApplicationName.c_str();
		operation = WEBSOCKET_ANSWER_GET;
        
        jsonNode->push_back(JSONNode(WEBSOCKET_JSON_SENDER, localAppName));
        jsonNode->push_back(JSONNode(WEBSOCKET_JSON_OPERATION, operation));
        
        childNode = new JSONNode(JSON_NODE);
        childNode->set_name(address.removeAttribute().c_str());
        
        // if only value attribute to get, add it like this in json : <address> : <value>
        if (address.getAttribute() == kTTSym_value)
        {
            addChildToJson(jsonNode, address.removeAttribute(), returnedValue);
        }
        // else like this : <address> : { ":type" : <type> }
        // TODO : do it for several attributes like this : <address> : { ":type" : <type>, ":value" : <value>, ":range" : <range> }
        else
        {
            childNode = new JSONNode(JSON_NODE);
            childNode->set_name(address.removeAttribute().c_str());
            addChildToJson(childNode, address.getAttribute(), returnedValue);
            jsonNode->push_back(*childNode);
        }
	}
	else {
		localAppName = mLocalApplicationName.c_str();
		operation = WEBSOCKET_ERROR_GET;
        
        jsonNode->push_back(JSONNode(WEBSOCKET_JSON_SENDER, localAppName));
        jsonNode->push_back(JSONNode(WEBSOCKET_JSON_OPERATION, operation));
        
        // TODO : send explicit error description
        childNode = new JSONNode(WEBSOCKET_JSON_ERROR, err);
        jsonNode->push_back(*childNode);
	}
	
#ifdef TT_PROTOCOL_DEBUG
		std::cout << "WebSocket : applicationSendGetAnswer" << std::endl;
#endif
	
	return sendMessage(to, TTSymbol(localAppName), TTSymbol(operation), jsonNode);
}

/*!
 * Send a listen answer to an application which ask for.
 *
 * \param to					: the application where to send answer
 * \param address				: the address where comes from the value
 * \param returnedValue			: the value of the attribute at the address
 */
TTErr WebSocket::SendListenAnswer(TTSymbol to, TTAddress address, 
							   const TTValue& returnedValue, 
							   TTErr err)
{
	TTString	localAppName, operation;
    JSONNode    *jsonNode, *childNode;
    
    // create JSonNode
    jsonNode = new JSONNode(JSON_NODE);
	
	// edit local app name and operation
	if (!err) {
		localAppName = mLocalApplicationName.c_str();
		operation = WEBSOCKET_ANSWER_LISTEN;
        
        childNode = new JSONNode(address.removeAttribute().c_str(), true);
	}
	else {
		localAppName = mLocalApplicationName.c_str();
		operation = WEBSOCKET_ERROR_LISTEN;
        
        // TODO : send explicit error description
        childNode = new JSONNode(WEBSOCKET_JSON_ERROR, err);
	}
    
    // append sender & operation to json
    jsonNode->push_back(JSONNode(WEBSOCKET_JSON_SENDER, localAppName));
    jsonNode->push_back(JSONNode(WEBSOCKET_JSON_OPERATION, operation));
    jsonNode->push_back(*childNode);
	
#ifdef TT_PROTOCOL_DEBUG
		std::cout << "WebSocket : applicationSendListenAnswer " << std::endl;
#endif

	return sendMessage(to, TTSymbol(localAppName), TTSymbol(operation), jsonNode);
}

TTErr WebSocket::sendMessage(TTSymbol distantApplicationName, TTSymbol localApplicationName, TTSymbol operation, JSONNode* jsonNode)
{
	TTHashPtr       parameters = NULL;
    TTObject        aWebSender;
    TTString        header;
	TTValue         v, message, none;
	TTErr           err;
    
    if (!mSenderManager)
        return kTTErrGeneric;
	
	// Check the application registration
	err = mApplicationParameters.lookup(distantApplicationName, v);
	
	if (!err) {
			
			aWebSender = mSenderManager->lookup(distantApplicationName);
            
			if (aWebSender.valid()) {
                // get json string
                json_string js = jsonNode->write_formatted();
                
#ifdef TT_PROTOCOL_DEBUG
                std::cout << "json formatted to send : " << js << std::endl;
#endif
                
                // add it to message TTValue
                message = TTSymbol(js);
				
                // send message
				err = aWebSender.send(TTSymbol("send"), message, none);
                
				if (!err && mActivity) {
                    header = mLocalApplicationName.c_str();
                    header += operation;
                    
					v = header;
					ActivityOutMessage(v);
				}
		}
	}

	return err;
}

TTErr WebSocket::parseJSON(const JSONNode &n, TTString address, TTValue& value)
{
   if (n == NULL)
    {
        return kTTErrGeneric;
    }
    
    JSONNode::const_iterator i = n.begin();
    
    while (i != n.end())
    {
        /*if (*i == NULL)
        {
            return kTTErrGeneric;
        }*/
        
        // get the node name
        std::string node_name = i->name();
        
        if (node_name == WEBSOCKET_JSON_SENDER)
        {
            // add sender id as first arg
            value = TTSymbol(i->as_string());
        }
        else if (node_name == WEBSOCKET_JSON_OPERATION)
        {
            // append command id as second arg
            value.append(TTSymbol(i->as_string()));
        }
        else
        {
            // add first / only if not already specified
            TTString nm = node_name;
            if (nm.find_first_of('/') != 0)
                address += "/";
            
            // append node name to osc-like address
            address += node_name.c_str();
            
            // recursively call ourselves to dig deeper into the tree
            if (i->type() == JSON_NODE)
            {
                parseJSON(*i, address, value);
            }
            else
            {
                // parsing finished, append built osc-like address and append value
                
                // append address as third arg
                value.append(TTSymbol(address));
                
                // append value as fourth arg
                if (i->type() == JSON_STRING)
                {
                    value.append(TTSymbol(i->as_string()));
                }
                else if(i->type() == JSON_NUMBER)
                {
                    value.append(i->as_float());
                }
                else if(i->type() == JSON_BOOL)
                {
                    value.append(i->as_bool());
                }
                else if(i->type() == JSON_ARRAY)
                {
                    value.append(i->as_array());
                }
            }
        }
        
        ++i;
    }
    return kTTErrNone;
}


TTErr WebSocket::receivedMessage(const TTValue& message, TTValue& outputValue)
{
	TTSymbol	sender, operation;
	TTString	headerString, address, aString;
	TTInt32		operationStart;
	TTValue		arguments;
	TTAddress   whereTo = kTTAdrsEmpty;
	TTValue		v, jsonContent;
    TTBoolean   listenEnabled;
	TTErr		err;
	
	if (mActivity) ActivityInMessage(message);
	
    aString = message.toString();
	
#ifdef TT_PROTOCOL_DEBUG
    cout << endl;
    cout << "Message received : " << aString.c_str() << endl;
#endif
    
    // parse json string
    JSONNode rootNode = libjson::parse(aString.c_str());
    json_string js = rootNode.write_formatted();
    
    parseJSON(rootNode, address, jsonContent);
    
    // get sender
    sender = jsonContent[0];
    if (!sender)
        return kTTErrGeneric;
    
    // get operation
    operation = jsonContent[1];
    TTString operationString = operation;
    if (!operation)
        return kTTErrGeneric;
    
    // get address
    whereTo = jsonContent[2];
    
    if (operation == TTSymbol(WEBSOCKET_REQUEST_SET))
    {
#ifdef TT_PROTOCOL_DEBUG
        cout << "Receive set request at " << whereTo.c_str() << endl;
#endif
        
        // get value
        // TODO : make a loop to set several attributes
        arguments = jsonContent[3];
        return ReceiveSetRequest(kTTSymEmpty, whereTo, arguments);
    }
	else
    {
		// Is it a request ?
		operationStart = operationString.find_first_of('?');
		if (operationStart >= 0)
		{
			// Check the sender application registration
			err = mApplicationParameters.lookup(sender, v);
			if (!err)
            {
#ifdef TT_PROTOCOL_DEBUG
				cout << "Receive " << operation.c_str() << " request from "<< sender.c_str() << " at " << whereTo.c_str() << endl;
#endif
				
				// switch on request
				if (operation == TTSymbol(WEBSOCKET_REQUEST_DISCOVER))
					return ReceiveDiscoverRequest(sender, whereTo);
                
                else if (operation == TTSymbol(WEBSOCKET_REQUEST_DISCOVER_ALL))
					return ReceiveDiscoverAllRequest(sender, whereTo);
				
				else if (operation == TTSymbol(WEBSOCKET_REQUEST_GET))
					return ReceiveGetRequest(sender, whereTo);
				
				else if (operation == TTSymbol(WEBSOCKET_REQUEST_LISTEN))
                {
                    // parse enable/disable
                    listenEnabled = jsonContent[3];
                    return ReceiveListenRequest(sender, whereTo, listenEnabled);
                }
						
                else
                    ; // TODO send bad request error notification
			}
			
		}// end if starts by '?'
		
		// Is it a answer :
		operationStart = operationString.find_first_of(':');
		if (operationStart >= 0)
		{
			// Check the sender application registration
			err = mApplicationParameters.lookup(sender, v);
			if (!err) {
				
#ifdef TT_PROTOCOL_DEBUG
				cout << "Receive " << operation.c_str() << " answer from "<< sender.c_str() << " at " << whereTo.c_str() << endl;
#endif
				
				// switch on answer
				if (operation == TTSymbol(WEBSOCKET_ANSWER_DISCOVER))
					return mAnswerManager->ReceiveDiscoverAnswer(sender, whereTo, arguments);
                
                else if (operation == TTSymbol(WEBSOCKET_ANSWER_DISCOVER_ALL))
					return mAnswerManager->ReceiveDiscoverAllAnswer(sender, whereTo, arguments);
				
				else if (operation == TTSymbol(WEBSOCKET_ANSWER_GET))
					return mAnswerManager->ReceiveGetAnswer(sender, whereTo, arguments);
				
				else if (operation == TTSymbol(WEBSOCKET_ANSWER_LISTEN))
					return ReceiveListenAnswer(sender, whereTo, arguments);
				
			}	
		} // end if starts by ':'
        
        // Is it an error :
		operationStart = operationString.find_first_of('!');
		if (operationStart >= 0)
		{
			// Check the sender application registration
			err = mApplicationParameters.lookup(sender, v);
			if (!err) {
				
#ifdef TT_PROTOCOL_DEBUG
				cout << "Receive " << operation.c_str() << " error from "<< sender.c_str() << " at " << whereTo.c_str() << endl;
#endif
				
				// switch on answer
				if (operation == TTSymbol(WEBSOCKET_ERROR_DISCOVER))
					return mAnswerManager->ReceiveDiscoverAnswer(sender, whereTo, arguments, kTTErrGeneric);
                
                else if (operation == TTSymbol(WEBSOCKET_ERROR_DISCOVER_ALL))
					return mAnswerManager->ReceiveDiscoverAllAnswer(sender, whereTo, arguments, kTTErrGeneric);
				
				else if (operation == TTSymbol(WEBSOCKET_ERROR_GET))
					return mAnswerManager->ReceiveGetAnswer(sender, whereTo, arguments, kTTErrGeneric);
				
                // théo - is there error for listen request ?
			}
		} // end if starts by '!'
		
	} // end else
	
	return kTTErrNone;
}


void addChildToJson(JSONNode* jsonNode, TTSymbol childName, TTValue value)
{
	TTString        s;
    TTSymbol		addressValue;
    TTSymbol		symValue;
    TTString        stringValue;
    TTInt32			intValue;
    TTFloat64		floatValue;
    TTDataType		valueType;
    TTBoolean       boolValue;
    
    // check value type and add it in json tree
    valueType = value[0].type();
    
    if (childName == TTSymbol("rangeBounds"))
    {
        valueType = kTypeSymbol;
        value.toString();
        value.get(0, stringValue);
    }
    
    if (valueType == kTypeSymbol && childName == TTSymbol("rangeBounds")) {
        //        std::cout << childName.c_str() << " " << stringValue.data() << std::endl;
        jsonNode->push_back(JSONNode(childName.c_str(), stringValue.data()));
    }
    else if (valueType == kTypeSymbol && childName != TTSymbol("rangeBounds")) {
        symValue = value[0];
        //        std::cout << childName.c_str() << " " << symValue.c_str() << std::endl;
        jsonNode->push_back(JSONNode(childName.c_str(), symValue.c_str()));
    }
    else if (valueType == kTypeBoolean) {
        boolValue = value[0];
        //        std::cout << childName.c_str() << " " << boolValue << std::endl;
        jsonNode->push_back(JSONNode(childName.c_str(), boolValue));
    }
    else if (valueType == kTypeUInt8 || valueType == kTypeUInt16 || valueType == kTypeUInt32 || valueType == kTypeUInt64) {
        intValue = value[0];
        //        std::cout << childName.c_str() << " " << intValue << std::endl;
        jsonNode->push_back(JSONNode(childName.c_str(), intValue));
    }
    else if (valueType == kTypeInt8 || valueType == kTypeInt16 || valueType == kTypeInt32 || valueType == kTypeInt64) {
        intValue = value[0];
        //        std::cout << childName.c_str() << " " << intValue << std::endl;
        jsonNode->push_back(JSONNode(childName.c_str(), intValue));
    }
    else if (valueType == kTypeFloat32 || valueType == kTypeFloat64) {
        floatValue = value[0];
        //        std::cout << childName.c_str() << " " << floatValue << std::endl;
        jsonNode->push_back(JSONNode(childName.c_str(), (float)floatValue));
    }
}

void addAttributeToJson(TTObject param, JSONNode* jsonNode, TTSymbol attrName)
{
	TTValue         v;
	TTString        s;
    TTSymbol		addressValue;
    TTSymbol		symValue;
    TTString        stringValue;
    TTInt32			intValue;
    TTFloat64		floatValue;
    TTDataType		valueType = kTypeNone;
    TTBoolean       boolValue;
	TTErr			err = kTTErrNone;
    
	// get the Value of an attribute
	v.clear();
	err = param.get(attrName, v);
    
	if (v.size() == 0)
		return;

    if (attrName == TTSymbol("rangeBounds"))
    {
        valueType = kTypeSymbol;
		v.toString();
        v.get(0, stringValue);
    }
	else
		valueType = v[0].type();

	// add this attribute in json tree
    if (valueType == kTypeSymbol && attrName == TTSymbol("rangeBounds")) {
        //        std::cout << attrName.c_str() << " " << stringValue.data() << std::endl;
        jsonNode->push_back(JSONNode(attrName.c_str(), stringValue.data()));
    }
    else if (valueType == kTypeSymbol && attrName != TTSymbol("rangeBounds")) {
        symValue = v[0];
        //        std::cout << attrName.c_str() << " " << symValue.c_str() << std::endl;
        jsonNode->push_back(JSONNode(attrName.c_str(), symValue.c_str()));
    }
    else if (valueType == kTypeBoolean) {
        boolValue = v[0];
        //       std::cout << attrName.c_str() << " " << boolValue << std::endl;
        jsonNode->push_back(JSONNode(attrName.c_str(), boolValue));
    }
    else if (valueType == kTypeUInt8 || valueType == kTypeUInt16 || valueType == kTypeUInt32 || valueType == kTypeUInt64) {
        intValue = v[0];
        //        std::cout << attrName.c_str() << " " << intValue << std::endl;
        jsonNode->push_back(JSONNode(attrName.c_str(), intValue));
    }
    else if (valueType == kTypeInt8 || valueType == kTypeInt16 || valueType == kTypeInt32 || valueType == kTypeInt64) {
        intValue = v[0];
        //        std::cout << attrName.c_str() << " " << intValue << std::endl;
        jsonNode->push_back(JSONNode(attrName.c_str(), intValue));
    }
    else if (valueType == kTypeFloat32 || valueType == kTypeFloat64) {
        floatValue = v[0];
        //        std::cout << attrName.c_str() << " " << floatValue << std::endl;
        jsonNode->push_back(JSONNode(attrName.c_str(), (float)floatValue));
    }
}

// method to extract a substring safely
char *str_sub (const char *s, unsigned int start, unsigned int end)
{
    char *new_s = NULL;
    
    if (s != NULL && start < end) {
        new_s = (char*) malloc (sizeof (*new_s) * (end - start + 2));
        if (new_s != NULL) {
            unsigned int i;
            
            for (i = start; i <= end; i++) {
                new_s[i-start] = s[i];
            }
            new_s[i-start] = '\0';
        }
        else {
            fprintf (stderr, "Memoire insuffisante\n");
            exit (EXIT_FAILURE);
        }
    }
    return new_s;
}

void parseChildren(JSONNode* jsonNode, TTNodePtr ttNode, TTBoolean isFirstParsing)
{
	TTAddress   OSCaddress;
	TTValue		v, attributeNames;
	TTList		childList;
	TTNodePtr	p_node;
	TTString	s;
	
	ttNode->getAddress(OSCaddress);
	ttNode->getChildren(S_WILDCARD, S_WILDCARD, childList);
	
	const char* address = OSCaddress.c_str();
	char* nodeName;
	
    JSONNode* childNode = new JSONNode(JSON_NODE);
	
//    if (strrchr(address, '.') == NULL)
//    {
		// get the substring representing the last node name
        
        // address is only the root ("/")
        if (strcmp(address, "/") == 0)
        {
            nodeName = (char*)address;
        }
        // address is only the first node ("/firstNode")
        else if (strlen(address) > 1 && strrchr(address, '/')-address == 0)
        {
            nodeName = (char*)address;
        }
        // address is not only the root ("/firstNode/secondNode/...")
		else if (strlen(address) > 1)
        {
			const char* c = strrchr(address, '/');
			int start = c-address+1;
			int end = strlen(address)-1;
			nodeName = str_sub(address, start, end);
		}
        
        if (isFirstParsing)
        {
            childNode = jsonNode;
            childNode->set_name(nodeName);
        }
        
		if (childList.isEmpty())
        {
			// get the Data object of the Node
			TTObject param = ttNode->getObject();
			
			if (param != NULL)
            {
				addAttributeToJson(param, childNode, TTSymbol("type"));
                addAttributeToJson(param, childNode, TTSymbol("service"));
				addAttributeToJson(param, childNode, TTSymbol("valueDefault"));
				addAttributeToJson(param, childNode, TTSymbol("rangeBounds"));
				addAttributeToJson(param, childNode, TTSymbol("valueStepsize"));
                addAttributeToJson(param, childNode, TTSymbol("description"));
                //				addAttributeToJson(param, childNode, TTSymbol("dynamicInstances"));
                //				addAttributeToJson(param, childNode, TTSymbol("instanceBounds"));
                //				addAttributeToJson(param, childNode, kTTSym_priority);
                //				addAttributeToJson(param, childNode, TTSymbol("readonly"));
			}
		}
//	}
	
	// repeat recursively for each child
	for (childList.begin(); childList.end(); childList.next()) {
		childList.current().get(0,(TTPtr*)&p_node);
		parseChildren(childNode, p_node, false);
	}
    
    // when json node is pushed_back, it is copied into json tree so has to be modified before
    if(!isFirstParsing)
    {
        childNode->set_name(nodeName);
        jsonNode->push_back(*childNode);
        
        childNode->clear();
        delete childNode;
    }
}
