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

#include "PluginHandler.h"

#include "Minuit/MinuitInclude.hpp"
#include "Minuit/MinuitCommunicationMethods.hpp"

#include <sstream>

static const unsigned int MINUIT_RECEPTION_PORT = 7002;

void receiveDiscoverRequestCallback(TTPtr arg, TTString from, TTString address);
void receiveGetRequestCallback(TTPtr arg, TTString from, TTString address, TTString attribute);
void receiveSetRequestCallBack(TTPtr arg, TTString from, TTString address, TTString attribute, TTValue& value);
void receiveListenRequestCallBack(TTPtr arg, TTString from, TTString address, TTString attribute, bool enable);

class Minuit : public PluginHandler {
	
private:
	
	MinuitCommunicationMethods* m_minuitMethods;		//this class contains the osc communication methods
	
	friend void receiveDiscoverRequestCallback(TTPtr arg, TTString from, TTString address);
	friend void receiveGetRequestCallback(TTPtr arg, TTString from, TTString address, TTString attribute);
	friend void receiveSetRequestCallBack(TTPtr arg, TTString from, TTString address, TTString attribute, TTValue& value);
	friend void receiveListenRequestCallBack(TTPtr arg, TTString from, TTString address, TTString attribute, bool enable);
	
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
	 * Define the application parameters needs by each application to communicate
	 *
	 */
	TTErr commDefineParameters(TTValue& parameters)
	{
		TTSymbolPtr commParamName, commParam_SymValue;
		TTInt32		commParam_IntValue = 0;
		TTFloat64	commParam_FloatValue;
		TTValue		commParamValue;
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
		
		return kTTErrNone;
	}

	/*!
	 * Run the message reception thread 
	 * Prepare the receive callback method to be passed to the ApplicationManager to intercept the message
	 *
	 */
	TTErr commRunReceivingThread()
	{
		TTValue		v;
		TTInt32		port;
		TTErr		err;
		
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
		
		return kTTErrNone;
	}
	
	
	/************************************************
	 DEVICES METHODS :
	 a set of methods used to manage applications
	 note : each method of this set is prepended by 'application'
	 ************************************************/

//	/*!
//	 * Add one application in the netApplications map
//	 *
//	 */
//	TTErr applicationAdd(TTString applicationName, std::map<TTString, TTString> *commParameters, std::map<TTString, Application*> *netApplications)
//	{
//		Application *application = new Application(applicationName, "Minuit", commParameters);
//		netApplications->insert(std::pair<TTString, Application*>(applicationName, application));
//		
//	}
	
	/*!
	 * Let to know if the specific plugin need namespace request to get a namespace
	 *
	 * \return true if the plugin need or false if not
	 */
	TTBoolean understandDiscoverRequest()
	{
		return true;
	}
	
	
	
	
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
	 * \param returnedNodes : the vector which is going to be full with the node names at the given address
	 * \param returnedLeaves : the vector which is going to be full with the leaf names at the given address
	 * \param returnedAttributes : the vector which is going to be full with the attributes names at the given address
	 * \return the reception state : TIMEOUT_EXCEEDED ; NO_ANSWER ; ANSWER_RECEIVED
	 */
	TTErr applicationSendDiscoverRequest(TTApplicationPtr application, TTSymbolPtr address, TTValue& returnedNodes, TTValue& returnedLeaves, TTValue& returnedAttributes)
	{
		int			state;
		TTString    applicationName, appName;
		TTString	addressAndAttributeString;
		TTString	stringToSend;
		TTValue		v, vApplication, vApplicationManager, vIp, vPort;
		TTErr		err1, err2;
		TTString	vString, ipString;
		TTInt32		port;
		TTString	returnedValueString;
		
		// get the remote application name
		application->getAttributeValue(TT("name"), vApplication);
		vApplication.toString();
		vApplication.get(0, applicationName);
		
		// get the local app name
		mApplicationManager->getAttributeValue(TT("name"), vApplicationManager);
		vApplicationManager.toString();
		vApplicationManager.get(0, appName);
		
		// edit request
		stringToSend = appName;	// add name of application
		stringToSend += MINUIT_REQUEST_DISCOVER;
		stringToSend += " ";
		stringToSend += address->getCString();
		
		err1 = application->getCommParameter(TT("ip"), vIp);
		err2 = application->getCommParameter(TT("port"), vPort);
		
		if (err1 || err2) {
			return kTTErrGeneric;
		}
		
		vIp.toString();
		vIp.get(0, ipString);
		vPort.get(0, port);
		
		// send request
		v.clear();
		
#ifdef TT_PLUGIN_DEBUG
		std::cout << "Minuit : applicationSendDiscoverRequest : " << stringToSend << std::endl;
#endif
		m_minuitMethods->minuitSendMessage(stringToSend, v, ipString, port);
		
		// Wait for an answer from an IP on a specific port
		m_minuitMethods->minuitAddDiscoverAnswer(applicationName, address->getCString(), ipString, port, DEFAULT_TIMEOUT);
		
		state = ANSWER_RECEIVED;
		do
		{
#ifdef TT_PLATFORM_WIN
			Sleep(1);
#else
			usleep(1000);
#endif
			state = m_minuitMethods->minuitWaitDiscoverAnswer(applicationName, address->getCString(), returnedNodes, returnedLeaves, returnedAttributes);
		}
		while(state == NO_ANSWER);
		
		if (state == ANSWER_RECEIVED) {
			return kTTErrNone;
		} else {
			return kTTErrGeneric;
		}
	}
	
