/** @file
 *
 * @ingroup modularOSC
 *
 * @brief The OSC Protocol
 *
 * @details
 *
 * @authors Théo de la Hogue
 *
 * @copyright © 2013, Théo de la Hogue @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#include "Protocol.h"
#include "OSC.h"

#define thisTTClass				OSC
#define thisTTClassName			"OSC"
#define thisTTClassTags			"network, protocol, osc"

#define thisProtocolVersion		"0.1"
#define thisProtocolAuthor		"Theo de la Hogue"
#define thisProtocolGet         NO
#define thisProtocolSet         YES
#define thisProtocolListen      NO
#define thisProtocolDiscover	NO
#define thisProtocolDiscoverAll	NO

extern "C" TT_EXTENSION_EXPORT TTErr TTLoadJamomaExtension_OSC(void)
{
	TTFoundationInit();
	OSC::registerClass();
	return kTTErrNone;
}

PROTOCOL_CONSTRUCTOR,
mIp(TTSymbol("localhost")),
mPort(OSC_RECEPTION_PORT),
mLocalApplicationOscReceiver(NULL),
mSenderManager(NULL),
mWaitThread(NULL)
{	
	PROTOCOL_INITIALIZE
	
	addAttribute(Ip, kTypeSymbol);
	addAttribute(Port, kTypeUInt16);
	
	addMessageWithArguments(receivedMessage);
	addMessageProperty(receivedMessage, hidden, YES);
    
    mWaitThread = new TTThread(NULL, NULL);
}

OSC::~OSC()
{
    TTValue     keys, out;
    TTSymbol    distantApplicationName;
    TTUInt16    i;
    
    // Stop all distant applications
    mDistantApplicationOscReceivers.getKeys(keys);
    for (i = 0; i < keys.size(); i++) {
        
        distantApplicationName = keys[i];
        Stop(distantApplicationName, out);
    }
    
    // Stop local application
    Stop(kTTValNONE, out);
    
    delete mWaitThread;
}

TTErr OSC::getParameterNames(TTValue& value)
{
	value.clear();
	value.append(TTSymbol("ip"));
	value.append(TTSymbol("port"));
	
	return kTTErrNone;
}

TTErr OSC::Scan()
{
	// TODO : using Bonjour
	return kTTErrGeneric;
}

/*!
 * Run the arguments reception thread 
 * Prepare the receive callback method to be passed to the ApplicationManager to intercept the arguments
 *
 */
TTErr OSC::Run(const TTValue& inputValue, TTValue& outputValue)
{
    TTErr err;
    
    // local application case
    if (inputValue.size() == 0) {
        
        if (!mRunning) {
            
            mSenderManager = new OSCSenderManager();
            
            // create an osc.receiver local application
            err = TTObjectBaseInstantiate(TTSymbol("osc.receive"), &mLocalApplicationOscReceiver, kTTValNONE);
            if (!err) {
                
                mLocalApplicationOscReceiver->setAttributeValue(TTSymbol("port"), mPort);
                
                // register for notification using our 'receivedMessage' method
                mLocalApplicationOscReceiver->registerObserverForNotifications(*this);
                
                // wait to avoid strange crash when run and stop are called to quickly
                mWaitThread->sleep(1);
                
                mRunning = YES;
            }
            
            return err;
        }
    }
	
    // for distant application case
    else {
	
        TTValue         v, args;
        TTSymbol        distantApplicationName;
        TTHashPtr       parameters;
        TTObjectBasePtr anOscReceiver, returnMessageCallback;
        TTValuePtr		returnMessageBaton;
        TTUInt16        receptionPort;
        
        distantApplicationName = inputValue[0];
        
        // if the application have already a reception thread : return an error
        if (!mDistantApplicationOscReceivers.lookup(distantApplicationName, v))
            return kTTErrGeneric;
        
        // get application parameters
        err = mDistantApplicationParameters.lookup(distantApplicationName, v);
        
        if (!err) {
            
            parameters = TTHashPtr((TTPtr)v[0]);
            
            if (parameters) {
                
                // get port attribute
                err = parameters->lookup(TTSymbol("port"), v);
                
                if (!err && v.size() == 2) {
                    
                    // the second port is for reception
                    receptionPort = v[1];
                    
                    // prepare arguments
                    returnMessageCallback = NULL;
                    TTObjectBaseInstantiate(TTSymbol("callback"), &returnMessageCallback, kTTValNONE);
                    
                    returnMessageBaton = new TTValue(TTObjectBasePtr(this));
                    returnMessageBaton->append(distantApplicationName);
                    
                    returnMessageCallback->setAttributeValue(kTTSym_baton, TTPtr(returnMessageBaton));
                    returnMessageCallback->setAttributeValue(kTTSym_function, TTPtr(&OSCReceiveMessageCallback));
                    args.append(returnMessageCallback);
                    
                    // create an osc.receive instance
                    anOscReceiver = NULL;
                    err = TTObjectBaseInstantiate(TTSymbol("osc.receive"), &anOscReceiver, args);
                    
                    if (!err) {
                        
                        anOscReceiver->setAttributeValue(TTSymbol("port"), receptionPort);
                        
                        // don't register for notification because we use callback mechanism
                        
                        // append the osc.receive to the table
                        v = TTValue(TTObjectBasePtr(anOscReceiver));
                        mDistantApplicationOscReceivers.append(distantApplicationName, v);
                        
                        // wait to avoid strange crash when run and stop are called to quickly
                        mWaitThread->sleep(1);
                    }
                }
            }
        }
	}
    
    return kTTErrGeneric;
}

