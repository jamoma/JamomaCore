/* 
 * TTBlue Global Object
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __TT_ENVIRONMENT_H__
#define __TT_ENVIRONMENT_H__

#include "TTObject.h"


typedef TTObject* (*TTObjectInstantiationMethod)(TTSymbol* className, TTValue& arguments);



/****************************************************************************************************/
// Class Specifications

/**
	The global object maintains all global attributes/settings for the TTBlue environment.
*/
class TTEXPORT TTEnvironment : public TTObject {
private:
	// TODO: move TTGlobal stuff in here and get rid of the TTGlobal class
	TTSymbol**						classNames;
	TTObjectInstantiationMethod*	objectConstructors;
	TTUInt32						numClasses;

public:

	/**	Constructor	*/
	TTEnvironment();
	
	
	/**	Destructor */
	virtual ~TTEnvironment();

	
	/**	Register the unit name, and associate it with the constructor to be called. */
	TTErr registerClass(TTSymbol* className, TTObjectInstantiationMethod anInstantiationMethod);
	
	
	/**	Retreive the names of all registered #TTObject classes in the environment.
		@param	unitNames	Pass a #TTValue that will be filled with an array of #TTSymbol pointers with the names of the classes.
		@return				An error code.	*/
	TTErr getAllClassNames(TTValue& classNames);
	
	
	/**	Create a new instance of a registered #TTObject class.
		@param	unitName	Pass in a #TTSymbol* with the name of the unit to load.  
		@param	unit		Upon successful return, the value will be set to a #TTObject which is the new instance.
							If the pointer is passed in as non-NULL then createUnit() will try to free to the
							existing object to which it points prior to instantiating the new unit.
		@return				An error code.	*/
	TTErr createInstance(TTSymbol* className, TTObject* anObject, TTValue& anArgument);
	// TODO: What about setting the initial maxNumChannels?
	
	
	/**	Free an instance of a #TTObject class.
		@param	unit		A pointer to the unit to free.
		@return				An error code.	*/
	TTErr deleteInstance(TTObject* anObject);
	
	
};


/** The environment object has one instance, which is global in scope. */
extern TTEnvironment* ttEnvironment;


// Some macros for convenience and API naming-convention consistency
#define TTObjectInstantiate(className, anObject) ttEnvironment->createInstance(unitName, anObject)
#define TTObjectFree(anObject) ttEnvironment->deleteInstance(anObject)
#define TTClassRegister(className) ttEnvironment->registerClass(className)
#define TTGetRegisteredClassNames(classNames) ttEnvironment->getAllClassNames(classNames) 

#endif // __TT_ENVIRONMENT_H__

