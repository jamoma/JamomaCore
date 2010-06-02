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
mType(kTTSym_generic),
mPriority(0),
mDescription(""),
mRepetitionsAllow(YES),
mReadonly(NO),
mViewFreeze(NO),
mRangeBounds(TTValue(0.0, 1.0)),
mRangeClipmode(kTTSym_none),
mRampDrive(kTTSym_none),
mRampFunction(kTTSymEmpty),
mDataspace(kTTSym_none),
mDataspaceUnitNative(kTTSym_none),
mDataspaceUnitActive(kTTSym_none),
mDataspaceUnitDisplay(kTTSym_none)
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
	addMessageWithArgument(Command);
	
	mIsSending = NO;
	mIsInitialised = NO;
	
	mValue = TTValue();
	mRamper = NULL;
}

TTParameter::~TTParameter()
{
	if (mRamper)
		delete mRamper;
}

TTErr TTParameter::Reset()
{
	// if valueDefault and value have the same type
	if (mValueDefault.getType() == mValue.getType())
		setValue(mValueDefault);
	
	// Set parameter to be uninitialised
	// to circumvent filtering of repetitions when outputing value from default preset
	mIsInitialised = NO;
	
	return kTTErrNone;
}

TTErr TTParameter::Command(const TTValue& command)
{
	double		time;
	int			commandSize;
	TTSymbolPtr	first, unit, ramp;
	TTValue		aValue, convertedValue;
	bool		hasRamp = false;
	bool		hasUnit = false;
	
	
	// 1. Parse the command to handle Property
	//////////////////////////////////////////////////
	if (command.getType(0) == kTypeSymbol) {
		command.get(0, &first);
		char*	c = strrchr(first->getCString(), ':');
		if (c) {
			// TODO
			//if (param_handleProperty(x, msg, argc, argv))
			return kTTErrGeneric;
		}
	}
	
	// 2. Parse the command to handle unit and ramp
	///////////////////////////////////////////////////
	commandSize = command.getSize();
	switch(commandSize) {
			
			// no value	
		case 0 :
		{
			// nothing to do
			break;	
		}
			
		// 1 value	
		case 1 :
		{
			// nothing to do
			break;	
		}
			
		// 2 values || 1 value + unit
		case 2 :
		{
			// Is the second element is a unit symbol ?
			if (mDataspaceUnitActive != kTTSym_none)
				if (command.getType(0) != kTypeSymbol && command.getType(1) == kTypeSymbol) {
					hasUnit = true;
					command.get(1, &unit);
				}
			
			break;	
		}
			
		// 3 values || 2 values + unit || 1 value + ramp ramptime
		case 3 :
		{
			// Is the second element is a ramp symbol ?
			if (command.getType(1) == kTypeSymbol) {
				command.get(1, &ramp);
				if (ramp == kTTSym_ramp)
					hasRamp = true;
			}
			// or is the last element is a unit symbol ?
			else if (mDataspace != kTTSym_none && command.getType(0) != kTypeSymbol && command.getType(2) == kTypeSymbol) {
				hasUnit = true;
				command.get(2, &unit);
			}
			
			break;	
		}
			
		// X values || X-1 values + unit || X-2 values + ramp ramptime || X-3 values + unit + ramp ramptime
		default :
		{
			// Is the X-2 element is a ramp symbol ?
			if (command.getType(commandSize - 2) == kTypeSymbol) {
				command.get(commandSize - 3, &ramp);
				if (ramp == kTTSym_ramp)
					hasRamp = true;
			}
			
			// Is the X-3 or last element a unit symbol ?
			if (mDataspace != kTTSym_none && command.getType(0) != kTypeSymbol)
				if (hasRamp)
					if (command.getType(commandSize - 3) == kTypeSymbol) {
						hasUnit = true;
						command.get(commandSize - 3, &unit);
					}
					else
						if (command.getType(commandSize - 1) == kTypeSymbol) {
							hasUnit = true;
							command.get(commandSize - 1, &unit);
						}
			
			break;	
		}
			
	}
	
	
	// 3. Set DataspaceUnitActive attribute
	// Note : The current implementation does not override 
	// the active unit temporarily or anything fancy.
	// It just sets the active unit and then runs with it...
	////////////////////////////////////////////////////////////////
	if (hasUnit)
		setDataspaceUnitActive(unit);
	
	
	// 4. Convert the value
	// Note : For this initial implementation we are converting the values prior to ramping, as it is easier.
	// Ultimately though, we actually want to convert the units after the ramping, 
	// for example to perform a sweep that is linear vs logarithmic
	///////////////////////////////////////////////////////////////////
	if (hasRamp && hasUnit) {
		aValue = command;
		aValue.setSize(commandSize - 3);
		convertUnit(aValue, convertedValue);
	}
	else if (hasRamp) {
		aValue = command;
		aValue.setSize(commandSize - 2);
		convertUnit(aValue, convertedValue);
	}
	else if (hasUnit) {
		aValue = command;
		aValue.setSize(commandSize - 1);
		convertUnit(aValue, convertedValue);
	}
	else
		convertUnit(command, convertedValue);
	
	
	// 5. Ramp the value
	/////////////////////////////////
	if (hasRamp) {
		
		command.get(commandSize - 1, time);

		if (time <= 0) {
			setValue(convertedValue);
			return kTTErrNone;
		}	
		
		if (!mRepetitionsAllow && mIsInitialised) {
			if (mValue == convertedValue)
				return kTTErrNone;	// nothing to do
		}
		
		//mRamper->set(convertedValue, mValue);
		//mRamper->go(convertedValue, mValue, time);
		setValue(convertedValue); // for instant...
	} 
	else {
		// check repetitions
		if (!mRepetitionsAllow && mIsInitialised) {
			if (mValue == convertedValue)
				return kTTErrNone;	// nothing to do
		}
		
		setValue(convertedValue);
	}
	
	return kTTErrNone;
}

