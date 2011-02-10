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
 * \class Minuit
 *
 * It's the Minuit plugin which use the Open Sound Control protocol 
 * 
 */

#include "Plugin.h"

#include "Minuit/MinuitInclude.hpp"
#include "Minuit/MinuitCommunicationMethods.hpp"

#include <sstream>

static const unsigned int MINUIT_RECEPTION_PORT = 7002;

void receiveDiscoverRequestCallback(void* arg, std::string from, std::string address);
void receiveGetRequestCallback(void* arg, std::string from, std::string address, std::string attribute);
void receiveSetRequestCallBack(void* arg, std::string from, std::string address, std::string attribute, TTValue& value);
void receiveListenRequestCallBack(void* arg, std::string from, std::string address, std::string attribute, bool enable);

class Minuit : public Plugin {
	
private:
	
	MinuitCommunicationMethods *m_minuitMethods;		//this class contains the osc communication methods
	
	friend void receiveDiscoverRequestCallback(void* arg, std::string from, std::string address);
	friend void receiveGetRequestCallback(void* arg, std::string from, std::string address, std::string attribute);
	friend void receiveSetRequestCallBack(void* arg, std::string from, std::string address, std::string attribute, TTValue& value);
	friend void receiveListenRequestCallBack(void* arg, std::string from, std::string address, std::string attribute, bool enable);
	
public:
	
	~Minuit() 
	{
		delete m_minuitMethods;
	}
	
	/************************************************
	 COMMUNICATION METHODS :
	 a set of methods used to init the communication.
	 note : each method of this set is prepend by 'comm'
	 ************************************************/
	
	/*!
	 * Define the device parameters needs by each device to communicate
	 *
	 */
	void commDefineParameters(TTHashPtr parameters)
	{
		mParameters = parameters;
	}

//	/*!
//	 * Set a plugin parameter
//	 *
//	 * \param parameterName  : the name of the parameter you want to set the value
//	 * \param parameterValue : the value like a string
//	 */
//	void commSetParameter(std::string parameterName, std::string parameterValue)
//	{
//		std::cout << "SET Minuit " << parameterName << " : " << parameterValue << std::endl;
//		if (m_parameters != NULL) {
//			std::map<std::string, std::string>::iterator it = m_parameters->find(parameterName);
//
//			if (it != m_parameters->end()) {
//				it->second = parameterValue;
//			} else {
//				m_parameters->insert(std::pair<std::string, std::string>(parameterName, parameterValue));
//			}
//		}
//	}
//	
//	/*!
//	 * Get a device parameter like a reception port for example
//	 *
//	 * \param paramaterName : the name of the parameter you want the value
//	 * \return the string value for this parameter name or "ERROR" if the name corresponds to any parameter
//	 */
//	std::string commGetParameter(std::string parameterName)
//	{
//		if (m_parameters != NULL) {
//			std::map<std::string, std::string>::iterator it = m_parameters->find(parameterName);
//
//			if (it != m_parameters->end()) {
//				return it->second;
//			} else {
//				std::cout << "No Parameter named : " << parameterName << "for minuit plugin" << std::endl;
//				return "ERROR";
//			}
//		} else {
//			std::cout << "No defined parameters for minuit plugin" << std::endl;
//			return "ERROR";
//		}
//	}

