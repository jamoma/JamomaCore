/** @file
 *
 * @ingroup modularLibrary
 *
 * @brief A Protocol interface
 *
 * @details
 *
 * @authors Laurent Garnier, Théo de la Hogue
 *
 * @copyright © 2011, Laurent Garnier, Théo de la Hogue @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#ifndef __PROTOCOL_H__
#define __PROTOCOL_H__

#include "TTFoundationAPI.h"

#define PROTOCOL_CONSTRUCTOR \
TTObjectBasePtr thisTTClass :: instantiate (TTSymbol name, TTValue arguments) {return new thisTTClass (arguments);} \
\
extern "C" void thisTTClass :: registerClass () {TTClassRegister( TTSymbol(thisTTClassName), thisTTClassTags, thisTTClass :: instantiate );} \
\
thisTTClass :: thisTTClass (const TTValue& arguments) : Protocol(arguments)

#define PROTOCOL_INITIALIZE \
mName = TTSymbol(thisTTClassName); \
mVersion = TTSymbol(thisProtocolVersion); \
mAuthor = TTSymbol(thisProtocolAuthor); \
mGet = TTBoolean(thisProtocolGet); \
mSet = TTBoolean(thisProtocolSet); \
mListen = TTBoolean(thisProtocolListen); \
mDiscover = TTBoolean(thisProtocolDiscover); \
mDiscoverAll = TTBoolean(thisProtocolDiscoverAll); \
registerAttribute(TTSymbol("ParameterNames"), kTypeLocalValue, NULL, (TTGetterMethod)& thisTTClass::getParameterNames); \
/*addAttributeProperty(ParameterNames, readOnly, YES); \ */


// Macro to update and get the local application name (to use only inside the protocol class)
#define protocolGetLocalApplicationName ProtocolGetLocalApplicationName(TTObjectBasePtr(this))

/****************************************************************************************************/
// Class Specification

/**	Protocol is the base class for all protocol protocol.
 It still has knowledge and support for ...
 */
class Protocol : public TTObjectBase {
	
protected:																																	
	TTObjectBasePtr				mApplicationManager;				///< the application manager of the Modular framework.					
																	///< protocol programmers should not have to deal with this member.
	
	TTCallbackPtr				mActivityInCallback;				///< a callback to trace raw incoming messages.
	TTCallbackPtr				mActivityOutCallback;				///< a callback to trace raw outputing messages.

    TTHash                      mLocalApplicationParameter;         ///< ATTRIBUTE : hash table of parameters
	TTHash                      mDistantApplicationParameters;		///< ATTRIBUTE : hash table containing hash table of parameters
																	///< for each application registered for communication with this protocol
																	///< <TTSymbol applicationName, <TTSymbol parameterName, TTValue value>>
public:																															
	TTSymbol					mName;								///< ATTRIBUTE : the name of the protocol to use							
	TTSymbol					mVersion;							///< ATTRIBUTE : the version of the protocol								
	TTSymbol					mAuthor;							///< ATTRIBUTE : the author of the protocol
    TTBoolean					mGet;                               ///< ATTRIBUTE : is the Protocol allows to send get request ?
    TTBoolean					mSet;                               ///< ATTRIBUTE : is the Protocol allows to send set request ?
	TTBoolean					mListen;                            ///< ATTRIBUTE : is the Protocol allows to send listen request ?
	TTBoolean					mDiscover;                          ///< ATTRIBUTE : is the Protocol allows to send discover request ?
    TTBoolean					mDiscoverAll;                       ///< ATTRIBUTE : is the Protocol allows to send discover all request ?
	TTBoolean					mRunning;							///< ATTRIBUTE : is the Protocol reception thread enable ?
	TTBoolean					mActivity;							///< ATTRIBUTE : is the Protocol activity thread enable ?

	
public:
	//** Constructor.	*/
	Protocol(const TTValue& arguments);
	
