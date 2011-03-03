/* 
 * A Plugin interface
 * Copyright © 2011, Laurent Garnier
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */


class TTDeviceManager;
typedef TTDeviceManager* TTDeviceManagerPtr;

class TTDevice;
typedef TTDevice* TTDevicePtr;

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

#include <map>

/**	Plugin and PluginFactory are abstract classes, interfaces to develop plugins.
	Every communication plugins developped in the future will have to be implemented according to this model.
 */

class PLUGIN_EXPORT Plugin
{
	
public:

	TTDeviceManagerPtr	mDeviceManager;
	TTHashPtr			mParameters;
	
	//	void (*m_waitedMessageAction)(void*, std::string);
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
	};
	
	/*!
	 * A plugin need to know the DeviceManager to access it methods
	 */
	void setDeviceManager(TTDeviceManager* deviceManager) {
		mDeviceManager = deviceManager;
	}
	
	TTDeviceManager* getDeviceManager() {
		return mDeviceManager;
	}
	
//	/*!
//	 * Add a reception message callback in the parent class
//	 */
//	void addWaitedMessageAction(void(*pt2Func)(void *, std::string), void *arg) {
//		m_waitedMessageAction = pt2Func;
//		m_callBackMessageArgument = arg;
//	}

	/************************************************
	 COMMUNICATION METHODS :
	 a set of methods used to init the communication.
	 note : each method of this set is prepend by 'comm'
	 ************************************************/
	
	/*!
	 * Define the plugins parameters with an optional map<name, value> 
	 * Has to be called to instantiate the m_parameter map
	 *
	 */
	virtual void commDefineParameters(TTValue& parameters)=0;
	
