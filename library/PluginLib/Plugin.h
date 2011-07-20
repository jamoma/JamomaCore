/*
 * A Plugin interface
 * Copyright © 2011, Laurent Garnier, Théo de la Hogue
 *
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __PLUGIN_H__
#define __PLUGIN_H__

#include "TTFoundationAPI.h"

#define PLUGIN_CONSTRUCTOR \
TTObjectPtr thisTTClass :: instantiate (TTSymbolPtr name, TTValue& arguments) {return new thisTTClass (arguments);} \
\
extern "C" void thisTTClass :: registerClass () {TTClassRegister( TT(thisTTClassName), thisTTClassTags, thisTTClass :: instantiate );} \
\
thisTTClass :: thisTTClass (TTValue& arguments) : Plugin(arguments)

#define PLUGIN_INITIALIZE \
registerAttribute(TT("parameterNames"), kTypeLocalValue, NULL, (TTGetterMethod)& thisTTClass::getParameterNames); \
addAttributeProperty(parameterNames, readOnly, YES); \
mName = TT(thisTTClassName); \
mVersion = TT(thisPluginVersion); \
mAuthor = TT(thisPluginAuthor); \
mExploration = TT(thisPluginExploration); \


/****************************************************************************************************/
// Class Specification

/**	Plugin is the base class for all protocol plugin.
 It still has knowledge and support for ...
 */
class Plugin : public TTObject {
	
protected:																																	
	TTObjectPtr					mApplicationManager;				///< the application manager of the Modular framework.					
																	///< plugin programmers should not have to deal with this member.
	
	TTSymbolPtr					mLocalApplicationName;				///< the name of the local application
	
	TTHashPtr					mDistantApplicationParameters;		///< ATTRIBUTE : hash table containing hash table of parameters 
																	///< for each application registered for communication with this plugin
																	///< <TTSymbolPtr applicationName, <TTSymbolPtr parameterName, TTValue value>>
public:																															
	TTSymbolPtr					mName;								///< ATTRIBUTE : the name of the plugin to use							
	TTSymbolPtr					mVersion;							///< ATTRIBUTE : the version of the plugin								
	TTSymbolPtr					mAuthor;							///< ATTRIBUTE : the author of the plugin								
	TTBoolean					mExploration;						///< ATTRIBUTE : is the Plugin provide namespace exploration features ?
	TTBoolean					mRunning;							///< ATTRIBUTE : is the Plugin reception thread enable ?					
	
public:
	//** Constructor.	*/
	Plugin(TTValue& arguments);
	
	/** Destructor. */
	virtual ~Plugin();
	
	/** Set application manager */
	TTErr setApplicationManager(const TTValue& value);
	
	/** Get parameters names needed by this plugin */
	virtual TTErr getParameterNames(TTValue& value)=0;
	
	
	
	/** Register an application as the local client */
	TTErr registerLocalApplication(TTValue& value);
	
	/** Unregister an application as the local client */
	TTErr unregisterLocalApplication(TTValue& value);
	
	/** Get the name of the local application */
	TTErr getLocalApplicationName(TTValue& value);
	
	/** Get all parameters of the local application via a TTHash 
		!!! this method allocate a hashtable !!! */
	TTErr getLocalApplicationParameters(TTValue& value);
	
	/** Set all parameters of the local application using a TTHash */
	TTErr setLocalApplicationParameters(TTValue& value);
	

	
	/** Register an application as a distant client */
	TTErr registerDistantApplication(TTValue& value);
	
	/** Unregister an application as a distant client */
	TTErr unregisterDistantApplication(TTValue& value);
	
	/** Get all names of distant applications */
	TTErr getDistantApplicationNames(TTValue& value);
	
	/** Get all parameters of a distant application via a TTHash using <applicationName> value */
	TTErr getDistantApplicationParameters(TTValue& value);
	
	/** Set all parameters of a distant application using <applicationName, TTHashPtr> value */
	TTErr setDistantApplicationParameters(TTValue& value);
	

	
	/** Scan to find remote applications and add them to the application manager */
	virtual TTErr Scan()=0;
	
	/** Run reception thread mechanism */
	virtual TTErr Run()=0;
	