	/*!
	 * Send a get request to a application to get a value at the given address
	 *
 	 * \param application : a pointer to a TTApplication instance
	 * \param address : something like "/<subApplicationName>/.../<input>"
	 * \param attribute : the asked attribute
	 * \param returnedValue : the Value which is going to be full
	 * \return the reception state : TIMEOUT_EXCEEDED ; NO_ANSWER ; ANSWER_RECEIVED
	 */
	TTErr applicationSendGetRequest(TTApplicationPtr application, TTSymbolPtr address, TTSymbolPtr attribute, TTValue& returnedValue)
	{	
		int			state;
		TTString	appName, applicationName;
		TTString	addressAndAttributeString;
		TTString	stringToSend;
		TTValue		v, vApplication, vApplicationManager, vIp, vPort;
		TTErr		err1, err2;
		TTString	vString, ipString;
		TTInt32		port;
		TTString	returnedValueString;
		
		// get the remote application name
		application->getAttributeValue(TT("name"), vApplication);
		vApplication.toString();
		vApplication.get(0, applicationName);
		
		// get the local app name
		mApplicationManager->getAttributeValue(TT("name"), vApplicationManager);
		vApplicationManager.toString();
		vApplicationManager.get(0, appName);
		
		// edit request
		stringToSend = appName;	// add name of application
		stringToSend += MINUIT_REQUEST_GET;
		stringToSend += " ";
		stringToSend += address->getCString();
		stringToSend += ":";
		stringToSend += attribute->getCString();
		
		err1 = application->getCommParameter(TT("ip"), vIp);
		err2 = application->getCommParameter(TT("port"), vPort);
		
		if (err1 || err2) {
			return kTTErrGeneric;
		}
		
		vIp.toString();
		vIp.get(0, ipString);
		vPort.get(0, port);
		
		// send request
		v.clear();
		
#ifdef TT_PLUGIN_DEBUG
		std::cout << "Minuit : applicationSendGetRequest : " << stringToSend << std::endl;
#endif
		m_minuitMethods->minuitSendMessage(stringToSend, v, ipString, port);
		
		// Wait for an answer from an IP on a specific port
		addressAndAttributeString = address->getCString();
		addressAndAttributeString += ":";
		addressAndAttributeString += attribute->getCString();

		m_minuitMethods->minuitAddGetAnswer(applicationName, addressAndAttributeString, DEFAULT_TIMEOUT);
		
		state = ANSWER_RECEIVED;
		do
		{
#ifdef TT_PLATFORM_WIN
			Sleep(1);
#else
			usleep(1000);
#endif
			state = m_minuitMethods->minuitWaitGetAnswer(applicationName, addressAndAttributeString, returnedValue, false);
		}
		while(state == NO_ANSWER);

		if (state == ANSWER_RECEIVED) {
			return kTTErrNone;
		} else {
			return kTTErrGeneric;
		}
	}
	
