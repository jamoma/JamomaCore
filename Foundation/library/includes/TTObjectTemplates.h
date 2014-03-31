/** @file
	
	@ingroup foundationLibrary
	
	@brief Implementation of template code exported by TTObject
 
	@authors Timothy Place
	
	@copyright Copyright © 2014, Timothy Place @n
	This code is licensed under the terms of the "New BSD License" @n
	http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_OBJECT_TEMPLATES_H__
#define __TT_OBJECT_TEMPLATES_H__

#include "TTObject.h"
#include "TTObjectBase.h"


template <class T>
TTErr TTObject::set(const TTSymbol aName, T aValue)
{
	return mObjectInstance->setAttributeValue(aName, aValue);
}


template <class T>
TTErr TTObject::get(const TTSymbol aName, T& aReturnedValue) const
{
	return mObjectInstance->getAttributeValue(aName, aReturnedValue);
}


#endif // __TT_OBJECT_TEMPLATES_H__
