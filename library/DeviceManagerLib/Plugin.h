/* 
 * A Plugin interface
 * Copyright © 2011, Laurent Garnier
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */


class TTApplicationManager;
typedef TTApplicationManager* TTApplicationManagerPtr;

class TTApplication;
typedef TTApplication* TTApplicationePtr;

#ifndef __PLUGIN_H__
#define __PLUGIN_H__

#ifdef TT_PLATFORM_WIN
	#include "windows.h"
	#ifdef PLUGIN_EXPORTS
		#define PLUGIN_EXPORT __declspec(dllexport)
	#else
	#ifdef TTSTATIC
		#define PLUGIN_EXPORT
	#else
		#define PLUGIN_EXPORT __declspec(dllimport)
	#endif
#endif // _DLL_EXPORT

#else // TT_PLATFORM_MAC
	#ifdef PLUGIN_EXPORTS
		#define PLUGIN_EXPORT __attribute__((visibility("default")))
	#else
		#define PLUGIN_EXPORT
	#endif
#endif


#include "TTModular.h"

//#include <map>

/**	Plugin and PluginFactory are abstract classes, interfaces to develop plugins.
	Every communication plugins developped in the future will have to be implemented according to this model.
 */

class PLUGIN_EXPORT Plugin
{
	
public:

	TTApplicationManagerPtr		mApplicationManager;
	TTHashPtr					mParameters;
	
	//	void (*m_waitedMessageAction)(void*, TTString);
	//	void *m_callBackMessageArgument;
	
	/************************************************
	 PLUGIN METHODS :
	 a set of methods used to handle Plugin.
	 ************************************************/
	
	Plugin() {
		mParameters = new TTHash();
	}

	virtual ~Plugin() {	
		mParameters->clear();
		delete mParameters;
	}
	
	/*!
	 * A plugin need to know the ApplicationManager to access it methods
	 */
	void setApplicationManager(TTApplicationManagerPtr ApplicationManager) {
		mApplicationManager = ApplicationManager;
	}
	
	TTApplicationManagerPtr getApplicationManager() {
		return mApplicationManager;
	}

	/************************************************
	 COMMUNICATION METHODS :
	 a set of methods used to init the communication.
	 note : each method of this set is prepend by 'comm'
	 ************************************************/
	
	/*!
	 * Define the plugins parameters with a TTHash 
	 * Has to be called to instantiate the m_parameter hash table
	 */
	virtual TTErr commDefineParameters(TTHashPtr parameters)=0;
	
	/*!
	 * Run the message reception thread 
	 *
	 */
	virtual TTErr commRunReceivingThread()=0;

	/************************************************
	 APPLICATIONS METHODS :
	 a set of methods used to manage applications
	 note : each method of this set is prepend by 'application'
	 ************************************************/

	/*!
	* Add an distant application communication
	*
	*/
	virtual void applicationAdd(TTSymbolPtr applicationName, 
								TTHashPtr commParameters
							   /*std::map<TTString, TTApplicationPtr> *netApplications*/)=0;

	/*!
	 * Let to know if the specific plugin need namespace request to get a namespace
	 *
	 * \return true if the plugin need or false if not
	 */
	virtual TTBoolean understandDiscoverRequest()=0;

	/**************************************************************************************************************************
	 *
	 *	SEND REQUEST METHODS
	 *
	 **************************************************************************************************************************/
	
	/*!
	 * Send a discover request to a application to get a part of the namespace at the given address
	 *
	 * \param application : a pointer to a Application instance
	 * \param address : something like "/<subApplicationName>/.../<input>"
	 * \param returnedNodes : the TTValue array which is going to be full with the node names at the given address
	 * \param returnedLeaves : the TTValue array which is going to be full with the leaves names at the given address
	 * \param returnedAttributes : the TTValue array which is going to be full with the attributes names at the given address
	 * \return the reception state : TIMEOUT_EXCEEDED ; NO_ANSWER ; ANSWER_RECEIVED
	 */
	virtual TTErr applicationSendDiscoverRequest(TTApplicationPtr application,
												 TTSymbolPtr address,
												 TTValue& returnedNodes,
												 TTValue& returnedLeaves,
												 TTValue& returnedAttributes)=0;
	