	/** Stop the reception thread mechanism of the plugin */
	virtual TTErr Stop()=0;
	
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
	virtual TTErr SendDiscoverRequest(TTSymbolPtr to, TTNodeAddressPtr address, 
									  TTValue& returnedChildrenNames,
									  TTValue& returnedChildrenTypes,
									  TTValue& returnedAttributes)=0;
	
	/*!
	 * Send a get request to an application to get a value at the given address
	 *
 	 * \param to					: the application where to get
	 * \param address				: the address to get
	 * \param returnedValue			: the value which is going to be filled
	 * \return errorcode			: kTTErrNone means the answer has been received, kTTErrValueNotFound means something is bad in the request
	 else it returns kTTErrGeneric if no answer or timeout
	 */
	virtual TTErr SendGetRequest(TTSymbolPtr to, TTNodeAddressPtr address, 
								 TTValue& returnedValue)=0;
	
	/*!
	 * Send a set request to set a value of a specific application
	 *
	 * \param to					: the application where to set
	 * \param address				: the address to set
	 * \param value					: anything to send
	 * \return errorcode			: kTTErrNone means the answer has been received, kTTErrValueNotFound means something is bad in the request
	 */
	virtual TTErr SendSetRequest(TTSymbolPtr to, TTNodeAddressPtr address, 
								 TTValue& value)=0;
	
	/*!
	 * Send a listen request to a specific application
	 *
	 * \param to					: the application where to listen
	 * \param address				: the address to listen
	 * \param attribute				: the attribute to listen
	 * \param enable				: enable/disable the listening
	 * \return errorcode			: kTTErrNone means the answer has been received, kTTErrValueNotFound means something is bad in the request
	 */
	virtual TTErr SendListenRequest(TTSymbolPtr to, TTNodeAddressPtr address, 
									TTBoolean enable)=0;
	
	
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
	 * \param returnedChildrenNames : all names of nodes below the address
	 * \param returnedChildrenTypes : all types of nodes below the address(default is none which means no type)
	 * \param returnedAttributes	: all attributes the node at the address
	 */
	virtual TTErr SendDiscoverAnswer(TTSymbolPtr to, TTNodeAddressPtr address,
									 TTValue& returnedChildrenNames,
									 TTValue& returnedChildrenTypes,
									 TTValue& returnedAttributes,
									 TTErr err=kTTErrNone)=0;
	
	/*!
	 * Send a get answer to a application which ask for.
	 *
	 * \param to					: the application where to send answer
	 * \param address				: the address where comes from the value
	 * \param returnedValue			: the value of the attribute at the address
	 */
	virtual TTErr SendGetAnswer(TTSymbolPtr to, TTNodeAddressPtr address, 
								TTValue& returnedValue,
								TTErr err=kTTErrNone)=0;
	
	/*!
	 * Send a listen answer to a application which ask for.
	 *
	 * \param to					: the application where to send answer
	 * \param address				: the address where comes from the value
	 * \param returnedValue			: the value of the attribute at the address
	 */
	virtual TTErr SendListenAnswer(TTSymbolPtr to, TTNodeAddressPtr address, 
								   TTValue& returnedValue,
								   TTErr err=kTTErrNone)=0;
	
	/**************************************************************************************************************************
	 *
	 *	RECEIVE REQUEST METHODS (BUILT-IN METHODS)
	 *
	 **************************************************************************************************************************/
	
	/*!
	 * Notify the plugin that an application ask for a namespace description
	 *
	 * !!! This a built-in plugin method which sends automatically the answer (or a notification if error)
	 *
	 * \param from					: the application where comes from the request
	 * \param address				: the address the application wants to discover
	 */
	TTErr ReceiveDiscoverRequest(TTSymbolPtr from, TTNodeAddressPtr address);
	
	/*!
	 * Notify the plugin that an application ask for value
	 *
	 * !!! This a built-in plugin method which sends automatically the answer (or a notification if error)
	 *
	 * \param from					: the application where comes from the request
	 * \param address				: the address the application wants to get
	 */
	TTErr ReceiveGetRequest(TTSymbolPtr from, TTNodeAddressPtr address);
	
