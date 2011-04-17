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

#include "MinuitInclude.hpp"
#include "MinuitCommunicationMethods.hpp"

#include <sstream>

static const unsigned int MINUIT_RECEPTION_PORT = 7002;

void receiveDiscoverRequestCallback(TTPtr arg, TTString from, TTString address);
void receiveGetRequestCallback(TTPtr arg, TTString from, TTString address, TTString attribute);
void receiveSetRequestCallBack(TTPtr arg, TTString from, TTString address, TTString attribute, TTValue& value);
void receiveListenRequestCallBack(TTPtr arg, TTString from, TTString address, TTString attribute, bool enable);

class Minuit : public Plugin {
	
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
	 * Run the message reception thread 
	 * Prepare the receive callback method to be passed to the ApplicationManager to intercept the message
	 *
	 */
	TTErr Run()
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
	TTErr applicationSendDiscoverRequest(TTObjectPtr to, TTSymbolPtr address, TTValue& returnedNodes, TTValue& returnedLeaves, TTValue& returnedAttributes)
	{
		TTValue		v;
		TTString	ip, remoteAppName, localAppName, stringToSend, returnedValueString, addressAndAttributeString;
		TTUInt32	port;
		TTInt32		state;
		
		// get the remote application name
		to->getAttributeValue(TT("name"), v);
		v.toString();
		v.get(0, remoteAppName);
		
		// get the local application name
		getApplicationLocalName(v);
		v.toString();
		v.get(0, localAppName);
		
		// edit request
		stringToSend = localAppName;	// add name of application
		stringToSend += MINUIT_REQUEST_DISCOVER;
		stringToSend += " ";
		stringToSend += address->getCString();
		
		if (!getIpAndPort(to, &ip, &port)) {
			
#ifdef TT_PLUGIN_DEBUG
			std::cout << "Minuit : applicationSendDiscoverRequest : " << stringToSend << std::endl;
#endif
			m_minuitMethods->minuitSendMessage(stringToSend, v, ip, port);
			
			// Wait for an answer from an IP on a specific port
			m_minuitMethods->minuitAddDiscoverAnswer(remoteAppName, address->getCString(), ip, port, DEFAULT_TIMEOUT);
			
			state = ANSWER_RECEIVED;
			do
			{
#ifdef TT_PLATFORM_WIN
				Sleep(1);
#else
				usleep(1000);
#endif
				state = m_minuitMethods->minuitWaitDiscoverAnswer(remoteAppName, address->getCString(), returnedNodes, returnedLeaves, returnedAttributes);
			}
			while(state == NO_ANSWER);
			
			if (state == ANSWER_RECEIVED) {
				return kTTErrNone;
			} else {
				return kTTErrGeneric;
			}
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
	TTErr applicationSendGetRequest(TTObjectPtr to, TTSymbolPtr address, TTSymbolPtr attribute, TTValue& returnedValue)
	{	
		TTValue		v;
		TTString	ip, remoteAppName, localAppName, stringToSend, returnedValueString, addressAndAttributeString;
		TTUInt32	port;
		TTInt32			state;
		
		// get the remote application name
		to->getAttributeValue(TT("name"), v);
		v.toString();
		v.get(0, remoteAppName);
		
		// get the local application name
		getApplicationLocalName(v);
		v.toString();
		v.get(0, localAppName);
		
		// edit request
		stringToSend = localAppName;	// add name of application
		stringToSend += MINUIT_REQUEST_GET;
		stringToSend += " ";
		stringToSend += address->getCString();
		stringToSend += ":";
		stringToSend += attribute->getCString();
		
		if (!getIpAndPort(to, &ip, &port)) {
			
#ifdef TT_PLUGIN_DEBUG
			std::cout << "Minuit : applicationSendGetRequest : " << stringToSend << std::endl;
#endif
			m_minuitMethods->minuitSendMessage(stringToSend, v, ip, port);
			
			// Wait for an answer from an IP on a specific port
			addressAndAttributeString = address->getCString();
			addressAndAttributeString += ":";
			addressAndAttributeString += attribute->getCString();
			
			m_minuitMethods->minuitAddGetAnswer(remoteAppName, addressAndAttributeString, DEFAULT_TIMEOUT);
			
			state = ANSWER_RECEIVED;
			do
			{
#ifdef TT_PLATFORM_WIN
				Sleep(1);
#else
				usleep(1000);
#endif
				state = m_minuitMethods->minuitWaitGetAnswer(remoteAppName, addressAndAttributeString, returnedValue, false);
			}
			while(state == NO_ANSWER);
			
			if (state == ANSWER_RECEIVED)
				return kTTErrNone;
			else
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
	TTErr applicationSendSetRequest(TTObjectPtr to, TTSymbolPtr address, TTSymbolPtr attribute, TTValue& value)
	{
		TTValue		v;
		TTString	ip, stringToSend;
		TTUInt32	port;

		v = value;

		stringToSend = address->getCString();
		stringToSend += ":";
		stringToSend += attribute->getCString();
		
		if (!getIpAndPort(to, &ip, &port)) {

#ifdef TT_PLUGIN_DEBUG
			std::cout << "Minuit : applicationSendSetRequest : " << stringToSend << std::endl;
#endif
			m_minuitMethods->minuitSendMessage(stringToSend, v, ip, port);

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
	TTErr applicationSendListenRequest(TTObjectPtr to, TTSymbolPtr address, TTSymbolPtr attribute, bool enable)
	{
		TTValue		v;
		TTString	ip, appName, stringToSend;
		TTUInt32	port;

		// get the local app name
		getApplicationLocalName(v);
		v.toString();
		v.get(0, appName);
		
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

		if (!getIpAndPort(to, &ip, &port)) {
			
#ifdef TT_PLUGIN_DEBUG
			std::cout << "Minuit : applicationSendListenRequest : " << stringToSend << std::endl;
#endif
			m_minuitMethods->minuitSendMessage(stringToSend, v, ip, port);
			
			return kTTErrNone;
		}
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
	TTErr applicationSendDiscoverAnswer(TTObjectPtr to, TTSymbolPtr address, TTValue& returnedNodes, TTValue& returnedLeaves, TTValue& returnedAttributes)
	{
		TTValue		v, nodes, leaves, attributes;
		TTString	ip, stringToSend, appName, sNodes, sLeaves, sAttributes;
		TTUInt32	port;
		
		// get the local app name
		getApplicationLocalName(v);
		v.toString();
		v.get(0, appName);
		
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
		
		if (!getIpAndPort(to, &ip, &port)) {
			
#ifdef TT_PLUGIN_DEBUG
			std::cout << "Minuit : applicationSendNamespaceAnswer : " << stringToSend << std::endl;
#endif

			// send answer
			v.clear();
			m_minuitMethods->minuitSendMessage(stringToSend, v, ip, port);
			
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
	TTErr applicationSendGetAnswer(TTObjectPtr to, TTSymbolPtr address, TTSymbolPtr attribute, TTValue& returnedValue)
	{
		TTValue		v;
		TTString	ip, stringToSend, appName;
		TTUInt32	port;
		
		// get the local app name
		getApplicationLocalName(v);
		v.toString();
		v.get(0, appName);
		
		// get the returned value
		v = returnedValue;
		
		stringToSend = appName;	// add name of application
		stringToSend += MINUIT_ANSWER_GET;
		stringToSend += " ";		
		stringToSend += address->getCString();
		stringToSend += ":";
		stringToSend += attribute->getCString();
		
		if (!getIpAndPort(to, &ip, &port)) {
			
#ifdef TT_PLUGIN_DEBUG
			std::cout << "Minuit : applicationSendGetAnswer : " << stringToSend << std::endl;
#endif
			m_minuitMethods->minuitSendMessage(stringToSend, v, ip, port);
			
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
	TTErr applicationSendListenAnswer(TTObjectPtr to, TTSymbolPtr address, TTSymbolPtr attribute, TTValue& returnedValue)
	{
		TTValue		v;
		TTString	ip, stringToSend, appName;
		TTUInt32	port;

		// get the local app name
		getApplicationLocalName(v);
		v.toString();
		v.get(0, appName);
		
		// edit request
		stringToSend = appName;	// add name of application
		stringToSend += MINUIT_ANSWER_LISTEN;
		stringToSend += " ";
		stringToSend += address->getCString();
		stringToSend += ":";
		stringToSend += attribute->getCString();
		
		if (!getIpAndPort(to, &ip, &port)) {
			
			// send request
			v = returnedValue;
			
#ifdef TT_PLUGIN_DEBUG
			std::cout << "Minuit : applicationSendListenAnswer : " << stringToSend << std::endl;
#endif
			m_minuitMethods->minuitSendMessage(stringToSend, v, ip, port);
			
			return kTTErrNone;
		}
		
		return kTTErrGeneric;
	}
	
	/**************************************************************************************************************************
	 *
	 *	RECEIVE ANSWER METHODS : No methods because each plugin deals with answers when it send a request (maybe we could add an answer manager)
	 *
	 **************************************************************************************************************************/
	
private:
	TTErr getIpAndPort(TTObjectPtr anApplication, TTString *ip, TTUInt32 *port)
	{
		TTHashPtr parameters;
		TTValue vIp, vPort;
		TTErr err1, err2;
		
		if (parameters = PluginGetApplicationParameters(mName, anApplication)) {
			err1 = parameters->lookup(TT("ip"), vIp);
			err2 = parameters->lookup(TT("port"), vPort);
			
			if (err1 || err2)
				return kTTErrGeneric;
			
			vIp.toString();
			vIp.get(0, *ip);
			vPort.get(0, *port);
			
			return kTTErrNone;
		}
		
		return kTTErrGeneric;
	}
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
	
	TTObjectPtr fromApplication = NULL;
	Minuit*		minuit = (Minuit*) arg;
	TTErr		err;
	TTValue		v;
	TTHashPtr	applications;
	
	// get all applications
	minuit->getApplications(v);
	v.get(0, (TTPtr*)&applications);

	err = applications->lookup(TT("/" + from), v);
	if (!err) {
		v.get(0, (TTPtr*)&fromApplication);
				
		// use built-in plugin method
		minuit->applicationReceiveDiscoverRequest(fromApplication, TT(address));
	}
}

void receiveGetRequestCallback(TTPtr arg, TTString from, TTString address, TTString attribute)
{
#ifdef TT_PLUGIN_DEBUG
	std::cout << "receiveGetRequestCallback" << std::endl;
#endif
	
	TTObjectPtr fromApplication = NULL;
	Minuit*		minuit = (Minuit*) arg;
	TTErr		err;
	TTValue		v;
	TTHashPtr	applications;
	
	// get application
	minuit->getApplications(v);
	v.get(0, (TTPtr*)&applications);

	err = applications->lookup(TT("/" + from), v);
	if (!err) {
		v.get(0, (TTPtr*)&fromApplication);
		
		// use built-in plugin method
		minuit->applicationReceiveGetRequest(fromApplication, TT(address), TT(attribute));
	}
}

void receiveSetRequestCallBack(TTPtr arg, TTString from, TTString address, TTString attribute, TTValue& value)
{
#ifdef TT_PLUGIN_DEBUG
	std::cout << "receiveSetRequestCallback" << std::endl;
#endif
	
	TTObjectPtr	fromApplication = NULL;												// this is optionnal (used to notify in case of error)
	Minuit*		minuit = (Minuit*) arg;
	TTValue     v;
	TTErr		err;
	TTHashPtr	applications = new TTHash();
	
	// get application
	minuit->getApplications(v);
	v.get(0, (TTPtr*)&applications);

	err = applications->lookup(TT("/" + from), v);
	if (!err) {
		v.get(0, (TTPtr*)&fromApplication);

		// use built-in plugin method (fromApplication could be NULL)
		minuit->applicationReceiveSetRequest(fromApplication, TT(address), TT(attribute), value);
	}
}

void receiveListenRequestCallBack(TTPtr arg, TTString from, TTString whereToListen, TTString attribute, bool enable)
{
#ifdef TT_PLUGIN_DEBUG
	std::cout << "Minuit::receiveListenRequestCallBack" << std::endl;
#endif
	
	TTObjectPtr	fromApplication = NULL;
	Minuit*		minuit = (Minuit*) arg;
	TTValue     v;
	TTErr		err;
	TTHashPtr	applications;
	
	// get application
	minuit->getApplications(v);
	v.get(0, (TTPtr*)&applications);

	err = applications->lookup(TT("/" + from), v);
	if (!err) {
		v.get(0, (TTPtr*)&fromApplication);

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

	PluginPtr getInstance(TTObjectPtr applicationManager) {
		
		Minuit *minuit = new Minuit();
		TTHashPtr defaultParameters = new TTHash();
		
		minuit->mName = TT("Minuit");
		minuit->mVersion = TT("0.2");
		minuit->mAuthor = TT("Raphael Marczak/Laurent Garnier/Theo Delahogue");
		minuit->mExploration = YES;
		
		minuit->setApplicationManager(TTValue((TTPtr)applicationManager));
		
		defaultParameters->append(TT("ip"), TT("127.0.0.1"));
		defaultParameters->append(TT("port"), (TTUInt32)MINUIT_RECEPTION_PORT);
		
		minuit->setParameters(TTValue((TTPtr)defaultParameters));
		
		return minuit;
	}
};

extern "C" {
	PluginFactory* createFactory() {
		return new MinuitFactory();
	}
}