	/*!
	 * Run the message reception thread 
	 * Prepare the receive callback method to be passed to the DeviceManager to intercept the message
	 *
	 */
	void commRunReceivingThread()
	{
		TTValue v;
		TTInt32	port;
		TTErr	err;
		
		m_minuitMethods = new MinuitCommunicationMethods();

		if (mParameters != NULL) {
			err = mParameters->lookup(TT("port"), v);
			if (!err) {
				v.get(0, port);
				m_minuitMethods->minuitRunOSCListening(port);
			} else {
				m_minuitMethods->minuitRunOSCListening(MINUIT_RECEPTION_PORT);
			}
		}
		
		m_minuitMethods->m_setRequestCallBackArgument = this;
		m_minuitMethods->m_setRequestCallBack = &receiveSetRequestCallBack;
		
		m_minuitMethods->m_discoverRequestCallBackArgument = this;
		m_minuitMethods->m_discoverRequestCallBack = &receiveDiscoverRequestCallback;
		
		m_minuitMethods->m_getRequestCallBackArgument = this;
		m_minuitMethods->m_getRequestCallBack = &receiveGetRequestCallback;
		
		m_minuitMethods->m_listenRequestCallBackArgument = this;
		m_minuitMethods->m_listenRequestCallBack = &receiveListenRequestCallBack;
	}
	
	
	/************************************************
	 DEVICES METHODS :
	 a set of methods used to manage devices
	 note : each method of this set is prepended by 'device'
	 ************************************************/
	
//	/*!
//	 * Scan the network to find the device which want to communicate.
//	 * The deamon is not implemented here but it's possible to develop a udp broadcast
//	 *
//	 * \param netDevices : the Device map which is going to be full with the network OSC2 devices. 
//	 */	
//	void deviceSetCurrent(std::map<std::string, Device*> *netDevices)
//	{
//
//	}
//	
//	/*!
//	 * Add one device in the netDevices map
//	 *
//	 */
//	void deviceAdd(std::string deviceName, std::map<std::string, std::string> *commParameters, std::map<std::string, Device*> *netDevices)
//	{
//		Device *device = new Device(deviceName, "Minuit", commParameters);
//		netDevices->insert(std::pair<std::string, Device*>(deviceName, device));
//		
//	}
	
	/*!
	 * Let to know if the specific plugin need namespace request to get a namespace
	 *
	 * \return true if the plugin need or false if not
	 */
	bool understandDiscoverRequest()
	{
		return true;
	}
	
	
	
	
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
	 * \param returnedLeaves : the vector which is going to be full with the leaf names at the given address
	 * \param returnedAttributes : the vector which is going to be full with the attributes names at the given address
	 * \return the reception state : TIMEOUT_EXCEEDED ; NO_ANSWER ; ANSWER_RECEIVED
	 */
	int deviceSendDiscoverRequest(TTDevicePtr device, const TTValue& address, TTValue& returnedNodes, TTValue& returnedLeaves, TTValue& returnedAttributes)
	{
		int			state;
		TTString	deviceName, appName;
		TTString	addressAndAttributeString;
		TTSymbolPtr addressString, attributeString;
		TTString	stringToSend;
		TTValue		v, vDevice, vDeviceManager, vIp, vPort;
		TTErr		err1, err2;
		TTString	vString, ipString;
		TTInt32		port;
		TTString	returnedValueString;
		
		// get the remote device name
		device->getAttributeValue(TT("name"), vDevice);
		vDevice.toString();
		vDevice.get(0, deviceName);
		
		// get the local app name
		mDeviceManager->getAttributeValue(TT("name"), vDeviceManager);
		vDeviceManager.toString();
		vDeviceManager.get(0, appName);
		
		address.get(0, &addressString);
		
		// edit request
		stringToSend = appName;	// add name of application
		stringToSend += MINUIT_REQUEST_DISCOVER;
		stringToSend += " ";
		stringToSend += addressString->getString();
		
		err1 = device->getCommParameter(TT("ip"), vIp);
		err2 = device->getCommParameter(TT("port"), vPort);
		
		if (err1 || err2) {
			return kTTErrGeneric;
		}
		
		vIp.toString();
		vIp.get(0, ipString);
		vPort.get(0, port);
		
		// send request
		std::cout << "Minuit : deviceSendDiscoverRequest : " << stringToSend << std::endl;
		m_minuitMethods->minuitSendMessage(stringToSend, ipString, port);
		
		// Wait for an answer from an IP on a specific port
		addressAndAttributeString = addressString->getString();
		m_minuitMethods->minuitAddDiscoverAnswer(deviceName, addressAndAttributeString, ipString, port, DEFAULT_TIMEOUT);
		
		state = ANSWER_RECEIVED;
		do
		{
			usleep(1000);// TODO : Doesn't work on Windows, use Sleep
			state = m_minuitMethods->minuitWaitDiscoverAnswer(deviceName, addressAndAttributeString, returnedNodes, returnedLeaves, returnedAttributes);
		}
		while(state == NO_ANSWER);
		
		return state;
	}
	
