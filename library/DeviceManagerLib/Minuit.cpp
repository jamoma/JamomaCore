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

		mParameters->clear();
		delete mParameters;
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
	void commDefineParameters(TTValue& parameters)
	{
		std::cout << "parameters size = " << parameters.getSize() << std::endl;
		
		TTSymbolPtr commParamName, commParam_SymValue;
		TTInt32		commParam_IntValue = 0;
		TTFloat64	commParam_FloatValue;
		TTValue		commParamValue, pluginPtrValue, args;
		TTString	commParamValueStr;
		TTUInt8		i;

		for (i = 0; i < (parameters.getSize()-1); i = i+2) {

			if (parameters.getType(i) == kTypeSymbol) {
				parameters.get(i, &commParamName);
				if ((i+1) < parameters.getSize() ) {

					commParamValue.clear();
					if (parameters.getType(i+1) == kTypeSymbol) {
						parameters.get(i+1, &commParam_SymValue);
						commParamValue.append(commParam_SymValue);
					}
					else if (parameters.getType(i+1) == kTypeInt32) {
						parameters.get(i+1, commParam_IntValue);
						commParamValue.append((int)commParam_IntValue);
					}
					else if (parameters.getType(i+1) == kTypeFloat64) {
						parameters.get(i+1, commParam_FloatValue);
						commParamValue.append(commParam_FloatValue);
					}

					mParameters->append(commParamName, commParamValue);

				}
			}
		}
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
		TTValue		v;
		TTInt32		port;
		TTErr		err;
		
		m_minuitMethods = new MinuitCommunicationMethods();

		//for (i = 0; i < (mParams.getSize()-1); i = i+2) {

		//	mParams.get(i, &commParamName);

		//	if ((i+1) < mParams.getSize() && commParamName->getString() == TT("port")) {

		//		mParams.get(i+1, port);
		//		found = true;
		//	}
		//}

		//if (found) {
		//	m_minuitMethods->minuitRunOSCListening(port);
		//} else {
		//	m_minuitMethods->minuitRunOSCListening(MINUIT_RECEPTION_PORT);
		//}

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
	int deviceSendDiscoverRequest(TTDevicePtr device, TTSymbolPtr address, TTValue& returnedNodes, TTValue& returnedLeaves, TTValue& returnedAttributes)
	{
		int			state;
		TTString    deviceName, appName;
		TTString	addressAndAttributeString;
		TTCString	addressString;
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
		
		// get the node address to discover (convert it from const char* to char*)
		const char* cc = address->getCString();
		addressString = _strdup(cc);
		
		// edit request
		stringToSend = appName;	// add name of application
		stringToSend += MINUIT_REQUEST_DISCOVER;
		stringToSend += " ";
		stringToSend += addressString;
		
		err1 = device->getCommParameter(TT("ip"), vIp);
		err2 = device->getCommParameter(TT("port"), vPort);
		
		if (err1 || err2) {
			return kTTErrGeneric;
		}
		
		vIp.toString();
		vIp.get(0, ipString);
		vPort.get(0, port);
		
		// send request
		v.clear();
		std::cout << "Minuit : deviceSendDiscoverRequest : " << stringToSend << std::endl;
		m_minuitMethods->minuitSendMessage(stringToSend, v, ipString, port);
		
		// Wait for an answer from an IP on a specific port
		addressAndAttributeString = addressString;
		m_minuitMethods->minuitAddDiscoverAnswer(deviceName, addressAndAttributeString, ipString, port, DEFAULT_TIMEOUT);
		
		state = ANSWER_RECEIVED;
		do
		{
#ifdef TT_PLATFORM_WIN
			Sleep(1);
#else
			usleep(1000);
#endif
			state = m_minuitMethods->minuitWaitDiscoverAnswer(deviceName, addressAndAttributeString, returnedNodes, returnedLeaves, returnedAttributes);
		}
		while(state == NO_ANSWER);

		delete addressString;
		
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
	int deviceSendGetRequest(TTDevicePtr device, TTSymbolPtr address, TTSymbolPtr attribute, TTValue& returnedValue)
	{	
		std::cout << "Minuit : deviceSendGetRequest call" << std::endl;
		int			state;
		TTString	appName, deviceName;
		TTString	addressAndAttributeString;
		TTCString	addressCString, attributeCString;
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
		
		const char* cc1 = address->getCString();
		addressCString = _strdup(cc1);
		const char* cc2 = attribute->getCString();
		attributeCString = _strdup(cc2);
		
		// edit request
		stringToSend = appName;	// add name of application
		stringToSend += MINUIT_REQUEST_GET;
		stringToSend += " ";
		stringToSend += addressCString;
		stringToSend += ":";
		stringToSend += attributeCString;
		
		err1 = device->getCommParameter(TT("ip"), vIp);
		err2 = device->getCommParameter(TT("port"), vPort);
		
		if (err1 || err2) {
			std::cout << "aie" << std::endl;
			return kTTErrGeneric;
		}
		
		vIp.toString();
		vIp.get(0, ipString);
		vPort.get(0, port);
		
		// send request
		v.clear();
		std::cout << "Minuit : deviceSendGetRequest : " << stringToSend << std::endl;
		m_minuitMethods->minuitSendMessage(stringToSend, v, ipString, port);
		
		// Wait for an answer from an IP on a specific port
		addressAndAttributeString = addressCString;
		addressAndAttributeString += ":";
		addressAndAttributeString += attributeCString;

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
		
		delete addressCString;
		delete attributeCString;

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
		//v.toString();
		//v.get(0, vString);
		
		const char* cc = address->getCString();
		char* s = _strdup(cc);
		stringToSend = s;
		//stringToSend += " " + vString;
		
		err1 = device->getCommParameter(TT("ip"), vIp);
		err2 = device->getCommParameter(TT("port"), vPort);
		
		if (!err1 && !err2) {
			
			vIp.toString();
			vIp.get(0, ipString);
			
			vPort.get(0, port);
			
			std::cout << "Minuit : deviceSendSetRequest : " << stringToSend << std::endl;
			m_minuitMethods->minuitSendMessage(stringToSend, v, ipString, port);
			
			delete s;

			return 1;
		}
		
		return -1;
	}
	
	/*!
	 * Send a listen request to a specific device
	 *
	 * \param device : a pointer to a Device instance
	 * \param address : something like "/<subDeviceName>/.../<input>"
	 * \param attribute : the attribute to listen
	 * \param enable : enable/disable the listening
	 */
	int deviceSendListenRequest(TTDevicePtr device, TTSymbolPtr address, TTSymbolPtr attribute, bool enable)
	{
		TTString	stringToSend, appName;
		TTValue		v, vDevice, vDeviceManager, vIp, vPort;
		TTErr		err1, err2;
		TTString	vString, ipString;
		TTInt32		port;

		// get the local app name
		mDeviceManager->getAttributeValue(TT("name"), vDeviceManager);
		vDeviceManager.toString();
		vDeviceManager.get(0, appName);
		
		// edit request
		stringToSend = appName;	// add name of application
		stringToSend += MINUIT_REQUEST_LISTEN;
		stringToSend += " ";
		stringToSend += address->getCString();
		stringToSend += ":";
		stringToSend += attribute->getCString();
		
		stringToSend += "";
		if(enable)
			stringToSend += MINUIT_REQUEST_LISTEN_ENABLE;
		else
			stringToSend += MINUIT_REQUEST_LISTEN_DISABLE;

		// get the device ip and port parameters
		err1 = device->getCommParameter(TT("ip"), vIp);
		err2 = device->getCommParameter(TT("port"), vPort);
		
		if (err1 || err2) {
			return kTTErrGeneric;
		}
		
		vIp.toString();
		vIp.get(0, ipString);
		vPort.get(0, port);
		
		// send request
		v.clear();
		std::cout << "Minuit : deviceSendListenRequest : " << stringToSend << std::endl;
		m_minuitMethods->minuitSendMessage(stringToSend, v, ipString, port);
		
		return 1;
	}
	
	
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
		TTValue		vDeviceManager, nodes, leaves, attributes, vIp, vPort, v;
		TTString	appName, sNodes, sLeaves, sAttributes, ipString;
		TTInt32		port;
		TTErr		err1, err2;
		
		// get the local app name
		mDeviceManager->getAttributeValue(TT("name"), vDeviceManager);
		vDeviceManager.toString();
		vDeviceManager.get(0, appName);

		// get the node address to discover (convert it from const char* to char*)
		const char* cc = address->getCString();
		char *addressString = _strdup(cc);
		
		// edit answer
		stringToSend = appName;	// add name of application
		stringToSend += MINUIT_ANSWER_DISCOVER;
		stringToSend += " ";
		stringToSend += addressString;
		
		// add each nodes
		if(returnedNodes.getSize()){
			stringToSend += " ";
			stringToSend += MINUIT_START_NODES;
			stringToSend += " ";

			for(int i = 0; i < returnedNodes.getSize(); i++) {
				char* s;
				returnedNodes.get(i, (TTPtr*)&s);

				stringToSend += s;
				stringToSend += " ";
			}
			stringToSend += MINUIT_END_NODES;

			//nodes = returnedNodes;
			//nodes.toString();
			//nodes.get(0, sNodes);
			
			//stringToSend += sNodes;
			//stringToSend += " ";
			//stringToSend += MINUIT_END_NODES;
		}
		
		// add each leaves
		if(returnedLeaves.getSize()){
			stringToSend += " ";
			stringToSend += MINUIT_START_LEAVES;
			stringToSend += " ";

			//leaves = returnedLeaves;
			//leaves.toString();
			//leaves.get(0, sLeaves);//provoque un bug ss windows si sLeaves > 15 caractères (STL/DLL bug)
			//
			//stringToSend += sLeaves;
			//stringToSend += " ";
			//stringToSend += MINUIT_END_LEAVES;

			for(int i = 0; i < returnedLeaves.getSize(); i++) {
				char* s;
				returnedLeaves.get(i, (TTPtr*)&s);

				stringToSend += s;
				stringToSend += " ";
			}
			stringToSend += MINUIT_END_LEAVES;
		}
		
		// add each attributes
		if(returnedAttributes.getSize()){
			stringToSend += " ";
			stringToSend += MINUIT_START_ATTRIBUTES;
			stringToSend += " ";

			for(int i = 0; i < returnedAttributes.getSize(); i++) {
				char* s;
				returnedAttributes.get(i, (TTPtr*)&s);

				stringToSend += s;
				stringToSend += " ";
			}
			stringToSend += MINUIT_END_ATTRIBUTES;

			//attributes = returnedAttributes;
			//attributes.toString();
			//attributes.get(0, sAttributes);
			//
			//stringToSend += sAttributes;
			//stringToSend += " ";
			//stringToSend += MINUIT_END_ATTRIBUTES;
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
			v.clear();
			m_minuitMethods->minuitSendMessage(stringToSend, v, ipString, port);
		}

		delete addressString;
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
		
		// get the local app name
		mDeviceManager->getAttributeValue(TT("name"), vDeviceManager);
		vDeviceManager.toString();
		vDeviceManager.get(0, appName);

		// get the node address and attribute to get (convert it from const char* to char*)
		const char* cc1 = address->getCString();
		char* addressCString = _strdup(cc1);
		const char* cc2 = attribute->getCString();
		char* attributeCString = _strdup(cc2);
		
		// get the returned value as a string
		v = returnedValue;
		//v.toString();
		//v.get(0, vString);
		
		stringToSend = appName;	// add name of application
		stringToSend += MINUIT_ANSWER_GET;
		stringToSend += " ";		
		stringToSend += addressCString;
		stringToSend += ":";
		stringToSend += attributeCString;
		//stringToSend += " ";
		//stringToSend += vString;
		
		err1 = to->getCommParameter(TT("ip"), vIp);
		err2 = to->getCommParameter(TT("port"), vPort);
		
		if (!err1 && !err2) {
			
			vIp.toString();
			vIp.get(0, ipString);
			
			vPort.get(0, port);
			
			std::cout << "Minuit : deviceSendGetAnswer : " << stringToSend << std::endl;
			m_minuitMethods->minuitSendMessage(stringToSend, v, ipString, port);
		}

		delete addressCString;
		delete attributeCString;
	}
	
	/*!
	 * Send a listen answer to a device which ask for.
	 *
	 * \param to : the device where to send answer
	 * \param address : the address where comes from the value
	 * \param attribute : the attribute where comes from the value
	 * \param returnedValue : the value of the attribute at the address
	 */
	void deviceSendListenAnswer(TTDevicePtr to, TTSymbolPtr address, TTSymbolPtr attribute, TTValue& returnedValue)
	{
		TTString	stringToSend, appName;
		TTValue		v, vDevice, vDeviceManager, vIp, vPort;
		TTErr		err1, err2;
		TTString	vString, ipString;
		TTInt32		port;

		// get the local app name
		mDeviceManager->getAttributeValue(TT("name"), vDeviceManager);
		vDeviceManager.toString();
		vDeviceManager.get(0, appName);
		
		// edit request
		stringToSend = appName;	// add name of application
		stringToSend += MINUIT_ANSWER_LISTEN;
		stringToSend += " ";
		stringToSend += address->getCString();
		stringToSend += ":";
		stringToSend += attribute->getCString();
		
		// add value
		//stringToSend += " ";
		//stringToSend += returnedValue;
		
		// get the device ip and port parameters
		err1 = to->getCommParameter(TT("ip"), vIp);
		err2 = to->getCommParameter(TT("port"), vPort);
		
		vIp.toString();
		vIp.get(0, ipString);
		vPort.get(0, port);
		
		// send request
		v = returnedValue;
		std::cout << "Minuit : deviceSendListenAnswer : " << stringToSend << std::endl;
		m_minuitMethods->minuitSendMessage(stringToSend, v, ipString, port);
	}
	
	
	
	
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
	TTValue		v, devicePtrValue;
	TTHashPtr	devices = new TTHash();
	
	// get device
	minuit->getDeviceManager()->getAttributeValue(TT("devices"), v);
	v.get(0, (TTPtr*)&devices);

	//devices->setThreadProtection(false);
	err = devices->lookup(TT("/" + from), devicePtrValue);
	if (!err) {
		devicePtrValue.get(0, (TTPtr*)&fromDevice);
				
		// use built-in plugin method
		minuit->deviceReceiveDiscoverRequest(fromDevice, TT(address));
	}
}

