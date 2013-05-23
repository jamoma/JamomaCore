/*
 * The OSC Protocol
 * Copyright © 2013, Théo de la Hogue
 *
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

/*!
 * \class OSC
 *
 * the Open Soud Control protocol
 * 
 */

#ifndef __OSC_H__
#define __OSC_H__

#include "Protocol.h"
#include "OSCInclude.h"
#include "OSCSenderManager.h"

class OSCSenderManager;
typedef OSCSenderManager* OSCSenderManagerPtr;

class OSC : public Protocol {
	
	TTCLASS_SETUP(OSC)
	
private:
	
	TTSymbol				mIp;						///< ATTRIBUTE : IP of the local application                                (default : localhost, readonly)
	TTUInt16				mPort;						///< ATTRIBUTE : port dedicated to data reception for local application     (default : OSC_RECEPTION_PORT)
	
	TTObjectBasePtr			mLocalApplicationOscReceiver;
    
    TTHash                  mDistantApplicationOscReceivers;
	
    OSCSenderManagerPtr     mSenderManager;
    
    TTThreadPtr             mWaitThread;                // a thread used to wait after critical part
	
	TTErr sendMessage(TTSymbol distantApplicationName, TTSymbol header, TTValue& message);
    TTErr receivedMessage(const TTValue& message, TTValue& outputValue);
	
	/** Get parameters names needed by this protocol */
	TTErr getParameterNames(TTValue& value);
	
	/** Scan to find remote applications and add them to the application manager */
	TTErr Scan();
	
    /*!
     * Run reception thread mechanism for each application
     * \param inputValue			: the application to run (default the local application)
	 * \param outputValue			: kTTValNONE
     * \return errorcode			: return a kTTErrGeneric if the protocol fails to start for the application or if it was running already
     */
	TTErr Run(const TTValue& inputValue, TTValue& outputValue);
	
	/*!
     * Stop the reception thread mechanism for each application
     * \param inputValue			: the application to stop (default the local application)
	 * \param outputValue			: kTTValNONE
     * \return errorcode			: return a kTTErrGeneric if the protocol fails to stop for the application or if it was already stopped
     */
	TTErr Stop(const TTValue& inputValue, TTValue& outputValue);
	
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
	TTErr SendDiscoverRequest(TTSymbol to, TTAddress address,
                              TTSymbol& returnedType,
							  TTValue& returnedChildren,
							  TTValue& returnedAttributes);
	
	/*!
	 * Send a get request to an application to get a value at the given address
	 *
 	 * \param to					: the application where to get
	 * \param address				: the address to get
	 * \param returnedValue			: the value which is going to be filled
	 * \return errorcode			: kTTErrNone means the answer has been received, kTTErrValueNotFound means something is bad in the request
	 else it returns kTTErrGeneric if no answer or timeout
	 */
	TTErr SendGetRequest(TTSymbol to, TTAddress address, 
						 TTValue& returnedValue);
	
	/*!
	 * Send a set request to set a value of a specific application
	 *
	 * \param to					: the application where to set
	 * \param address				: the address to set
	 * \param value					: anything to send
	 * \return errorcode			: kTTErrNone means the answer has been received, kTTErrValueNotFound means something is bad in the request
	 */
	TTErr SendSetRequest(TTSymbol to, TTAddress address, 
						 TTValue& value);
	
	/*!
	 * Send a listen request to a specific application
	 *
	 * \param to					: the application where to listen
	 * \param address				: the address to listen
	 * \param attribute				: the attribute to listen
	 * \param enable				: enable/disable the listening
	 * \return errorcode			: kTTErrNone means the answer has been received, kTTErrValueNotFound means something is bad in the request
	 */
	TTErr SendListenRequest(TTSymbol to, TTAddress address, 
							TTBoolean enable);
	
	
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
	TTErr SendDiscoverAnswer(TTSymbol to, TTAddress address,
                             TTSymbol& returnedType,
							 TTValue& returnedChildren,
							 TTValue& returnedAttributes,
							 TTErr err=kTTErrNone);
	
	/*!
	 * Send a get answer to a application which ask for.
	 *
	 * \param to					: the application where to send answer
	 * \param address				: the address where comes from the value
	 * \param returnedValue			: the value of the attribute at the address
	 */
	TTErr SendGetAnswer(TTSymbol to, TTAddress address, 
						TTValue& returnedValue,
						TTErr err=kTTErrNone);
	
	/*!
	 * Send a listen answer to a application which ask for.
	 *
	 * \param to					: the application where to send answer
	 * \param address				: the address where comes from the value
	 * \param returnedValue			: the value of the attribute at the address
	 */
	TTErr SendListenAnswer(TTSymbol to, TTAddress address, 
						   TTValue& returnedValue,
						   TTErr err=kTTErrNone);
    
    
    
    friend TTErr TT_EXTENSION_EXPORT OSCReceiveMessageCallback(TTPtr baton, TTValue& data);
	
};
typedef OSC* OSCPtr;

/**
 @param	baton						..
 @param	data						..
 @return							an error code */
TTErr TT_EXTENSION_EXPORT OSCReceiveMessageCallback(TTPtr baton, TTValue& message);

#endif // __OSC_H__