//	/*!
//	 * Set a plugin parameter (if does not exist add it)
//	 *
//	 * \param parameterName  : the name of the parameter you want to set the value
//	 * \param parameterValue : the value like a string
//	 */
//	virtual void commSetParameter(std::string parameterName, std::string parameterValue)=0;
//	
//	/*!
//	 * Get a device parameter
//	 * All parameters names and values are defined by the plugin itself
//	 *
//	 * \param parameterName : the name of the parameter you want the value
//	 * \return the string value for this parameter name or "ERROR" if the name corresponds to any parameter
//	 */
//	virtual std::string commGetParameter(std::string parameterName)=0;
//	
	/*!
	 * Run the message reception thread 
	 *
	 */
	virtual void commRunReceivingThread()=0;

	/************************************************
	 DEVICES METHODS :
	 a set of methods used to manage devices
	 note : each method of this set is prepend by 'device'
	 ************************************************/

	/*!
	 * Scan the network automatically to detect devices.
	 * This method full the netDevices map. It is not yet implemented : it needs a daemon like a udp broadcast (osc) or a scan (copperlan)
	 */
	//	virtual void deviceSetCurrent(std::map<std::string, TTDevicePtr> *netDevices)=0;
	//	
	//	/*!
	//	 * Add one device in the netDevices map
	//	 *
	//	 */
	//	virtual void deviceAdd(TTSymbolPtr deviceName, std::map<std::string,
	//						   std::string> *commParameters,
	//						   std::map<std::string, TTDevicePtr> *netDevices)=0;

	/*!
	 * Let to know if the specific plugin need namespace request to get a namespace
	 *
	 * \return true if the plugin need or false if not
	 */
	virtual bool understandDiscoverRequest()=0;

	/**************************************************************************************************************************
	 *
	 *	SEND REQUEST METHODS
	 *
	 **************************************************************************************************************************/
	
	/*!
	 * Send a discover request to a device to get a part of the namespace at the given address
	 *
	 * \param device : a pointer to a Device instance
	 * \param address : something like "/<subDeviceName>/.../<input>"
	 * \param returnedNodes : the vector which is going to be full with the node names at the given address
	 * \param returnedLeaves : the vector which is going to be full with the leaves names at the given address
	 * \param returnedAttributes : the vector which is going to be full with the attributes names at the given address
	 * \return the reception state : TIMEOUT_EXCEEDED ; NO_ANSWER ; ANSWER_RECEIVED
	 */
	virtual int deviceSendDiscoverRequest(TTDevicePtr device,
										  TTSymbolPtr address,
										  TTValue& returnedNodes,
										  TTValue& returnedLeaves,
										  TTValue& returnedAttributes)=0;
	
	/*!
	 * Send a get request to a device to get a value at the given address
	 *
	 * \param device : a pointer to a Device instance
	 * \param address : something like "/<subDeviceName>/.../<input>"
	 * \param attribute : the asked attribute
	 * \param returnedValue : the Value which is going to be full
	 * \return the reception state : TIMEOUT_EXCEEDED ; NO_ANSWER ; ANSWER_RECEIVED
	 */
	virtual int deviceSendGetRequest(TTDevicePtr device,
									 TTSymbolPtr address, TTSymbolPtr attribute,
									 TTValue& returnedValue)=0;
	
	/*!
	 * Send a set request to set a value of a specific device
	 *
	 * \param device : a pointer to a TTDevice instance
	 * \param address : something like "/<subDeviceName>/.../<input>"
	 * \param value : anything to send
	 */
	virtual int deviceSendSetRequest(TTDevicePtr device, 
									 TTSymbolPtr address, TTSymbolPtr attribute,
									 TTValue& value)=0;
	
	/*!
	 * Send a listen request to a specific device
	 *
	 * \param device : a pointer to a Device instance
	 * \param address : something like "/<subDeviceName>/.../<input>"
	 * \param attribute : the attribute to listen
	 * \param enable : enable/disable the listening
	 */
	virtual int deviceSendListenRequest(TTDevicePtr device,
										TTSymbolPtr address, TTSymbolPtr attribute, 
										bool enable)=0;
	
	/**************************************************************************************************************************
	 *
	 *	SEND ANSWER METHODS
	 *
	 **************************************************************************************************************************/
	
	/*!
	 * Send a disover answer to a device which ask for.
	 *
	 * \param to : the device where to send answer
	 * \param address : the address where comes from the description
	 * \param returnedNodes : the description of nodes below the address
	 * \param returnedLeaves : the description of leaves below the address
	 * \param returnedAttributes : the description of attributes at the address
	 */
	virtual void deviceSendDiscoverAnswer(TTDevicePtr to, TTSymbolPtr address,
										  TTValue& returnedNodes,
										  TTValue& returnedLeaves,
										  TTValue& returnedAttributes)=0;
	
	/*!
	 * Send a get answer to a device which ask for.
	 *
	 * \param to : the device where to send answer
	 * \param address : the address where comes from the value
	 * \param attribute : the attribute where comes from the value
	 * \param returnedValue : the value of the attribute at the address
	 */
	virtual void deviceSendGetAnswer(TTDevicePtr to, 
									 TTSymbolPtr address, TTSymbolPtr attribute, 
									 TTValue& returnedValue)=0;
	
	/*!
	 * Send a listen answer to a device which ask for.
	 *
	 * \param to : the device where to send answer
	 * \param address : the address where comes from the value
	 * \param attribute : the attribute where comes from the value
	 * \param returnedValue : the value of the attribute at the address
	 */
	virtual void deviceSendListenAnswer(TTDevicePtr to, 
										TTSymbolPtr address, TTSymbolPtr attribute, 
										TTValue& returnedValue)=0;
	
	/**************************************************************************************************************************
	 *
	 *	RECEIVE REQUEST METHODS (BUILT-IN METHODS)
	 *
	 **************************************************************************************************************************/
	
	/*!
	 * Notify the plugin that a device ask for a namespace description
	 *
	 * !!! This a built-in plugin method which sends automatically the answer (or a notification if error)
	 *
	 * \param from : the device where comes from the request
	 * \param address : the address the device wants to discover
	 */
	void deviceReceiveDiscoverRequest(TTDevicePtr from, TTSymbolPtr address) 
	{
		TTValue returnedNodes;
		TTValue returnedLeaves;
		TTValue returnedAttributes;

		// discover the local namespace
		if (mDeviceManager != NULL)
			mDeviceManager->namespaceDiscover(address, returnedNodes, returnedLeaves, returnedAttributes);

		// TODO : test error and send notification if error

		// send result
		deviceSendDiscoverAnswer(from, address, returnedNodes, returnedLeaves, returnedAttributes);
	}
	
	/*!
	 * Notify the plugin that a device ask for value
	 *
	 * !!! This a built-in plugin method which sends automatically the answer (or a notification if error)
	 *
	 * \param from : the device where comes from the request
	 * \param address : the address the device wants to get
	 * \param attribute : the attribute the device wants to get
	 */
	void deviceReceiveGetRequest(TTDevicePtr from, TTSymbolPtr address, TTSymbolPtr attribute)
	{
		TTValue returnedValue;
		
		// get the value from the local namespace
		if (mDeviceManager != NULL)
			mDeviceManager->namespaceGet(address, attribute, returnedValue);
		
		// TODO : test error and send notification if error
		
		// send result
		deviceSendGetAnswer(from, address, attribute, returnedValue);
	}

	/*!
	 * Notify the plugin that a device wants to set value
	 *
	 * !!! This a built-in plugin method which set automatically the value (or send a notification if error)
	 *
	 * \param from : the device where comes from the request
	 * \param address : the address the device wants to get
	 * \param attribute : the attribute the device wants to get
	 */
	void deviceReceiveSetRequest(TTDevicePtr from, TTSymbolPtr address, TTSymbolPtr attribute, TTValue& newValue) 
	{
		// set the value of the local namespace
		if (mDeviceManager != NULL)
			mDeviceManager->namespaceSet(address, attribute, newValue);
		
		// TODO : test error and send notification if error
	}
	
	/*!
	 * Notify the plugin that a device wants to listen (or not) the namespace
	 *
	 * !!! This a built-in plugin method which create/remove automatically the listener (or send a notification if error)
	 *
	 * \param from : the device where comes from the request
	 * \param address : the address the device wants to listen
	 * \param attribute : the attribute the device wants to listen
	 * \param enable : enable/disable the listening
	 */
	void deviceReceiveListenRequest(TTDevicePtr from, TTSymbolPtr address, TTSymbolPtr attribute, TTBoolean enable) 
	{
		std::cout << "Plugin::deviceReceiveListenRequest" << std::endl;
		// Enable/disable the listening of the attribute at the address
		if (mDeviceManager != NULL)
			mDeviceManager->namespaceListen(from, address, attribute, enable);
		
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
	virtual PluginPtr	getInstance(TTDeviceManager* deviceManager)=0;
};

typedef PluginFactory*	PluginFactoryPtr;

#endif //__PLUGIN_FACTORY_H__

extern "C" {
	PLUGIN_EXPORT PluginFactoryPtr createFactory();
}