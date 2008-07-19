/* 
 * TTBlue Global Object
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTBlue.h"
#include "TTEnvironment.h"
#include "TTClass.h"

#define thisTTClass TTEnvironment


// The environment object has one instance, which is global in scope.
TTEnvironment*	ttEnvironment = NULL;


/****************************************************************************************************/

TTEnvironment::TTEnvironment()
	: TTObject("environment")//, numClasses(0)
{	
	classes = new TTHash();
	tags = new TTHash();

	registerAttributeSimple(debugBasic,		kTypeBoolean);
	registerAttributeSimple(debugMessaging,	kTypeBoolean);
	registerAttributeSimple(sr,				kTypeUInt32);

	registerMessageWithArgument(getVersion);

	setAttributeValue(TT("sr"), 44100);
}


TTEnvironment::~TTEnvironment()
{
	// If on Windows, we need to call FreeLibrary() on all plug-ins loaded with LoadLibrary()
	// On the Mac, we may need to do the equivalent

	delete tags;
	delete classes;
}


TTErr TTEnvironment::getVersion(TTValue &value)
{
	value = TT_VERSION_STRING;
	return kTTErrNone;
}


TTErr TTEnvironment::registerClass(const TTSymbolPtr className, const TTString& tagString, const TTObjectInstantiationMethod anInstantiationMethod)
{
	TTErr		err;
	TTValue		v((TTString&)tagString);	// The tags to be associated with the class we are registering.
	TTValue		tagObjects;					// Contains a TTList of objects in the environment with the given tag.
	TTList*		classNamesForTag;			// The TTList contained by tagObjects
	TTUInt16	size;
	TTSymbolPtr	tag;
	TTClassPtr	theClass;
	
	// 1. Turn the string into an array of symbols
	v.transformCSVStringToSymbolArray();
	
	// 2. Create the class and associate it with its name
	theClass = new TTClass(className, v, anInstantiationMethod);
	classes->append(className, TTPtr(theClass));
	
	// 3. For each symbol in the TTValue array...
	size = v.getSize();
	for(TTUInt16 i=0; i<size; i++){
		v.get(i, &tag);
		
		// 4. Look to see if this tag exists yet
		err = tags->lookup(tag, tagObjects);
		if(!err){
			classNamesForTag = (TTList*)(TTPtr(tagObjects));
			
			// TODO: The following code demonstrates so extreme lameness that we need to evaluate.
			//	First, we should probably just do this section of code with TTValue instead of TTList (but we needed code to test TTList)
			//	Second, TTList is taking references but keeping things internally as pointers, which leads to lots of confusion
			//	Third, we have to pass objects that are permanent - so no temporaries are allowed unless we make TTList do a copy
			//	etc.
			
			//classNamesForTag->append(className);
			classNamesForTag->append(*new TTValue(className));
		}
		else{
			classNamesForTag = new TTList;
			tagObjects = TTPtr(classNamesForTag);
			tags->append(tag ,tagObjects);
			classNamesForTag->append(*new TTValue(className));
		}
	}
	
	return kTTErrNone;
}



TTErr TTEnvironment::getAllClassNames(TTValue& returnedClassNames)
{
	return classes->getKeys(returnedClassNames);
}


TTErr TTEnvironment::getClassNamesWithTags(TTValue& classNames, const TTValue& searchTags)
{
	// TODO: right now we only look for the first tag, we should look for each and then do a union on the results.
	// Well, that's not what's really happening, but the point is that this really only works if we are searching for one tag.
	
	TTUInt16	size = searchTags.getSize();
	TTSymbolPtr	tag;
	TTValue		tagObjects;
	TTErr		err = kTTErrGeneric;
	TTList*		classNamesForTag;
	
	for(TTUInt16 i=0; i<size; i++){
		searchTags.get(i, &tag);
		
		err = tags->lookup(tag, tagObjects);
		if(!err){
			classNamesForTag = (TTList*)(TTPtr(tagObjects));
			classNamesForTag->assignToValue(classNames);
		}
	}

	return err;
}


TTErr TTEnvironment::createInstance(const TTSymbolPtr className, TTObject** anObject, TTValue& anArgument)
{
	TTValue		v;
	TTClassPtr	theClass;
	TTErr		err;

	if(*anObject){
		releaseInstance(*anObject);
		*anObject = NULL;
	}
	
	err = classes->lookup(className, v);
	if(!err){
		theClass = TTClassPtr(TTPtr(v));
		if(theClass)
			err = theClass->createInstance(anObject, anArgument);
		else
			err = kTTErrGeneric;
	}
		
	//TODO: Add instance tracking.  For each instance of a class, we push the instance onto a linked list of instances for that class
	// When the object is freed using deleteInstance(), then we pop it.
	// What would this achieve?
	//	- we could check statistics on them or do other logging
	//	- we could access instances remotely, and perhaps then manipulate them remotely in a shared manner
	//	- if an object is referenced by another object, and thus shared, then we need to reference counting here before freeing.
	// THEREFORE: we should have an addReference() and release() method (instead of a deleteInstance() method).
	//	- the reference counting itself should probably be done inside of TTObject though, yes?
	
	return err;
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



TTErr TTEnvironment::releaseInstance(TTObject* anObject)
{
	delete anObject;
	return kTTErrNone;
}

