/** @file
 *
 * @ingroup foundationLibrary
 *
 * @brief TTEnvironment is a global object providing information on the environemt.
 *
 * @details The global TTEnvironent object maintains all global attributes/settings for the Jamoma environment.
 * All attribute members of the environment are made public, since essentially every class is a friend.
 * They should, however, be treated as read-only.
 *
 * @authors Timothy Place, Nils Peters, Trond Lossius
 *
 * @copyright Copyright © 2008, Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#include "TTFoundation.h"
#include "TTEnvironment.h"
#include "TTClass.h"

#define thisTTClass TTEnvironment


// The environment object has one instance, which is global in scope.
TTEnvironment*	ttEnvironment = NULL;


/****************************************************************************************************/

TTEnvironment::TTEnvironment()
	: TTObjectBase(TTValue()), mDebugBasic(false), mDebugMessaging(false), mSampleRate(0), mBenchmarking(false)
{
	classes = new TTHash();
	tags = new TTHash();

	addAttribute(DebugBasic,		kTypeBoolean);
	addAttribute(DebugMessaging,	kTypeBoolean);
	addAttribute(SampleRate,		kTypeUInt32);
	addAttribute(Benchmarking,		kTypeBoolean);
	
	addMessageWithArguments(getVersion);
	addMessageWithArguments(getAllClassNames);
	addMessageWithArguments(getClassNamesForTags);

	// can't use the SymbolCache here because it hasn't been initialized yet!
	setAttributeValue("sampleRate", 44100);
}


TTEnvironment::~TTEnvironment()
{
	// If on Windows, we need to call FreeLibrary() on all plug-ins loaded with LoadLibrary()
	// On the Mac, we may need to do the equivalent

	delete tags;
	delete classes;
}


TTErr TTEnvironment::getVersion(const TTValue& anInputValue, TTValue &anOutputValue)
{
	anOutputValue = TTSymbol(TTFOUNDATION_VERSION_STRING);
	return kTTErrNone;
}


TTErr TTEnvironment::registerClass(const TTSymbol className, const TTString& tagString, const TTObjectBaseInstantiationMethod anInstantiationMethod)
{
	TTValue		v((TTString&)tagString);	// The tags to be associated with the class we are registering.
	TTValue		tagObjects;					// Contains a TTList of objects in the environment with the given tag.
	TTClassPtr	theClass;
	TTErr		err;
	TTList*		classNamesForTag;			// The TTList contained by tagObjects
	TTUInt16	size;
	TTSymbol	tag(kTTSymEmpty);
	TTValue		result;

	TTLogDebug("Jamoma registering class: %s\n", className.c_str());
	
	err = classes->lookup(className, result);

	// If a class is already registered with this name, then we do not want to register another class with the same name!
	if (err == kTTErrValueNotFound) {

		// 1. Turn the string into an array of symbols
		v.transformCSVStringToSymbolArray();

		// 2. Create the class and associate it with its name
		theClass = new TTClass(className, v, anInstantiationMethod);

		// 3. For each symbol in the TTValue array...
		size = v.size();
		for (TTUInt16 i=0; i<size; i++) {
			tag = v[i];

			// 4. Look to see if this tag exists yet
			err = tags->lookup(tag, tagObjects);
			if (!err) {
				classNamesForTag = (TTList*)(TTPtr(tagObjects));

				// TODO: The following code demonstrates so extreme lameness that we need to evaluate.
				//	First, we should probably just do this section of code with TTValue instead of TTList (but we needed code to test TTList)
				//	Second, TTList is taking references but keeping things internally as pointers, which leads to lots of confusion
				//	Third, we have to pass objects that are permanent - so no temporaries are allowed unless we make TTList do a copy
				//	etc.

				// TODO: We need to factor out a function to add a tag for a named class (or a given class ptr)

				classNamesForTag->append(className);
				//classNamesForTag->append(TTValue(className));
			}
			else {
				classNamesForTag = new TTList;
				tagObjects = TTPtr(classNamesForTag);
				tags->append(tag ,tagObjects);
				//classNamesForTag->append(*new TTValue(className));
				classNamesForTag->append(className);
			}
		}

		// 4. Register it
		err = registerClass(theClass);
	}
	return err;
}


TTErr TTEnvironment::registerClass(TTClassPtr theClass)
{
	return classes->append(theClass->name, TTPtr(theClass));
}


TTErr TTEnvironment::getAllClassNames(const TTValue& anInputValue, TTValue &anOutputValue)
{
	return classes->getKeys(anOutputValue);
}


TTErr TTEnvironment::getClassNamesForTags(const TTValue& anInputValue, TTValue &anOutputValue)
{
	return getClassNamesWithTags(anOutputValue, anInputValue);
	/*
	TTValue v;
	TTErr err;
	
	err = getClassNamesWithTags(v, searchTagsIn_classNamesOut);
	if (!err)
		searchTagsIn_classNamesOut = v;
	return err;
	 */
}


