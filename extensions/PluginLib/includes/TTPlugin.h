/*
 * Jamoma Plugin Library
 * Copyright © 2007
 *
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TTPLUGIN_H__
#define __TTPLUGIN_H__

#include "TTPluginLib.h"

class TTApplicationManager;
typedef TTApplicationManager* TTApplicationManagerPtr;

class TTApplication;
typedef TTApplication* TTApplicationPtr;

// Macros used to declare default accessors and messages
#define TTPLUGIN_SETUP														\
	public:																	\
		TTErr setParameters(const TTValue& value);							\
		TTErr Run();														\
		TTErr applicationSendDiscoverAnswer(TTApplicationPtr to, TTSymbolPtr address,	\
											TTValue& returnedNodes,						\
											TTValue& returnedLeaves,					\
											TTValue& returnedAttributes);				\
		TTErr applicationSendGetAnswer(TTApplicationPtr to, TTSymbolPtr address,		\
										TTSymbolPtr attribute,							\
										TTValue& returnedValue);						\
		TTErr applicationSendListenAnswer(TTApplicationPtr to, TTSymbolPtr address,		\
											TTSymbolPtr attribute,						\
											TTValue& returnedValue);					\


// Macros used to register default attribute and message of a plugin object
#define TTPLUGIN_INTERFACE													\
			addAttribute(Name, kTypeSymbol);								\
			addAttribute(Version, kTypeSymbol);								\
			addAttribute(Exploration, kTypeBoolean);						\
																			\
			addAttributeWithSetter(Parameters, kTypePointer);				\
			addAttributeWithGetter(ParameterNames, kTypeLocalValue);		\
			addAttributeProperty(parameterNames, readOnly, YES);			\
																			\
			addAttributeWithGetterAndSetter(ApplicationManager, kTypePointer);\
																			\
			addMessage(Run);												\
			
/****************************************************************************************************/
// Class Specification

class TTPlugin {
	
public:
	TTSymbolPtr					mName;					///< ATTRIBUTE : the name of the plugin
	TTSymbolPtr					mVersion;				///< ATTRIBUTE : the version of the plugin
	TTBoolean					mExploration;			///< ATTRIBUTE : is the Plugin provide namespace exploration features ?
	
	TTHashPtr					mParameters;			///< ATTRIBUTE : hash table containing reception thread parameter names and values
														///< <TTSymbolPtr parameterName, TTValue value>
	
	TTValue						mParameterNames;		///< ATTRIBUTE : all parameter names
	
	TTObjectPtr					mApplicationManager;	///< The application manager
	
	TTPlugin();
	virtual ~TTPlugin();
	
	/** Get all parameter names */
	TTErr getParameterNames(TTValue& value);
	
	/** A plugin need to know the ApplicationManager to access it methods */
	TTErr setApplicationManager(const TTValue& value);
	TTErr getApplicationManager(TTValue& value);
	
	/** Set reception thread mechanism parameters <TTHashPtr parameters> */
	virtual TTErr setParameters(const TTValue& value)=0;
	
	/** Run reception thread mechanism */
	virtual TTErr Run()=0;
	
	/**************************************************************************************************************************
	 *
	 *	SEND ANSWER METHODS
	 *
	 **************************************************************************************************************************/
	
	/*!
	 * Send a disover answer to a application which ask for.
	 *
	 * \param to : the application where to send answer
	 * \param address : the address where comes from the description
	 * \param returnedNodes : the description of nodes below the address
	 * \param returnedLeaves : the description of leaves below the address
	 * \param returnedAttributes : the description of attributes at the address
	 */
	virtual TTErr applicationSendDiscoverAnswer(TTApplicationPtr to, TTSymbolPtr address,
												TTValue& returnedNodes,
												TTValue& returnedLeaves,
												TTValue& returnedAttributes)=0;
	
	/*!
	 * Send a get answer to a application which ask for.
	 *
	 * \param to : the application where to send answer
	 * \param address : the address where comes from the value
	 * \param attribute : the attribute where comes from the value
	 * \param returnedValue : the value of the attribute at the address
	 */
	virtual TTErr applicationSendGetAnswer(TTApplicationPtr to, TTSymbolPtr address,
										   TTSymbolPtr attribute, 
										   TTValue& returnedValue)=0;
	
