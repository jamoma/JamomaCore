/* 
 * TTBlue Global Object
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTEnvironment.h"


// The environment object has one instance, which is global in scope.
TTEnvironment*	ttEnvironment = NULL;


/****************************************************************************************************/

TTEnvironment::TTEnvironment()
	: TTObject("environment"), numClasses(0)
{
	//registerMessage(TT("getVersion"), (TTMethod)&TTGlobal::getVersion);

	// The global object, and calls for setting the global SR, may come before any TTAudioObject is
	// instantiated.  So the attribute definition has been moved into the TTGlobal class itself.
	//registerAttribute(TT("sr"), kTypeUInt32, &TTAudioObject::globalSr);
	//setAttributeValue(TT("sr"), 44100);
}


TTEnvironment::~TTEnvironment()
{
	;
}


TTErr TTEnvironment::registerClass(TTSymbol* className, TTObjectInstantiationMethod anInstantiationMethod)
{
	if(numClasses == 0){
		classNames = (TTSymbol**)malloc(sizeof(TTSymbol*) * 1);
		objectConstructors = (TTObjectInstantiationMethod*)malloc(sizeof(TTObjectInstantiationMethod) * 1);
	}
	else{
		classNames = (TTSymbol**)realloc(classNames, sizeof(TTSymbol*) * (numClasses+1));
		objectConstructors = (TTObjectInstantiationMethod*)realloc(objectConstructors, sizeof(TTObjectInstantiationMethod) * (numClasses+1));
	}
	
	classNames[numClasses] = className;
	objectConstructors[numClasses] = anInstantiationMethod;
	numClasses++;
	return kTTErrNone;
}


/**	Retreive the names of all registered #TTObject classes in the environment.
 @param	unitNames	Pass a #TTValue that will be filled with an array of #TTSymbol pointers with the names of the classes.
 @return				An error code.	*/
TTErr TTEnvironment::getAllClassNames(TTValue& returnedClassNames)
{
	returnedClassNames.clear();
	for(TTUInt32 i=0; i<numClasses; i++)
		returnedClassNames.append(classNames[i]);
	return kTTErrNone;
}


/**	Create a new instance of a registered #TTObject class.
 @param	unitName	Pass in a #TTSymbol* with the name of the unit to load.  
 @param	unit		Upon successful return, the value will be set to a #TTObject which is the new instance.
 If the pointer is passed in as non-NULL then createUnit() will try to free to the
 existing object to which it points prior to instantiating the new unit.
 @return				An error code.	*/
TTErr TTEnvironment::createInstance(TTSymbol* className, TTObject* anObject, TTValue& anArgument)
{
	if(anObject)
		deleteInstance(anObject);
	anObject = NULL;
	
	for(TTUInt32 i=0; i<numClasses; i++){
		if(className == classNames[i]){
			anObject = objectConstructors[i](className, anArgument);
			break;
		}
	}

	if(anObject)
		return kTTErrNone;
	else
		return kTTErrGeneric;
}


/**	Free an instance of a #TTObject class.
 @param	unit		A pointer to the unit to free.
 @return				An error code.	*/
TTErr TTEnvironment::deleteInstance(TTObject* anObject)
{
	delete anObject;
	return kTTErrNone;
}

