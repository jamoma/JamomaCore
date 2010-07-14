/*
 Copyright: 
 LaBRI (http://www.labri.fr) - BlueYeti (http://www.blueyeti.fr) - GMEA (http://www.gmea.net)
 
 Author(s): Laurent Garnier, Theo Delahogue
 Last modification: 08/03/2010
 
 Adviser(s): 
 Myriam Desainte-Catherine (myriam.desainte-catherine@labri.fr)
 
 This software is a computer program whose purpose is to propose
 a library for interactive scores edition and execution.
 
 This software is governed by the CeCILL-C license under French law and
 abiding by the rules of distribution of free software.  You can  use, 
 modify and/ or redistribute the software under the terms of the CeCILL-C
 license as circulated by CEA, CNRS and INRIA at the following URL
 "http://www.cecill.info". 
 
 As a counterpart to the access to the source code and  rights to copy,
 modify and redistribute granted by the license, users are provided only
 with a limited warranty  and the software's author,  the holder of the
 economic rights,  and the successive licensors  have only  limited
 liability. 
 
 In this respect, the user's attention is drawn to the risks associated
 with loading,  using,  modifying and/or developing or reproducing the
 software by the user in light of its specific status of free software,
 that may mean  that it is complicated to manipulate,  and  that  also
 therefore means  that it is reserved for developers  and  experienced
 professionals having in-depth computer knowledge. Users are therefore
 encouraged to load and test the software's suitability as regards their
 requirements in conditions enabling the security of their systems and/or 
 data to be ensured and,  more generally, to use and operate it in the 
 same conditions as regards security.
 
 The fact that you are presently reading this means that you have had
 knowledge of the CeCILL-C license and that you accept its terms.
 */

/*!
 * \class DeviceManager
 * \author Laurent Garnier (BlueYeti/LaBRI) : lo.garnier@yahoo.fr
 *		   Théo Delahogue  (GMEA)			: theod@gmea.net
 * \date 03/06/09
 *
 * \brief The DeviceManager is a network plugin manager.
 * It is totally independant. It can be used in multimedia communication applications.
 * It is compiled in a library called libDeviceManager.a that can be added in a project.
 * It contains all methods that a developer has to call to use the DeviceManager.
 *
 * In the sequencer it establishes the communication between the engine and devices detected on the network.
 * It creates the good link and use the good plugin according to the device communication protocol.
 * It selects the good plugin to use with the device name
 *
 */

#ifndef _DeviceManager_H_
#define _DeviceManager_H_

#include <map>
#include <vector>
#include <string>
#include <iostream>

#define REQUEST_NOT_SENT -2
#define TIMEOUT_EXCEEDED -1
#define NO_ANSWER 0
#define ANSWER_RECEIVED 1

// TODO : put those string in a global symbol cache table used by the DeviceManager
#define NAMESPACE_ATTR_NONE ""					//< 
#define NAMESPACE_ATTR_ACCESS "access"			//< 
#define NAMESPACE_ATTR_VALUE "value"			//< 
#define NAMESPACE_ATTR_TYPE "type"				//< 
#define NAMESPACE_ATTR_PRIORITY "priority"		//<
#define NAMESPACE_ATTR_RANGE "range"			//< 
#define NAMESPACE_ATTR_COMMENT "comment"		//< 
#define NAMESPACE_NO_VALUE "NO VALUE"			//<

#define NAMESPACE_ATTR_LIFE "life"				//< used to observe the creation or the destruction of node below an address

class Namespace;
class Device;
class Plugin;
class PluginFactories;
class xmlParser;

typedef std::string Address;										// at the DeviceManager level, an Address should be like this  : /<nodeName>/.../<nodeName>
typedef Address* AddressPtr;										// !!! DO NOT INCLUDE THE DEVICE NAME AS A ROOT LEVEL !!!
																	// TODO : a class Address (containing the attribute part too and method to parse string in /parent/node.instance:attribute)

typedef std::string Value;											// any kind of data : bool, int, float, array, list, enum, ...
typedef Value* ValuePtr;											// TODO : a class like TTValue

class DeviceManager{
	
private:
	
	std::string m_application_name;									//< the name of the application in wich the DeviceManager is called
	
	PluginFactories *factories;										//< the plugin factories
	
	std::map<std::string, Plugin*> *netPlugins;						//< a map between a plugin name and an instance of this Plugin
	std::map<std::string, Device*> *netDevices;						//< a map between a device name and an instance of this Device
	unsigned int deviceId;											//< the device id witch is incremented automatically

	Namespace *m_namespace;

	
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
	 DEVICE MANAGER METHODS :
	 a set of methods used to handle DeviceManager.
	 ************************************************/
	
	/*!
	 * Default constructor.
	 */
	DeviceManager(std::string aName);
	
	/*!
	 * Destructor.
	 */
	~DeviceManager();
	
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
	 * Configure the plugins parameters with a xml file 
	 * Has to be called before the pluginConfigure method
	 *
	 * \param filename : the xml filename.
	 */
	void pluginLoadConfigXml(std::string filename);

	/*!
	 * Write the plugins config in a xml file 
	 *
	 * \param filename : the xml filename.
	 */
	void pluginWriteConfigXML(std::string filename);

	/*!
	 * Set a plugin parameter
	 *
	 */
	void pluginSetCommParameter(std::string pluginName, std::string parameterName, std::string parameterValue);
	
	/*!
	 * Get a plugin parameter value
	 * 
	 * \return the value for parameter "parameterName" according to the pluginName
	 */
	std::string pluginGetCommParameter(std::string pluginName, std::string parameterName);				// to -- This should be done on a device ...

	/*!
	 * Configure plugin with added parameters
	 * Has to be called after pluginSetCommParameter() and pluginLoadConfigXml() methods because run the receiving thread
	 *
	 */
	void pluginLaunch();

	/*!
	 * 
	 * \return the list of loaded plugin names
	 */
	std::vector<std::string> pluginGetLoadedByName();
	
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
	 * Configure the devices parameters with a xml file
	 *
	 * \param filename : the xml filename.
	 */
	void deviceLoadConfigXml(std::string filename);

	/*!
	 * Write the devices config in a xml file
	 *
	 * \param filename : the xml filename.
	 */
	void devicesWriteConfigXML(std::string filename);

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
	
	void namespaceInit();
	void namespaceLoadXml(std::string filename);


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

};



#endif //_DeviceManager_H_
