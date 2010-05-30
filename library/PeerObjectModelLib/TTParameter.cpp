/* 
 * A Parameter Object
 * Copyright © 2010, Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTParameter.h"

#define thisTTClass			TTParameter
#define thisTTClassName		"Parameter"
#define thisTTClassTags		"parameter"

TT_MODULAR_CONSTRUCTOR,
mValue(TTValue(0.0)),
mValueDefault(TTValue(0.0)),
mValueStepsize(TTValue(0.0)),
mType(kTTSymEmpty),					// TODO : define TTSymbol for Type in Jamoma (kTTSymNone, kTTSymGeneric, kTTSymBoolean, kTTSymInteger, kTTSymDecimal, kTTSymString, kTTSymArray) 
mPriority(0), 
mDescription(""),
mRepetitionsAllow(NO),
mReadonly(NO),
mViewFreeze(NO),
mRangeBounds(TTValue(0.0, 1.0)),
mRangeClipmode(kTTSymEmpty),
mRampDrive(kTTSymEmpty),
mRampFunction(kTTSymEmpty),
mDataspace(kTTSymEmpty),
mDataspaceUnitNative(kTTSymEmpty),
mDataspaceUnitActive(kTTSymEmpty),
mDataspaceUnitDisplay(kTTSymEmpty)
{
	TT_ASSERT("Correct number of args to create TTParameter", arguments.getSize() == 1);
	
	arguments.get(0, (TTPtr*)&mReturnValueCallback);
	TT_ASSERT("Return Value Callback passed to TTParameter is not NULL", mReturnValueCallback);
	
	addAttributeWithSetter(Value, kTypeNone);
	addAttributeWithSetter(ValueDefault, kTypeNone);
	addAttributeWithSetter(ValueStepsize, kTypeFloat32);
	
	addAttributeWithSetter(Type, kTypeSymbol);
	addAttribute(Priority, kTypeUInt8);
	addAttribute(Description, kTypeString);
	addAttributeWithSetter(RepetitionsAllow, kTypeBoolean);
	addAttributeWithSetter(Readonly, kTypeBoolean);
	addAttributeWithSetter(ViewFreeze, kTypeBoolean);
	
	addAttributeWithSetter(RangeBounds, kTypeNone);
	addAttributeWithSetter(RangeClipmode, kTypeSymbol);
	
	addAttributeWithSetter(RampDrive, kTypeSymbol);
	addAttributeWithSetter(RampFunction, kTypeSymbol);

	addAttributeWithSetter(Dataspace, kTypeSymbol);
	addAttributeWithSetter(DataspaceUnitNative, kTypeSymbol);
	addAttributeWithSetter(DataspaceUnitActive, kTypeSymbol);
	addAttributeWithSetter(DataspaceUnitDisplay, kTypeSymbol);
	
	addMessage(Reset);

}

TTParameter::~TTParameter()
{;}

TTErr TTParameter::updateObservers(TTSymbolPtr attrName, const TTValue& value)
{
	TTAttributePtr	anAttribute = NULL;
	TTErr			err;

	err = this->findAttribute(attrName, &anAttribute);

	if (!err)
		anAttribute->sendNotification(TT("notify"), value);

	return kTTErrNone;
}

TTErr TTParameter::Reset()
{
	// if valueDefault and value have the same type
	if (mValueDefault.getType() == mValue.getType())
		setValue(mValueDefault);
	
	return kTTErrNone;
}

TTErr TTParameter::setValue(const TTValue& value)
{
	mValue = value;
	
	// return the value to his owner
	this->mReturnValueCallback->notify(mValue);
	
	updateObservers(TT("Value"), value);
	
	return kTTErrNone;
}

TTErr TTParameter::setValueDefault(const TTValue& value)
{
	mValueDefault = value;
	updateObservers(TT("ValueDefault"), value);
	return kTTErrNone;
}

TTErr TTParameter::setValueStepsize(const TTValue& value)
{
	mValueStepsize = value;
	updateObservers(TT("ValueStepSize"), value);
	return kTTErrNone;
}

TTErr TTParameter::setType(const TTValue& value)
{
	mType = value;
	updateObservers(TT(""), value);
	return kTTErrNone;
}

TTErr TTParameter::setRepetitionsAllow(const TTValue& value)
{
	mRepetitionsAllow = value;
	updateObservers(TT(""), value);
	return kTTErrNone;
}

TTErr TTParameter::setReadonly(const TTValue& value)
{
	mReadonly = value;
	updateObservers(TT(""), value);
	return kTTErrNone;
}

TTErr TTParameter::setViewFreeze(const TTValue& value)
{
	mViewFreeze = value;
	updateObservers(TT(""), value);
	return kTTErrNone;
}

TTErr TTParameter::setRangeBounds(const TTValue& value)
{
	mRangeBounds = value;
	updateObservers(TT(""), value);
	return kTTErrNone;
}

TTErr TTParameter::setRangeClipmode(const TTValue& value)
{
	mRangeClipmode = value;
	updateObservers(TT(""), value);
	return kTTErrNone;
}

TTErr TTParameter::setRampDrive(const TTValue& value)
{
	mRampDrive = value;
	updateObservers(TT(""), value);
	return kTTErrNone;
}

TTErr TTParameter::setRampFunction(const TTValue& value)
{
	mRampFunction = value;
	updateObservers(TT(""), value);
	return kTTErrNone;
}

TTErr TTParameter::setDataspace(const TTValue& value)
{
	mDataspace = value;
	updateObservers(TT(""), value);
	return kTTErrNone;
}

TTErr TTParameter::setDataspaceUnitNative(const TTValue& value)
{
	mDataspaceUnitNative = value;
	updateObservers(TT(""), value);
	return kTTErrNone;
}

TTErr TTParameter::setDataspaceUnitActive(const TTValue& value)
{
	mDataspaceUnitActive = value;
	updateObservers(TT(""), value);
	return kTTErrNone;
}

TTErr TTParameter::setDataspaceUnitDisplay(const TTValue& value)
{
	mDataspaceUnitDisplay = value;
	updateObservers(TT(""), value);
	return kTTErrNone;
}

#if 0
#pragma mark -
#pragma mark Some Methods
#endif

TTErr TTParameterCallback(TTPtr baton, TTValue& data)
{
	return kTTErrNone;
}

