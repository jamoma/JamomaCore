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
mType(kTTSymEmpty),
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

}

TTParameter::~TTParameter()
{;}

TTErr TTParameter::setValue(const TTValue& value)
{
	mValue = value;
	
	this->mReturnValueCallback->notify(mValue);
	
	return kTTErrNone;
}

TTErr TTParameter::setValueDefault(const TTValue& value)
{
	mValueDefault = value;
	return kTTErrNone;
}

TTErr TTParameter::setValueStepsize(const TTValue& value)
{
	mValueStepsize = value;
	return kTTErrNone;
}

TTErr TTParameter::setType(const TTValue& value)
{
	mType = value;
	return kTTErrNone;
}

TTErr TTParameter::setRepetitionsAllow(const TTValue& value)
{
	mRepetitionsAllow = value;
	return kTTErrNone;
}

TTErr TTParameter::setReadonly(const TTValue& value)
{
	mReadonly = value;
	return kTTErrNone;
}

TTErr TTParameter::setViewFreeze(const TTValue& value)
{
	mViewFreeze = value;
	return kTTErrNone;
}

TTErr TTParameter::setRangeBounds(const TTValue& value)
{
	mRangeBounds = value;
	return kTTErrNone;
}

TTErr TTParameter::setRangeClipmode(const TTValue& value)
{
	mRangeClipmode = value;
	return kTTErrNone;
}

TTErr TTParameter::setRampDrive(const TTValue& value)
{
	mRampDrive = value;
	return kTTErrNone;
}

TTErr TTParameter::setRampFunction(const TTValue& value)
{
	mRampFunction = value;
	return kTTErrNone;
}

TTErr TTParameter::setDataspace(const TTValue& value)
{
	mDataspace = value;
	return kTTErrNone;
}

TTErr TTParameter::setDataspaceUnitNative(const TTValue& value)
{
	mDataspaceUnitNative = value;
	return kTTErrNone;
}

TTErr TTParameter::setDataspaceUnitActive(const TTValue& value)
{
	mDataspaceUnitActive = value;
	return kTTErrNone;
}

TTErr TTParameter::setDataspaceUnitDisplay(const TTValue& value)
{
	mDataspaceUnitDisplay = value;
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

