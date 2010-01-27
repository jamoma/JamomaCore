/*
 *
 *  Created by Laurent Garnier on 03/06/09.
 *  Copyright 2009 __BlueYeti/LaBRI__. All rights reserved.
 *
 */

/*!
 * \class Controller
 * \author Laurent Garnier (BlueYeti/LaBRI)
 * \date 03/06/09
 *
 * The Controller is a network plugin manager.
 * It is totally independant. It can be used in other communication applications.
 * It is compiled in a library called libController.a that can be added in a project.
 *
 * In the sequencer it establishes the communication between the engine and devices detected on the network.
 * It create the good link and use the good plugin according to the device communication protocol.
 * It select the good plugin to use with the device name
 *
 */

#ifndef _CONTROLLER_H_
#define _CONTROLLER_H_

#include <map>
#include <vector>
#include <string>
#include <iostream>

#define REQUEST_NOT_SENT -2
#define TIMEOUT_EXCEEDED -1
#define NO_ANSWER 0
#define ANSWER_RECEIVED 1

// TODO : put those string in a global symbol cache table used by the Controller
#define NAMESPACE_ATTR_NONE ""					//< 
#define NAMESPACE_ATTR_ACCESS "access"			//< 
#define NAMESPACE_ATTR_VALUE "value"			//< 
#define NAMESPACE_ATTR_TYPE "type"				//< 
#define NAMESPACE_ATTR_PRIORITY "priority"		//<
#define NAMESPACE_ATTR_RANGE "range"			//< 
#define NAMESPACE_ATTR_COMMENT "comment"		//< 
#define NAMESPACE_NO_VALUE "NO VALUE"			//<

/*********************************************************************
 TEMPORARY DEFINE USED TO ALLOW THE TIPITOUCH TO SPEAK WITH THE CONTROLLER
 *********************************************************************/
static const unsigned int TRIGGER_READY = 0;
static const unsigned int TRIGGER_WAITED = 1;
static const unsigned int TRIGGER_PUSHED = 2;
/********************************************************************/

class Namespace;
class Device;
class Plugin;
class PluginFactories;

typedef std::string Address;										// at the Controller level, an Address should be like this  : /<nodeName>/.../<nodeName>
typedef Address* AddressPtr;										// !!! DO NOT INCLUDE THE DEVICE NAME AS A ROOT LEVEL !!!
																	// TODO : a class Address (containing the attribute part too and method to parse string in /parent/node.instance:attribute)

typedef std::string Value;											// any kind of data : bool, int, float, array, list, enum, ...
typedef Value* ValuePtr;											// TODO : a class like TTValue

class Controller{
	
private:
	
	std::string m_application_name;									//< the name of the application in wich the Controller is called
	
	PluginFactories *factories;										//< the plugin factories
	
	std::map<std::string, Plugin*> *netPlugins;						//< a map between a plugin name and an instance of this Plugin
	std::map<std::string, Device*> *netDevices;						//< a map between a device name and an instance of this Device
	unsigned int deviceId;											//< the device id witch is incremented automatically 
	
	/*********************************************************************
	 TEMPORARY MEMBER USED TO ALLOW THE TIPITOUCH TO SPEAK WITH THE CONTROLLER
	 *********************************************************************/
	std::map<unsigned int, std::string> *m_namespace;				//TriggerId , TriggerAddress
	std::map<unsigned int, unsigned int> *m_values;					//TriggerId , TriggerValue
	/********************************************************************/
	
	void (*m_discover_callback)(void*, 
								Address, 
								std::vector<std::string>&,
								std::vector<std::string>&,
								std::vector<std::string>&);			//< a callback used when a device wants to dicover the namespace
	void* m_discover_arguments;										//< arguments for the discover callback method
	
	void (*m_get_callback)(void*, 
						   Address, 
						   std::string, 
						   Value&);									//< a callback used when a device wants to get a value from the namespace
	void* m_get_arguments;											//< arguments for the get callback method
	
