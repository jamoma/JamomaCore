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
    mObject->registerAttribute("state", kTypeLocalValue, NULL, getter, setter);
};

TTState::~TTState()
{
    ;
}
