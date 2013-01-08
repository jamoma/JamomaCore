/** @file
 *
 * @ingroup foundationLibrary
 *
 * @brief Create and destroy Jamoma object instances.
 *
 * @details Base class for all first-class Jamoma objects.
 * Internal objects may inherit directly from #TTObjectBase,
 * but most objects will inherit from #TTDataObjectBase or #TTAudioObjectBase.
 *
 * @authors Timothy Place
 *
 * @copyright Copyright © 2012, Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */

#ifdef NOT_READY_YET
#ifndef __TT_OBJECT_H__
#define __TT_OBJECT_H__

#include "TTObjectBase.h"
#include "TTEnvironment.h"

/****************************************************************************************************/
// Class Specifications

/**
	Base class for all first-class Jamoma objects.
	Internal objects may inherit directly from #TTObjectBase,
	but most objects will inherit from #TTDataObjectBase or #TTAudioObjectBase.
*/

// TODO: what the heck is TTBase, and why do we need it?

class TTFOUNDATION_EXPORT TTObject : TTBase {
private:
	friend class TTEnvironment;

	TTObjectBasePtr		mObjectInstance;


public:
	
	
	/** Constructor.
	 @param arguments						Arguments to the constructor.
	 */
	TTObject(const TTSymbol& aClassName, const TTValue& arguments = kTTVal_NONE) :
	mObjectInstance(NULL)
	{
		TTObjectBaseInstantiate()
		
		; // TODO: implement
	}
	
	/** Destructor.
	 */
	virtual ~TTObject()
	{
		TTObjectBaseRelease(&mObjectInstance);
	}
	
	// TODO -- how do we do TTObjectReference?
	
	
	// TODO -- static methods for querying the registry
	
	
	
	
	// TODO: do the following, but do it as a cast operator
//	TTObjectBase* getBaseInstance()
	
	
	/**	Set an attribute value for an object
		@param	name			The name of the attribute to set.
		@param	value			The value to use for setting the attribute.
								This value can be changed(!), for example if the value is out of range for the attribute.
								Hence, it is not declared const.
		@return					#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	template <Class T>
	TTErr setAttributeValue(const TTSymbol& aName, const T& aValue)
	{
		return mObjectInstance->setAttributeValue(aName, aValue);
	}
	
	/**	Get an attribute value for an object
	 @param	name				The name of the attribute to get.
	 @param	value				The returned value of the attribute.
	 @return					#TTErr error code if the method fails to execute, else #kTTErrNone.	 
	 */
	template <Class T>
	TTErr getAttributeValue(const TTSymbol& aName, T& aReturnedValue)
	{
		return mObjectInstance->getAttributeValue(aName, aValue);
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
#endif // NOT_READY_YET
