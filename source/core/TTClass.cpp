/* 
 * TTBlue Class Object
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTClass.h"


/****************************************************************************************************/

TTClass::TTClass(const TTSymbolPtr className, const TTValue& tagList, const TTObjectInstantiationMethod anInstantiationMethod)
	: name(className), tags(tagList), instantiationMethod(anInstantiationMethod), external(false)
{	
	;
}


TTClass::~TTClass()
{

}


TTErr TTClass::createInstance(TTObject** anObject, TTValue& anArgument)
{
	*anObject = instantiationMethod(name, anArgument);
	
	//TODO: Should be doing some sort of exception handling here
	//	That way class constructors and destructors can throw exceptions if something goes wrong...
		
	if(*anObject)
		return kTTErrNone;
	else
		return kTTErrAllocFailed;
}


TTErr TTClass::releaseInstance(TTObject* anObject)
{
	delete anObject;
	return kTTErrNone;
}

