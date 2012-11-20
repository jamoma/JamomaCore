/* 
 *	Plugtastic 
 *	
 *	Copyright © 2010 by Timothy Place
 *
 *	License: This code is licensed under the terms of the "New BSD License"
 *	http://creativecommons.org/licenses/BSD/
 */

#include "TTGraphObject.h"
#include "PlugtasticParameter.h"

#define thisTTClass			PlugtasticParameter
#define thisTTClassName		"plugtastic.parameter"
#define thisTTClassTags		"plugtastic, parameter"


TT_OBJECT_CONSTRUCTOR,
	mOwner(NULL)
{
	addAttributeWithSetter(Name,	kTypeSymbol);
	addAttributeWithSetter(Value,	kTypeFloat64);
	addAttribute(RangeBottom,		kTypeFloat64);
	addAttribute(RangeTop,			kTypeFloat64);
	addAttribute(Default,			kTypeFloat64);
	addAttribute(Style,				kTypeSymbol);
	
	mDictionary.setSchema(TT("attribute"));
	
	setAttributeValue(TT("name"), TT("my parameter"));
	setAttributeValue(TT("rangeBottom"), 0.0);
	setAttributeValue(TT("rangeTop"), 1.0);
	setAttributeValue(TT("default"), 0.5);
	setAttributeValue(TT("style"), TT("generic"));
	setAttributeValue(TT("value"), 0.0);
}


PlugtasticParameter::~PlugtasticParameter()
{
	;
}


TTErr PlugtasticParameter::setName(const TTValue& newValue)
{
	mName = newValue;
	mDictionary.remove(TT("name"));
	mDictionary.append(TT("name"), newValue);
	return kTTErrNone;
}


TTErr PlugtasticParameter::setValue(const TTValue& newValue)
{
	mValue = newValue;
	mDictionary.setValue(newValue);
	return push(mDictionary);
}


TTErr PlugtasticParameter::setOwner(TTGraphObjectPtr newOwner)
{
	mOwner = newOwner;
	return kTTErrNone;
}


TTErr PlugtasticParameter::push(const TTDictionary& aDictionary)
{
	if (mOwner) {
		return mOwner->push(aDictionary);
	}
	else {
		return kTTErrGeneric;
	}
}

