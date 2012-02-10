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

class Protocol;
typedef Protocol* ProtocolPtr;

/**	TTApplicationManager ... TODO : an explanation
 
 
 */

// Macro to retreive any application by name
#define getApplication(applicationName) TTApplicationManagerGetApplication(applicationName)

// Macro to retreive any application from an address
#define getApplicationFrom(anAddress) TTApplicationManagerGetApplicationFrom(anAddress)

// Macro to get local application name
#define getLocalApplicationName TTApplicationManagerGetLocalApplicationName()

// Macro to retreive local application
#define getLocalApplication TTApplicationManagerGetApplicationFrom(kTTAdrsRoot)

// Macro to retreive a protocol by name
#define getProtocol(protocolName) TTApplicationManagerGetProtocol(protocolName)

// Macro to get all protocols of an application
#define getApplicationProtocols(applicationName) TTApplicationManagerGetApplicationProtocols(applicationName)

// Notification flags to notify observers of application manager
enum TTApplicationNotificationFlag {
	kApplicationRemoved = 0,				///< this flag means that an application have been removed from the application manager
	kApplicationAdded = 1,					///< this flag means that an application have been added to the application manager
	kApplicationProtocolStarted = 2,			///< this flag means that application's protocol have been started
	kApplicationProtocolStopped = 3			///< this flag means that application's protocol will be stopped
};

class TTMODULAR_EXPORT TTApplicationManager : public TTDataObject
{
	TTCLASS_SETUP(TTApplicationManager)
	
private:

	TTHashPtr			mApplications;						///< hash table containing <TTSymbolPtr applicationName, TTApplicationPtr anApplication>
	TTHashPtr			mProtocols;							///< hash table containing <TTSymbolPtr protocolName, ProtocolPtr aProtocol>
		
	TTApplicationPtr	mLocalApplication;					///< a pointer to the local application
	TTApplicationPtr	mCurrentApplication;				///< a pointer used for ReadFromXml mechanism
	
	TTHashPtr			mApplicationObservers;				///< a pointer to a hashtab which register all application life cycle observers
	TTMutexPtr			mApplicationObserversMutex;			///< a Mutex to protect the mObservers hash table.
	
	/** Get all application names */
	TTErr getApplicationNames(TTValue& value);
	
	/** Set local application */
	TTErr setLocalApplication(TTValue& value);
	
	/** Get all protocol names */
	TTErr getProtocolNames(TTValue& value);
	
	/** Add an application giving <TTSymbolPtr applicationName, applicationPointer> */
	TTErr ApplicationAdd(const TTValue& inputValue, TTValue& outputValue);
	
	/** Remove an application */
	TTErr ApplicationRemove(const TTValue& inputValue, TTValue& outputValue);
	
	/** Discover the namespace of an application under an address
		arguments are <TTSymbolPtr whereToDiscover, TTValuePtr returnedChildrenNames, TTValuePtr returnedChildrenTypes, TTValuePtrreturnedAttributes> */
	TTErr ApplicationDiscover(const TTValue& inputValue, TTValue& outputValue);
	
	/** Get a value from an attribute of an object at an address in an application
		arguments are <TTSymbolPtr whereToGet,  TTsymbolPtr attributeToGet, TTValuePtr returnedValue> */
	TTErr ApplicationGet(const TTValue& inputValue, TTValue& outputValue);
	
	/** Set a value from an attribute of an object at an address in an application
		arguments are <TTSymbolPtr whereToDiscover, TTsymbolPtr attributeToSet, TTValuePtr newValue> */
	TTErr ApplicationSet(const TTValue& inputValue, TTValue& outputValue);
	
	/** Listen for value changes from an attribute of an object at an address in an application
		or for creation/destruction under an address.
		arguments are <TTObjectPtr appToNotify, TTSymbolPtr whereToListen, TTSymbolPtr attribute, TTBoolean enable> */
	TTErr ApplicationListen(const TTValue& inputValue, TTValue& outputValue);
	
