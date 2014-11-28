/** @file
 @ingroup foundationLibrary
 
 @brief The #TTState class is made to extend #TTObjectBase class with state managment features.
 
 @author Theo de la Hogue
 
 @copyright Copyright © 2014, Theo de la Hogue @n
 This code is licensed under the terms of the "New BSD License" @n
 http://creativecommons.org/licenses/BSD/
 */

#ifndef __STATE_H__
#define __STATE_H__

#include "TTDictionary.h"
#include "TTObjectBase.h"

#define TT_STATE TTState(this, (TTGetterMethod)& thisTTClass ::getState, (TTSetterMethod)& thisTTClass ::setState)

/**	The #TTState class is made to extend #TTObjectBase class with state managment features.
 
 @see TTObjectBase
 */
class TTState
{
    friend TTObjectBase;
    
    TTObjectBasePtr     mObject;     ///< a none referenced #TTObjectBase instance to extend.
    
public :
    
    TTState(TTObjectBasePtr toExtend, TTGetterMethod getter, TTSetterMethod setter);
    virtual ~TTState();

private :
    
    /** Default (empty) template accessor to query the state of the object.
	 @param returnedState   #TTDictionary
	 @return #kTTErrNone if a state can be returned, a #TTErr if not.
	 */
	virtual TTErr getState(TTValue& returnedState) const
	{
		mObject->logMessage("No state can be returned for this class -- please supply a getState accessor.\n");
		return kTTErrGeneric;
	}
    
    /** Default (empty) template accessor to set the state of the object.
	 @param newState       #TTDictionary
	 @return #kTTErrNone if the state cannot be handled, kTTErrInvalidType if the schema is not appropriate.
	 */
	virtual TTErr setState(const TTValue& newState)
	{
		mObject->logMessage("No state can be passed to this class -- please supply a setState accessor.\n");
		return kTTErrGeneric;
	}
};

#endif // __STATE_MANAGER_H__
