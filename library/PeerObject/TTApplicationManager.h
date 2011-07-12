/* 
 * An Application Manager Object
 * Copyright © 2010, Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_APPLICATION_MANAGER_H__
#define __TT_APPLICATION_MANAGER_H__

#include "TTModular.h"

class TTApplication;
typedef TTApplication* TTApplicationPtr;

class TTPluginHandler;
typedef TTPluginHandler* TTPluginHandlerPtr;

class PluginFactories;
typedef PluginFactories* PluginFactoriesPtr;

/**	TTApplicationManager ... TODO : an explanation
 
 
 */

// Macro to retreive any application by name
#define getApplication(applicationName) TTApplicationManagerGetApplication(applicationName)

// Macro to retreive any application from an address
#define getApplicationFrom(anAddress) TTApplicationManagerGetApplicationFrom(anAddress)

// Macro to retreive local application
#define getLocalApplication TTApplicationManagerGetApplication(kTTSym_localApplicationName)

// Macro to retreive a plugin by name
#define getPlugin(pluginName) TTApplicationManagerGetPlugin(pluginName)

// Notification flags to notify observers of application manager
enum TTApplicationNotificationFlag {
	kApplicationRemoved = 0,				///< this flag means that an application have been removed from the application manager
	kApplicationAdded = 1,					///< this flag means that an application have been added to the application manager
	kApplicationPluginStarted = 2,			///< this flag means that application's plugin have been started
	kApplicationPluginStopped = 3			///< this flag means that application's plugin will be stopped
};

class TTMODULAR_EXPORT TTApplicationManager : public TTDataObject
{
	TTCLASS_SETUP(TTApplicationManager)
	
private:

	TTHashPtr			mApplications;						///< hash table containing <TTSymbolPtr applicationName, TTApplicationPtr anApplication>
	TTHashPtr			mPlugins;							///< hash table containing <TTSymbolPtr pluginName, TTPluginHandlerPtr aPlugin>
	
	TTValue				mApplicationNames;					///< ATTRIBUTE : all registered application names
	TTValue				mPluginNames;						///< ATTRIBUTE : all loaded plugin names
	
	TTObjectPtr			mCurrentApplication;				///< used for ReadFromXml mechanism
	
	TTHashPtr			mApplicationObservers;				///< a pointer to a hashtab which register all application life cycle observers
	TTMutexPtr			mApplicationObserversMutex;			///< a Mutex to protect the mObservers hash table.
	
	PluginFactoriesPtr	mPluginFactories;
	
	
	/** Get all application names */
	TTErr getApplicationNames(TTValue& value);
	
	/** Get local application name */
	TTErr getApplicationLocalName(TTValue& value);
	
	/** Set local application name */
	TTErr setApplicationLocalName(TTValue& value);
	
	/** Get all plugin names */
	TTErr getPluginNames(TTValue& value);
	
	/** Set the value of an application plugin parameter
		<TTSymbolPtr applicationName, TTSymbolPtr pluginName, TTSymbolPtr parameterName, ...any value... > */
	TTErr Configure(const TTValue& value);
	
	/** Add an application giving <TTSymbolPtr applicationName, applicationPointer> */
	TTErr ApplicationAdd(const TTValue& value);
	
	/** Remove an application */
	TTErr ApplicationRemove(const TTValue& value);
	
	/** Discover the namespace of an application under an address
		arguments are <TTSymbolPtr whereToDiscover, TTValuePtr returnedChildrenNames, TTValuePtr returnedChildrenTypes, TTValuePtrreturnedAttributes> */
	TTErr ApplicationDiscover(TTValue& value);
	
	/** Get a value from an attribute of an object at an address in an application
		arguments are <TTSymbolPtr whereToGet,  TTsymbolPtr attributeToGet, TTValuePtr returnedValue> */
	TTErr ApplicationGet(TTValue& value);
	
	/** Set a value from an attribute of an object at an address in an application
		arguments are <TTSymbolPtr whereToDiscover, TTsymbolPtr attributeToSet, TTValuePtr newValue> */
	TTErr ApplicationSet(TTValue& value);
	