/*!
 * Stop the arguments reception thread 
 *
 */
TTErr OSC::Stop(const TTValue& inputValue, TTValue& outputValue)
{
    // local application case
    if (inputValue.size() == 0) {
        
        if (mRunning) {
            
            delete mSenderManager;
            
            // delete osc.receive dedicated to local application
            TTObjectBaseRelease(&mLocalApplicationOscReceiver);
            
            // wait to avoid strange crash when run and stop are called to quickly
            mWaitThread->sleep(1);
            
            mRunning = NO;
            
            return kTTErrNone;
        }
    }
    
    // for distant application case
    else {
        
        TTValue         v;
        TTSymbol        distantApplicationName;
        TTObjectBasePtr anOscReceiver;
        
        distantApplicationName = inputValue[0];
        
        // if the application have a reception thread
        if (!mDistantApplicationOscReceivers.lookup(distantApplicationName, v)) {
            
            anOscReceiver = v[0];
            
            // delete osc.receive dedicated to distant applications
            TTObjectBaseRelease(&anOscReceiver);
            
            // wait to avoid strange crash when run and stop are called to quickly
            mWaitThread->sleep(1);
            
            return kTTErrNone;
        }
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
 * \param tryCount              : number of try for this request
 * \return errorcode			: kTTErrNone means the answer has been received, kTTErrValueNotFound means something is bad in the request
 else it returns kTTErrGeneric if no answer or timeout
 */
TTErr OSC::SendDiscoverRequest(TTSymbol to, TTAddress address,
                               TTSymbol& returnedType,
                               TTValue& returnedChildren,
                               TTValue& returnedAttributes,
                               TTUInt8 tryCount)
{
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
TTErr OSC::SendDiscoverAllRequest(TTSymbol to, TTAddress address,
                             TTNodePtr node,
                             TTUInt8 tryCount)
{
	return kTTErrGeneric;
}

/*!
 * Send a get request to an application to get a value at the given address
 *
 * \param to					: the application where to get
 * \param address				: the address to get
 * \param returnedValue			: the value which is going to be filled
 * \param tryCount              : number of try for this request
 * \return errorcode			: kTTErrNone means the answer has been received, kTTErrValueNotFound means something is bad in the request
 else it returns kTTErrGeneric if no answer or timeout
 */
TTErr OSC::SendGetRequest(TTSymbol to, TTAddress address, 
                          TTValue& returnedValue,
                          TTUInt8 tryCount)
{
	return kTTErrGeneric;
}

/*!
 * Send a set request to set a value of a specific application
 *
 * \param to					: the application where to set
 * \param address				: the address to set
 * \param value					: anything to send
 * \param tryCount              : number of try for this request
 * \return errorcode			: kTTErrNone means the answer has been received, kTTErrValueNotFound means something is bad in the request
 */
TTErr OSC::SendSetRequest(TTSymbol to, TTAddress address, 
                          TTValue& value,
                          TTUInt8 tryCount)
{
    // avoid loop (see in OSCReceiveMessageCallback)
    if (address == mReceivedAddress && to == mReceivedFrom)
        return kTTErrGeneric;
    
#ifdef TT_PROTOCOL_DEBUG
    std::cout << "OSC::SendSetRequest : to " << address.c_str() << std::endl;
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
 * \param tryCount              : number of try for this request
 * \return errorcode			: kTTErrNone means the answer has been received, kTTErrValueNotFound means something is bad in the request
 */
TTErr OSC::SendListenRequest(TTSymbol to, TTAddress address, 
                             TTBoolean enable,
                             TTUInt8 tryCount)
{
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
TTErr OSC::SendDiscoverAnswer(TTSymbol to, TTAddress address,
                         TTSymbol& returnedType,
                         TTValue& returnedChildren,
                         TTValue& returnedAttributes,
                         TTErr err)
{
    return kTTErrGeneric;
}

/*!
 * Send a discover answer to a application which ask for.
 *
 * \param to					: the application where to send answer
 * \param address				: the address where comes from the description
 * \param node                  : the node for this address
 */
TTErr OSC::SendDiscoverAllAnswer(TTSymbol to, TTAddress address,
                            TTNodePtr node,
                            TTErr err)
{
    return kTTErrGeneric;
}

/*!
 * Send a get answer to an application which ask for.
 *
 * \param to					: the application where to send answer
 * \param address				: the address where comes from the value
 * \param returnedValue			: the value of the attribute at the address
 */
TTErr OSC::SendGetAnswer(TTSymbol to, TTAddress address, 
							TTValue& returnedValue, 
							TTErr err)
{
    return kTTErrGeneric;
}

/*!
 * Send a listen answer to an application which ask for.
 *
 * \param to					: the application where to send answer
 * \param address				: the address where comes from the value
 * \param returnedValue			: the value of the attribute at the address
 */
TTErr OSC::SendListenAnswer(TTSymbol to, TTAddress address, 
							   TTValue& returnedValue, 
							   TTErr err)
{
    return kTTErrGeneric;
}

TTErr OSC::sendMessage(TTSymbol distantApplicationName, TTSymbol header, TTValue& arguments)
{
	TTHashPtr	parameters = NULL;
    TTObjectBasePtr anOscSender;
	TTValue		v, vIp, vPort, message;
	TTErr		err, errIp, errPort;
	
	// Check the application registration
	err = mDistantApplicationParameters.lookup(distantApplicationName, v);
	
	if (!err) {
		parameters = TTHashPtr((TTPtr)v[0]);
		
		if (parameters) {
			
			errIp = parameters->lookup(TTSymbol("ip"), vIp);
			errPort = parameters->lookup(TTSymbol("port"), vPort);
			
			if (errIp || errPort)
				return kTTErrGeneric;
			
			anOscSender = mSenderManager->lookup(distantApplicationName, vIp, vPort);
			if (anOscSender) {

				message = TTValue(header);
				message.append((TTPtr)&arguments);
				
				err = anOscSender->sendMessage(TTSymbol("send"), message, kTTValNONE);
            
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

TTErr OSC::receivedMessage(const TTValue& message, TTValue& outputValue)
{
	TTSymbol	aSymbol;
	TTString	headerString;
	TTValue		arguments;
	TTAddress   whereTo = kTTAdrsEmpty;
    
	/*
	 if message starts with '/'
	 */
	
	if (mActivity) ActivityInMessage(message);
	
	aSymbol = message[0];
	headerString = aSymbol.string();
	
	// if message starts with '/'
	if (headerString[0] == '/')
	{
		whereTo = TTAddress(aSymbol.c_str());
		arguments.copyFrom(message, 1);
		
#ifdef TT_PROTOCOL_DEBUG
		cout << "OSC::receivedMessage : at " << whereTo.c_str() << endl;
#endif
		
		return ReceiveSetRequest(kTTSymEmpty, whereTo, arguments);
	}
    
	return kTTErrGeneric;
}

TTErr OSCReceiveMessageCallback(TTPtr baton, TTValue& message)
{
    TTValuePtr	b;
	OSCPtr      anOscPlugin;
	TTSymbol	from, aSymbol;
	TTString	headerString;
	TTValue		arguments;
    TTErr       err;
    
	// unpack baton
	b = (TTValuePtr)baton;
	anOscPlugin = OSCPtr((TTObjectBasePtr)(*b)[0]);
	from = (*b)[1];
    
    // clear mReceiveFrom and mReceivedAddress
    anOscPlugin->mReceivedFrom = kTTSymEmpty;
    anOscPlugin->mReceivedAddress = kTTAdrsEmpty;
	
	/*
	 if message starts with '/'
	 */
	
	if (anOscPlugin->mActivity) anOscPlugin->ActivityInMessage(message);
	
	aSymbol = message[0];
	headerString = aSymbol.string();
    
	// if message starts with '/'
	if (headerString[0] == '/')
	{
        // meorize who send the message and the address to avoid loop
        anOscPlugin->mReceivedFrom = from;
		anOscPlugin->mReceivedAddress = TTAddress(aSymbol.c_str());
        if (anOscPlugin->mReceivedAddress.getAttribute() == NO_ATTRIBUTE)
            anOscPlugin->mReceivedAddress = anOscPlugin->mReceivedAddress.appendAttribute(kTTSym_value);
        
		arguments.copyFrom(message, 1);
		
#ifdef TT_PROTOCOL_DEBUG
		cout << "OSCReceiveMessageCallback : from " << from.c_str() << " at " << anOscPlugin->mReceivedAddress.c_str() << endl;
#endif
		
		err = anOscPlugin->ReceiveListenAnswer(from, anOscPlugin->mReceivedAddress, arguments);
        
        // clear mReceiveFrom and mReceivedAddress
        anOscPlugin->mReceivedFrom = kTTSymEmpty;
        anOscPlugin->mReceivedAddress = kTTAdrsEmpty;
        
        return err;
	} 
		
	return kTTErrGeneric;
}