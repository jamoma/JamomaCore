/*
 *  Plugin.h
 *  Controller
 *
 *  Created by Laurent Garnier on 03/06/09.
 *  Copyright 2009 __BlueYeti/LaBRI__. All rights reserved.
 *
 */

/*!
 * \class Plugin
 * \author Laurent Garnier (BlueYeti/LaBRI)
 * \date 03/06/09
 *
 * Plugin and PluginFactory are abstract classes, interfaces to develop plugins.
 * Every communication plugins developped in the futur will have to be implemented according to this model.
 * Each methods of both interfaces will have to be redefined in the plugin code.   
 *
 */

#ifndef _PLUGIN_H_
#define _PLUGIN_H_

#include "Controller.h"

class Plugin {
	
public:
	
	Controller *m_controller;
	
	std::vector<std::string> *m_commParameterNames;
	
	void (*m_waitedMessageAction)(void*, std::string);
	void *m_callBackMessageArgument;
	
	
	/************************************************
	 PLUGIN METHODS :
	 a set of methods used to handle Plugin.
	 ************************************************/
	
	virtual ~Plugin()=0;
	
	/*!
	 * A plugin need to know the Controller to access it methods
	 */
	void setController(Controller *controller){
		m_controller = controller;
	}
	
	Controller *getController(){
		return m_controller;
	}
	
	/*!
	 * Add a reception message callback in the parent class
	 */
	void addWaitedMessageAction(void(*pt2Func)(void *, std::string), void *arg){
		m_waitedMessageAction = pt2Func;
		m_callBackMessageArgument = arg;
	}
	
	
	/************************************************
	 COMMUNICATION METHODS :
	 a set of methods used to init the communication.
	 note : each method of this set is prepend by 'comm'
	 ************************************************/
	
	/*!
	 * Define the device parameters needs by each device to communicate (like a destination port for example)
	 *
	 */
	virtual void commDefineParameters()=0;
	
	/*!
	 * Get a device parameter
	 * All parameters names and values are defined by the plugin itself
	 * This method doesn't have to be implemented by the plugin child if it doesn't need
	 *
	 * \param paramaterName : the name of the parameter you want the value
	 * \return the string value for this parameter name or "ERROR" if the name corresponds to any parameter
	 */
	virtual std::string commGetParameter(std::string paramaterName)=0;
	
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
	virtual void deviceSetCurrent(std::map<std::string, Device*> *netDevices)=0;
	
	/*!
	 * Add one device in the netDevices map
	 *
	 */
	virtual void deviceAdd(std::string deviceName, std::map<std::string, std::string> *commParameters, std::map<std::string, Device*> *netDevices)=0;
	
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
	virtual int deviceSendDiscoverRequest(Device* device, Address address, std::vector<std::string>* returnedNodes, std::vector<std::string>* returnedLeaves, std::vector<std::string>* returnedAttributes)=0;
	
	/*!
	 * Send a get request to a device to get a value at the given address
	 *
 	 * \param device : a pointer to a Device instance
	 * \param address : something like "/<subDeviceName>/.../<input>"
	 * \param attribute : the asked attribute
	 * \param returnedValue : the Value which is going to be full
	 * \return the reception state : TIMEOUT_EXCEEDED ; NO_ANSWER ; ANSWER_RECEIVED
	 */
	virtual int deviceSendGetRequest(Device* device, Address address, std::string attribute, Value* returnedValue)=0;
	
	/*!
	 * Send a set request to set a value of a specific device
	 *
	 * \param device : a pointer to a Device instance
	 * \param address : something like "/<subDeviceName>/.../<input>"
	 * \param value : anything to send
	 */
	virtual int deviceSendSetRequest(Device* device, Address address, Value& newValue)=0;
	
	/*!
	 * Send a listen request to a specific device
	 *
	 * \param device : a pointer to a Device instance
	 * \param address : something like "/<subDeviceName>/.../<input>"
	 * \param attribute : the attribute to listen
	 * \param enable : enable/disable the listening
	 */
	virtual int deviceSendListenRequest(Device* device, Address address, std::string attribute, bool enable)=0;
	
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
	virtual void deviceSendDiscoverAnswer(Device* to, Address address, std::vector<std::string>& returnedNodes, std::vector<std::string>& returnedLeaves, std::vector<std::string>& returnedAttributes)=0;
	
	/*!
	 * Send a get answer to a device which ask for.
	 *
	 * \param to : the device where to send answer
	 * \param address : the address where comes from the value
	 * \param attribute : the attribute where comes from the value
	 * \param returnedValue : the value of the attribute at the address
	 */
	virtual void deviceSendGetAnswer(Device* to, Address address, std::string attribute, Value& returnedValue)=0;
	
	/*!
	 * Send a listen answer to a device which ask for.
	 *
	 * \param to : the device where to send answer
	 * \param address : the address where comes from the value
	 * \param attribute : the attribute where comes from the value
	 * \param returnedValue : the value of the attribute at the address
	 */
	virtual void deviceSendListenAnswer(Device* to, Address address, std::string attribute, Value& returnedValue)=0;
	
	
	
	
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
	void deviceReceiveDiscoverRequest(Device* from, Address address)
	{
		std::vector<std::string> returnedNodes;
		std::vector<std::string> returnedLeaves;
		std::vector<std::string> returnedAttributes;
		
		// discover the local namespace
		this->m_controller->namespaceDiscover(address, returnedNodes, returnedLeaves, returnedAttributes);
		
		// TODO : test error and send notification if error
		
		// send result
		this->deviceSendDiscoverAnswer(from, address, returnedNodes, returnedLeaves, returnedAttributes);
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
	void deviceReceiveGetRequest(Device* from, Address address, std::string attribute)
	{
		Value returnedValue;
		
		// get the value from the local namespace
		this->m_controller->namespaceGet(address, attribute, returnedValue);
		
		// TODO : test error and send notification if error
		
		// send result
		this->deviceSendGetAnswer(from, address, attribute, returnedValue);
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
	void deviceReceiveSetRequest(Device* from, Address address, std::string attribute, Value& newValue)
	{
		// set the value of the local namespace
		this->m_controller->namespaceSet(address, attribute, newValue);
		
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
	void deviceReceiveListenRequest(Device* from, Address address, std::string attribute, bool enable)
	{
		// Enable/disable the listening of the attribute at the address
		this->m_controller->namespaceListen(from, address, attribute, enable);
		
		// TODO : test error and send notification if error
	}
	
	
	
	
	/**************************************************************************************************************************
	 *
	 *	RECEIVE ANSWER METHODS : No methods because each plugin deals with answers when it send a request (maybe we could add an answer manager)
	 *
	 **************************************************************************************************************************/
	
};

/*!
 * \Class PluginFactory
 *
 * PluginFactory just contains informations concerning a plugin
 * It's separated from the Plugin class to make the disctinction between the informations of the plugin and the communication methods
 * 
 */

class PluginFactory {
public:	
	virtual std::string getPluginName()=0;
	virtual std::string getPluginVersion()=0;
	virtual std::string getPluginAuthor()=0;
	virtual Plugin *getInstance(Controller *controller)=0;
};

extern "C" {
	PluginFactory* createFactory();
}

#endif //_PLUGIN_H_