	void (*m_set_callback)(void*, 
						   Address, 
						   std::string, 
						   Value&);									//< a callback used when a device wants to set a value of the namespace
	void* m_set_arguments;											//< arguments for the set callback method
	
	void(*m_listen_callback)(void*,
							 std::string,
							 Address,
							 std::string,
							 bool);									//< a callback used when a device wants to be notified when something changed in the namespace
	void* m_listen_arguments;										//< arguments for the listen callback method
	
public:
	
	/************************************************
	 CONTROLLER METHODS :
	 a set of methods used to handle Controller.
	 ************************************************/
	
	/*!
	 * Default constructor.
	 */
	Controller(std::string aName);
	
	/*!
	 * Destructor.
	 */
	~Controller();
	
	/*!
	 * The message callback method
	 *
	 */
	friend void waitedMessageCallback(void *, std::string);
	
	
	/************************************************
	 PLUGINS METHODS :
	 a set of methods used to manage plugins.
	 note : each method of this set is prepend by 'plugin'
	 ************************************************/
	
	/*!
	 * Load the plugins available in the plugin directory and instanciates them.
	 *
	 * \param path : the Plugin directory path.
	 */
	void pluginLoad(std::string path);
	
	/*!
	 * 
	 * \return the list of loaded plugin names
	 */
	std::vector<std::string> pluginGetLoadedByName();
	
	/*!
	 * Get a plugin parameter value
	 * 
	 * \return the value for parameter "parameterName" according to the pluginName
	 */
	std::string pluginGetCommParameter(std::string pluginName, std::string parameterName);				// to -- This should be done on a device ...
	
	/*!
	 * Is a plugin loaded ?
	 *
	 * \return true if the plugin exists
	 */
	bool pluginIsLoaded(std::string pluginName);
	

	
	/************************************************
	 DEVICES METHODS :
	 a set of methods used to manage devices
	 note : each method of this set is prepend by 'device'
	 ************************************************/
	
	/*!
	 * Scan the network automatically to detect devices using the appropriate plugin.
	 * This method full the netDevices map.
	 */
	void deviceSetCurrent();
	
	/*!
	 * Possible access to the netDevices map
	 *
	 * \return the netDevices map.
	 */
	std::map<std::string, Device*> *deviceGetCurrent();
	
	/*!
	 * Access to a Devices giving a name
	 *
	 * \return the netDevices map.
	 */
	Device* deviceGet(std::string deviceName);
	
	/*!
	 * Add one device manually according to the genericity of the different plugins parameters
	 *
	 * \param deviceName : the device name to add
	 * \param pluginToUse : the plugin name to use which has to be the same string of the plugin name given by his developper. ("OSC", "Minuit", ...)
	 * \param commParameters : a map containing couples <parameterName, parameterValue> to communicate according to the plugin 
	 *
	 * \return 0 if the device is added, -1 if deviceName already exist or if pluginToUse doesn't exist
	 */
	int deviceAdd(std::string deviceName, std::string pluginToUse, std::map<std::string, std::string> *commParameters);
	
	/*!
	 * Remove a device in the netDevices map using the device name
	 *
	 * \param deviceName : the device name to remove
	 */
	void deviceRemove(std::string deviceName);
	
	/*!
	 * Let to know if the specific plugin used by the device is able to answer to a discover request
	 *
	 * \param deviceName : the device name to
	 * \return true if the plugin need or false if not
	 */
	bool deviceUnderstandDiscoverRequest(std::string deviceName);
	