	/** Listen for value changes from an attribute of an object at an address in an application
		or for creation/destruction under an address.
		arguments are <TTObjectPtr appToNotify, TTSymbolPtr whereToListen, TTSymbolPtr attribute, TTBoolean enable> */
	TTErr ApplicationListen(TTValue& value);
	
	/** Update value changes of an attribute of an object at an address in an application
		or for creation/destruction under an address.
		note : this is usually the answer of distant namespace or Mirror attribute listening
		arguments are <TTObjectPtr appAnswering, TTSymbolPtr whereComesFrom, TTSymbolPtr attribute, TTValuePtr newValue> */
	TTErr ApplicationListenAnswer(TTValue& value);
	
	/** Scan a plugin network in order to add distant application automatically <TTSymbolPtr pluginName> */
	TTErr PluginScan(const TTValue& value);

	/** Run the reception thread mecanism of a Plugin <TTSymbolPtr pluginName> */
	TTErr PluginRun(const TTValue& value);
	
	/** Stop the reception thread mecanism of a Plugin <TTSymbolPtr pluginName> */
	TTErr PluginStop(const TTValue& value);
	
	/**  needed to be handled by a TTXmlHandler 
		 read/write local and distant applications setup */
	TTErr WriteAsXml(const TTValue& value);
	TTErr ReadFromXml(const TTValue& value);
	
	/** */
	TTErr notifyApplicationObservers(TTSymbolPtr anApplicationName, TTApplicationPtr anApplication, TTApplicationNotificationFlag flag);
	
	friend TTApplicationPtr TTMODULAR_EXPORT TTApplicationManagerGetApplication(TTSymbolPtr applicationName);
	friend TTPluginHandlerPtr TTMODULAR_EXPORT TTApplicationManagerGetPlugin(TTSymbolPtr pluginName);
	
	friend TTErr TTMODULAR_EXPORT TTApplicationManagerAddApplicationObserver(TTSymbolPtr anApplicationName, const TTObject& anObserver);
	friend TTErr TTMODULAR_EXPORT TTApplicationManagerRemoveApplicationObserver(TTSymbolPtr anApplicationName, const TTObject& anObserver);
};

typedef TTApplicationManager* TTApplicationManagerPtr;

/**	To get an application with an application name
 note : it uses the extern TTModularApplications variable
 @param	baton						..
 @param	data						..
 @return							a TTApplicationPtr */
TTApplicationPtr TTMODULAR_EXPORT TTApplicationManagerGetApplication(TTSymbolPtr applicationName);

/**	To get an application from an address
 note : it uses the extern TTModularApplications variable
 @param	baton						..
 @param	data						..
 @return							a TTApplicationPtr */
TTApplicationPtr TTMODULAR_EXPORT TTApplicationManagerGetApplicationFrom(TTNodeAddressPtr anAddress);

/**	To get a plugin with a plugin name
 note : it uses the extern TTModularApplications variable
 @param	baton						..
 @param	data						..
 @return							a PluginPtr */
TTPluginHandlerPtr TTMODULAR_EXPORT TTApplicationManagerGetPlugin(TTSymbolPtr pluginName);

/** Add a TTCallback as observer of application creation/destruction
 note : it uses the extern TTModularApplications variable
 @param anApplicationName		an application to observe
 @param observer				a TTCallbackPtr to add
 @return						an error code */
TTErr TTMODULAR_EXPORT TTApplicationManagerAddApplicationObserver(TTSymbolPtr anApplicationName, const TTObject& anObserver);

/** Remove a TTCallback as observer of application creation/destruction
 note : it uses the extern TTModularApplications variable
 @param anApplicationName		an application
 @param observer				a TTCallbackPtr to remove
 @return						a kTTErrGeneric if there isn't observer */
TTErr TTMODULAR_EXPORT TTApplicationManagerRemoveApplicationObserver(TTSymbolPtr anApplicationName, const TTObject& anObserver);

#endif // __TT_APPLICATION_MANAGER_H__