	/*!
	 * Send a get request to a device to get a value at the given address
	 *
 	 * \param device : a pointer to a TTDevice instance
	 * \param address : something like "/<subDeviceName>/.../<input>"
	 * \param attribute : the asked attribute
	 * \param returnedValue : the Value which is going to be full
	 * \return the reception state : TIMEOUT_EXCEEDED ; NO_ANSWER ; ANSWER_RECEIVED
	 */
	int deviceSendGetRequest(TTDevicePtr device, const TTValue& addressAndAttribute, TTValue& returnedValue)
	{	
		int			state;
		TTString	deviceName, appName;
		TTString	addressAndAttributeString;
		TTSymbolPtr addressString, attributeString;
		TTString	stringToSend;
		TTValue		v, vDevice, vDeviceManager, vIp, vPort;
		TTErr		err1, err2;
		TTString	vString, ipString;
		TTInt32		port;
		TTString	returnedValueString;
		
		// get the remote device name
		device->getAttributeValue(TT("name"), vDevice);
		vDevice.toString();
		vDevice.get(0, deviceName);
		
		//get the local app name
		mDeviceManager->getAttributeValue(TT("name"), vDeviceManager);
		vDeviceManager.toString();
		vDeviceManager.get(0, appName);
		
		addressAndAttribute.get(0, &addressString);
		addressAndAttribute.get(1, &attributeString);
		
		// edit request
		stringToSend = appName;	// add name of application
		stringToSend += MINUIT_REQUEST_GET;
		stringToSend += " ";
		stringToSend += addressString->getString();
		stringToSend += ":";
		stringToSend += attributeString->getString();
		
		err1 = device->getCommParameter(TT("ip"), vIp);
		err2 = device->getCommParameter(TT("port"), vPort);
		
		if (err1 || err2) {
			return kTTErrGeneric;
		}
		
		vIp.toString();
		vIp.get(0, ipString);
		vPort.get(0, port);
		
		// send request
		std::cout << "Minuit : deviceSendGetRequest : " << stringToSend << std::endl;
		m_minuitMethods->minuitSendMessage(stringToSend, ipString, port);
		
		// Wait for an answer from an IP on a specific port
		addressAndAttributeString = addressString->getString() + ":" + attributeString->getString();
		m_minuitMethods->minuitAddGetAnswer(deviceName, addressAndAttributeString, DEFAULT_TIMEOUT);
		
		state = ANSWER_RECEIVED;
		do
		{
#ifdef TT_PLATFORM_WIN
			Sleep(1);
#else
			usleep(1000);// TODO : Doesn't work on Windows, use Sleep
#endif
			state = m_minuitMethods->minuitWaitGetAnswer(deviceName, addressAndAttributeString, returnedValue, false);
		}
		while(state == NO_ANSWER);
		
		return state;
	}
	
