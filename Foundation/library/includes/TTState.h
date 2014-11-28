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



/**	A convenience macro to initialize #TTState parent class with our specific getState and setState methods */
#define TT_STATE TTState(this, (TTGetterMethod)& thisTTClass ::getState, (TTSetterMethod)& thisTTClass ::setState)

/**	A convenience macro to initialize #TTState parent class with a specific getState method and the default TTState::setState method */
#define TT_STATE_GETTER TTState(this, (TTGetterMethod)& thisTTClass ::getState)

/**	A convenience macro to initialize #TTState parent class with the default TTState::getState method and a specific setState method */
#define TT_STATE_SETTER TTState(this, NULL, (TTSetterMethod)& thisTTClass ::setState)

/**	A convenience macro to initialize #TTState parent class with the default TTState::getState method and the default TTState::setState method */
#define TT_STATE_DEFAULT TTState(this)



/**	The #TTState class is made to extend #TTObjectBase class with state managment features.
 
 @details 
 To add state features to a TTObjectBase children class :
 
 - Make the class to inherit from TTState and provide (or not) getState and setState methods.

    class TTFOUNDATION_EXPORT TTMyClass : public TTObjectBase, public TTState
    {
        TTCLASS_SETUP(TTMyClass)
 
        ...
 
        TTErr getState(TTValue& returnedState) const override;
        TTErr setState(const TTValue& newState) override;
    }

 - Initialize the State in the contructor :
 
    TT_BASE_OBJECT_CONSTRUCTOR,
    TT_STATE,
    ...
    {
        ...
    }
 
 Here is an example for getState and setState :
 
     TTErr TTMyClass::getState(TTValue& returnedState) const
     {
         TTDictionary dictionary;
         
         dictionary.setSchema(thisTTClassName);
         dictionary.append("myAttribute", mMyAttribute);
         
         returnedState = dictionary;
         return kTTErrNone;
     }
     
     TTErr TTMyClass::setState(const TTValue& newState)
     {
         TTDictionary dictionary = newState[0];
         if (dictionary.getSchema() == thisTTClassName)
         {
             dictionary.lookup("myAttribute", mMyAttribute);
             
             return kTTErrNone;
         }
         
         return kTTErrInvalidType;
     }
 
 @see TTObjectBase
 */
class TTState
{
    friend TTObjectBase;
    
    TTObjectBasePtr     mObject;     ///< a none referenced #TTObjectBase instance to extend.
    
public :
    
    /** State contructor.
	 @param toExtend        #TTObjectBase object instance to extend with state managment features
     @param getter          #TTGetterMethod method to pass a specific state getting method, otherwise use default getState to get value attribute
     @param setter          #TTSetterMethod method to pass a specific state setting method, otherwise use default setState to set value attribute
	 */
    TTState(TTObjectBasePtr toExtend, TTGetterMethod getter = NULL, TTSetterMethod setter = NULL);
    
    /** State destructor.
	 */
    virtual ~TTState();

private :
    
    /** Default accessor to query the state of the object.
	 @param returnedState   #TTDictionary containing only the state of the value attribute
	 @return #kTTErrNone if a state can be returned, a #kTTErrGeneric if no state can be built.
	 */
	virtual TTErr getState(TTValue& returnedState) const;
    
    /** Default accessor to set the state of the object.
	 @param newState       #TTDictionary containing only the state for the value attribute
	 @return #kTTErrNone if the state cannot be handled, #kTTErrInvalidType if the schema is not appropriate.
	 */
	virtual TTErr setState(const TTValue& newState);
};

#endif // __STATE_H__
