/** @file
 *
 * @ingroup modularLibrary
 *
 * @brief An Application Manager Object
 *
 * @details
 *
 * @authors Théo de la Hogue
 *
 * @copyright © 2010, Théo de la Hogue @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#ifndef __TT_APPLICATION_MANAGER_H__
#define __TT_APPLICATION_MANAGER_H__

#include "TTModular.h"

class TTApplication;
typedef TTApplication* TTApplicationPtr;

class Protocol;
typedef Protocol* ProtocolPtr;

class TTXmlHandler;
typedef TTXmlHandler* TTXmlHandlerPtr;

/**	TTApplicationManager ... TODO : an explanation
 
 
 */

// Macro to retreive any application by name
#define getApplication(applicationName) TTApplicationManagerGetApplication(applicationName)

// Macro to retreive any application from an address
#define getApplicationFrom(anAddress) TTApplicationManagerGetApplicationFrom(anAddress)

// Macro to get an application directory
#define getApplicationDirectory(applicationName) TTApplicationManagerGetApplicationDirectory(applicationName)

// Macro to get local application name
#define getLocalApplicationName TTApplicationManagerGetLocalApplicationName()

// Macro to get local application debug status
#define getLocalApplicationDebug TTApplicationManagerGetLocalApplicationDebug()

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

class TTMODULAR_EXPORT TTApplicationManager : public TTDataObjectBase
{
	TTCLASS_SETUP(TTApplicationManager)
	
private:

	TTHashPtr			mApplications;						///< hash table containing <TTSymbol applicationName, TTApplicationPtr anApplication>
	TTHashPtr			mProtocols;							///< hash table containing <TTSymbol protocolName, ProtocolPtr aProtocol>
		
	TTApplicationPtr	mLocalApplication;					///< a pointer to the local application
	TTApplicationPtr	mCurrentApplication;				///< a pointer used for ReadFromXml mechanism
	
	TTHashPtr			mApplicationObservers;				///< a pointer to a hashtab which register all application life cycle observers
	TTMutexPtr			mApplicationObserversMutex;			///< a Mutex to protect the mObservers hash table.
    
    ProtocolPtr         mCurrentProtocol;                   ///< a pointer used for ReadFromXml mechanism
	
	/** Get all application names */
	TTErr getApplicationNames(TTValue& value);
	
	/** Get all protocol names */
	TTErr getProtocolNames(TTValue& value);
	
	/** Add an application giving <TTSymbol applicationName, applicationPointer> */
	TTErr ApplicationAdd(const TTValue& inputValue, TTValue& outputValue);
	
	/** Remove an application */
	TTErr ApplicationRemove(const TTValue& inputValue, TTValue& outputValue);
	
	/** Discover the namespace of an application under an address
		inputValue : <TTSymbol whereToDiscover> 
        outputValue : <TTSymbol *returnedType, TTValuePtr returnedChildren,  TTValuePtr returnedAttributes> */
	TTErr ApplicationDiscover(const TTValue& inputValue, TTValue& outputValue);
    
    /** Discover all the namespace of an application under an address
     inputValue : <TTSymbol whereToDiscover>
     outputValue : <TTNodePtr> */
	TTErr ApplicationDiscoverAll(const TTValue& inputValue, TTValue& outputValue);
	
	/** Get a value from an attribute of an object at an address in an application
		inputValue : <TTSymbol whereToGet,  TTsymbolPtr attributeToGet, TTValuePtr returnedValue> */
	TTErr ApplicationGet(const TTValue& inputValue, TTValue& outputValue);
	
	/** Set a value from an attribute of an object at an address in an application
		inputValue : <TTSymbol whereToDiscover, TTsymbolPtr attributeToSet, TTValuePtr newValue> */
	TTErr ApplicationSet(const TTValue& inputValue, TTValue& outputValue);
	
	/** Listen for value changes from an attribute of an object at an address in an application
		or for creation/destruction under an address.
		inputValue : <TTObjectBasePtr appToNotify, TTSymbol whereToListen, TTSymbol attribute, TTBoolean enable> */
	TTErr ApplicationListen(const TTValue& inputValue, TTValue& outputValue);
	
	/** Update value changes of an attribute of an object at an address in an application
		or for creation/destruction under an address.
		note : this is usually the answer of distant namespace or Mirror attribute listening
		inputValue : <TTObjectBasePtr appAnswering, TTSymbol whereComesFrom, TTSymbol attribute, TTValuePtr newValue> */
	TTErr ApplicationListenAnswer(const TTValue& inputValue, TTValue& outputValue);
	
	/** Scan a protocol network in order to add distant application automatically <TTSymbol protocolName> */
	TTErr ProtocolScan(const TTValue& inputValue, TTValue& outputValue);

	/** Run the reception thread mecanism of a Protocol <TTSymbol protocolName> */
	TTErr ProtocolRun(const TTValue& inputValue, TTValue& outputValue);
	
	/** Stop the reception thread mecanism of a Protocol <TTSymbol protocolName> */
	TTErr ProtocolStop(const TTValue& inputValue, TTValue& outputValue);
	
	/**  needed to be handled by a TTXmlHandler 
		 read/write local and distant applications setup */
	TTErr WriteAsXml(const TTValue& inputValue, TTValue& outputValue);
    TTErr writeProtocolAsXml(TTXmlHandlerPtr aXmlHandler, ProtocolPtr aProtocol);
    
