/** @file
 *
 * @ingroup foundationLibrary
 *
 * @brief Foundation Dictionary Class.
 *
 * @details The dictionary is a data structure that combines the fast lookup of a hashtable,
 * but may be sorted like a linked-list.
 * The linked list contains the key-value pairs of the hash a linked-list of TTKeyValues.
 *
 * @authors Timothy Place, Trond Lossius
 *
 * @copyright Copyright © 2010, Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTDictionary.h"
#include "TTObject.h"


TTDictionaryTable gTTDictionaryTable;


TTErr TTDictionary::registerObserverForNotifications(const TTObjectBase& anObservingObject)
{
	return mDictionaryInstance->registerObserverForNotifications(anObservingObject);
}

TTErr TTDictionary::registerObserverForNotifications(const TTObject& anObservingObject)
{
	return mDictionaryInstance->registerObserverForNotifications(*anObservingObject.instance());
}


TTErr TTDictionary::unregisterObserverForNotifications(const TTObjectBase& anObservingObject)
{
	return mDictionaryInstance->unregisterObserverForNotifications(anObservingObject);
}
TTErr TTDictionary::unregisterObserverForNotifications(const TTObject& anObservingObject)
{
	return mDictionaryInstance->unregisterObserverForNotifications(*anObservingObject.instance());
}

