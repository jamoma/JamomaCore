/** @file
 *
 * @ingroup foundationLibrary
 *
 * @brief Create and destroy Jamoma object instances.
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
#include "TTValueCache.h"

/****************************************************************************************************/
// Class Specifications

/**
	Create and destroy Jamoma object instances.
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
	TTObject(const TTSymbol& aClassName, const TTValue& arguments = kTTValNONE) :
	mObjectInstance(NULL)
	{
		TTErr err = TTObjectBaseInstantiate(aClassName, &mObjectInstance, arguments);
		
		if (err) {
			TTLogError("TTObject -- error %i instantiating %s", err, aClassName.c_str());
			throw TTException("object instantiation failed");
		}
	}
	
	/** Destructor.
	 */
	virtual ~TTObject()
	{
		TTObjectBaseRelease(&mObjectInstance);
	}
	
	// TODO -- how do we do TTObjectReference?  Copy constructor?
	
	
	// TODO -- static methods for querying the registry
	
	
	
	/** Return a direct pointer to the internal instance.
		Not recommended in most cases. */
	TTObjectBase* instance()
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
	TTErr setAttributeValue(const TTSymbol aName, const T& aValue)
	{
		return mObjectInstance->setAttributeValue(aName, aValue);
	}
	
	/**	Get an attribute value for an object
	 @param	name				The name of the attribute to get.
	 @param	value				The returned value of the attribute.
	 @return					#TTErr error code if the method fails to execute, else #kTTErrNone.	 
	 */
	template <class T>
	TTErr getAttributeValue(const TTSymbol aName, T& aReturnedValue)
	{
		return mObjectInstance->getAttributeValue(aName, aReturnedValue);
	}
	
	
	/** Return a list of names of the available attributes.
	 @param attributeNameList		Pointer to a list of all attributes registered with this TTObjectBase.
	 */
	void getAttributeNames(TTValue& returnedAttributeNames)
	{
		mObjectInstance->getAttributeNames(returnedAttributeNames);
	}
	
	
	/** Return a list of names of the available messages.
	 @param messageNameList		Pointer to a list of all messages registered with this TTObjectBase.
	 */
	void getMessageNames(TTValue& returnedMessageNames)
	{
		mObjectInstance->getMessageNames(returnedMessageNames);
	}
	
	
	/** Return the name of this class.
	 @return					The name of this object.
	 */
	TTSymbol getName() const
	{
		return mObjectInstance->getName();
	}

	
	/** TODO: Document this function
	 @return						#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr sendMessage(const TTSymbol& aName)
	{
		return mObjectInstance->sendMessage(aName);
	}


	TTErr sendMessage(const TTSymbol& aName, const TTValue& anInputValue, TTValue& anOutputValue)
	{
		return mObjectInstance->sendMessage(aName, anInputValue, anOutputValue);
	}

#ifdef UNSURE_HOW_TO_HANDLE_THESE_RIGHT_NOW
	/** Register an observer for a message.
	 The observer will be monitoring if this message is sent to the object.
	 @param observingObject			Pointer to the observing object.
	 @param messageName				The name of the message to monitor.
	 @return						#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr registerObserverForMessage(const TTObjectBase& observingObject, const TTSymbol& messageName);
	
	
	/** Register an observer for an attribute.
	 The observer will be monitoring if this attribute is changes.
	 @param observingObject			Pointer to the observing object.
	 @param attributeName			The name of the attribute to monitor.
	 @return						#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr registerObserverForAttribute(const TTObjectBase& observingObject, const TTSymbol& attributeName);
	
	
	/** Register an observer.
	 The observer will be monitoring this object.
	 TODO: Exactly what do this imply? What is being observed?
	 @param observingObject			Pointer to the observing object.
	 @return						#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr registerObserverForNotifications(const TTObjectBase& observingObject);
	
	
	/** Unregister an observer for a message.
	 The observer will stop monitoring if this message is sent to the object.
	 @param observingObject			Pointer to the observing object.
	 @param messageName				The name of the message that no longer will be monitored.
	 @return						#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr unregisterObserverForMessage(const TTObjectBase& observingObject, const TTSymbol& messageName);
	
	
	/** Unregister an observer for an attribute.
	 The observer will stop monitoring changes to this attribute.
	 @param observingObject			Pointer to the observing object.
	 @param attributeName			The name of the attribute that no longer will be monitored.
	 @return						#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr unregisterObserverForAttribute(const TTObjectBase& observingObject, const TTSymbol& attributeName);
	
	
	/** Unregister an observer for notifications.
	 The observer wiln no longer be monitoring.
	 TODO: Exactly what do this imply?
	 @param observingObject			Pointer to the observing object.
	 @return						#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr unregisterObserverForNotifications(const TTObjectBase& observingObject);
#endif // UNSURE_HOW_TO_HANDLE_THESE_RIGHT_NOW
			
	/** Default (empty) template for unit tests.
	 @param returnedTestInfo		Returned information on the outcome of the unit test(s)
	 @return						#kTTErrNone if tests exists and they all pass, else #TTErr error codes depending on the outcome of the test.
	 */
	virtual TTErr test(TTValue& returnedTestInfo)
	{
		return mObjectInstance->test(returnedTestInfo);
	}
	
};


#endif // __TT_OBJECT_H__
