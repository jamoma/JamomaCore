/** 
 * @file WebSocket.h
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


#ifndef __WEBSOCKET_H__
#define __WEBSOCKET_H__

#include "TTProtocol.h"
#include "WebSocketInclude.h"
#include "WebSocketAnswerManager.h"
#include "WebSocketSenderManager.h"

class WebSocketAnswerManager;
typedef WebSocketAnswerManager* WebSocketAnswerManagerPtr;

class WebSocketSenderManager;
typedef WebSocketSenderManager* WebSocketSenderManagerPtr;

/**	
 * Create a web socket plugin.
 */

class WebSocket : public TTProtocol {
	
	TTCLASS_SETUP(WebSocket)
	
private:
	
	TT_PROTOCOL_PARAMETER(Port);					///< PROTOCOL PARAMETER : each registered application have to setup its port
    TT_PROTOCOL_PARAMETER(HtmlPath);				///< PROTOCOL PARAMETER : each registered application have to setup its html path
    
	TTObject                mWebSocketReceive;
    TTThreadPtr             mWaitThread;        ///< a thread used to wait in some case
	
	WebSocketAnswerManagerPtr	mAnswerManager;
    WebSocketSenderManagerPtr	mSenderManager;
    
	TTErr sendMessage(TTSymbol distantApplicationName, TTSymbol localApplicationName, TTSymbol operation, JSONNode* jsonNode);
	TTErr receivedMessage(const TTValue& message, TTValue& outputValue);
    
    /** Get osc address string from a json string */
	TTErr parseJSON(const JSONNode &n, TTString address, TTValue& value);
	
	/** Scan to find remote applications and add them to the application manager
     * \param inputValue			: anything needed for scanning
	 * \param outputValue			: all remote application name
     * \return errorcode			: return a kTTErrGeneric if the protocol fails to start or if it was running already
     */
	TTErr Scan(const TTValue& inputValue, TTValue& outputValue);
	
	/*!
     * Run reception thread mechanism for the local application only
     * \param inputValue			: kTTValNONE
	 * \param outputValue			: kTTValNONE
     * \return errorcode			: return a kTTErrGeneric if the protocol fails to start or if it was running already
     */
	TTErr Run(const TTValue& inputValue, TTValue& outputValue);
	
    /*!
     * Stop the reception thread mechanism for the local application only
     * \param inputValue			: kTTValNONE
	 * \param outputValue			: kTTValNONE
     * \return errorcode			: return a kTTErrGeneric if the protocol fails to stop or if it was already stopped
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
	 * Send a discover all answer to a application which ask for.
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
						const TTValue& returnedValue,
						TTErr err=kTTErrNone);
	
	/*!
	 * Send a listen answer to a application which ask for.
	 *
	 * \param to					: the application where to send answer
	 * \param address				: the address where comes from the value
	 * \param returnedValue			: the value of the attribute at the address
	 */
	TTErr SendListenAnswer(TTSymbol to, TTAddress address, 
						   const TTValue& returnedValue,
						   TTErr err=kTTErrNone);
	
};
typedef WebSocket* WebSocketPtr;

#endif // __WEBSOCKET_H__