void receiveGetRequestCallback(void* arg, std::string from, std::string address, std::string attribute)
{
	std::cout << "receiveGetRequestCallback" << std::endl;
	TTDevicePtr fromDevice = NULL;
	Minuit*		minuit = (Minuit*) arg;
	TTErr		err;
	TTValue		v, devicePtrValue, lst;
	TTHashPtr	devices = new TTHash();
	TTString	s;
	
	// get device
	minuit->getDeviceManager()->getAttributeValue(TT("devices"), v);
	v.get(0, (TTPtr*)&devices);

	err = devices->lookup(TT("/" + from), devicePtrValue);
	if (!err) {
		devicePtrValue.get(0, (TTPtr*)&fromDevice);
		
		// use built-in plugin method
		minuit->deviceReceiveGetRequest(fromDevice, TT(address), TT(attribute));
	}
}

void receiveSetRequestCallBack(void* arg, std::string from, std::string address, std::string attribute, TTValue& value)
{
	TTDevicePtr	fromDevice = NULL;												// this is optionnal (used to notify in case of error)
	Minuit*		minuit = (Minuit*) arg;
	TTValue     v, devicePtrValue;
	TTErr		err;
	TTHashPtr	devices = new TTHash();
	
	// get device
	minuit->getDeviceManager()->getAttributeValue(TT("devices"), v);
	v.get(0, (TTPtr*)&devices);

	err = devices->lookup(TT("/" + from), devicePtrValue);
	if (!err) {
		devicePtrValue.get(0, (TTPtr*)&fromDevice);
	}

	// use built-in plugin method (fromDevice could be NULL)
	minuit->deviceReceiveSetRequest(fromDevice, TT(address), TT(attribute), value);
}

void receiveListenRequestCallBack(void* arg, std::string from, std::string whereToListen, std::string attribute, bool enable)
{
	TTDevicePtr	fromDevice = NULL;
	Minuit*		minuit = (Minuit*) arg;
	TTValue     v, devicePtrValue;
	TTErr		err;
	TTHashPtr	devices = new TTHash();
	
	// get device
	minuit->getDeviceManager()->getAttributeValue(TT("devices"), v);
	v.get(0, (TTPtr*)&devices);

	err = devices->lookup(TT("/" + from), devicePtrValue);
	if (!err) {
		devicePtrValue.get(0, (TTPtr*)&fromDevice);

		// Use built-in plugin method
		minuit->deviceReceiveListenRequest(fromDevice, TT(whereToListen), TT(attribute), enable);
	}
}


/*!
 * \class MinuitFactory
 *
 * It's the Minuit plugin informations
 * 
 */
class MinuitFactory : public PluginFactory {
	const char* getPluginName()		{return "Minuit";}
	const char* getPluginVersion()	{return "0.2";}
	const char* getPluginAuthor()	{return "Raphael Marczak/Laurent Garnier/Theo Delahogue";}
	PluginPtr getInstance(TTDeviceManagerPtr deviceManager) {
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
