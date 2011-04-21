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
	TTObjectPtr					mApplicationManager;	///< the application manager of the Modular framework.
														///< plugin programmers do not have to deal with this member.
	
protected:
	TTHashPtr					mParameters;			///< hash table containing reception thread parameter names and values
														///< <TTSymbolPtr parameterName, TTValue value>
public:
	TTSymbolPtr					mName;					///< ATTRIBUTE : the name of the plugin to use
	TTSymbolPtr					mVersion;				///< ATTRIBUTE : the version of the plugin
	TTSymbolPtr					mAuthor;				///< ATTRIBUTE : the author of the plugin
	TTBoolean					mExploration;			///< ATTRIBUTE : is the Plugin provide namespace exploration features ?
	
	Plugin() {}
	virtual ~Plugin() {}
	
	/** Set reception thread mechanism parameters <TTHashPtr parameters> */
	// TODO : check if parameter names are correct before so set
	TTErr setParameters(const TTValue& value)
	{
		value.get(0, (TTPtr*)&mParameters);
		return kTTErrNone;
	};
	
	/** Get reception thread mechanism parameter */
	TTErr getParameters(TTValue& value)
	{
		value = TTValue((TTPtr)mParameters);
		return kTTErrNone;
	};
	
	/** Set application manager */
	TTErr setApplicationManager(const TTValue& value)
	{
		value.get(0, (TTPtr*)&mApplicationManager);
		return kTTErrNone;
	};
	
	/** Get all applications */
	TTErr getApplications(TTValue& value)
	{
		mApplicationManager->getAttributeValue(TT("applications"), value);
		return kTTErrNone;
	};
	
	/** Get all application names */
	TTErr getApplicationNames(TTValue& value)
	{
		mApplicationManager->getAttributeValue(TT("applicationNames"), value);
		return kTTErrNone;
	};
	
	/** Get the name of the local application */
	TTErr getApplicationLocalName(TTValue& value)
	{
		mApplicationManager->getAttributeValue(TT("applicationLocalName"), value);
		return kTTErrNone;
	};
	
	/**	Get parameters of an application */
	TTHashPtr getApplicationParameters(TTObjectPtr anApplication)
	{
		TTValue	v;
		TTHashPtr	allPluginParameters, parameters;
		
		anApplication->getAttributeValue(TT("pluginParameters"), v);
		v.get(0, (TTPtr*)&allPluginParameters);
		
		if (!allPluginParameters->lookup(mName, v)) {
			v.get(0, (TTPtr*)&parameters);
			return parameters;
		}
		
		return NULL;
	};
	
	/** Scan to find remote applications and add them to the application manager */
	virtual TTErr Scan()=0;
	
	/** Run reception thread mechanism */
	virtual TTErr Run()=0;
	
	/** Stop the reception thread mechanism of the plugin */
	virtual TTErr Stop()=0;

	
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
	 * \param returnedChildrenNames : all names of nodes below the address
	 * \param returnedLeaves : all types of nodes below the address(default is none which means no type)
	 * \param returnedAttributes : all attributes the node at the address
	 */
	virtual TTErr applicationSendDiscoverAnswer(TTObjectPtr to, TTSymbolPtr address,
												TTValue& returnedChildrenNames,
												TTValue& returnedChildrenTypes,
												TTValue& returnedAttributes,
												TTErr err=kTTErrNone)=0;
	
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
										   TTValue& returnedValue,
										   TTErr err=kTTErrNone)=0;
	
	/*!
	 * Send a listen answer to a application which ask for.
	 *
	 * \param to : the application where to send answer
	 * \param address : the address where comes from the value
	 * \param attribute : the attribute where comes from the value  (the "life" attribute is to listen namespace creation and destruction) 
	 * \param returnedValue : the value of the attribute at the address
	 */
	virtual TTErr applicationSendListenAnswer(TTObjectPtr to, TTSymbolPtr address,
											  TTSymbolPtr attribute, 
											  TTValue& returnedValue,
											  TTErr err=kTTErrNone)=0;
	
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
		TTValue v;
		TTErr	err;
		TTValue returnedChildrenNames;
		TTValue returnedChildrenTypes;
		TTValue returnedAttributes;
		
		// discover the local namespace
		if (mApplicationManager != NULL) {
			
			v.append(address);
			v.append((TTPtr)&returnedChildrenNames);
			v.append((TTPtr)&returnedChildrenTypes);
			v.append((TTPtr)&returnedAttributes);
			err = mApplicationManager->sendMessage(TT("ApplicationDiscover"), v);
			
			// send result
			applicationSendDiscoverAnswer(from, address, returnedChildrenNames, returnedChildrenTypes, returnedAttributes, err);
		}
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
		TTValue v;
		TTErr	err;
		TTValue returnedValue;
		
		// discover the namespace
		if (mApplicationManager != NULL) {
			
			v.append(address);
			v.append(attribute);
			v.append((TTPtr)&returnedValue);
			err = mApplicationManager->sendMessage(TT("ApplicationGet"), v);
			
			applicationSendGetAnswer(from, address, attribute, returnedValue, err);
		}		
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
		TTValue v;
		TTErr	err;
		
		// set the an object in the namespace
		if (mApplicationManager != NULL) {
			
			v.append(address);
			v.append(attribute);
			v.append((TTPtr)&newValue);
			err = mApplicationManager->sendMessage(TT("ApplicationSet"), v);
			
			// TODO : test error and send notification if error
		}
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
		TTValue v;
		TTErr	err;
		
		// listen an object or the namespace
		if (mApplicationManager != NULL) {
			
			v.append(mName);	// the name of the plugin is needed for feed back notifications
			v.append((TTPtr)from);
			v.append(address);
			v.append(attribute);
			v.append(enable);
			
			err = mApplicationManager->sendMessage(TT("ApplicationListen"), v);
			
			if (err)
				applicationSendListenAnswer(from, address, attribute, kTTValNONE, err);
		}
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
	virtual PluginPtr	getInstance(TTObjectPtr applicationManager)=0;
};

typedef PluginFactory*	PluginFactoryPtr;

#endif //__PLUGIN_FACTORY_H__

extern "C" {
	PLUGIN_EXPORT PluginFactoryPtr createFactory();
}