	/*!
	 * Send a set request to set a value of a specific application
	 *
	 * \param application : a pointer to a Application instance
	 * \param address : something like "/<subApplicationName>/.../<input>"
	 * \param value : anything to send
	 */
	TTErr applicationSendSetRequest(TTApplicationPtr application, TTSymbolPtr address, TTSymbolPtr attribute, TTValue& value)
	{
		TTValue		v, vIp, vPort;
		TTErr		err1, err2;
		TTString	vString, ipString;
		TTString stringToSend;
		TTInt32		port;

		v = value;

		stringToSend = address->getCString();
		stringToSend += ":";
		stringToSend += attribute->getCString();
		
		err1 = application->getCommParameter(TT("ip"), vIp);
		err2 = application->getCommParameter(TT("port"), vPort);
		
		if (!err1 && !err2) {
			
			vIp.toString();
			vIp.get(0, ipString);
			
			vPort.get(0, port);

#ifdef TT_PLUGIN_DEBUG
			std::cout << "Minuit : applicationSendSetRequest : " << stringToSend << std::endl;
#endif
			m_minuitMethods->minuitSendMessage(stringToSend, v, ipString, port);

			return kTTErrNone;
		}
		
		return kTTErrGeneric;
	}
	
	/*!
	 * Send a listen request to a specific application
	 *
	 * \param application : a pointer to a Application instance
	 * \param address : something like "/<subApplicationName>/.../<input>"
	 * \param attribute : the attribute to listen
	 * \param enable : enable/disable the listening
	 */
	TTErr applicationSendListenRequest(TTApplicationPtr application, TTSymbolPtr address, TTSymbolPtr attribute, bool enable)
	{
		TTString	stringToSend, appName;
		TTValue		v, vApplication, vApplicationManager, vIp, vPort;
		TTErr		err1, err2;
		TTString	vString, ipString;
		TTInt32		port;

		// get the local app name
		mApplicationManager->getAttributeValue(TT("name"), vApplicationManager);
		vApplicationManager.toString();
		vApplicationManager.get(0, appName);
		
		// edit request
		stringToSend = appName;	// add name of application
		stringToSend += MINUIT_REQUEST_LISTEN;
		stringToSend += " ";
		stringToSend += address->getCString();
		stringToSend += ":";
		stringToSend += attribute->getCString();
		
		stringToSend += " ";
		if(enable)
			stringToSend += MINUIT_REQUEST_LISTEN_ENABLE;
		else
			stringToSend += MINUIT_REQUEST_LISTEN_DISABLE;

		// get the application ip and port parameters
		err1 = application->getCommParameter(TT("ip"), vIp);
		err2 = application->getCommParameter(TT("port"), vPort);
		
		if (err1 || err2) {
			return kTTErrGeneric;
		}
		
		vIp.toString();
		vIp.get(0, ipString);
		vPort.get(0, port);
		
		// send request
		v.clear();
		
#ifdef TT_PLUGIN_DEBUG
		std::cout << "Minuit : applicationSendListenRequest : " << stringToSend << std::endl;
#endif
		m_minuitMethods->minuitSendMessage(stringToSend, v, ipString, port);
		
		return kTTErrNone;
	}
	
	
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
	TTErr applicationSendDiscoverAnswer(TTApplicationPtr to, TTSymbolPtr address, TTValue& returnedNodes, TTValue& returnedLeaves, TTValue& returnedAttributes)
	{
		TTString	stringToSend;
		TTValue		vApplicationManager, nodes, leaves, attributes, vIp, vPort, v;
		TTString	appName, sNodes, sLeaves, sAttributes, ipString;
		TTInt32		port;
		TTErr		err1, err2;
		
		// get the local app name
		mApplicationManager->getAttributeValue(TT("name"), vApplicationManager);
		vApplicationManager.toString();
		vApplicationManager.get(0, appName);
		
		// edit answer
		stringToSend = appName;	// add name of application
		stringToSend += MINUIT_ANSWER_DISCOVER;
		stringToSend += " ";
		stringToSend += address->getCString();
		
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
		}
		