TTErr TTParameter::setValue(const TTValue& value)
{
	if (!mIsSending) {
		
		// lock
		mIsSending = YES;
		
		if (clipValue() && mRamper)
			mRamper->stop();
		
		mValue = value;
		
		// return the value to his owner
		this->mReturnValueCallback->notify(mValue);
		
		// notify each observers
		notifyObservers(kTTSym_Value, mValue);
		
		// we have had our value set at least once
		mIsInitialised = YES;
		
		// unlock
		mIsSending = NO;
		
		return kTTErrNone;
	}
	
	return kTTErrGeneric;
}

TTErr TTParameter::setValueDefault(const TTValue& value)
{
	mValueDefault = value;
	notifyObservers(kTTSym_ValueDefault, mValueDefault);
	return kTTErrNone;
}

TTErr TTParameter::setValueStepsize(const TTValue& value)
{
	mValueStepsize = value;
	notifyObservers(kTTSym_ValueStepsize, mValueStepsize);
	return kTTErrNone;
}

TTErr TTParameter::setType(const TTValue& value)
{
	mType = value;
	
	// Prepare memory
	if (mType == kTTSym_integer)
		mValue = TTValue(0);
	else if (mType == kTTSym_decimal)
		mValue = TTValue(0.);
	else if (mType == kTTSym_string)
		mValue = TTValue("");
	else if (mType == kTTSym_boolean)
		mValue = TTValue(NO);
	else if (mType == kTTSym_generic)
		mValue = TTValue();
	else if (mType == kTTSym_array)
		mValue = TTValue();
	
//#ifdef JMOD_MESSAGE
	else if (mType == kTTSym_none)
		mValue = TTValue();
//#endif // JMOD_MESSAGE
	else {
		mType = kTTSym_generic;
		mValue = TTValue();
		return kTTErrGeneric;
	}
	
	rampSetup();
			
	notifyObservers(kTTSym_Type, mType);
	return kTTErrNone;
}

TTErr TTParameter::setRepetitionsAllow(const TTValue& value)
{
	mRepetitionsAllow = value;
	notifyObservers(kTTSym_RepetitionsAllow, mRepetitionsAllow);
	return kTTErrNone;
}

TTErr TTParameter::setReadonly(const TTValue& value)
{
	mReadonly = value;
	notifyObservers(kTTSym_Readonly, mReadonly);
	return kTTErrNone;
}

TTErr TTParameter::setViewFreeze(const TTValue& value)
{
	mViewFreeze = value;
	notifyObservers(kTTSym_ViewFreeze, mViewFreeze);
	return kTTErrNone;
}

TTErr TTParameter::setRangeBounds(const TTValue& value)
{	
	if (value.getSize() == 1)
		mRangeBounds.set(0, value.getFloat64());
	
	if (value.getSize() == 2)
		mRangeBounds.set(1, value.getFloat64(1));
	
	notifyObservers(kTTSym_RangeBounds, mRangeBounds);
	return kTTErrNone;
}

TTErr TTParameter::setRangeClipmode(const TTValue& value)
{
	mRangeClipmode = value;
	notifyObservers(kTTSym_RangeClipmode, mRangeClipmode);
	return kTTErrNone;
}

TTErr TTParameter::setRampDrive(const TTValue& value)
{
	mRampDrive = value;
	
	rampSetup();
	
	notifyObservers(kTTSym_RampDrive, mRampDrive);
	return kTTErrNone;
}