	/** Destructor. */
	virtual ~Protocol();
	
	/** Set application manager */
	TTErr setApplicationManager(const TTValue& value);
	
	/** Get parameters names needed by this protocol */
	virtual TTErr getParameterNames(TTValue& value)=0;
	
	
	/** Register an application as a client of the protocol 
        This method allocate a TTHashPtr to store parameters */
	TTErr registerApplication(const TTValue& inputValue, TTValue& outputValue);
	
	/** Unregister an application as a client of the protocol 
        This method deallocate a TTHashPtr used to store parameters */
	TTErr unregisterApplication(const TTValue& inputValue, TTValue& outputValue);
	
    
	/** Get all parameters of an application via a TTHash */
	TTErr getApplicationParameters(TTValue& value);
	
	/** Set all parameters of an application using a TTHash */
	TTErr setApplicationParameters(TTValue& value);

	
	/** Get all names of distant applications */
	TTErr getDistantApplicationNames(TTValue& value);
	

	/** Is an application registered for this protocol ? */
	TTErr isRegistered(const TTValue& inputValue, TTValue& outputValue);
	
	
	/** Scan to find remote applications and add them to the application manager */
	virtual TTErr Scan()=0;
	
	/*! 
     * Run reception thread mechanism for each application
     * \param inputValue			: the application to run (default the local application)
	 * \param outputValue			: nothing
     * \return errorcode			: return a kTTErrGeneric if the protocol fails to start for the application or if it was running already
     */
	virtual TTErr Run(const TTValue& inputValue, TTValue& outputValue)=0;
	
	/*!
     * Stop the reception thread mechanism for each application
     * \param inputValue			: the application to stop (default the local application)
	 * \param outputValue			: nothing
     * \return errorcode			: return a kTTErrGeneric if the protocol fails to stop for the application or if it was already stopped
     */
	virtual TTErr Stop(const TTValue& inputValue, TTValue& outputValue)=0;
	
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
	 * \param returnedAttributes	: all attributes of the node at the address
     * \param tryCount              : number of try for this request
	 * \return errorcode			: kTTErrNone means the answer has been received, kTTErrValueNotFound means something is bad in the request
	 else it returns kTTErrGeneric if no answer or timeout
	 */
	virtual TTErr SendDiscoverRequest(TTSymbol to, TTAddress address,
                                      TTSymbol& returnedType,
									  TTValue& returnedChildren,
									  TTValue& returnedAttributes,
                                      TTUInt8 tryCount=0)=0;
    
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
	virtual TTErr SendDiscoverAllRequest(TTSymbol to, TTAddress address,
                                         TTNodePtr node,
                                         TTUInt8 tryCount=0)=0;
	
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
	virtual TTErr SendGetRequest(TTSymbol to, TTAddress address, 
								 TTValue& returnedValue,
                                 TTUInt8 tryCount=0)=0;
	
	/*!
	 * Send a set request to set a value of a specific application
	 *
	 * \param to					: the application where to set
	 * \param address				: the address to set
	 * \param value					: anything to send
     * \param tryCount              : number of try for this request
	 * \return errorcode			: kTTErrNone means the answer has been received, kTTErrValueNotFound means something is bad in the request
	 */
	virtual TTErr SendSetRequest(TTSymbol to, TTAddress address, 
								 TTValue& value,
                                 TTUInt8 tryCount=0)=0;
	
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
	virtual TTErr SendListenRequest(TTSymbol to, TTAddress address, 
									TTBoolean enable,
                                    TTUInt8 tryCount=0)=0;
	
	
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
	virtual TTErr SendDiscoverAnswer(TTSymbol to, TTAddress address,
                                     TTSymbol& returnedType,
									 TTValue& returnedChildren,
									 TTValue& returnedAttributes,
									 TTErr err=kTTErrNone)=0;
    