TTErr TTEnvironment::getClassNamesWithTags(TTValue& classNames, const TTValue& searchTags)
{
	TTUInt16	size = searchTags.size();
	TTSymbol	tag(kTTSymEmpty);
	TTValue		tagObjects;
	TTErr		err = kTTErrGeneric;
	TTList*		classNamesForTag;

	classNames.clear();

	tag = searchTags[0];
	err = tags->lookup(tag, tagObjects);
	if (err)
		return err;

	classNamesForTag = (TTList*)(TTPtr(tagObjects));

	for (TTUInt16 i=0; i<classNamesForTag->getSize(); i++) {
		TTValue		classNameValue;
		TTSymbol	className(kTTSymEmpty);
		TTValue		tags;
		TTValue		aClassValue;
		TTClassPtr	aClass;
		TTUInt16	success = 1;

		classNamesForTag->getIndex(i, classNameValue);
		className = classNameValue[0];

		classes->lookup(className, aClassValue);
		aClass = TTClassPtr(TTPtr(aClassValue));
		tags = aClass->tags;

		for (TTUInt16 j=0; j < tags.size(); j++){
			TTSymbol someTag(kTTSymEmpty);

			someTag = tags[j];

			for (TTUInt16 k=1; k<size; k++){
				tag = searchTags[k];
				if (tag == someTag) {
					success += 1;
					break;
				}
			}

			if (success == size)
				break;
		}
		if (success == size)
			classNames.append(className);
	}
	return kTTErrNone;
}


TTErr TTEnvironment::createInstance(const TTSymbol& className, TTObjectBasePtr* anObject, const TTValue& anArgument)
{
	TTValue		v;
	TTClassPtr	theClass;
	TTErr		err;
	TTObjectBasePtr	newObject = NULL;
	TTObjectBasePtr	oldObject = NULL;

	err = classes->lookup(className, v);
	if (!err) {
		theClass = TTClassPtr(TTPtr(v));

		if (theClass)
			err = theClass->createInstance(&newObject, anArgument);
		else
			err = kTTErrGeneric;
	}

	if (!err && newObject) {
		if (*anObject)
			oldObject = *anObject;
		*anObject = newObject;
		if (oldObject)
			releaseInstance(&oldObject);

		(*anObject)->classPtr = theClass;
		(*anObject)->valid = true;
	}

	//TODO: Add instance tracking.  For each instance of a class, we push the instance onto a linked list of instances for that class
	// When the object is freed using deleteInstance(), then we pop it.
	// What would this achieve?
	//	- we could check statistics on them or do other logging
	//	- we could access instances remotely, and perhaps then manipulate them remotely in a shared manner
	//	- if an object is referenced by another object, and thus shared, then we need to reference counting here before freeing.
	// THEREFORE: we should have an addReference() and release() method (instead of a deleteInstance() method).
	//	- the reference counting itself should probably be done inside of TTObjectBase though, yes?
	return err;
}

TTObjectBasePtr TTEnvironment::referenceInstance(TTObjectBasePtr anObject)
{
	// TODO: make sure that anObject is valid or wrap with an exception?
	anObject->referenceCount++;
	return anObject;
}

TTErr TTEnvironment::releaseInstance(TTObjectBasePtr* anObject)
{
	TTValue v = **anObject;

	TT_ASSERT("can only release a valid instance", *anObject && (*anObject)->valid == 1 && (*anObject)->referenceCount);

	(*anObject)->valid = false;
	(*anObject)->observers->iterateObjectsSendingMessage("objectFreeing", v);

	waitForLock(); // in case an object is processing a vector of audio in another thread or something...

	(*anObject)->referenceCount--;
	if ((*anObject)->referenceCount < 1) {
		delete *anObject;
		*anObject = NULL;
	}
	return kTTErrNone;
}


#if 0
#pragma mark -
#pragma mark Public Interface
#endif

TTErr TTObjectBaseInstantiate(const TTSymbol& className, TTObjectBasePtr* returnedObjectPtr, TTValue& arguments)
{
	return ttEnvironment->createInstance(className, returnedObjectPtr, arguments);
}


TTErr TTObjectBaseInstantiate(const TTSymbol& className, TTObjectBasePtr* returnedObjectPtr, const TTValue& arguments)
{
	return ttEnvironment->createInstance(className, returnedObjectPtr, arguments);
}


TTErr TTObjectBaseInstantiate(const TTSymbol& className, TTObjectBasePtr* returnedObjectPtr, const TTUInt16 arguments)
{
	TTValue	v(arguments);
	return ttEnvironment->createInstance(className, returnedObjectPtr, v);
}


TTObjectBasePtr TTObjectBaseReference(TTObjectBasePtr anObject)
{
	return ttEnvironment->referenceInstance(anObject);
}


TTErr TTObjectBaseRelease(TTObjectBasePtr* anObject)
{
	if (*anObject)
		return ttEnvironment->releaseInstance(anObject);
	else
		return kTTErrNone;
}


TTErr TTClassRegister(const TTSymbol className, const TTString& tagString, const TTObjectBaseInstantiationMethod anInstantiationMethod)
{
	return ttEnvironment->registerClass(className, tagString, anInstantiationMethod);
}

TTErr TTClassRegister(const TTSymbol className, TTImmutableCString tagString, const TTObjectBaseInstantiationMethod anInstantiationMethod)
{
	return ttEnvironment->registerClass(className, TTString(tagString), anInstantiationMethod);
}


TTErr TTGetRegisteredClassNames(TTValue& classNames)
{
	TTValue unused;
	return ttEnvironment->getAllClassNames(unused, classNames);
}


TTErr TTGetRegisteredClassNamesForTags(TTValue& classNames, const TTValue& searchTags)
{
	return ttEnvironment->getClassNamesWithTags(classNames, searchTags);
}