	/*!
	 * Send a set request to set a value of a specific device
	 *
	 * \param device : a pointer to a Device instance
	 * \param address : something like "/<subDeviceName>/.../<input>"
	 * \param value : anything to send
	 */
	int deviceSendSetRequest(TTDevicePtr device, TTSymbolPtr address, TTValue& value)
	{
		TTValue		v, vIp, vPort;
		TTErr		err1, err2;
		TTString	vString, ipString;
		std::string stringToSend;
		TTInt32		port;

		v = value;
		v.toString();
		v.get(0, vString);
		
		stringToSend = address->getString() + " " + vString;
		
		err1 = device->getCommParameter(TT("ip"), vIp);
		err2 = device->getCommParameter(TT("port"), vPort);
		
		if (!err1 && !err2) {
			
			vIp.toString();
			vIp.get(0, ipString);
			
			vPort.get(0, port);
			
			std::cout << "Minuit : deviceSendSetRequest : " << stringToSend << std::endl;
			m_minuitMethods->minuitSendMessage(stringToSend, ipString, port);
			
			return 1;
		}
		
		return -1;
	}
	
//	/*!
//	 * Send a listen request to a specific device
//	 *
//	 * \param device : a pointer to a Device instance
//	 * \param address : something like "/<subDeviceName>/.../<input>"
//	 * \param attribute : the attribute to listen
//	 * \param enable : enable/disable the listening
//	 */
//	int deviceSendListenRequest(Device* device, Address address, std::string attribute, bool enable)
//	{
//		std::string addressAndAttribute;
//		std::string stringToSend;
//		
//		// edit request
//		stringToSend = mDeviceManager->namespaceApplicationName();	// add name of application
//		stringToSend += MINUIT_REQUEST_LISTEN;
//		stringToSend += " ";
//		stringToSend += address;
//		stringToSend += ":";
//		stringToSend += attribute;
//		
//		stringToSend += "";
//		if(enable)
//			stringToSend += MINUIT_REQUEST_LISTEN_ENABLE;
//		else
//			stringToSend += MINUIT_REQUEST_LISTEN_DISABLE;
//		
//		// send request
//		std::cout << "Minuit : deviceSendListenRequest : " << stringToSend << std::endl;
//		m_minuitMethods->minuitSendMessage(stringToSend, device->getCommParameter("ip"), toInt(device->getCommParameter("port")));
//		
//		return 1;
//	}
	
	
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
	void deviceSendDiscoverAnswer(TTDevicePtr to, TTSymbolPtr address, TTValue& returnedNodes, TTValue& returnedLeaves, TTValue& returnedAttributes)
	{
		std::string stringToSend;
		TTValue		vDeviceManager, nodes, leaves, attributes, vIp, vPort;
		TTString	appName, sNodes, sLeaves, sAttributes, ipString;
		TTInt32		port;
		TTErr		err1, err2;
		
		//get the local app name
		mDeviceManager->getAttributeValue(TT("name"), vDeviceManager);
		vDeviceManager.toString();
		vDeviceManager.get(0, appName);
		
		// edit answer
		stringToSend = appName;	// add name of application
		stringToSend += MINUIT_ANSWER_DISCOVER;
		stringToSend += " ";
		stringToSend += address->getString();
		
		// add each nodes
		if(returnedNodes.getSize()){
			stringToSend += " ";
			stringToSend += MINUIT_START_NODES;
			stringToSend += " ";
//			for(iter = returnedNodes.begin(); iter != returnedNodes.end(); iter++)
//			{
//				stringToSend += *iter;
//				stringToSend += " ";
//			}
			nodes = returnedNodes;
			nodes.toString();
			nodes.get(0, sNodes);
			
			stringToSend += sNodes;
			stringToSend += " ";
			stringToSend += MINUIT_END_NODES;
		}
		
		// add each leaves
		if(returnedLeaves.getSize()){
			stringToSend += " ";
			stringToSend += MINUIT_START_LEAVES;
			stringToSend += " ";
//			for(iter = returnedLeaves.begin(); iter != returnedLeaves.end(); iter++)
//			{
//				stringToSend += *iter;
//				stringToSend += " ";
//			}
			leaves = returnedLeaves;
			leaves.toString();
			leaves.get(0, sLeaves);
			
			stringToSend += sLeaves;
			stringToSend += " ";
			stringToSend += MINUIT_END_LEAVES;
		}
		
		// add each attributes
		if(returnedAttributes.getSize()){
			stringToSend += " ";
			stringToSend += MINUIT_START_ATTRIBUTES;
			stringToSend += " ";
//			for(iter = returnedAttributes.begin(); iter != returnedAttributes.end(); iter++)
//			{
//				stringToSend += *iter;
//				stringToSend += " ";
//			}
			attributes = returnedAttributes;
			attributes.toString();
			attributes.get(0, sAttributes);
			
			stringToSend += sAttributes;
			stringToSend += " ";
			stringToSend += MINUIT_END_ATTRIBUTES;
		}
		
		err1 = to->getCommParameter(TT("ip"), vIp);
		err2 = to->getCommParameter(TT("port"), vPort);
		
		if (!err1 && !err2) {
			
			vIp.toString();
			vIp.get(0, ipString);
			
			vPort.get(0, port);
			
			// DEBUG
			std::cout << "Minuit : deviceSendNamespaceAnswer : " << stringToSend << std::endl;
			
			// send answer
			m_minuitMethods->minuitSendMessage(stringToSend, ipString, port);
		}
	}
	
