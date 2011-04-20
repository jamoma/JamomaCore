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
	 ************************************************/
	
	/*!
	 * Scan the net work to find remote Minuit applications and add them to the application manager
	 * 
	 */
	TTErr Scan()
	{
		// TODO
		return kTTErrGeneric;
	}

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
	
	/*!
	 * Stop the message reception thread 
	 *
	 */
	TTErr Stop()
	{
		// TODO
		return kTTErrGeneric;
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
		TTValue		v, arguments;
		TTString	ip, localAppName, remoteAppName, header;
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
		
		// edit header "localAppName?namespace"
		header = localAppName;
		header += MINUIT_REQUEST_DISCOVER;
		
		// edit arguments with the address
		arguments = TTValue(address);
		
		if (!getIpAndPort(to, &ip, &port)) {
			
#ifdef TT_PLUGIN_DEBUG
			std::cout << "Minuit : applicationSendDiscoverRequest " << std::endl;
#endif
			m_minuitMethods->minuitSendMessage(header, arguments, ip, port);
			
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
		TTValue		v, arguments;
		TTString	ip, localAppName, remoteAppName, header, aString;
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
		
		// edit header "localAppName?get"
		header = localAppName;
		header += MINUIT_REQUEST_GET;
		
		// edit arguments <address:attribute>"
		aString = address->getCString();
		aString += ":";
		aString += attribute->getCString();
		v.append(TT(aString));
		arguments.prepend(v);
		
		if (!getIpAndPort(to, &ip, &port)) {
			
#ifdef TT_PLUGIN_DEBUG
			std::cout << "Minuit : applicationSendGetRequest " << std::endl;
#endif
			m_minuitMethods->minuitSendMessage(header, arguments, ip, port);
			
			// Wait for an answer from an IP on a specific port
			aString = address->getCString();
			aString += ":";
			aString += attribute->getCString();
			
			m_minuitMethods->minuitAddGetAnswer(remoteAppName, aString, DEFAULT_TIMEOUT);
			
			state = ANSWER_RECEIVED;
			do
			{
#ifdef TT_PLATFORM_WIN
				Sleep(1);
#else
				usleep(1000);
#endif
				state = m_minuitMethods->minuitWaitGetAnswer(remoteAppName, aString, returnedValue, false);
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
		TTValue		arguments;
		TTString	ip, header;
		TTUInt32	port;

		header = address->getCString();
		header += ":";
		header += attribute->getCString();
		
		arguments = value;
		
		if (!getIpAndPort(to, &ip, &port)) {

#ifdef TT_PLUGIN_DEBUG
			std::cout << "Minuit : applicationSendSetRequest " << std::endl;
#endif
			m_minuitMethods->minuitSendMessage(header, arguments, ip, port);

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
		TTValue		v, arguments;
		TTString	ip, appName, header, aString;
		TTUInt32	port;

		// get the local app name
		getApplicationLocalName(v);
		v.toString();
		v.get(0, appName);
		
		// edit header "appName?listen"
		header = appName;	// add name of application
		header += MINUIT_REQUEST_LISTEN;
		
		// edit arguments <address:attribute, enable>
		aString = address->getCString();
		aString += ":";
		aString += attribute->getCString();
		arguments.append(TT(aString));
		
		if (enable)
			arguments.append(TT(MINUIT_REQUEST_LISTEN_ENABLE));
		else
			arguments.append(TT(MINUIT_REQUEST_LISTEN_DISABLE));

		if (!getIpAndPort(to, &ip, &port)) {
			
#ifdef TT_PLUGIN_DEBUG
			std::cout << "Minuit : applicationSendListenRequest " << std::endl;
#endif

			m_minuitMethods->minuitSendMessage(header, arguments, ip, port);
			
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
	TTErr applicationSendDiscoverAnswer(TTObjectPtr to, TTSymbolPtr address, TTValue& returnedChildrenNames, TTValue& returnedChildrenTypes, TTValue& returnedAttributes, TTErr err=kTTErrNone)
	{
		TTValue		v, arguments;
		TTString	ip, appName, header, aString;
		TTUInt32	port;
		
		// get the local app name
		getApplicationLocalName(v);
		v.toString();
		v.get(0, appName);
		
		// edit header "appName:get"
		if (!err) {
			header = appName;
			header += MINUIT_ANSWER_DISCOVER;
		}
		else {
			header = appName;
			header += MINUIT_ERROR_DISCOVER;
		}
		
		// edit arguments merging all returned fields
		// note : here we need to begin by the end
		// and then prepend fields one by one
		if (returnedAttributes.getSize()) {
			arguments = returnedAttributes;
			arguments.prepend(TT(MINUIT_START_ATTRIBUTES));
			arguments.append(TT(MINUIT_END_ATTRIBUTES));
		}
		
		if (returnedChildrenTypes.getSize()) {
			// if no attribute field
			if (arguments.getSize()) {
				arguments.prepend(TT(MINUIT_END_TYPES));
				arguments.prepend(returnedChildrenTypes);
				arguments.prepend(TT(MINUIT_START_TYPES));
			}
			else {
				arguments = returnedChildrenTypes;
				arguments.prepend(TT(MINUIT_START_TYPES));
				arguments.append(TT(MINUIT_END_TYPES));
			}
		}
		
		if (returnedChildrenNames.getSize()) {
			// if no types and attribute fields
			if (arguments.getSize()) {
				arguments.prepend(TT(MINUIT_END_NODES));
				arguments.prepend(returnedChildrenNames);
				arguments.prepend(TT(MINUIT_START_NODES));
			}
			else {
				arguments = returnedChildrenNames;
				arguments.prepend(TT(MINUIT_START_NODES));
				arguments.append(TT(MINUIT_END_NODES));
			}
		}
		
		if (arguments.getSize())
			arguments.prepend(address);
		else
			arguments = TTValue(address);
		
		if (!getIpAndPort(to, &ip, &port)) {
			
#ifdef TT_PLUGIN_DEBUG
			std::cout << "Minuit : applicationSendDiscoverAnswer " << std::endl;
#endif

			m_minuitMethods->minuitSendMessage(header, arguments, ip, port);
			
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
	TTErr applicationSendGetAnswer(TTObjectPtr to, TTSymbolPtr address, TTSymbolPtr attribute, TTValue& returnedValue, TTErr err=kTTErrNone)
	{
		TTValue		v, arguments;
		TTString	ip, appName, header, aString;
		TTUInt32	port;
		
		// get the local app name
		getApplicationLocalName(v);
		v.toString();
		v.get(0, appName);
		
		// edit header "appName:get"
		if (!err) {
			header = appName;
			header += MINUIT_ANSWER_GET;
		}
		else {
			header = appName;
			header += MINUIT_ERROR_GET;
		}
		
		// edit arguments copying the returned value 
		// and prepending the "address:attribute"
		arguments = returnedValue;
		
		aString = address->getCString();
		aString += ":";
		aString += attribute->getCString();
		v = TTValue(TT(aString));
		arguments.prepend(v);
		
		if (!getIpAndPort(to, &ip, &port)) {
			
#ifdef TT_PLUGIN_DEBUG
			std::cout << "Minuit : applicationSendGetAnswer" << std::endl;
#endif
			m_minuitMethods->minuitSendMessage(header, arguments, ip, port);
			
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
	TTErr applicationSendListenAnswer(TTObjectPtr to, TTSymbolPtr address, TTSymbolPtr attribute, TTValue& returnedValue, TTErr err=kTTErrNone)
	{
		TTValue		v, arguments;
		TTString	ip, appName, header, aString;
		TTUInt32	port;
		
		// get the local app name
		getApplicationLocalName(v);
		v.toString();
		v.get(0, appName);
		
		// edit header "appName:get"
		if (!err) {
			header = appName;
			header += MINUIT_ANSWER_LISTEN;
		}
		else {
			header = appName;
			header += MINUIT_ERROR_LISTEN;
		}
		
		// edit arguments copying the returned value 
		// and prepending the "address:attribute"
		arguments = returnedValue;
		
		aString = address->getCString();
		aString += ":";
		aString += attribute->getCString();
		v = TTValue(TT(aString));
		arguments.prepend(v);
		
		if (!getIpAndPort(to, &ip, &port)) {
			
			// send request
#ifdef TT_PLUGIN_DEBUG
			std::cout << "Minuit : applicationSendListenAnswer " << std::endl;
#endif
			m_minuitMethods->minuitSendMessage(header, arguments, ip, port);
			
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
		
		if (parameters = getApplicationParameters(anApplication)) {
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

	err = applications->lookup(TT(from), v);
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

	err = applications->lookup(TT(from), v);
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
	
	TTObjectPtr	fromApplication;												
	Minuit*		minuit = (Minuit*) arg;
	TTValue     v;
	TTErr		err;
	TTHashPtr	applications = new TTHash();
	
	// get application
	minuit->getApplications(v);
	v.get(0, (TTPtr*)&applications);

	err = applications->lookup(TT(from), v);
	if (err)
		fromApplication = NULL;	// this is optionnal (used to notify in case of error)
	else
		v.get(0, (TTPtr*)&fromApplication);

	// use built-in plugin method (fromApplication could be NULL)
	minuit->applicationReceiveSetRequest(fromApplication, TT(address), TT(attribute), value);
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

	err = applications->lookup(TT(from), v);
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
	
	const char* getName() {return "Minuit";};
	
	PluginPtr getInstance(TTObjectPtr applicationManager) {
		
		Minuit *minuit = new Minuit();
		TTHashPtr defaultParameters = new TTHash();
		
		minuit->mName = TT(getName());
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
