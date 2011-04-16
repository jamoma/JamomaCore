/*
 * A Plugin interface
 * Copyright © 2011, Laurent Garnier
 *
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __PLUGIN_H__
#define __PLUGIN_H__

#include "TTFoundationAPI.h"

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

/****************************************************************************************************/
// Class Specification

class PLUGIN_EXPORT Plugin {
	
private:
	TTObjectPtr	ttPluginObject;
	
public:
	
	Plugin();
	virtual ~Plugin();
	
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
	virtual TTErr applicationSendDiscoverAnswer(TTObjectPtr to, TTSymbolPtr address,
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
	virtual TTErr applicationSendGetAnswer(TTObjectPtr to, TTSymbolPtr address,
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
	virtual TTErr applicationSendListenAnswer(TTObjectPtr to, TTSymbolPtr address,
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
	void applicationReceiveDiscoverRequest(TTObjectPtr from, TTSymbolPtr address) 
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
	void applicationReceiveGetRequest(TTObjectPtr from, TTSymbolPtr address, TTSymbolPtr attribute)
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
	void applicationReceiveSetRequest(TTObjectPtr from, TTSymbolPtr address, TTSymbolPtr attribute, TTValue& newValue) 
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
	void applicationReceiveListenRequest(TTObjectPtr from, TTSymbolPtr address, TTSymbolPtr attribute, TTBoolean enable) 
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

typedef Plugin* PluginPtr;

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
	virtual const char* getName()=0;
	virtual const char* getVersion()=0;
	virtual const char* getAuthor()=0;
	virtual const bool getExploration()=0;
	
	virtual PluginPtr	getInstance()=0;
};

typedef PluginFactory*	PluginFactoryPtr;

#endif //__PLUGIN_FACTORY_H__

extern "C" {
	PLUGIN_EXPORT PluginFactoryPtr createFactory();
}
