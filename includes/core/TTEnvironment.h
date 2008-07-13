/* 
 * TTBlue Global Object
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __TT_ENVIRONMENT_H__
#define __TT_ENVIRONMENT_H__

#include "TTAudioObject.h"
#include "TTHash.h"


typedef TTObject* (*TTObjectInstantiationMethod)(TTSymbol* className, TTValue& arguments);



/****************************************************************************************************/
// Class Specifications

/**
	The global object maintains all global attributes/settings for the TTBlue environment.
*/
class TTEXPORT TTEnvironment : public TTObject {
private:
	// TODO: move TTGlobal stuff in here and get rid of the TTGlobal class
	TTHash*		classConstructors;	///< A hash keyed on classNames, and returning an objectConstructor

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
		@param	className	Pass in a #TTSymbol* with the name of the unit to load.  
		@param	anObject	Upon successful return, the value will be set to a #TTObject which is the new instance.
							If the pointer is passed in as non-NULL then createUnit() will try to free to the
							existing object to which it points prior to instantiating the new unit.
		@param	anArgument	For most audio processing objects, this should be passed the maximum number of channels.
							For this reason, we overload this method with a TTUint16 argument as a convenience.
		@return				An error code.	*/
	TTErr createInstance(const TTSymbolPtr className, TTObject** anObject, TTValue& anArgument);
	TTErr createInstance(const TTSymbolPtr className, TTObject** anObject, TTUInt16& anArgument);
	TTErr createInstance(const TTSymbolPtr className, TTAudioObject** anObject, TTValue& anArgument);
	TTErr createInstance(const TTSymbolPtr className, TTAudioObject** anObject, TTUInt16& anArgument);
	
	
	/**	Free an instance of a #TTObject class.
		There are a couple of reasons we want to have this wrapper around the delete operator.
		- For instrumenting the code to investigate bugs, performance, etc.
		- So that we can handle any threading, spin-locks, mutexes, or other issues before actually freeing the object.

		@param	unit		A pointer to the unit to free.
		@return				An error code.	*/
	TTErr deleteInstance(TTObject* anObject);
	
	
};


/** The environment object has one instance, which is global in scope. */
extern TTEnvironment* ttEnvironment;


// Some macros for convenience and API naming-convention consistency
#define TTClassRegister(className, instantiationMethod) ttEnvironment->registerClass(className, instantiationMethod)
#define TTGetRegisteredClassNames(classNames) ttEnvironment->getAllClassNames(classNames) 
#define TTObjectInstantiate(className, anObject, arguments) ttEnvironment->createInstance(className, anObject, arguments)
#define TTObjectFree(anObject) ttEnvironment->deleteInstance(anObject)

#endif // __TT_ENVIRONMENT_H__

