/** @file
 *
 * @ingroup graphLibrary
 *
 * @brief Jamoma Asynchronous Object Graph Layer
 *
 * @details Creates a wrapper for TTObjectBases that can be used to build a control graph for asynchronous message passing
 *
 * @authors Timothy Place
 *
 * @copyright Copyright © 2010 by Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#include "TTGraphObjectBase.h"
#include "TTGraphInlet.h"
#include "TTGraphOutlet.h"

#define thisTTClass			TTGraphObjectBase
#define thisTTClassName		"graph.object"
#define thisTTClassTags		"graph, wrapper"


//	Arguments
//	1. (required) The name of the Jamoma DSP object you want to wrap
//	2. (optional) Number of inlets, default = 1
//	3. (optional) Number of outlets, default = 1

TT_OBJECT_CONSTRUCTOR,
mKernel(arguments[0], 1) // first arg is the name of the class, second arg is initialChannelCount
{
	TT_ASSERT(graph_correct_instantiation_args, (arguments.size() > 0));
	
	TTUInt16	numInlets = 1;
	TTUInt16	numOutlets = 1;
	
	if (arguments.size() > 1)
		numInlets = arguments[1];
	if (arguments.size() > 2)
		numOutlets = arguments[2];
	
	mDictionary = new TTDictionary;
	
	mInlets.resize(numInlets);
	mOutlets.resize(numOutlets);
}


TTGraphObjectBase::~TTGraphObjectBase()
{
	delete mDictionary;
}


void TTGraphObjectBase::prepareDescription()
{
	if (valid && mDescription.mClassName != kTTSymEmpty) {
		mDescription.sIndex = 0;
		mDescription.mClassName = kTTSymEmpty;
		
		for (TTGraphInletIter inlet = mInlets.begin(); inlet != mInlets.end(); inlet++)
			inlet->prepareDescriptions();
	}
}


void TTGraphObjectBase::getDescription(TTGraphDescription& desc)
{
	if (mDescription.mClassName != kTTSymEmpty) {		// a description for this object has already been created -- use it.
		desc = mDescription;
	}
	else {					// create a new description for this object.
		desc.mClassName = mKernel.name();
		desc.mObjectInstance = mKernel;
		desc.mInputDescriptions.clear();
		desc.mID = desc.sIndex++;
		mDescription = desc;
		
		for (TTGraphInletIter inlet = mInlets.begin(); inlet != mInlets.end(); inlet++)
			inlet->getDescriptions(desc.mInputDescriptions);
	}
}


TTErr TTGraphObjectBase::reset()
{
	for_each(mInlets.begin(), mInlets.end(), std::mem_fun_ref(&TTGraphInlet::reset));
	for_each(mOutlets.begin(), mOutlets.end(), std::mem_fun_ref(&TTGraphOutlet::reset));
	return kTTErrNone;
}


TTErr TTGraphObjectBase::handshake(TTGraphObjectBasePtr objectWhichIsBeingConnected, TTUInt16 fromOutletNumber, TTUInt16 toInletNumber)
{
	TTErr err;
	
	err = mOutlets[fromOutletNumber].connect(objectWhichIsBeingConnected, toInletNumber);
	return err;
}


TTErr TTGraphObjectBase::connect(TTGraphObjectBasePtr anObject, TTUInt16 fromOutletNumber, TTUInt16 toInletNumber)
{
	TTErr err;
	
	err = mInlets[toInletNumber].connect(anObject, fromOutletNumber);
	anObject->handshake(this, fromOutletNumber, toInletNumber);

	return err;
}


TTErr TTGraphObjectBase::drop(TTGraphObjectBasePtr anObject, TTUInt16 fromOutletNumber, TTUInt16 toInletNumber)
{
	TTErr err = kTTErrInvalidValue;
	
	if (toInletNumber < mInlets.size())
		err = mInlets[toInletNumber].drop(anObject, fromOutletNumber);
	if (fromOutletNumber < mOutlets.size())
		err = mOutlets[fromOutletNumber].drop(anObject, toInletNumber);
	return err;
}


TTErr TTGraphObjectBase::push(const TTDictionary& aDictionary)
{
	TTSymbol		schema = aDictionary.getSchema();
	TTValue			v;
	TTErr			err = kTTErrMethodNotFound;
	TTMessagePtr	message = NULL;
	
	// If an object defines a 'dictionary' message then this trumps all the others
	err = mKernel.instance()->findMessage(TT("dictionary"), &message);
	if (!err && message) {
		(*mDictionary) = aDictionary;
		v.append(TTPtr(mDictionary));
		err = mKernel.send(TT("dictionary"), v, v);	// returns an error if dictionary is unhandled
	}
	
	if (err) {
		if (schema == TT("number")) {
			aDictionary.getValue(v);
			// TODO: maybe try seeing if there is a "number" message first and then prefer that if it exists?
			err = mKernel.send(TT("calculate"), v, v);
			
			mDictionary->setSchema(TT("number"));
			mDictionary->setValue(v);
			// NOTE: doesn't have inlet/outlet info at this point
		}
		else if (schema == TT("message")) {
			TTValue		nameValue;
			TTSymbol	nameSymbol = kTTSymEmpty;
			
			aDictionary.lookup(TT("name"), nameValue);
			aDictionary.getValue(v);
			nameSymbol = nameValue[0];
			err = mKernel.send(nameSymbol, v, v);
			
			mDictionary->setSchema(TT("message"));
			mDictionary->append(TT("name"), nameValue);
			mDictionary->setValue(v);
		}
		else if (schema == TT("attribute")) {
			TTValue		nameValue;
			TTSymbol	nameSymbol = kTTSymEmpty;
			
			aDictionary.lookup(TT("name"), nameValue);
			aDictionary.getValue(v);
			nameSymbol = nameValue[0];
			err = mKernel.set(nameSymbol, v);
			
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

