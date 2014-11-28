/** @file
 @ingroup foundationLibrary
 
 @brief The #TTState class is made to extend #TTObjectBase class with state managment features.
 
 @author Theo de la Hogue
 
 @copyright Copyright © 2014, Theo de la Hogue @n
 This code is licensed under the terms of the "New BSD License" @n
 http://creativecommons.org/licenses/BSD/
 */

#include "TTState.h"

#if 0
#pragma mark -
#pragma mark Constructor / Destructor
#endif

TTState::TTState(TTObjectBasePtr toExtend, TTGetterMethod getter, TTSetterMethod setter) :
mObject(toExtend)
{
    if (getter && setter)
        mObject->registerAttribute("state", kTypeLocalValue, NULL, getter, setter);
    else if (!getter && setter)
        mObject->registerAttribute("state", kTypeLocalValue, NULL, (TTGetterMethod)&TTState::getState, setter);
    else if (getter && !setter)
        mObject->registerAttribute("state", kTypeLocalValue, NULL, getter, (TTSetterMethod)&TTState::setState);
    else if (!getter && !setter)
        mObject->registerAttribute("state", kTypeLocalValue, NULL, (TTGetterMethod)&TTState::getState, (TTSetterMethod)&TTState::setState);
};

TTState::~TTState()
{
    ;
}

TTErr TTState::getState(TTValue& returnedState) const
{
    TTValue value;
    
    if (!mObject->getAttributeValue("value", value))
    {
        TTDictionary dictionary;
        
        dictionary.setSchema(mObject->getName());
        dictionary.setValue(value);
    
        returnedState = dictionary;
        return kTTErrNone;
    }
    
    return kTTErrGeneric;
}

TTErr TTState::setState(const TTValue& newState)
{
    TTDictionary dictionary = newState[0];
    if (dictionary.getSchema() == mObject->getName())
    {
        TTValue value;
        
        dictionary.getValue(value);
        return mObject->setAttributeValue("value", value);
    }
    
    return kTTErrInvalidType;
}
