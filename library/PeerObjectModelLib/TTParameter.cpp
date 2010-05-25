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
	
	addAttributeWithGetterAndSetter(Value, kTypeNone);
	addAttributeWithGetterAndSetter(ValueDefault, kTypeNone);
	addAttributeWithGetterAndSetter(ValueStepsize, kTypeFloat32);
	
	addAttributeWithGetterAndSetter(Type, kTypeSymbol);
	addAttributeWithGetterAndSetter(RepetitionsAllow, kTypeBoolean);
	addAttributeWithGetterAndSetter(Readonly, kTypeBoolean);
	addAttributeWithGetterAndSetter(ViewFreeze, kTypeBoolean);
	
	addAttributeWithGetterAndSetter(RangeBounds, kTypeNone);
	addAttributeWithGetterAndSetter(RangeClipmode, kTypeSymbol);
	
	addAttributeWithGetterAndSetter(RampDrive, kTypeSymbol);
	addAttributeWithGetterAndSetter(RampFunction, kTypeSymbol);

	addAttributeWithGetterAndSetter(Dataspace, kTypeSymbol);
	addAttributeWithGetterAndSetter(DataspaceUnitNative, kTypeSymbol);
	addAttributeWithGetterAndSetter(DataspaceUnitActive, kTypeSymbol);
	addAttributeWithGetterAndSetter(DataspaceUnitDisplay, kTypeSymbol);

}

TTParameter::~TTParameter()
{;}

TTErr TTParameter::getValue(TTValue& value)
{
	value = mValue;
	return kTTErrNone;
}

TTErr TTParameter::setValue(const TTValue& value)
{
	mValue = value;
	
	this->mReturnValueCallback->notify(mValue);
	
	return kTTErrNone;
}

TTErr TTParameter::getValueDefault(TTValue& value)
{
	value = mValueDefault;
	return kTTErrNone;
}

TTErr TTParameter::setValueDefault(const TTValue& value)
{
	mValueDefault = value;
	return kTTErrNone;
}

TTErr TTParameter::getValueStepsize(TTValue& value)
{
	value = mValueStepsize;
	return kTTErrNone;
}

TTErr TTParameter::setValueStepsize(const TTValue& value)
{
	mValueStepsize = value;
	return kTTErrNone;
}

TTErr TTParameter::getType(TTValue& value)
{
	value = mType;
	return kTTErrNone;
}

TTErr TTParameter::setType(const TTValue& value)
{
	mType = value;
	return kTTErrNone;
}

TTErr TTParameter::getRepetitionsAllow(TTValue& value)
{
	value = mRepetitionsAllow;
	return kTTErrNone;
}

TTErr TTParameter::setRepetitionsAllow(const TTValue& value)
{
	mRepetitionsAllow = value;
	return kTTErrNone;
}

TTErr TTParameter::getReadonly(TTValue& value)
{
	value = mReadonly;
	return kTTErrNone;
}

TTErr TTParameter::setReadonly(const TTValue& value)
{
	mReadonly = value;
	return kTTErrNone;
}

TTErr TTParameter::getViewFreeze(TTValue& value)
{
	value = mViewFreeze;
	return kTTErrNone;
}

TTErr TTParameter::setViewFreeze(const TTValue& value)
{
	mViewFreeze = value;
	return kTTErrNone;
}

TTErr TTParameter::getRangeBounds(TTValue& value)
{
	value = mRangeBounds;
	return kTTErrNone;
}

TTErr TTParameter::setRangeBounds(const TTValue& value)
{
	mRangeBounds = value;
	return kTTErrNone;
}

TTErr TTParameter::getRangeClipmode(TTValue& value)
{
	value = mRangeClipmode;
	return kTTErrNone;
}

TTErr TTParameter::setRangeClipmode(const TTValue& value)
{
	mRangeClipmode = value;
	return kTTErrNone;
}

TTErr TTParameter::getRampDrive(TTValue& value)
{
	value = mRampDrive;
	return kTTErrNone;
}

TTErr TTParameter::setRampDrive(const TTValue& value)
{
	mRampDrive = value;
	return kTTErrNone;
}

TTErr TTParameter::getRampFunction(TTValue& value)
{
	value = mRampFunction;
	return kTTErrNone;
}

TTErr TTParameter::setRampFunction(const TTValue& value)
{
	mRampFunction = value;
	return kTTErrNone;
}

TTErr TTParameter::getDataspace(TTValue& value)
{
	value = mDataspace;
	return kTTErrNone;
}

TTErr TTParameter::setDataspace(const TTValue& value)
{
	mDataspace = value;
	return kTTErrNone;
}

TTErr TTParameter::getDataspaceUnitNative(TTValue& value)
{
	value = mDataspaceUnitNative;
	return kTTErrNone;
}

TTErr TTParameter::setDataspaceUnitNative(const TTValue& value)
{
	mDataspaceUnitNative = value;
	return kTTErrNone;
}

TTErr TTParameter::getDataspaceUnitActive(TTValue& value)
{
	value = mDataspaceUnitActive;
	return kTTErrNone;
}

TTErr TTParameter::setDataspaceUnitActive(const TTValue& value)
{
	mDataspaceUnitActive = value;
	return kTTErrNone;
}

TTErr TTParameter::getDataspaceUnitDisplay(TTValue& value)
{
	value = mDataspaceUnitDisplay;
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