    /*!
	 * Send a discover answer to a application which ask for.
	 *
	 * \param to					: the application where to send answer
	 * \param address				: the address where comes from the description
     * \param node                  : the node for this address
	 */
	virtual TTErr SendDiscoverAllAnswer(TTSymbol to, TTAddress address,
                                        TTNodePtr node,
                                        TTErr err=kTTErrNone)=0;
	
	/*!
	 * Send a get answer to a application which ask for.
	 *
	 * \param to					: the application where to send answer
	 * \param address				: the address where comes from the value
	 * \param returnedValue			: the value of the attribute at the address
	 */
	virtual TTErr SendGetAnswer(TTSymbol to, TTAddress address, 
								TTValue& returnedValue,
								TTErr err=kTTErrNone)=0;
	
	/*!
	 * Send a listen answer to a application which ask for.
	 *
	 * \param to					: the application where to send answer
	 * \param address				: the address where comes from the value
	 * \param returnedValue			: the value of the attribute at the address
	 */
	virtual TTErr SendListenAnswer(TTSymbol to, TTAddress address, 
								   TTValue& returnedValue,
								   TTErr err=kTTErrNone)=0;
	
	/**************************************************************************************************************************
	 *
	 *	RECEIVE REQUEST METHODS (BUILT-IN METHODS)
	 *
	 **************************************************************************************************************************/
	
	/*!
	 * Notify the protocol that an application ask for a namespace description
	 *
	 * !!! This a built-in protocol method which sends automatically the answer (or a notification if error)
	 *
	 * \param from					: the application where comes from the request
	 * \param address				: the address the application wants to discover
	 */
	TTErr ReceiveDiscoverRequest(TTSymbol from, TTAddress address);
    
    /*!
	 * Notify the protocol that an application ask for a namespace description
	 *
	 * !!! This a built-in protocol method which sends automatically the answer (or a notification if error)
	 *
	 * \param from					: the application where comes from the request
	 * \param address				: the address the application wants to discover
	 */
	TTErr ReceiveDiscoverAllRequest(TTSymbol from, TTAddress address);
	
	/*!
	 * Notify the protocol that an application ask for value
	 *
	 * !!! This a built-in protocol method which sends automatically the answer (or a notification if error)
	 *
	 * \param from					: the application where comes from the request
	 * \param address				: the address the application wants to get
	 */
	TTErr ReceiveGetRequest(TTSymbol from, TTAddress address);
	
	/*!
	 * Notify the protocol that an application wants to set value
	 *
	 * !!! This a built-in protocol method which set automatically the value (or send a notification if error)
	 *
	 * \param from					: the application where comes from the request
	 * \param address				: the address the application wants to get
	 * \param newValue				: the incoming value
	 */
	TTErr ReceiveSetRequest(TTSymbol from, TTAddress address, TTValue& newValue);
	
	/*!
	 * Notify the protocol that an application wants to listen (or not) the namespace
	 *
	 * !!! This a built-in protocol method which create/remove automatically the listener (or send a notification if error)
	 *
	 * \param from					: the application where comes from the request
	 * \param address				: the address the application wants to listen
	 * \param enable				: enable/disable the listening
	 */
	TTErr ReceiveListenRequest(TTSymbol from, TTAddress address, TTBoolean enable);
	
	/**************************************************************************************************************************
	 *
	 *	RECEIVE ANSWER METHODS : each protocol deals with answers when it send a request except for listening mechanism
	 *							note : maybe we could add a listen answer manager because each protocol have to remember 
	 *							which listen requests has been done (?)
	 *
	 **************************************************************************************************************************/
	
	/*!
	 * Notify the protocol that an application answers to a listen request
	 *
	 * !!! This a built-in protocol method notify automatically the listener (or send a notification if error)
	 *
	 * \param from					: the application where comes from the answer
	 * \param address				: the address where comes from the answer
	 * \param newValue				: the answered value
	 */
	TTErr ReceiveListenAnswer(TTSymbol from, TTAddress address, TTValue& newValue);
	