	TTErr ReadFromXml(const TTValue& inputValue, TTValue& outputValue);
	
	/** */
	TTErr notifyApplicationObservers(TTSymbol anApplicationName, TTApplicationPtr anApplication, TTApplicationNotificationFlag flag);
	
	friend TTSymbol TTMODULAR_EXPORT TTApplicationManagerGetLocalApplicationName();
	friend TTBoolean TTMODULAR_EXPORT TTApplicationManagerGetLocalApplicationDebug();
	friend TTApplicationPtr TTMODULAR_EXPORT TTApplicationManagerGetApplication(TTSymbol applicationName);
	friend TTApplicationPtr TTMODULAR_EXPORT TTApplicationManagerGetApplicationFrom(TTAddress anAddress);
	
	friend ProtocolPtr TTMODULAR_EXPORT TTApplicationManagerGetProtocol(TTSymbol protocolName);
	friend TTValue TTMODULAR_EXPORT TTApplicationManagerGetApplicationProtocols(TTSymbol applicationName);
	
	friend TTErr TTMODULAR_EXPORT TTApplicationManagerAddApplicationObserver(TTSymbol anApplicationName, const TTObjectBase& anObserver);
	friend TTErr TTMODULAR_EXPORT TTApplicationManagerRemoveApplicationObserver(TTSymbol anApplicationName, const TTObjectBase& anObserver);
	
	friend TTErr TTMODULAR_EXPORT TTApplicationManagerProtocolActivityInCallback(TTPtr baton, TTValue& data);
	friend TTErr TTMODULAR_EXPORT TTApplicationManagerProtocolActivityOutCallback(TTPtr baton, TTValue& data);
};

typedef TTApplicationManager* TTApplicationManagerPtr;

/**	To get the local application name
 note : it uses the extern TTModularApplications variable
 @return							a TTSymbol */
TTSymbol TTMODULAR_EXPORT TTApplicationManagerGetLocalApplicationName();

/**	To get the local application debug status
 note : it uses the extern TTModularApplications variable
 @return							a TTBoolean */
TTBoolean TTMODULAR_EXPORT TTApplicationManagerGetLocalApplicationDebug();

/**	To get an application with an application name
 note : it uses the extern TTModularApplications variable
 @param	applicationName				..
 @return							a TTApplicationPtr */
TTApplicationPtr TTMODULAR_EXPORT TTApplicationManagerGetApplication(TTSymbol applicationName);

/**	To get an application directory with an application name
 note : it uses the extern TTModularApplications variable
 @param	applicationName				..
 @return							a TTNodeDirectoryPtr */
TTNodeDirectoryPtr TTMODULAR_EXPORT TTApplicationManagerGetApplicationDirectory(TTSymbol applicationName);

/**	To get an application from an address
 note : it uses the extern TTModularApplications variable
 @param	anAddress					..
 @return							a TTApplicationPtr */
TTApplicationPtr TTMODULAR_EXPORT TTApplicationManagerGetApplicationFrom(TTAddress anAddress);

/**	To get a protocol with a protocol name
 note : it uses the extern TTModularApplications variable
 @param	protocolName				..
 @return							a ProtocolPtr */
ProtocolPtr TTMODULAR_EXPORT TTApplicationManagerGetProtocol(TTSymbol protocolName);

/**	To get all protocols of an application
 note : it uses the extern TTModularApplications variable
 @param	applicationName				..
 @return							a value */
TTValue TTMODULAR_EXPORT TTApplicationManagerGetApplicationProtocols(TTSymbol applicationName);

/** Add a TTCallback as observer of application creation/destruction
 note : it uses the extern TTModularApplications variable
 @param anApplicationName		an application to observe
 @param observer				a TTCallbackPtr to add
 @return						an error code */
TTErr TTMODULAR_EXPORT TTApplicationManagerAddApplicationObserver(TTSymbol anApplicationName, const TTObjectBase& anObserver);

/** Remove a TTCallback as observer of application creation/destruction
 note : it uses the extern TTModularApplications variable
 @param anApplicationName		an application
 @param observer				a TTCallbackPtr to remove
 @return						a kTTErrGeneric if there isn't observer */
TTErr TTMODULAR_EXPORT TTApplicationManagerRemoveApplicationObserver(TTSymbol anApplicationName, const TTObjectBase& anObserver);

/** To get back raw incoming messages from any protocol
 @param	baton						..
 @param	data						..
 @return							an error code */
TTErr TTMODULAR_EXPORT TTApplicationManagerProtocolActivityInCallback(TTPtr baton, TTValue& data);

/** To get back raw outputing messages from any protocol
 @param	baton						..
 @param	data						..
 @return							an error code */
TTErr TTMODULAR_EXPORT TTApplicationManagerProtocolActivityOutCallback(TTPtr baton, TTValue& data);

/** compare priority attribute of object's node
 @param	v1							a pointer to a value containing a pointer to a TTNode >
 @param	v2							a pointer to a value containing a pointer to a TTNode >
 @return							is the priority of v1 is smaller than v2 (except if equal 0) ? */
TTBoolean TTMODULAR_EXPORT TTApplicationManagerCompareNodePriority(TTValue& v1, TTValue& v2);

#endif // __TT_APPLICATION_MANAGER_H__