	/*!
	 * Send a get answer to a device which ask for.
	 *
	 * \param to : the device where to send answer
	 * \param address : the address where comes from the value
	 * \param attribute : the attribute where comes from the value
	 * \param returnedValue : the value of the attribute at the address
	 */
	void deviceSendGetAnswer(TTDevicePtr to, TTSymbolPtr address, TTSymbolPtr attribute, TTValue& returnedValue)
	{
		TTValue		v, vIp, vPort, vDeviceManager;
		TTErr		err1, err2;
		TTString	vString, ipString, appName;
		std::string stringToSend;
		TTInt32		port;
		
		//get the local app name
		mDeviceManager->getAttributeValue(TT("name"), vDeviceManager);
		vDeviceManager.toString();
		vDeviceManager.get(0, appName);
		
		v = returnedValue;
		v.toString();
		v.get(0, vString);
		
		stringToSend = appName;	// add name of application
		stringToSend += MINUIT_ANSWER_GET;
		stringToSend += " ";		
		stringToSend += address->getString();
		stringToSend += ":";
		stringToSend += attribute->getString();
		stringToSend += " ";
		stringToSend += vString;
		
		err1 = to->getCommParameter(TT("ip"), vIp);
		err2 = to->getCommParameter(TT("port"), vPort);
		
		if (!err1 && !err2) {
			
			vIp.toString();
			vIp.get(0, ipString);
			
			vPort.get(0, port);
			
			std::cout << "Minuit : deviceSendGetAnswer : " << stringToSend << std::endl;
			m_minuitMethods->minuitSendMessage(stringToSend, ipString, port);
		}
	}
	
//	/*!
//	 * Send a listen answer to a device which ask for.
//	 *
//	 * \param to : the device where to send answer
//	 * \param address : the address where comes from the value
//	 * \param attribute : the attribute where comes from the value
//	 * \param returnedValue : the value of the attribute at the address
//	 */
//	void deviceSendListenAnswer(Device* to, Address address, std::string attribute, Value& returnedValue)
//	{
//		std::string stringToSend;
//		
//		// edit answer
//		stringToSend = mDeviceManager->namespaceApplicationName();	// add name of application
//		stringToSend += MINUIT_ANSWER_LISTEN;
//		stringToSend += " ";
//		stringToSend += address;
//		stringToSend += ":";
//		stringToSend += attribute;
//		
//		// add value
//		stringToSend += " ";
//		stringToSend += returnedValue;
//		
//		// DEBUG
//		std::cout << "Minuit : deviceSendListenAnswer : " << stringToSend << std::endl;
//		
//		//send answer
//		m_minuitMethods->minuitSendMessage(stringToSend, to->getCommParameter("ip"), toInt(to->getCommParameter("port")));
//	}
	
	
	
	
	/**************************************************************************************************************************
	 *
	 *	RECEIVE ANSWER METHODS : No methods because each plugin deals with answers when it send a request (maybe we could add an answer manager)
	 *
	 **************************************************************************************************************************/
	
};