	/*!
	 * Send a discover request to explore a part of the namespace at the given address
	 *
	 * \param deviceName : the device name to discover
	 * \param address : the address where to get the snapshot
	 * \param returnedNodes : the vector which is going to be full with the node names of the namespace
	 * \param returnedLeaves : the vector which is going to be full with the leaves names of the namespace (a leave is a node withe a 'value' attribute)
	 * \param returnedAttributes : the vector which is going to be full with the attributs names of the namespace
	 * \return the reception state : TIMEOUT_EXCEEDED ; NO_ANSWER ; ANSWER_RECEIVED
	 */
	int deviceSendDiscoverRequest(std::string deviceName, Address address, std::vector<std::string>* returnedNodes, std::vector<std::string>* returnedLeaves, std::vector<std::string>* returnedAttributes);
	int deviceSendDiscoverRequest(std::string deviceAndAddress, std::vector<std::string>* returnedNodes, std::vector<std::string>* returnedLeaves, std::vector<std::string>* returnedAttributes, std::vector<Value>* returnedValues);
	
	/*!
	 * Send a get request to a device to get values at the given address
	 *
	 * \param deviceName : the device name where to get the value
	 * \param address : the address where to get the value
	 * \param attribute : the attribute where to get the value
	 * \param returnedValue : the Value which is going to be full
	 * \return the reception state : TIMEOUT_EXCEEDED ; NO_ANSWER ; ANSWER_RECEIVED
	 */
	int deviceSendGetRequest(std::string deviceName, Address address, std::string attribute, Value* returnedValue);
	int deviceSendGetRequest(std::string deviceAndAddress, Value* returnedValue);	// TODO : deal with any attribute. For this ask the 'value' attribute by default
	
	/*!
	 * Send a set request to set a value of a specific device
	 *
	 * \param deviceName : the device name where to set the value
	 * \param address : the address where to set the value
	 * \param value : anything to send
	 */
	void deviceSendSetRequest(std::string deviceName, Address address, Value& newValue);
	void deviceSendSetRequest(std::string deviceAndAddress, Value& newValue);
	void deviceSendSetRequest(std::string deviceAndAddressAndValue);
	
	/*!
	 * Send a listen answer to a device which ask for
	 *
	 * \param deviceName : the device which waits for answer
	 * \param address : the listened address
	 * \param attribute : the listened attribute
	 * \param changedValue : the value which have changed
	 */
	void deviceSendListenAnswer(std::string deviceName, Address address, std::string attribute, Value& newValue);
	void deviceSendListenAnswer(std::string deviceAndAddress, std::string attribute, Value& newValue);
	
	/*!
	 * Send a listen request to a specific device
	 *
	 * \param deviceName : the device to listen
	 * \param address : the address to listen
	 * \param attribute : the attribute to listen
	 * \param enable : enable/disable the listening
	 */
	void deviceSendListenRequest(std::string deviceName, Address address, std::string attribute, bool enable);
	void deviceSendListenRequest(std::string deviceAndAddress, std::string attribute, bool enable);
	
	/*!
	 * Get a current snapshot  of a device using the address (a get request on each node with a 'value' attribute)
	 * This method doesn't have to be implemented by the plugin child if it doesn't need
	 *
 	 * \param deviceName : the device name where to get the snapshot
	 * \param address : the address where to get the snapshot
	 * \return a vector containing the snapshot
	 */
	// TODO : return a map of <Address, Value>
	std::vector<std::string> deviceSnapshot(std::string deviceName, Address address);
	std::vector<std::string> deviceSnapshot(std::string deviceAndAddress);
	
	/*!
	 * Let to know if a device has to be visible in the UI. 
	 * In other words if it could be used by the user or only for an internal communication.
	 *
	 * \param deviceName : the device name
	 * \return true if the device is visible in the UI
	 */
	bool deviceIsVisible(std::string deviceName);

	
	
	/************************************************
	 NAMESPACE METHODS :
	 a set of methods used to manage and deal with the local namespace 
	 note : each method of this set is prepend by 'namespace'
	 ************************************************/
	
	/*!
	 * Get the name of the application
	 *
	 * \return the name of the application
	 */
	std::string namespaceApplicationName();
	
