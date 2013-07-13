/** @file
 *
 * @ingroup foundationLibrary
 *
 * @brief Create Jamoma object instances.
 *
 * @authors Timothy Place
 *
 * @copyright Copyright © 2012, Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_OBJECT_H__
#define __TT_OBJECT_H__

#include "TTObjectBase.h"
#include "TTEnvironment.h"

/****************************************************************************************************/
// Class Specifications

/**
	Create Jamoma object instances.
*/
class TTFOUNDATION_EXPORT TTObject {
protected:
	friend class TTEnvironment;

	TTObjectBasePtr		mObjectInstance;

public:
	
	/** Constructor.
		 @param aClassName		The symbolic name of the class to create/wrap.
		 @param arguments		Arguments to the constructor.
	 */
	// NOTE: arguments *must* be copied -- otherwise a reference to kTTValNONE may overwrite its value and corrupt memory
	TTObject(const TTSymbol& aClassName, const TTValue arguments = TTValue()) :
	mObjectInstance(NULL)
	{
		TTErr err = ttEnvironment->createInstance(aClassName, &mObjectInstance, arguments);
		
		if (err) {
			TTLogError("TTObject -- error %i instantiating %s\n", err, aClassName.c_str());
			throw TTException("object instantiation failed");
		}
	}
	
	/** Constructor to create an empyt container which will be assigned/copied-to at a later point */
	TTObject() :
		mObjectInstance(NULL)
	{
		
	}
	
	/** Destructor.
	 */
	virtual ~TTObject()
	{
		ttEnvironment->releaseInstance(&mObjectInstance);
	}
	
	// TODO -- how do we do TTObjectReference?  Copy constructor and assignment operator, yes?
	// Look at the Doxygen tutorial for a use case!
	
	// class methods for querying the registry
	static TTErr GetRegisteredClassNames(TTValue& classNames)
	{
		TTValue unused;
		return ttEnvironment->getAllClassNames(unused, classNames);
	}
	
	static TTErr GetRegisteredClassNamesForTags(TTValue& classNames, const TTValue& searchTags)
	{
		return ttEnvironment->getClassNamesWithTags(classNames, searchTags);
	}
	
	static TTErr GetRegisteredTags(TTValue& tags)
	{
		// TODO: Needs to be implemented!
		return kTTErrMethodNotFound;
	}

	
	/** Return a direct pointer to the internal instance.
		Not recommended in most cases. */
	TTObjectBase* instance() const
	{
		return mObjectInstance;
	}
	
	
	/**	Set an attribute value for an object
		@param	name			The name of the attribute to set.
		@param	value			The value to use for setting the attribute.
								This value can be changed(!), for example if the value is out of range for the attribute.
								Hence, it is not declared const.
		@return					#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	template <class T>
	TTErr set(const TTSymbol aName, T aValue)
	{
		return mObjectInstance->setAttributeValue(aName, aValue);
	}
	
	
	/**	Get an attribute value for an object
		@param	name				The name of the attribute to get.
		@param	value				The returned value of the attribute.
		@return					#TTErr error code if the method fails to execute, else #kTTErrNone.	 
	 */
	template <class T>
	TTErr get(const TTSymbol aName, T& aReturnedValue)
	{
		return mObjectInstance->getAttributeValue(aName, aReturnedValue);
	}
	
	
	/** Return a list of names of the available attributes.
		@param attributeNameList		Pointer to a list of all attributes registered with this TTObjectBase.
	 */
	void attributes(TTValue& returnedAttributeNames)
	{
		mObjectInstance->getAttributeNames(returnedAttributeNames);
	}
	
	
	/** Return a list of names of the available messages.
		@param messageNameList		Pointer to a list of all messages registered with this TTObjectBase.
	 */
	void messages(TTValue& returnedMessageNames)
	{
		mObjectInstance->getMessageNames(returnedMessageNames);
	}
	
	
	/** Return the name of this class.
		@return					The name of this object.
	 */
	TTSymbol name() const
	{
		return mObjectInstance->getName();
	}

	
	/** Send a message to this object with no arguments.
		@param aName	The name of the message to send.
		@return			#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr send(const TTSymbol& aName)
	{
		return mObjectInstance->sendMessage(aName);
	}


	/** Send a message to this object with arguments.
		All arguments for input must be packed into a #TTValue container.
		Any return values from the message will be packed into a second #TTValue container, which you must provide.
		@param	aName			The name of the message to send.
		@param	anInputValue	Any additional arguments to the message.
		@param	anOutputValue	Will be filled-in with data upon return if the message returns data.
		@return					#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr send(const TTSymbol& aName, const TTValue& anInputValue, TTValue& anOutputValue)
	{
		return mObjectInstance->sendMessage(aName, anInputValue, anOutputValue);
	}

	
	/** Register an observer.
		The observer will be monitoring this object.

		@param anObservingObject	Reference to the observing object.
		@return						#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr registerObserverForNotifications(const TTObjectBase& anObservingObject)
	{
		return mObjectInstance->registerObserverForNotifications(anObservingObject);
	}
	TTErr registerObserverForNotifications(const TTObject& anObservingObject)
	{
		return mObjectInstance->registerObserverForNotifications(*anObservingObject.instance());
	}
	
		
	/** Unregister an observer for notifications.
		The observer wiln no longer be monitoring.

		@param anObservingObject	Reference to the observing object.
		@return						#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr unregisterObserverForNotifications(const TTObjectBase& anObservingObject)
	{
		return mObjectInstance->unregisterObserverForNotifications(anObservingObject);
	}
	TTErr unregisterObserverForNotifications(const TTObject& anObservingObject)
	{
		return mObjectInstance->unregisterObserverForNotifications(*anObservingObject.instance());
	}
	
	
	/** Compare two objects for equality. */
	inline friend bool operator == (const TTObject& anObject, const TTObject& anotherObject)
	{
		return (anObject.instance() == anotherObject.instance());
	}

		
	
};


#endif // __TT_OBJECT_H__