	/*!
	 * Send a listen answer to a application which ask for.
	 *
	 * \param to : the application where to send answer
	 * \param address : the address where comes from the value
	 * \param attribute : the attribute where comes from the value
	 * \param returnedValue : the value of the attribute at the address
	 */
	virtual TTErr applicationSendListenAnswer(TTApplicationPtr to, TTSymbolPtr address,
											  TTSymbolPtr attribute, 
											  TTValue& returnedValue)=0;
	
	/**************************************************************************************************************************
	 *
	 *	RECEIVE REQUEST METHODS (BUILT-IN METHODS)
	 *
	 **************************************************************************************************************************/
	
	/*!
	 * Notify the plugin that a application ask for a namespace description
	 *
	 * !!! This a built-in plugin method which sends automatically the answer (or a notification if error)
	 *
	 * \param from : the application where comes from the request
	 * \param address : the address the application wants to discover
	 */
	void applicationReceiveDiscoverRequest(TTApplicationPtr from, TTSymbolPtr address) 
	{
		TTValue returnedNodes;
		TTValue returnedLeaves;
		TTValue returnedAttributes;
		
		// discover the local namespace
//		if (mApplicationManager != NULL)
//			TTApplicationManagerLocalApplicationDiscover(address, returnedNodes, returnedLeaves, returnedAttributes);
		
		// TODO : test error and send notification if error
		
		// send result
		applicationSendDiscoverAnswer(from, address, returnedNodes, returnedLeaves, returnedAttributes);
	}
	
	/*!
	 * Notify the plugin that a application ask for value
	 *
	 * !!! This a built-in plugin method which sends automatically the answer (or a notification if error)
	 *
	 * \param from : the application where comes from the request
	 * \param address : the address the application wants to get
	 * \param attribute : the attribute the application wants to get
	 */
	void applicationReceiveGetRequest(TTApplicationPtr from, TTSymbolPtr address, TTSymbolPtr attribute)
	{
		TTValue returnedValue;
		
		// get the value from the local namespace
//		if (mApplicationManager != NULL)
//			TTApplicationManagerLocalApplicationGet(address, attribute, returnedValue);
		
		// TODO : test error and send notification if error
		
		// send result
		applicationSendGetAnswer(from, address, attribute, returnedValue);
	}
	
	/*!
	 * Notify the plugin that a application wants to set value
	 *
	 * !!! This a built-in plugin method which set automatically the value (or send a notification if error)
	 *
	 * \param from : the application where comes from the request
	 * \param address : the address the application wants to get
	 * \param attribute : the attribute the application wants to get
	 */
	void applicationReceiveSetRequest(TTApplicationPtr from, TTSymbolPtr address, TTSymbolPtr attribute, TTValue& newValue) 
	{
		// set the value of the local namespace
//		if (mApplicationManager != NULL)
//			TTApplicationManagerLocalApplicationSet(address, attribute, newValue);
		
		// TODO : test error and send notification if error
	}
	
	/*!
	 * Notify the plugin that a application wants to listen (or not) the namespace
	 *
	 * !!! This a built-in plugin method which create/remove automatically the listener (or send a notification if error)
	 *
	 * \param from : the application where comes from the request
	 * \param address : the address the application wants to listen
	 * \param attribute : the attribute the application wants to listen
	 * \param enable : enable/disable the listening
	 */
	void applicationReceiveListenRequest(TTApplicationPtr from, TTSymbolPtr address, TTSymbolPtr attribute, TTBoolean enable) 
	{
		// Enable/disable the listening of the attribute at the address
//		if (mApplicationManager != NULL)
//			TTApplicationManagerLocalApplicationListen(from, address, attribute, enable);
		
		// TODO : test error and send notification if error
	}
	
	/**************************************************************************************************************************
	 *
	 *	RECEIVE ANSWER METHODS : No methods because each plugin deals with answers when it send a request (maybe we could add an answer manager)
	 *
	 **************************************************************************************************************************/

};

typedef TTPlugin* TTPluginPtr;


#endif // __TTPLUGIN_H__
