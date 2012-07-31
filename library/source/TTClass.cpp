/*
 * TTBlue Class Object
 * Copyright © 2008, Timothy Place
 *
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTClass.h"


/****************************************************************************************************/

TTClass::TTClass(const TTSymbolRef className, const TTValue& tagList, const TTObjectInstantiationMethod anInstantiationMethod)
	: name(className), tags(tagList), instantiationMethod(anInstantiationMethod), external(false)
{
	;
}


TTClass::~TTClass()
{

}


TTErr TTClass::createInstance(TTObject** anObject, TTValue& anArgument)
{
	TTErr err = kTTErrNone;

 	try {
		*anObject = instantiationMethod(name, anArgument);
	}
	catch (...) {
		err = kTTErrAllocFailed;
	}

	TT_ASSERT(create_instance_successful, err == kTTErrNone);
	return err;
}


TTErr TTClass::releaseInstance(TTObject* anObject)
{
	delete anObject;
	return kTTErrNone;
}

