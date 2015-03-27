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


#include "TTProtocol.h"
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

TT_PROTOCOL_CONSTRUCTOR,
mSenderManager(NULL)
{	
	TT_PROTOCOL_INITIALIZE
	
    addAttributeAsProtocolParameter(Ip, kTypeSymbol);
	addAttributeAsProtocolParameter(Port, kTypeUInt16);
	
	addMessageWithArguments(receivedMessage);
	addMessageProperty(receivedMessage, hidden, YES);
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
    
    // release the sender manager
    if (mSenderManager)
        delete mSenderManager;
}

TTErr OSC::getParameterNames(TTValue& value)
{
	value.clear();
	value.append(TTSymbol("ip"));
	value.append(TTSymbol("port"));
	
	return kTTErrNone;
}

TTErr OSC::Scan(const TTValue& inputValue, TTValue& outputValue)
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
    // run OSC for all applications
    if (inputValue.size() == 0) {
        
        TTValue keys;
        TTErr   err = kTTErrNone;
        
        outputValue.clear();

        mApplicationParameters.getKeys(keys);
        for (TTUInt32 i = 0 ; i < keys.size() ; i++)
            if (Run(keys[i], outputValue))
                err = kTTErrGeneric;
        
        return err;
    }
    
    // run OSC for one application
    TTSymbol    applicationName;
    TTErr       err;
    
    if (inputValue.size() == 1) {
        
        if (inputValue[0].type() == kTypeSymbol)
        
            applicationName = inputValue[0];
    }
    
    // for any application
    if (!mRunning) {
        
        // instantiate the sender manager
        mSenderManager = new OSCSenderManager();
    }
    
    // for local application
    if (applicationName == mLocalApplicationName) {
        
        if (!mRunning) {
            
            // create an osc.receiver local application
            mLocalApplicationOscReceiver = TTObject("osc.receive");
            
            if (mLocalApplicationOscReceiver.valid()) {
                
                TTValue     v;
                TTObject    oscProtocol(this);
                TTUInt16    port;
                
                // select local application to get its port parameter
                ApplicationSelectLocal();
                oscProtocol.get("port", v);
                
                port = v[0];
                
                err = mLocalApplicationOscReceiver.set("port", port);
                
                if (!err) {
                
                    // register for notification using our 'receivedMessage' method
                    mLocalApplicationOscReceiver.registerObserverForNotifications(oscProtocol);
                
                    mRunning = YES;
                    
                    TTLogMessage("OSC::Run : connected to port %ld for local application\n", port);
                
                    return kTTErrNone;
                }
                else {
                    
                    // return the port
                    outputValue.append(port);
                    
                    TTLogError("OSC::Run : unable to connect to port %ld for local application\n", port);
                }
            }
        }
        else
            return kTTErrNone;
    }
	
    // for distant application case
    else {
	
        TTValue    v, args;
        TTHashPtr  parameters;
        TTObject   anOscReceiver, returnMessageCallback;
        TTValue    returnMessageBaton;
        TTUInt16   receptionPort;
        
        // if the application have already a reception thread : return an error
        if (!mDistantApplicationOscReceivers.lookup(applicationName, v))
            return kTTErrGeneric;
        
        // get application parameters
        err = mApplicationParameters.lookup(applicationName, v);
        
        if (!err) {
            
            parameters = TTHashPtr((TTPtr)v[0]);
            
            if (parameters) {
                
                // get port attribute
                err = parameters->lookup(TTSymbol("port"), v);
                
                if (!err && v.size() == 2) {
                    
                    // the second port is for reception
                    receptionPort = v[1];
                    
                    // prepare arguments
                    returnMessageCallback = TTObject("callback");
                    
                    returnMessageBaton = TTValue(TTObject(this), applicationName);
                    returnMessageCallback.set(kTTSym_baton, returnMessageBaton);
                    
                    returnMessageCallback.set(kTTSym_function, TTPtr(&OSCReceiveMessageCallback));
                    
                    // create an osc.receive instance
                    anOscReceiver = TTObject("osc.receive", returnMessageCallback);
                    
                    if (anOscReceiver.valid()) {
                        
                        err = anOscReceiver.set("port", receptionPort);
                        
                        if (!err) {
                            
                            // don't register for notification because we use callback mechanism
                            
                            // append the osc.receive to the table
                            mDistantApplicationOscReceivers.append(applicationName, anOscReceiver);
                            
                            mRunning = YES;
                            
                            TTLogMessage("OSC::Run : connected to port %ld for %s application\n", receptionPort, applicationName.c_str());
                            
                            return kTTErrNone;
                        }
                        else {
                            
                            // return the port
                            outputValue.append(receptionPort);
                            
                            TTLogError("OSC::Run : unable to connect to port %ld for %s application\n", receptionPort, applicationName.c_str());
                        }
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
    // run OSC for all applications
    if (inputValue.size() == 0) {
        
        TTValue keys, out;
        
        // stop local
        Stop(mLocalApplicationName, out);
        
        // stop each distant
        mApplicationParameters.getKeys(keys);
        for (TTUInt32 i = 0 ; i < keys.size() ; i++)
            Stop(keys[i], out);
        
        return kTTErrNone;
    }
    
    // stop OSC for one application
    TTSymbol    applicationName;
    
    if (inputValue.size() == 1) {
        
        if (inputValue[0].type() == kTypeSymbol)
            
            applicationName = inputValue[0];
    }
    
    // for any application
    if (mRunning) {
        
        // release the sender manager
        delete mSenderManager;
        mSenderManager = NULL;
    }
    
    // for local application
    if (applicationName == mLocalApplicationName) {
        
        if (mRunning) {
            
            // delete osc.receive dedicated to local application
            mLocalApplicationOscReceiver = TTObject();
            
            mRunning = NO;
            
            return kTTErrNone;
        }
    }
    
    // for distant application case
    else {
        
        TTValue         v;
        
        // if the application have a reception thread
        if (!mDistantApplicationOscReceivers.lookup(applicationName, v)) {
            
            // remove key
            mDistantApplicationOscReceivers.remove(applicationName);
            
            mRunning = NO;
            
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
                         const TTValue& returnedValue,
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
                            const TTValue& returnedValue,
                            TTErr err)
{
    return kTTErrGeneric;
}

TTErr OSC::sendMessage(TTSymbol applicationName, TTSymbol header, TTValue& arguments)
{
    if (!mSenderManager)
        return kTTErrGeneric;
    
	// Check application registration
    TTValue v;
	TTErr   err = mApplicationParameters.lookup(applicationName, v);
	
	if (!err)
    {
		TTHashPtr   parameters = TTHashPtr((TTPtr)v[0]);
		TTValue     vIp, vPort;
        TTErr       errIp = parameters->lookup(TTSymbol("ip"), vIp);
        TTErr       errPort = parameters->lookup(TTSymbol("port"), vPort);
        
        if (errIp || errPort)
            return kTTErrGeneric;
        
        TTValue message(header);
        message.append((TTPtr)&arguments);
        
        err = mSenderManager->send(applicationName, vIp, vPort, message);
        
        if (err)
        {
            ; // can't send message to the application because the osc.sender is busy
            ; // TODO : have bundle system
            
        }
        
        else if (mActivity)
        {
            v = arguments;
            v.prepend(header);
            ActivityOutMessage(v);
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

TTErr OSCReceiveMessageCallback(const TTValue& baton, const TTValue& data)
{
    TTObject    o;
	OSCPtr      anOscProtocol;
	TTSymbol	from, aSymbol;
	TTString	headerString;
	TTValue		arguments;
    TTErr       err;
    
	// unpack baton
    o = baton[0];
	anOscProtocol = (OSCPtr)o.instance();
	from = baton[1];
    
    // clear mReceiveFrom and mReceivedAddress
    anOscProtocol->mReceivedFrom = kTTSymEmpty;
    anOscProtocol->mReceivedAddress = kTTAdrsEmpty;
	
	/*
	 if message starts with '/'
	 */
	
	if (anOscProtocol->mActivity) anOscProtocol->ActivityInMessage(data);
	
	aSymbol = data[0];
	headerString = aSymbol.string();
    
	// if message starts with '/'
	if (headerString[0] == '/')
	{
        // meorize who send the message and the address to avoid loop
        anOscProtocol->mReceivedFrom = from;
		anOscProtocol->mReceivedAddress = TTAddress(aSymbol.c_str());
        if (anOscProtocol->mReceivedAddress.getAttribute() == NO_ATTRIBUTE)
            anOscProtocol->mReceivedAddress = anOscProtocol->mReceivedAddress.appendAttribute(kTTSym_value);
        
		arguments.copyFrom(data, 1);
		
#ifdef TT_PROTOCOL_DEBUG
		cout << "OSCReceiveMessageCallback : from " << from.c_str() << " at " << anOscProtocol->mReceivedAddress.c_str() << endl;
#endif
		
		err = anOscProtocol->ReceiveListenAnswer(from, anOscProtocol->mReceivedAddress, arguments);
        
        // clear mReceiveFrom and mReceivedAddress
        anOscProtocol->mReceivedFrom = kTTSymEmpty;
        anOscProtocol->mReceivedAddress = kTTAdrsEmpty;
        
        return err;
	} 
		
	return kTTErrGeneric;
}