	/*!
	 * Notify the plugin that an application wants to set value
	 *
	 * !!! This a built-in plugin method which set automatically the value (or send a notification if error)
	 *
	 * \param from					: the application where comes from the request
	 * \param address				: the address the application wants to get
	 * \param newValue				: the incoming value
	 */
	TTErr ReceiveSetRequest(TTSymbolPtr from, TTNodeAddressPtr address, TTValue& newValue);
	
	/*!
	 * Notify the plugin that an application wants to listen (or not) the namespace
	 *
	 * !!! This a built-in plugin method which create/remove automatically the listener (or send a notification if error)
	 *
	 * \param from					: the application where comes from the request
	 * \param address				: the address the application wants to listen
	 * \param enable				: enable/disable the listening
	 */
	TTErr ReceiveListenRequest(TTSymbolPtr from, TTNodeAddressPtr address, TTBoolean enable);
	
	/**************************************************************************************************************************
	 *
	 *	RECEIVE ANSWER METHODS : each plugin deals with answers when it send a request except for listening mechanism
	 *							note : maybe we could add a listen answer manager because each plugin have to remember 
	 *							which listen requests has been done (?)
	 *
	 **************************************************************************************************************************/
	
	/*!
	 * Notify the plugin that an application answers to a listen request
	 *
	 * !!! This a built-in plugin method notify automatically the listener (or send a notification if error)
	 *
	 * \param from					: the application where comes from the answer
	 * \param address				: the address where comes from the answer
	 * \param newValue				: the answered value
	 */
	TTErr ReceiveListenAnswer(TTSymbolPtr from, TTNodeAddressPtr address, TTValue& newValue);
	
	
	friend TTErr TT_EXTENSION_EXPORT PluginDirectoryCallback(TTPtr baton, TTValue& data);
	friend TTErr TT_EXTENSION_EXPORT PluginAttributeCallback(TTPtr baton, TTValue& data);
	
	friend TTErr TT_EXTENSION_EXPORT PluginGetAttributeCallback(TTPtr baton, TTValue& data);
	friend TTErr TT_EXTENSION_EXPORT PluginSetAttributeCallback(TTPtr baton, TTValue& data);
	friend TTErr TT_EXTENSION_EXPORT PluginSendMessageCallback(TTPtr baton, TTValue& data);
	friend TTErr TT_EXTENSION_EXPORT PluginListenAttributeCallback(TTPtr baton, TTValue& data);

};
typedef Plugin* PluginPtr;

/**	Called when an application directory send a 
 notification to registered application observers
 @param	baton						..
 @param	data						..
 @return							an error code */
TTErr TT_EXTENSION_EXPORT PluginDirectoryCallback(TTPtr baton, TTValue& data);

/**	Called when an application object attribute send a 
 notification to registered application observers
 @param	baton						..
 @param	data						..
 @return							an error code */
TTErr TT_EXTENSION_EXPORT PluginAttributeCallback(TTPtr baton, TTValue& data);

/**	
 @param	baton						..
 @param	data						..
 @return							an error code */
TTErr TT_EXTENSION_EXPORT PluginGetAttributeCallback(TTPtr baton, TTValue& data);

/**	
 @param	baton						..
 @param	data						..
 @return							an error code */
TTErr TT_EXTENSION_EXPORT PluginSetAttributeCallback(TTPtr baton, TTValue& data);

/**	
 @param	baton						..
 @param	data						..
 @return							an error code */
TTErr TT_EXTENSION_EXPORT PluginSendMessageCallback(TTPtr baton, TTValue& data);

/**	
 @param	baton						..
 @param	data						..
 @return							an error code */
TTErr TT_EXTENSION_EXPORT PluginListenAttributeCallback(TTPtr baton, TTValue& data);

#endif	//__PLUGIN_H__

#ifndef __PLUGINLIB_H__
#define __PLUGINLIB_H__

class TT_EXTENSION_EXPORT PluginLib {
public:
	/** Instantiate a plugin by name */
	static TTErr createPlugin(const TTSymbolPtr pluginName, PluginPtr *returnedPlugin, TTObjectPtr manager);
	
	/**	Return a list of all available plugins. */
	static void getPluginNames(TTValue& pluginNames);
};

#endif	//__PLUGINLIB_H__
