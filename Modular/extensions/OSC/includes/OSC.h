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
    
    TTSymbol                mReceivedFrom;              // memorize who sent a message to us to avoid loop when receiving an address and resending the same
    TTAddress               mReceivedAddress;           // memorize received address to avoid loop when receiving an address and resending the same
	
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
     * \param tryCount              : number of try for this request
	 * \return errorcode			: kTTErrNone means the answer has been received, kTTErrValueNotFound means something is bad in the request
	 else it returns kTTErrGeneric if no answer or timeout
	 */
	TTErr SendDiscoverRequest(TTSymbol to, TTAddress address,
                              TTSymbol& returnedType,
							  TTValue& returnedChildren,
							  TTValue& returnedAttributes,
                              TTUInt8 tryCount=0);
    
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
	TTErr SendDiscoverAllRequest(TTSymbol to, TTAddress address,
                                 TTNodePtr node,
                                 TTUInt8 tryCount=0);
	
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
	TTErr SendGetRequest(TTSymbol to, TTAddress address, 
						 TTValue& returnedValue,
                         TTUInt8 tryCount=0);
	
	/*!
	 * Send a set request to set a value of a specific application
	 *
	 * \param to					: the application where to set
	 * \param address				: the address to set
	 * \param value					: anything to send
     * \param tryCount              : number of try for this request
	 * \return errorcode			: kTTErrNone means the answer has been received, kTTErrValueNotFound means something is bad in the request
	 */
	TTErr SendSetRequest(TTSymbol to, TTAddress address, 
						 TTValue& value,
                         TTUInt8 tryCount=0);
	
	/*!
	 * Send a listen request to a specific application
	 *
	 * \param to					: the application where to listen
	 * \param address				: the address to listen
	 * \param attribute				: the attribute to listen
	 * \param enable				: enable/disable the listening
     * \param tryCount              : number of try for this request
	 * \return errorcode			: kTTErrNone means the answer has been received, kTTErrValueNotFound means something is bad in the request
	 */
	TTErr SendListenRequest(TTSymbol to, TTAddress address, 
							TTBoolean enable,
                            TTUInt8 tryCount=0);
	
	
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
	 * Send a discover answer to a application which ask for.
	 *
	 * \param to					: the application where to send answer
	 * \param address				: the address where comes from the description
     * \param node                  : the node for this address
	 */
	TTErr SendDiscoverAllAnswer(TTSymbol to, TTAddress address,
                                TTNodePtr node,
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