	/** Update value changes of an attribute of an object at an address in an application
		or for creation/destruction under an address.
		note : this is usually the answer of distant namespace or Mirror attribute listening
		arguments are <TTObjectPtr appAnswering, TTSymbolPtr whereComesFrom, TTSymbolPtr attribute, TTValuePtr newValue> */
	TTErr ApplicationListenAnswer(const TTValue& inputValue, TTValue& outputValue);
	
	/** Scan a protocol network in order to add distant application automatically <TTSymbolPtr protocolName> */
	TTErr ProtocolScan(const TTValue& inputValue, TTValue& outputValue);

	/** Run the reception thread mecanism of a Protocol <TTSymbolPtr protocolName> */
	TTErr ProtocolRun(const TTValue& inputValue, TTValue& outputValue);
	
	/** Stop the reception thread mecanism of a Protocol <TTSymbolPtr protocolName> */
	TTErr ProtocolStop(const TTValue& inputValue, TTValue& outputValue);
	
	/**  needed to be handled by a TTXmlHandler 
		 read/write local and distant applications setup */
	TTErr WriteAsXml(const TTValue& inputValue, TTValue& outputValue);
	TTErr ReadFromXml(const TTValue& inputValue, TTValue& outputValue);
	
	/** */
	TTErr notifyApplicationObservers(TTSymbolPtr anApplicationName, TTApplicationPtr anApplication, TTApplicationNotificationFlag flag);
	
	friend TTSymbolPtr TTMODULAR_EXPORT TTApplicationManagerGetLocalApplicationName();
	friend TTApplicationPtr TTMODULAR_EXPORT TTApplicationManagerGetApplication(TTSymbolPtr applicationName);
	friend TTApplicationPtr TTMODULAR_EXPORT TTApplicationManagerGetApplicationFrom(TTNodeAddressPtr anAddress);
	
	friend TTObjectPtr TTMODULAR_EXPORT TTApplicationManagerGetProtocol(TTSymbolPtr protocolName);
	friend TTValue TTMODULAR_EXPORT TTApplicationManagerGetApplicationProtocols(TTSymbolPtr applicationName);
	
	friend TTErr TTMODULAR_EXPORT TTApplicationManagerAddApplicationObserver(TTSymbolPtr anApplicationName, const TTObject& anObserver);
	friend TTErr TTMODULAR_EXPORT TTApplicationManagerRemoveApplicationObserver(TTSymbolPtr anApplicationName, const TTObject& anObserver);
};

typedef TTApplicationManager* TTApplicationManagerPtr;

/**	To get the local application name
 note : it uses the extern TTModularApplications variable
 @return							a TTSymbolPtr */
TTSymbolPtr TTMODULAR_EXPORT TTApplicationManagerGetLocalApplicationName();

/**	To get an application with an application name
 note : it uses the extern TTModularApplications variable
 @param	applicationName				..
 @return							a TTApplicationPtr */
TTApplicationPtr TTMODULAR_EXPORT TTApplicationManagerGetApplication(TTSymbolPtr applicationName);

/**	To get an application from an address
 note : it uses the extern TTModularApplications variable
 @param	anAddress					..
 @return							a TTApplicationPtr */
TTApplicationPtr TTMODULAR_EXPORT TTApplicationManagerGetApplicationFrom(TTNodeAddressPtr anAddress);

/**	To get a protocol with a protocol name
 note : it uses the extern TTModularApplications variable
 @param	protocolName				..
 @return							a ProtocolPtr */
TTObjectPtr TTMODULAR_EXPORT TTApplicationManagerGetProtocol(TTSymbolPtr protocolName);

/**	To get all protocols of an application
 note : it uses the extern TTModularApplications variable
 @param	applicationName				..
 @return							a value */
TTValue TTMODULAR_EXPORT TTApplicationManagerGetApplicationProtocols(TTSymbolPtr applicationName);

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