/*!
 *
 * The receive callback methods
 *
 */

void receiveDiscoverRequestCallback(void* arg, std::string from, std::string address)
{
	std::cout << "receiveDiscoverRequestCallback" << std::endl;
	TTDevicePtr fromDevice = NULL;
	Minuit*		minuit = (Minuit*) arg;
	TTErr		err;
	TTNodePtr	deviceNodeToAnswer;
	TTObjectPtr	o;
	
	// get device
	err = getDirectoryFrom(minuit->mDeviceManager)->getTTNodeForOSC(TT("/" + from), &deviceNodeToAnswer);
	if (!err) {
		if (o = deviceNodeToAnswer->getObject()) {
			if (o->getName() == TT("Device")) {
				fromDevice = (TTDevicePtr)o;
				
				// Use built-in plugin method
				minuit->deviceReceiveDiscoverRequest(fromDevice, TT(address));
			}
		}
	}
}

void receiveGetRequestCallback(void* arg, std::string from, std::string address, std::string attribute)
{
	std::cout << "receiveGetRequestCallback" << std::endl;
	TTDevicePtr fromDevice = NULL;
	Minuit*		minuit = (Minuit*) arg;
	TTErr		err;
	TTNodePtr	deviceNodeToAnswer;
	TTObjectPtr	o;
	
	// get device
	err = getDirectoryFrom(minuit->mDeviceManager)->getTTNodeForOSC(TT("/" + from), &deviceNodeToAnswer);
	if (!err) {
		if (o = deviceNodeToAnswer->getObject()) {
			if (o->getName() == TT("Device")) {
				fromDevice = (TTDevicePtr)o;
				
				// Use built-in plugin method
				minuit->deviceReceiveGetRequest(fromDevice, TT(address), TT(attribute));
			}
		}
	}
}

void receiveSetRequestCallBack(void* arg, std::string from, std::string address, std::string attribute, TTValue& value)
{
	TTDevicePtr	fromDevice = NULL;												// this is optionnal (used to notify in case of error)
	Minuit*		minuit = (Minuit*) arg;
	TTValue     v;
	TTErr		err;
	TTNodePtr	deviceNodeToAnswer;
	TTObjectPtr	o;
	
	// get device
	err = getDirectoryFrom(minuit->mDeviceManager)->getTTNodeForOSC(TT("/" + from), &deviceNodeToAnswer);
	if (!err) {
		if (o = deviceNodeToAnswer->getObject()) {
			if (o->getName() == TT("Device")) {
				fromDevice = (TTDevicePtr)o;
			}
		}
	}

	// Use built-in plugin method (fromDevice could be NULL)
	minuit->deviceReceiveSetRequest(fromDevice, TT(address), TT(attribute), value);
}

void receiveListenRequestCallBack(void* arg, std::string from, std::string address, std::string attribute, bool enable)
{
//	Device* fromDevice;
//	Address whereToListen = address;
//	Minuit* minuit = (Minuit*) arg;
//	
//	// get device
//	if(fromDevice = minuit->mDeviceManager->deviceGet(from))
//		// Use built-in plugin method
//		minuit->deviceReceiveListenRequest(fromDevice, whereToListen, attribute, enable);
}


/*!
 * \class MinuitFactory
 *
 * It's the Minuit plugin informations
 * 
 */
class MinuitFactory : public PluginFactory {
	std::string getPluginName()		{return "Minuit";}
	std::string getPluginVersion()	{return "0.2";}
	std::string getPluginAuthor()	{return "Raphael Marczak/Laurent Garnier/Theo Delahogue";}
	PluginPtr getInstance(TTDeviceManagerPtr deviceManager){
		Minuit *minuit = new Minuit(); 
		minuit->setDeviceManager(deviceManager);
		return minuit;
	}
};

extern "C" {
	PluginFactory* createFactory() {
		return new MinuitFactory();
	}
}