		// add each leaves
		if(returnedLeaves.getSize()){
			stringToSend += " ";
			stringToSend += MINUIT_START_LEAVES;
			stringToSend += " ";

			//leaves = returnedLeaves;
			//leaves.toString();
			//leaves.get(0, sLeaves);//provoque un bug ss windows si sLeaves > 15 caractËres (STL/DLL bug)

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
		}
		
		err1 = to->getCommParameter(TT("ip"), vIp);
		err2 = to->getCommParameter(TT("port"), vPort);
		
		if (!err1 && !err2) {
			
			vIp.toString();
			vIp.get(0, ipString);
			
			vPort.get(0, port);
			
#ifdef TT_PLUGIN_DEBUG
			std::cout << "Minuit : applicationSendNamespaceAnswer : " << stringToSend << std::endl;
#endif

			// send answer
			v.clear();
			m_minuitMethods->minuitSendMessage(stringToSend, v, ipString, port);
			
			return kTTErrNone;
		}
		
		return kTTErrGeneric;
	}
	
	/*!
	 * Send a get answer to a application which ask for.
	 *
	 * \param to : the application where to send answer
	 * \param address : the address where comes from the value
	 * \param attribute : the attribute where comes from the value
	 * \param returnedValue : the value of the attribute at the address
	 */
	TTErr applicationSendGetAnswer(TTApplicationPtr to, TTSymbolPtr address, TTSymbolPtr attribute, TTValue& returnedValue)
	{
		TTValue		v, vIp, vPort, vApplicationManager;
		TTErr		err1, err2;
		TTString	vString, ipString, appName;
		TTString stringToSend;
		TTInt32		port;
		
		// get the local app name
		mApplicationManager->getAttributeValue(TT("name"), vApplicationManager);
		vApplicationManager.toString();
		vApplicationManager.get(0, appName);
		
		// get the returned value
		v = returnedValue;
		
		stringToSend = appName;	// add name of application
		stringToSend += MINUIT_ANSWER_GET;
		stringToSend += " ";		
		stringToSend += address->getCString();
		stringToSend += ":";
		stringToSend += attribute->getCString();
		
		err1 = to->getCommParameter(TT("ip"), vIp);
		err2 = to->getCommParameter(TT("port"), vPort);
		
		if (!err1 && !err2) {
			
			vIp.toString();
			vIp.get(0, ipString);
			
			vPort.get(0, port);
			
#ifdef TT_PLUGIN_DEBUG
			std::cout << "Minuit : applicationSendGetAnswer : " << stringToSend << std::endl;
#endif
			m_minuitMethods->minuitSendMessage(stringToSend, v, ipString, port);
			
			return kTTErrNone;
		}
		
		return kTTErrGeneric;
	}
	
	/*!
	 * Send a listen answer to a application which ask for.
	 *
	 * \param to : the application where to send answer
	 * \param address : the address where comes from the value
	 * \param attribute : the attribute where comes from the value
	 * \param returnedValue : the value of the attribute at the address
	 */
	TTErr applicationSendListenAnswer(TTApplicationPtr to, TTSymbolPtr address, TTSymbolPtr attribute, TTValue& returnedValue)
	{
		TTString	stringToSend, appName;
		TTValue		v, vApplication, vApplicationManager, vIp, vPort;
		TTErr		err1, err2;
		TTString	vString, ipString;
		TTInt32		port;

		// get the local app name
		mApplicationManager->getAttributeValue(TT("name"), vApplicationManager);
		vApplicationManager.toString();
		vApplicationManager.get(0, appName);
		
		// edit request
		stringToSend = appName;	// add name of application
		stringToSend += MINUIT_ANSWER_LISTEN;
		stringToSend += " ";
		stringToSend += address->getCString();
		stringToSend += ":";
		stringToSend += attribute->getCString();
		
		// get the application ip and port parameters
		err1 = to->getCommParameter(TT("ip"), vIp);
		err2 = to->getCommParameter(TT("port"), vPort);
		
		if (!err1 && !err2) {
			
			vIp.toString();
			vIp.get(0, ipString);
			vPort.get(0, port);
			
			// send request
			v = returnedValue;
			
#ifdef TT_PLUGIN_DEBUG
			std::cout << "Minuit : applicationSendListenAnswer : " << stringToSend << std::endl;
#endif
			m_minuitMethods->minuitSendMessage(stringToSend, v, ipString, port);
			
			return kTTErrNone;
		}
		
		return kTTErrGeneric;
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

void receiveDiscoverRequestCallback(TTPtr arg, TTString from, TTString address)
{
#ifdef TT_PLUGIN_DEBUG	
	std::cout << "receiveDiscoverRequestCallback" << std::endl;
#endif
	
	TTApplicationPtr fromApplication = NULL;
	Minuit*		minuit = (Minuit*) arg;
	TTErr		err;
	TTValue		v, applicationPtrValue;
	TTHashPtr	applications = new TTHash();
	
	// get application
	minuit->getApplicationManager()->getAttributeValue(TT("applications"), v);
	v.get(0, (TTPtr*)&applications);

	err = applications->lookup(TT("/" + from), applicationPtrValue);
	if (!err) {
		applicationPtrValue.get(0, (TTPtr*)&fromApplication);
				
		// use built-in plugin method
		minuit->applicationReceiveDiscoverRequest(fromApplication, TT(address));
	}
}

void receiveGetRequestCallback(TTPtr arg, TTString from, TTString address, TTString attribute)
{
#ifdef TT_PLUGIN_DEBUG
	std::cout << "receiveGetRequestCallback" << std::endl;
#endif
	
	TTApplicationPtr fromApplication = NULL;
	Minuit*		minuit = (Minuit*) arg;
	TTErr		err;
	TTValue		v, applicationPtrValue;
	TTHashPtr	applications = new TTHash();
	
	// get application
	minuit->getApplicationManager()->getAttributeValue(TT("applications"), v);
	v.get(0, (TTPtr*)&applications);

	err = applications->lookup(TT("/" + from), applicationPtrValue);
	if (!err) {
		applicationPtrValue.get(0, (TTPtr*)&fromApplication);
		
		// use built-in plugin method
		minuit->applicationReceiveGetRequest(fromApplication, TT(address), TT(attribute));
	}
}

void receiveSetRequestCallBack(TTPtr arg, TTString from, TTString address, TTString attribute, TTValue& value)
{
#ifdef TT_PLUGIN_DEBUG
	std::cout << "receiveSetRequestCallback" << std::endl;
#endif
	
	TTApplicationPtr	fromApplication = NULL;												// this is optionnal (used to notify in case of error)
	Minuit*		minuit = (Minuit*) arg;
	TTValue     v, applicationPtrValue;
	TTErr		err;
	TTHashPtr	applications = new TTHash();
	
	// get application
	minuit->getApplicationManager()->getAttributeValue(TT("applications"), v);
	v.get(0, (TTPtr*)&applications);

	err = applications->lookup(TT("/" + from), applicationPtrValue);
	if (!err) {
		applicationPtrValue.get(0, (TTPtr*)&fromApplication);
	}

	// use built-in plugin method (fromApplication could be NULL)
	minuit->applicationReceiveSetRequest(fromApplication, TT(address), TT(attribute), value);
}

void receiveListenRequestCallBack(TTPtr arg, TTString from, TTString whereToListen, TTString attribute, bool enable)
{
#ifdef TT_PLUGIN_DEBUG
	std::cout << "Minuit::receiveListenRequestCallBack" << std::endl;
#endif
	
	TTApplicationPtr	fromApplication = NULL;
	Minuit*		minuit = (Minuit*) arg;
	TTValue     v, applicationPtrValue;
	TTErr		err;
	TTHashPtr	applications = new TTHash();
	
	// get application
	minuit->getApplicationManager()->getAttributeValue(TT("applications"), v);
	v.get(0, (TTPtr*)&applications);

	err = applications->lookup(TT("/" + from), applicationPtrValue);
	if (!err) {
		applicationPtrValue.get(0, (TTPtr*)&fromApplication);

		// Use built-in plugin method
		minuit->applicationReceiveListenRequest(fromApplication, TT(whereToListen), TT(attribute), enable);
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
	
	PluginPtr getInstance() {
		Minuit *minuit = new Minuit();
		return minuit;
	}
};

extern "C" {
	PluginFactory* createFactory() {
		return new MinuitFactory();
	}
}
