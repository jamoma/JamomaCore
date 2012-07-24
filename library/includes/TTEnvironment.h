/* 
 * TTBlue Global Object
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_ENVIRONMENT_H__
#define __TT_ENVIRONMENT_H__

#include "TTObject.h"
#include "TTHash.h"


/**	A function pointer for an instance creation function required to be provided by all classes. */
typedef TTObject* (*TTObjectInstantiationMethod)(TTSymbolRef className, TTValue& arguments);

/**	A function pointer for an instance creation function required to be provided by all classes. */
typedef TTErr (*TTExtensionInitializationMethod)();

class TTClass;

/****************************************************************************************************/
// Class Specifications

/**
	The global object maintains all global attributes/settings for the TTBlue environment.
 
	All attribute members of the environment are made public, since essentially every class is a friend.
	They should, however, be treated as read-only.
*/
class TTFOUNDATION_EXPORT TTEnvironment : public TTObject {
private:
	TTHash*		classes;			///< A hash keyed on classNames, and returning a TTClassPtr.
	TTHash*		tags;				///< A hash keyed on tag names, which map to TTLists of all classes with that tag name.
	
public:
	TTBoolean	mDebugBasic;		///< Attribute: basic debug functionality is enabled when true.
	TTBoolean	mDebugMessaging;	///< Attribute: should all message traffic be logged?
	TTUInt32	mSampleRate;		///< Current sample rate as understood by the environment as a whole.
	TTBoolean	mBenchmarking;		///< Attribute: enable benchmarking in TTAudioObject and TTDataObject ?

	
	/**	Constructor	*/
	TTEnvironment();
	
	
	/**	Destructor */
	virtual ~TTEnvironment();

	
	/**	Retrieve the environment version number. */
	TTErr getVersion(const TTValue& anInputValue, TTValue &anOutputValue);

	
	/**	Register the unit name, and associate it with the constructor to be called. 
		@param	className				The name of the class to register.
		@param	tags					A comma-delimited list of tags in a string.
		@param	anInstantiationMethod	A pointer to the C-function that is used to create a new instance of the class.
		@return				An error code.	*/
	TTErr registerClass(const TTSymbolRef className, const TTString& tagString, const TTObjectInstantiationMethod anInstantiationMethod);

	// The above creates a class and registers it -- this one just registers a class after it is created.
	TTErr registerClass(TTClass* theClass);
	
	
	/** Remove a class from the environment's registry.	
		If the executable from which it is loaded is no longer referenced by other classes, then also unload the executable.
		@param	className	The name of the class to remove the registry.
		@return				An error code.	
	TTErr unregisterClass(const TTSymbolRef className);
	*/
	
	
	/*
	TTErr refreshClass(const TTSymbolRef className)
	{
		// TODO: cache class Info (like the path of the extension) here
		unregisterClass(className);
		//	registerClass(className);
	
		// TODO: now re-load the DLL.
	}
	*/

	
	/**	unload/reload all external classes.
	NOTE that to do this, we need to keep a piece of information that tags a class as external or internal.

	This probably means that the hash is going to need to map not to a function pointer, 
	but rather to a struct or an object that keeps all of the class's information bundled together.
	TTErr refreshAllClasses();
	*/
	
	
	/**	Retreive the names of all registered #TTObject classes in the environment.
		@param	unitNames	Pass a #TTValue that will be filled with an array of #TTSymbol pointers with the names of the classes.
		@return				An error code.	*/
	TTErr getAllClassNames(const TTValue& anInputValue, TTValue &anOutputValue);
	
	
	/**	Retreive the names of all registered #TTObject classes in the environment that 
		are associated with the given tag(s). 
		@param	classNames	An array of TTSymbols upon return.
		@param	tags		An array of tags by which to search the environment's registry.
		@return				An error code.	*/
	TTErr getClassNamesWithTags(TTValue& classNames, const TTValue& searchTags);

	/**	A message-bound version of getClassNamesWithTags()	*/
	TTErr getClassNamesForTags(const TTValue& anInputValue, TTValue &anOutputValue);
	
	
	/**	Create a new instance of a registered #TTObject class.
		@param	className	Pass in a #TTSymbol* with the name of the unit to load.  
		@param	anObject	Upon successful return, the value will be set to a #TTObject which is the new instance.
							If the pointer is passed in as non-NULL then createUnit() will try to free to the
							existing object to which it points prior to instantiating the new unit.
		@param	anArgument	For most audio processing objects, this should be passed the maximum number of channels.
							For this reason, we overload this method with a TTUint16 argument as a convenience.
		@return				An error code.	*/
	TTErr createInstance(const TTSymbolRef className, TTObjectPtr* anObject, TTValue& anArgument);
	TTErr createInstance(const TTSymbolRef className, TTObjectPtr* anObject, const TTValue& anArgument);
	
	
	/**	Create a reference to an object. */
	TTObjectPtr referenceInstance(TTObjectPtr anObject);

	
	/**	Release an instance of a #TTObject class.
		At the moment this is simply freeing the class, but it may use reference counting in the future 
		(e.g. for TTBuffer references).

		There are a couple of reasons we want to have this wrapper around the delete operator.
		- For instrumenting the code to investigate bugs, performance, etc.
		- So that we can handle any threading, spin-locks, mutexes, or other issues before actually freeing the object.
		- At some point we may do a more release-like-thing where we reference count for pseudo-garbage-collection.

		@param	unit		A pointer to the unit to free.
		@return				An error code.	*/
	TTErr releaseInstance(TTObjectPtr* anObject);	
};


/** The environment object has one instance, which is global in scope. */
extern TTFOUNDATION_EXPORT TTEnvironment* ttEnvironment;


// Public Interface
// Some of this looks a bit crazy due to duplication -- however the use of templates causes problems for linking on some Macs and PCs
// (while not neccessarily on others)
TTFOUNDATION_EXPORT TTErr TTObjectInstantiate(const TTSymbolRef className, TTObjectPtr* returnedObjectPtr, TTValue& arguments);
TTFOUNDATION_EXPORT TTErr TTObjectInstantiate(const TTSymbolRef className, TTObjectPtr* returnedObjectPtr, const TTValue& arguments);
TTFOUNDATION_EXPORT TTErr TTObjectInstantiate(const TTSymbolRef className, TTObjectPtr* returnedObjectPtr, const TTUInt16 arguments);

TTFOUNDATION_EXPORT TTObjectPtr TTObjectReference(TTObjectPtr anObject);
TTFOUNDATION_EXPORT TTErr TTObjectRelease(TTObjectPtr* anObject);

TTFOUNDATION_EXPORT TTErr TTClassRegister(const TTSymbolRef className, const TTString& tagString, const TTObjectInstantiationMethod anInstantiationMethod);
TTFOUNDATION_EXPORT TTErr TTClassRegister(const TTSymbolRef className, TTImmutableCString tagString, const TTObjectInstantiationMethod anInstantiationMethod);
TTFOUNDATION_EXPORT TTErr TTGetRegisteredClassNames(TTValue& classNames);
TTFOUNDATION_EXPORT TTErr TTGetRegisteredClassNamesForTags(TTValue& classNames, const TTValue& searchTags);

#endif // __TT_ENVIRONMENT_H__

