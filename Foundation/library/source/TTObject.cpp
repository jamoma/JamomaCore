/** @file
 *
 * @ingroup foundationLibrary
 *
 * @brief Create Jamoma object instances.
 *
 * @authors Timothy Place
 *
 * @copyright Copyright © 2014, Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTObject.h"
#include "TTObjectBase.h"
#include "TTEnvironment.h"
#include "TTObjectTemplates.h"


TTObject::TTObject(const TTSymbol aClassName, const TTValue arguments) :
mObjectInstance(NULL)
{
	TTErr err = ttEnvironment->createInstance(aClassName, &mObjectInstance, arguments);
	
	if (err) {
		TTLogError("TTObject -- error %i instantiating %s\n", err, aClassName.c_str());
		throw TTException("object instantiation failed");
	}
}


TTObject::TTObject(const TTSymbol aClassName) :
mObjectInstance(NULL)
{
	TTErr err = ttEnvironment->createInstance(aClassName, &mObjectInstance, TTValue());
	
	if (err) {
		TTLogError("TTObject -- error %i instantiating %s\n", err, aClassName.c_str());
		throw TTException("object instantiation failed");
	}
}


TTObject::TTObject() :
mObjectInstance(NULL)
{
	
}


TTObject::TTObject(TTObjectBase* anObjectBase) :
mObjectInstance(NULL)
{
	mObjectInstance = ttEnvironment->referenceInstance(anObjectBase);
}



TTObject::~TTObject()
{
	ttEnvironment->releaseInstance(&mObjectInstance);
}


TTErr TTObject::GetRegisteredClassNames(TTValue& classNames)
{
	TTValue unused;
	return ttEnvironment->getAllClassNames(unused, classNames);
}

TTErr TTObject::GetRegisteredClassNamesForTags(TTValue& classNames, const TTValue& searchTags)
{
	return ttEnvironment->getClassNamesWithTags(classNames, searchTags);
}

TTErr TTObject::GetRegisteredTags(TTValue& tags)
{
	// TODO: Needs to be implemented!
	return kTTErrMethodNotFound;
}


TTObjectBase* TTObject::instance() const
{
	return mObjectInstance;
}


void TTObject::attributes(TTValue& returnedAttributeNames)
{
	mObjectInstance->getAttributeNames(returnedAttributeNames);
}


void TTObject::messages(TTValue& returnedMessageNames)
{
	mObjectInstance->getMessageNames(returnedMessageNames);
}


TTSymbol TTObject::name() const
{
	return mObjectInstance->getName();
}



TTErr TTObject::send(const TTSymbol aName)
{
	return mObjectInstance->sendMessage(aName);
}



TTErr TTObject::send(const TTSymbol aName, const TTValue& anInputValue, TTValue& anOutputValue)
{
	return mObjectInstance->sendMessage(aName, anInputValue, anOutputValue);
}



TTErr TTObject::registerObserverForNotifications(const TTObjectBase& anObservingObject)
{
	return mObjectInstance->registerObserverForNotifications(anObservingObject);
}

TTErr TTObject::registerObserverForNotifications(const TTObject& anObservingObject)
{
	return mObjectInstance->registerObserverForNotifications(*anObservingObject.instance());
}



TTErr TTObject::unregisterObserverForNotifications(const TTObjectBase& anObservingObject)
{
	return mObjectInstance->unregisterObserverForNotifications(anObservingObject);
}

TTErr TTObject::unregisterObserverForNotifications(const TTObject& anObservingObject)
{
	return mObjectInstance->unregisterObserverForNotifications(*anObservingObject.instance());
}


inline bool operator == (const TTObject& anObject, const TTObject& anotherObject)
{
	return (anObject.instance() == anotherObject.instance());
}


TTBoolean TTObject::valid() const
{
	if (mObjectInstance && mObjectInstance->valid)
		return YES;
	else
		return NO;
}