	/*!
	 * Send a get request to a application to get a value at the given address
	 *
	 * \param application : a pointer to a Application instance
	 * \param address : something like "/<subApplicationName>/.../<input>"
	 * \param attribute : the asked attribute
	 * \param returnedValue : the TTValue which is going to be full
	 * \return the reception state : TIMEOUT_EXCEEDED ; NO_ANSWER ; ANSWER_RECEIVED
	 */
	virtual TTErr applicationSendGetRequest(TTApplicationPtr application,
											TTSymbolPtr address, TTSymbolPtr attribute,
											TTValue& returnedValue)=0;
	
	/*!
	 * Send a set request to set a value of a specific application
	 *
	 * \param application : a pointer to a TTApplication instance
	 * \param address : something like "/<subApplicationName>/.../<input>"
	 * \param value : anything to send
	 */
	virtual TTErr applicationSendSetRequest(TTApplicationPtr application, 
											TTSymbolPtr address, TTSymbolPtr attribute,
											TTValue& value)=0;
	
	/*!
	 * Send a listen request to a specific application
	 *
	 * \param application : a pointer to a Application instance
	 * \param address : something like "/<subApplicationName>/.../<input>"
	 * \param attribute : the attribute to listen
	 * \param enable : enable/disable the listening
	 */
	virtual TTErr applicationSendListenRequest(TTApplicationPtr application,
											   TTSymbolPtr address, TTSymbolPtr attribute, 
											   bool enable)=0;
	
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
	virtual TTErr applicationSendGetAnswer(TTApplicationPtr to, 
										   TTSymbolPtr address, TTSymbolPtr attribute, 
										   TTValue& returnedValue)=0;
	
	/*!
	 * Send a listen answer to a application which ask for.
	 *
	 * \param to : the application where to send answer
	 * \param address : the address where comes from the value
	 * \param attribute : the attribute where comes from the value
	 * \param returnedValue : the value of the attribute at the address
	 */
	virtual TTErr applicationSendListenAnswer(TTApplicationPtr to, 
											  TTSymbolPtr address, TTSymbolPtr attribute, 
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
		if (mApplicationManager != NULL)
			TTApplicationManagerLocalApplicationDiscover(address, returnedNodes, returnedLeaves, returnedAttributes);

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
		if (mApplicationManager != NULL)
			TTApplicationManagerLocalApplicationGet(address, attribute, returnedValue);
		
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
		if (mApplicationManager != NULL)
			TTApplicationManagerLocalApplicationSet(address, attribute, newValue);
		
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
		if (mApplicationManager != NULL)
			TTApplicationManagerLocalApplicationListen(from, address, attribute, enable);
		
		// TODO : test error and send notification if error
	}
	
	/**************************************************************************************************************************
	 *
	 *	RECEIVE ANSWER METHODS : No methods because each plugin deals with answers when it send a request (maybe we could add an answer manager)
	 *
	 **************************************************************************************************************************/
	
};

typedef Plugin*			PluginPtr;

#endif // __PLUGIN_H__


#ifndef __PLUGIN_FACTORY_H__
#define __PLUGIN_FACTORY_H__

/*!
 * \Class PluginFactory
 *
 * PluginFactory just contains informations concerning a plugin
 * It's separated from the Plugin class to make the disctinction between the informations of the plugin and the communication methods
 * 
 */

class PLUGIN_EXPORT PluginFactory {
public:
	virtual const char* getPluginName()=0;
	virtual const char* getPluginVersion()=0;
	virtual const char* getPluginAuthor()=0;
	virtual PluginPtr	getInstance(TTApplicationManager* applicationManager)=0;
};

typedef PluginFactory*	PluginFactoryPtr;

#endif //__PLUGIN_FACTORY_H__

extern "C" {
	PLUGIN_EXPORT PluginFactoryPtr createFactory();
}