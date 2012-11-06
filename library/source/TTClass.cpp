/** @file
 * @ingroup foundation
 *
 * @brief The TTClass object represents a class in the TTBlue environment.
 *
 * @details This is to say that it represents everything about a class except for the class itself,
 * which is a subclass of TTObject.
 *
 * @todo: We could override the () operator to make TTClass a functor for creating instances.
 *
 * @authors Timothy Place, Trond Lossius
 *
 * @copyright This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTClass.h"


/****************************************************************************************************/

TTClass::TTClass(const TTSymbol& className, const TTValue& tagList, const TTObjectInstantiationMethod anInstantiationMethod)
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