	/**************************************************************************************************************************
	 *
	 *	ACTIVITY METHOD : a set of built-in methods to report raw incoming or outputing messages to the manager
	 *
	 **************************************************************************************************************************/
	
	/*!
	 * Notify the protocol that a message is arriving
	 *
	 * !!! This a built-in protocol method
	 *
	 * \param message				: an incoming message
	 */
	TTErr ActivityInMessage(const TTValue& message);
	
	/*!
	 * Notify the protocol that a message is outputing
	 *
	 * !!! This a built-in protocol method
	 *
	 * \param message				: an outputing message
	 */
	TTErr ActivityOutMessage(const TTValue& message);
	
	
	
	friend TTErr TT_EXTENSION_EXPORT ProtocolDirectoryCallback(TTPtr baton, TTValue& data);
	friend TTErr TT_EXTENSION_EXPORT ProtocolAttributeCallback(TTPtr baton, TTValue& data);
	
	friend TTErr TT_EXTENSION_EXPORT ProtocolGetAttributeCallback(TTPtr baton, TTValue& data);
	friend TTErr TT_EXTENSION_EXPORT ProtocolSetAttributeCallback(TTPtr baton, TTValue& data);
	friend TTErr TT_EXTENSION_EXPORT ProtocolSendMessageCallback(TTPtr baton, TTValue& data);
	friend TTErr TT_EXTENSION_EXPORT ProtocolListenAttributeCallback(TTPtr baton, TTValue& data);
	
	friend TTSymbol TT_EXTENSION_EXPORT ProtocolGetLocalApplicationName(TTPtr aProtocol);

};
typedef Protocol* ProtocolPtr;

/**	Called when an application directory send a 
 notification to registered application observers
 @param	baton						..
 @param	data						..
 @return							an error code */
TTErr TT_EXTENSION_EXPORT ProtocolDirectoryCallback(TTPtr baton, TTValue& data);

/**	Called when an application object attribute send a 
 notification to registered application observers
 @param	baton						..
 @param	data						..
 @return							an error code */
TTErr TT_EXTENSION_EXPORT ProtocolAttributeCallback(TTPtr baton, TTValue& data);

/**	
 @param	baton						..
 @param	data						..
 @return							an error code */
TTErr TT_EXTENSION_EXPORT ProtocolGetAttributeCallback(TTPtr baton, TTValue& data);

/**	
 @param	baton						..
 @param	data						..
 @return							an error code */
TTErr TT_EXTENSION_EXPORT ProtocolSetAttributeCallback(TTPtr baton, TTValue& data);

/**	
 @param	baton						..
 @param	data						..
 @return							an error code */
TTErr TT_EXTENSION_EXPORT ProtocolSendMessageCallback(TTPtr baton, TTValue& data);

/**	
 @param	baton						..
 @param	data						..
 @return							an error code */
TTErr TT_EXTENSION_EXPORT ProtocolListenAttributeCallback(TTPtr baton, TTValue& data);

/** Get the current name of the local application
 @param	aProtocol					..
 @return							the name of the local application */
TTSymbol TT_EXTENSION_EXPORT ProtocolGetLocalApplicationName(TTPtr aProtocol);

#endif	//__PROTOCOL_H__

#ifndef __PROTOCOLLIB_H__
#define __PROTOCOLLIB_H__

class TT_EXTENSION_EXPORT ProtocolLib {
public:
	/** Instantiate a protocol by name */
	static TTErr createProtocol(const TTSymbol protocolName, ProtocolPtr *returnedProtocol, TTObjectBasePtr manager, TTCallbackPtr activityInCallback, TTCallbackPtr activityOutCallback);
	
	/**	Return a list of all available protocols. */
	static void getProtocolNames(TTValue& protocolNames);
};

#endif	//__PROTOCOLLIB_H__