	/*!
	 * Add a discover callback method
	 *
	 * \param arg : anything needs by the application to discover his namespace
	 * \param pt2Func : a callback method given by the application to discover his namespace
	 */
	void namespaceDiscoverAddCallback(void* arg, void(*pt2Func)(void*, Address, std::vector<std::string>&, std::vector<std::string>&, std::vector<std::string>&));
	
	/*!
	 * Discover the namespace at an address.
	 *
	 * \param whereToDiscover : address where to discover the namespace below
	 * \param returnedNodes : nodes below the address
	* \param returnedLeaves : leaves below the address (a leaf is a node with a 'value' attribute)
	 * \param returnedAttributes : attribute of the address
	 */
	void namespaceDiscover(Address whereToDiscover, std::vector<std::string>& returnedNodes, std::vector<std::string>& returnedLeaves, std::vector<std::string>& returnedAttributes);
	
	/*!
	 * Add a get callback method
	 *
	 * \param arg : anything needs by the application to get values
	 * \param pt2Func : a callback method given by the application to get values
	 */
	void namespaceGetAddCallback(void* arg, void(*pt2Func)(void*, Address, std::string, Value&));
	
	/*!
	 * Get the value of an attribute at an address.
	 *
	 * \param whereToGet : address where to get an attribute value
	 * \param attribute : attribute to get a value
	 * \param returnedValue :  the value of the attribute
	 */
	void namespaceGet(Address whereToGet, std::string attribute, Value& returnedValue);
	
	/*!
	 * Add a set callback method
	 *
	 * \param arg : anything needs by the application to set incoming values
	 * \param pt2Func : a callback method given by the application to set incoming values
	 */
	void namespaceSetAddCallback(void* arg, void(*pt2Func)(void*, Address, std::string, Value&));
	
	/*!
	 * Set the value of an attribute at an address.
	 *
	 * \param whereToSet : address where to set an attribute value
	 * \param attribute : attribute to set a value
	 * \param newValue : value to pass
	 */
	void namespaceSet(Address whereToSet, std::string attribute, Value& newValue);
	
	/*!
	 * Add a listen callback method
	 * 
	 * \param arg : anything needs by the application to create a new listener
	 * \param pt2Func : a callback method given by the application to create a listener
	 */
	void namespaceListenAddCallback(void* arg, void(*pt2Func)(void*, std::string, Address, std::string, bool));
	
	/*!
	 * Enable/disable a listener of the namespace.
	 * A listener will send answers to a device when something changes.
	 *
	 * \param whereToSend : device where to send answer
	 * \param whereToListen : address where to listen 
	 * \param attributeToListen : the attribute to listen
	 */
	void namespaceListen(Device* whereToSend, Address whereToListen, std::string attributeToListen, bool);
	
	/************************************************
	 
	 PRIVATE METHODS
	 used for internal and specific purposes
	 
	 ************************************************/
private:
	void parseDeviceAndAddress(std::string deviceAndAddress, std::string& device, std::string& address);
	std::vector<std::string> snapshotProcess(Plugin *plugin, Device *device, Address address);
	
	
	
	
	/*********************************************************************
	 TEMPORARY METHOD TO ALLOW THE TPITOUCH TO SPEAK WITH THE CONTROLLER
	 *********************************************************************/
public:
	void addTriggerPointLeave(unsigned int triggerId, std::string triggerMessage);
	void removeTriggerPointLeave(unsigned int triggerId);
	void setNamespaceValue(std::string address, int value, std::map<std::string, std::string> optionalArguments);
	void resetTriggerPointStates();
	std::map<unsigned int, std::string> *getControllerNamespace();
	void getWaitedTriggerPoints(std::vector<std::string> *waitedTP);
	
	void askControllerNamespaceFor(std::string address, std::vector<std::string>* namespaceVectorToFill);
	int askControllerValueFor(std::string address);

};



#endif //_CONTROLLER_H_