TTErr TTParameter::setRampFunction(const TTValue& value)
{
	mRampFunction = value;
	
	if (mRamper && mRampFunction != kTTSymEmpty && mRampFunction != TT("linear")) {
		
			// set the function of the ramper
			mRamper->setAttributeValue(TT("Function"), mRampFunction);
			
			/* This have to be in the Max External !!!
			 long		n;
			 TTValue		names;
			 TTSymbolPtr	aName;
			 TTString	nameString;
			 
			// cache the function's attribute names
			mRampParameterNames->clear();
			mRamper->getFunctionParameterNames(names);
			n = names.getSize();
			for (int i=0; i<n; i++) {
				
				names.get(i, &aName);
				nameString = aName->getString();
				
				if (aName == TT("Bypass") || aName == TT("Mute") || aName == TT("MaxNumChannels") || aName == TT("SampleRate"))
					continue;										// don't publish these parameters
				
				if (nameString[0] > 64 && nameString[0] < 91) {		// ignore all params not starting with upper-case
					nameString[0] += 32;							// convert first letter to lower-case for Max
					
					TTValuePtr v = new TTValue(aName);
					mRampParameterNames->append(TT(nameString.c_str()), *v);
				}
			}
			 */
	}
	
	notifyObservers(kTTSym_RampFunction, mRampFunction);
	return kTTErrNone;
}

TTErr TTParameter::setDataspace(const TTValue& value)
{
	mDataspace = value;
	notifyObservers(kTTSym_Dataspace, mDataspace);
	return kTTErrNone;
}

TTErr TTParameter::setDataspaceUnitNative(const TTValue& value)
{
	mDataspaceUnitNative = value;
	notifyObservers(kTTSym_DataspaceUnitNative, mDataspaceUnitNative);
	return kTTErrNone;
}

TTErr TTParameter::setDataspaceUnitActive(const TTValue& value)
{
	mDataspaceUnitActive = value;
	notifyObservers(kTTSym_DataspaceUnitActive, mDataspaceUnitActive);
	return kTTErrNone;
}

TTErr TTParameter::setDataspaceUnitDisplay(const TTValue& value)
{
	mDataspaceUnitDisplay = value;
	notifyObservers(kTTSym_DataspaceUnitDisplay, mDataspaceUnitDisplay);
	return kTTErrNone;
}

TTBoolean TTParameter::clipValue()
{
	//bool	didClipAll = false;
	
	// the code regarding didClipAll is supposed to return true when every member of the list has been clipped to its limit
	// that way ramping can be terminated prematurely if it was trying to ramp to something out of range
	// however, this code as it is doesn't work, and it doesn't buy us much anyway
	// so I'm just commenting it out for the time being [TAP]
	
	if (mRangeClipmode != kTTSym_none) {
		
		if (mType == kTTSym_generic || mType == kTTSym_integer || mType == kTTSym_decimal) {
			
			if (mRangeClipmode == kTTSym_low)
				mValue.cliplow(mRangeBounds.getFloat64());
			else if (mRangeClipmode == kTTSym_high)
				mValue.cliphigh(mRangeBounds.getFloat64(1));
			else if (mRangeClipmode == kTTSym_both)
				mValue.clip(mRangeBounds.getFloat64(), mRangeBounds.getFloat64(1));
			else if (mRangeClipmode == kTTSym_wrap)
				;//mValue.clipwrap(mRangeBounds.getFloat64(), mRangeBounds.getFloat64(1));
			else if (mRangeClipmode == kTTSym_fold)
				;//mValue.clipfold(mRangeBounds.getFloat64(), mRangeBounds.getFloat64(1));
		}
	}
	
	return false;
}

TTErr TTParameter::rampSetup()
{
	// 1. destroy the old rampunit
	if (mRamper != NULL) {
		delete mRamper;
		mRamper = NULL;
	}
	
	// 2. create the new rampunit
	// For some types ramping doesn't make sense, so they will be set to none
	if (mType == kTTSym_none || mType == kTTSym_string || mType == kTTSym_generic)
		mRampDrive = kTTSym_none;
	else
		;//TODO : RampLib::createUnit(mRampDrive, &mRamper, &TTParameterRampUnitCallback, &mValue);
	
	if (mRamper == NULL)
		return kTTErrGeneric; //error("jcom.parameter (%s module): could not allocate memory for ramp unit!", x->common.module_name);
	
	// 3. reset the ramp function
	setRampFunction(mRampFunction);
	
	return kTTErrNone;	
}

TTErr TTParameter::convertUnit(const TTValue& inValue, TTValue& outValue)
{
	if (mDataspace && mDataspace_active2native && (mDataspaceUnitActive != mDataspaceUnitNative))
		// TODO : mDataspace_active2native->convert(inValue, outValue);
		outValue = inValue;  // for instant...
	else
		outValue = inValue;
	
	return kTTErrNone;
}

TTErr TTParameter::notifyObservers(TTSymbolPtr attrName, const TTValue& value)
{
	TTAttributePtr	anAttribute = NULL;
	TTErr			err;
	
	err = this->findAttribute(attrName, &anAttribute);
	
	if (!err)
		anAttribute->sendNotification(kTTSym_notify, value);
	
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

