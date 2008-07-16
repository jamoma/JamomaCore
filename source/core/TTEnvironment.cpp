/* 
 * TTBlue Global Object
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTEnvironment.h"
#define thisTTClass TTEnvironment


// The environment object has one instance, which is global in scope.
TTEnvironment*	ttEnvironment = NULL;


/****************************************************************************************************/

TTEnvironment::TTEnvironment()
	: TTObject("environment")//, numClasses(0)
{	
	classConstructors = new TTHash();

// TODO: implement messages and attributes to the environment.
// For the MaxMSP examples, we could bind an object (maybe in Jamoma.framework) to the symbol ttblue 
// to set attributes and send messages.
	registerAttributeSimple(debugMessaging,	kTypeBoolean);
	registerAttributeSimple(sr,				kTypeUInt32);

	registerMessageWithArgument(getVersion);

	setAttributeValue(TT("sr"), 44100);
}


TTEnvironment::~TTEnvironment()
{
	delete classConstructors;
}


TTErr TTEnvironment::getVersion(TTValue &value)
{
	value = "0.5.3";
	return kTTErrNone;
}


TTErr TTEnvironment::registerClass(const TTSymbolPtr className, TTObjectInstantiationMethod anInstantiationMethod)
{
	classConstructors->append(className, TTPtr(anInstantiationMethod));
	return kTTErrNone;
}



TTErr TTEnvironment::getAllClassNames(TTValue& returnedClassNames)
{
	return classConstructors->getKeys(returnedClassNames);
}



TTErr TTEnvironment::createInstance(const TTSymbolPtr className, TTObject** anObject, TTValue& anArgument)
{
	TTValue						v;
	TTObjectInstantiationMethod meth = NULL;

	if(*anObject){
		deleteInstance(*anObject);
		*anObject = NULL;
	}
	
	classConstructors->lookup(className, v);
	meth = TTObjectInstantiationMethod(TTPtr(v));
	if(meth)
		*anObject = meth(className, anArgument);
	
	if(*anObject)
		return kTTErrNone;
	else
		return kTTErrGeneric;
}

TTErr TTEnvironment::createInstance(const TTSymbolPtr className, TTObject** anObject, TTUInt16& anArgument)
{
	TTValue v(anArgument);
	return createInstance(className, anObject, v);
}

TTErr TTEnvironment::createInstance(const TTSymbolPtr className, TTAudioObject** anObject, TTValue& anArgument)
{
	return createInstance(className, (TTObject**)anObject, anArgument);
}

TTErr TTEnvironment::createInstance(const TTSymbolPtr className, TTAudioObject** anObject, TTUInt16& anArgument)
{
	return createInstance(className, (TTObject**)anObject, anArgument);
}



TTErr TTEnvironment::deleteInstance(TTObject* anObject)
{
	delete anObject;
	return kTTErrNone;
}

