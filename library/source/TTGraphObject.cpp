/* 
 * Jamoma Asynchronous Object Graph Layer
 * Creates a wrapper for TTObjects that can be used to build a control graph for asynchronous message passing.
 * Copyright © 2010, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTGraphObject.h"
#include "TTGraphInlet.h"
#include "TTGraphOutlet.h"

#define thisTTClass			TTGraphObject
#define thisTTClassName		"graph.object"
#define thisTTClassTags		"graph, wrapper"


//	Arguments
//	1. (required) The name of the Jamoma DSP object you want to wrap
//	2. (optional) Number of inlets, default = 1
//	3. (optional) Number of outlets, default = 1

TT_OBJECT_CONSTRUCTOR,
	mKernel(NULL)
{
	TTErr		err = kTTErrNone;
	TTSymbolPtr	wrappedObjectName = NULL;
	TTUInt16	initialNumChannels = 1;
	TTUInt16	numInlets = 1;
	TTUInt16	numOutlets = 1;
	
	TT_ASSERT(graph_correct_instantiation_args, arguments.getSize() > 0);
	
	arguments.get(0, &wrappedObjectName);
	if (arguments.getSize() > 1)
		arguments.get(1, numInlets);
	if (arguments.getSize() > 2)
		arguments.get(2, numOutlets);
	
	err = TTObjectInstantiate(wrappedObjectName, &mKernel, initialNumChannels);
	mDictionary = new TTDictionary;
	
	mInlets.resize(numInlets);
	mOutlets.resize(numOutlets);
}


TTGraphObject::~TTGraphObject()
{
	TTObjectRelease(&mKernel);
	delete mDictionary;
}


void TTGraphObject::prepareDescription()
{
	if (valid && mDescription.mClassName) {
		mDescription.sIndex = 0;
		mDescription.mClassName = NULL;
		
		for (TTGraphInletIter inlet = mInlets.begin(); inlet != mInlets.end(); inlet++)
			inlet->prepareDescriptions();
	}
}


void TTGraphObject::getDescription(TTGraphDescription& desc)
{
	if (mDescription.mClassName) {		// a description for this object has already been created -- use it.
		desc = mDescription;
	}
	else {					// create a new description for this object.
		desc.mClassName = mKernel->getName();
		desc.mObjectInstance = mKernel;
		desc.mInputDescriptions.clear();
		desc.mID = desc.sIndex++;
		mDescription = desc;
		
		for (TTGraphInletIter inlet = mInlets.begin(); inlet != mInlets.end(); inlet++)
			inlet->getDescriptions(desc.mInputDescriptions);
	}
}


TTErr TTGraphObject::reset()
{
	for_each(mInlets.begin(), mInlets.end(), mem_fun_ref(&TTGraphInlet::reset));		
	for_each(mOutlets.begin(), mOutlets.end(), mem_fun_ref(&TTGraphOutlet::reset));		
	return kTTErrNone;
}


TTErr TTGraphObject::handshake(TTGraphObjectPtr objectWhichIsBeingConnected, TTUInt16 fromOutletNumber, TTUInt16 toInletNumber)
{
	TTErr err;
	
	err = mOutlets[fromOutletNumber].connect(objectWhichIsBeingConnected, toInletNumber);
	return err;
}


TTErr TTGraphObject::connect(TTGraphObjectPtr anObject, TTUInt16 fromOutletNumber, TTUInt16 toInletNumber)
{
	TTErr err;
	
	err = mInlets[toInletNumber].connect(anObject, fromOutletNumber);
	anObject->handshake(this, fromOutletNumber, toInletNumber);

	return err;
}


TTErr TTGraphObject::drop(TTGraphObjectPtr anObject, TTUInt16 fromOutletNumber, TTUInt16 toInletNumber)
{
	TTErr err = kTTErrInvalidValue;
	
	if (toInletNumber < mInlets.size())
		err = mInlets[toInletNumber].drop(anObject, fromOutletNumber);
	if (fromOutletNumber < mOutlets.size())
		err = mOutlets[fromOutletNumber].drop(anObject, toInletNumber);
	return err;
}


TTErr TTGraphObject::push(const TTDictionary& aDictionary)
{
	TTSymbolPtr		schema = aDictionary.getSchema();
	TTValue			v;
	TTErr			err = kTTErrMethodNotFound;
	TTMessagePtr	message = NULL;
	
	// If an object defines a 'dictionary' message then this trumps all the others
	err = mKernel->findMessage(TT("dictionary"), &message);
	if (!err && message) {
		(*mDictionary) = aDictionary;
		v.set(0, TTPtr(mDictionary));
		err = mKernel->sendMessage(TT("dictionary"), v, v);	// returns an error if dictionary is unhandled
	}
	
	if (err) {
		if (schema == TT("number")) {
			aDictionary.getValue(v);
			// TODO: maybe try seeing if there is a "number" message first and then prefer that if it exists?
			err = mKernel->sendMessage(TT("calculate"), v, v);
			
			mDictionary->setSchema(TT("number"));
			mDictionary->setValue(v);
			// NOTE: doesn't have inlet/outlet info at this point
		}
		else if (schema == TT("message")) {
			TTValue		nameValue;
			TTSymbolPtr	nameSymbol = NULL;
			
			aDictionary.lookup(TT("name"), nameValue);
			aDictionary.getValue(v);
			nameValue.get(0, &nameSymbol);
			err = mKernel->sendMessage(nameSymbol, v, v);
			
			mDictionary->setSchema(TT("message"));
			mDictionary->append(TT("name"), nameValue);
			mDictionary->setValue(v);
		}
		else if (schema == TT("attribute")) {
			TTValue		nameValue;
			TTSymbolPtr	nameSymbol = NULL;
			
			aDictionary.lookup(TT("name"), nameValue);
			aDictionary.getValue(v);
			nameValue.get(0, &nameSymbol);
			err = mKernel->setAttributeValue(nameSymbol, v);
			
			mDictionary->setSchema(TT("attribute"));
			mDictionary->remove(TT("name"));
			mDictionary->append(TT("name"), nameValue);
			mDictionary->setValue(v);
		}
		else {
			// not sure what to do with other dictionary schemas yet...
			(*mDictionary) = aDictionary;
		}
	}
	
	for (TTGraphOutletIter outlet = mOutlets.begin(); outlet != mOutlets.end(); outlet++)
		outlet->push(*mDictionary);

	return err;
}

