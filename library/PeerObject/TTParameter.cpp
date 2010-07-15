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
mDescription(kTTSymEmpty),
mRepetitionsAllow(YES),
mReadonly(NO),
mViewFreeze(NO),
mRangeBoundsMin(0.0),
mRangeBoundsMax(1.0),
mRangeClipmode(kTTSym_none),
//mRampDrive(kTTSym_none),
//mRampFunction(kTTSymEmpty),
mDataspace(kTTSym_none),
mDataspaceUnitNative(kTTSym_none),
mDataspaceUnitActive(kTTSym_none),
mDataspaceUnitDisplay(kTTSym_none)
{
	TT_ASSERT("Correct number of args to create TTParameter", arguments.getSize() == 1);
	
	arguments.get(0, (TTPtr*)&mReturnValueCallback);
	TT_ASSERT("Return Value Callback passed to TTParameter is not NULL", mReturnValueCallback);
	
	addAttributeWithGetterAndSetter(Value, kTypeNone);
	addAttributeWithGetterAndSetter(ValueDefault, kTypeNone);
	addAttributeWithSetter(ValueStepsize, kTypeFloat32);
	
	addAttributeWithSetter(Type, kTypeSymbol);
	addAttribute(Priority, kTypeUInt8);
	addAttribute(Description, kTypeSymbol);
	addAttributeWithSetter(RepetitionsAllow, kTypeBoolean);
	addAttributeWithSetter(Readonly, kTypeBoolean);
	addAttributeWithSetter(ViewFreeze, kTypeBoolean);
	
	addAttributeWithSetter(RangeBoundsMin, kTypeFloat64);
	addAttributeWithSetter(RangeBoundsMax, kTypeFloat64);
	addAttributeWithSetter(RangeClipmode, kTypeSymbol);
	
	//addAttributeWithSetter(RampDrive, kTypeSymbol);
	//addAttributeWithSetter(RampFunction, kTypeSymbol);
	
	addAttributeWithSetter(Dataspace, kTypeSymbol);
	addAttributeWithSetter(DataspaceUnitNative, kTypeSymbol);
	addAttributeWithSetter(DataspaceUnitActive, kTypeSymbol);
	addAttributeWithSetter(DataspaceUnitDisplay, kTypeSymbol);
	
	addMessage(Reset);
	addMessageWithArgument(Command);
	
	mIsSending = NO;
	mIsInitialised = NO;
	
	mValue = TTValue();
	//mRamper = NULL;
	dataspace_active2native	= NULL;
	dataspace_override2active = NULL;
	dataspace_active2display = NULL;
	dataspace_display2active = NULL;
}

TTParameter::~TTParameter()
{
	//if (mRamper)
	//	delete mRamper;
}

TTErr TTParameter::Reset()
{
	// if valueDefault type is right
	if (checkType(mValueDefault))
		setValue(mValueDefault);
	
	// Set parameter to be uninitialised
	// to circumvent filtering of repetitions when outputing value from default preset
	mIsInitialised = NO;
	
	return kTTErrNone;
}

TTErr TTParameter::Command(const TTValue& command)
{
	//double		time;
	int			commandSize;
	TTSymbolPtr	first, unit, ramp;
	TTValue		aValue, convertedValue;
	bool		hasRamp = false;
	bool		hasUnit = false;
	
	// 1. Parse the command to handle Property
	//////////////////////////////////////////////////
	if (command.getType(0) == kTypeSymbol) {
		command.get(0, &first);
		char*	c = (char*)strrchr(first->getCString(), ':');
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
	else if (command == kTTValNONE) {
		convertedValue = command;
	}
	else
		convertUnit(command, convertedValue);
	
	
	// 5. Ramp the convertedValue
	/////////////////////////////////
	/*
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
		
		if (mRamper) {
			TTUInt16	i, s = convertedValue.getSize();
			TTFloat64*	startArray = new TTFloat64[s];		// start to mValue
			TTFloat64*	targetArray = new TTFloat64[s];		// go to convertedValue
			
			if(mValue.getSize() != s)
				mValue.setSize(s);
			
			for (i=0; i<s; i++) {
				startArray[i] = mValue.getFloat64(i);
				targetArray[i] = convertedValue.getFloat64(i);
			}
			
			mRamper->set(s, startArray);		
			mRamper->go(s, targetArray, time);	
			
			delete [] startArray;
			delete [] targetArray;
		}
	} 
	else {
	*/
		// check repetitions
		if (!mRepetitionsAllow && mIsInitialised) {
			if (mValue == convertedValue)
				return kTTErrNone;	// nothing to do
		}
		
		setValue(convertedValue);
	//}
	
	return kTTErrNone;
}

TTErr TTParameter::getValue(TTValue& value)
{
	value = mValue;
	return kTTErrNone;
}

TTErr TTParameter::setValue(const TTValue& value)
{
	TTValue r, n;
	
	if (!mIsSending) {
		
		// lock
		mIsSending = YES;
		
		// a kTTValNONE would only return the actual value
		if (value == kTTValNONE) {
			
			// if mType is 'none' we have had our value set at least once
			if (mType == kTTSym_none)
				mIsInitialised = YES;
			
		}
		// otherwise check the type of the incoming value
		else if (checkType(value)) {
			
			// set internal value 
			mValue = value;
			
			// float to integer case
			if (mType == kTTSym_integer && ( value.getType() == kTypeFloat64 || value.getType() == kTypeFloat32 ))
				mValue.truncate();
			
			clipValue();
			//if (clipValue() && mRamper)
			//	mRamper->stop();
			
			// we have had our value set at least once
			mIsInitialised = YES;
			
		}
		else {
			// unlock
			mIsSending = NO;
			return kTTErrInvalidValue;
		}
		
		// used new values to protect the attribute
		r = mValue;
		n = mValue;
		
		// return the value to his owner
		this->mReturnValueCallback->notify(r);
		
		// notify each observers
		notifyObservers(kTTSym_Value, n);
		
		// unlock
		mIsSending = NO;
		
		return kTTErrNone;
	}
	
	return kTTErrGeneric;
}

TTErr TTParameter::getValueDefault(TTValue& value)
{
	value = mValueDefault;
	return kTTErrNone;
}

TTErr TTParameter::setValueDefault(const TTValue& value)
{
	TTValue n = value;				// use new value to protect the attribute
	mValueDefault = value;
	notifyObservers(kTTSym_ValueDefault, n);
	return kTTErrNone;
}

TTErr TTParameter::setValueStepsize(const TTValue& value)
{
	TTValue n = value;				// use new value to protect the attribute
	mValueStepsize = value;
	notifyObservers(kTTSym_ValueStepsize, n);
	return kTTErrNone;
}

TTErr TTParameter::setType(const TTValue& value)
{
	// if the new type is different
	if (!(TTValue(mType) == value)) {
		
		TTValue n = value;				// use new value to protect the attribute
		mType = value;

		// Unregister mValue and mValueDefault Attribute
		removeAttribute(kTTSym_Value);
		removeAttribute(kTTSym_ValueDefault);

		// register mValue Attribute and prepare memory
		if (mType == kTTSym_integer) {
			mValue = TTValue(0);
			addAttributeWithGetterAndSetter(Value, kTypeInt32);
			mValueDefault = TTValue(0);
			addAttributeWithGetterAndSetter(ValueDefault, kTypeInt32);
		}
		else if (mType == kTTSym_decimal) {
			mValue = TTValue(0.);
			addAttributeWithGetterAndSetter(Value, kTypeFloat64);
			mValueDefault = TTValue(0.);
			addAttributeWithGetterAndSetter(ValueDefault, kTypeFloat64);
		}
		else if (mType == kTTSym_string) {
			mValue = TTValue("");
			addAttributeWithGetterAndSetter(Value, kTypeSymbol);
			mValueDefault = TTValue("");
			addAttributeWithGetterAndSetter(ValueDefault, kTypeSymbol);
		}
		else if (mType == kTTSym_boolean) {
			mValue = TTValue(NO);
			addAttributeWithGetterAndSetter(Value, kTypeBoolean);
			mValueDefault = TTValue(NO);
			addAttributeWithGetterAndSetter(ValueDefault, kTypeBoolean);
		}
		else if (mType == kTTSym_generic) {
			mValue = TTValue();
			addAttributeWithGetterAndSetter(Value, kTypeInt32);
			mValueDefault = TTValue();
			addAttributeWithGetterAndSetter(ValueDefault, kTypeInt32);
		}
		else if (mType == kTTSym_array) {				// Is this case means something now we have TTValue?
			mValue = TTValue();
			addAttributeWithGetterAndSetter(Value, kTypeFloat64);
			mValueDefault = TTValue();
			addAttributeWithGetterAndSetter(ValueDefault, kTypeFloat64);
		}
	//#ifdef JMOD_MESSAGE
		else if (mType == kTTSym_none) {
			mValue = kTTValNONE;
			addAttributeWithGetterAndSetter(Value, kTypeNone);
			mValueDefault = kTTValNONE;
			addAttributeWithGetterAndSetter(ValueDefault, kTypeNone);
		}
	//#endif // JMOD_MESSAGE
		else {
			mType = kTTSym_generic;						// Is this case means something now we have TTValue ?
			mValue = TTValue();
			addAttributeWithGetterAndSetter(Value, kTypeFloat64);
			mValueDefault = TTValue();
			addAttributeWithGetterAndSetter(ValueDefault, kTypeFloat64);
			return kTTErrGeneric;
		}
	
		//rampSetup();
			
		notifyObservers(kTTSym_Type, n);
	}
	return kTTErrNone;
}

TTErr TTParameter::setRepetitionsAllow(const TTValue& value)
{
	TTValue n = value;				// use new value to protect the attribute
	mRepetitionsAllow = value;
	notifyObservers(kTTSym_RepetitionsAllow, n);
	return kTTErrNone;
}

TTErr TTParameter::setReadonly(const TTValue& value)
{
	TTValue n = value;				// use new value to protect the attribute
	mReadonly = value;
	notifyObservers(kTTSym_Readonly, n);
	return kTTErrNone;
}

TTErr TTParameter::setViewFreeze(const TTValue& value)
{
	TTValue n = value;				// use new value to protect the attribute
	mViewFreeze = value;
	notifyObservers(kTTSym_ViewFreeze, n);
	return kTTErrNone;
}

TTErr TTParameter::setRangeBoundsMin(const TTValue& value)
{	
	TTValue n = value;				// use new value to protect the attribute
	mRangeBoundsMin = value;
	notifyObservers(kTTSym_RangeBounds, n);
	return kTTErrNone;
}

TTErr TTParameter::setRangeBoundsMax(const TTValue& value)
{	
	TTValue n = value;				// use new value to protect the attribute
	mRangeBoundsMax = value;
	notifyObservers(kTTSym_RangeBounds, n);
	return kTTErrNone;
}

TTErr TTParameter::setRangeClipmode(const TTValue& value)
{
	TTValue n = value;				// use new value to protect the attribute
	mRangeClipmode = value;
	notifyObservers(kTTSym_RangeClipmode, n);
	return kTTErrNone;
}

/*
TTErr TTParameter::setRampDrive(const TTValue& value)
{
	TTValue n = value;				// use new value to protect the attribute
	mRampDrive = value;
	
	rampSetup();
	
	notifyObservers(kTTSym_RampDrive, n);
	return kTTErrNone;
}
*/

/*
TTErr TTParameter::setRampFunction(const TTValue& value)
{
	TTValue n = value;				// use new value to protect the attribute
	mRampFunction = value;
	
	if (mRamper && mRampFunction != kTTSymEmpty && mRampFunction != TT("linear")) {
		
			// set the function of the ramper
			mRamper->setAttributeValue(TT("Function"), mRampFunction);
			
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
	}
	
	notifyObservers(kTTSym_RampFunction, n);
	return kTTErrNone;
}
*/

TTErr TTParameter::setDataspace(const TTValue& value)
{
	TTErr	err;
	TTValue n = value;				// use new value to protect the attribute

	mDataspace = value;
	
	getDataspace(mDataspace, &dataspace_active2native);
	getDataspace(mDataspace, &dataspace_active2display);
	getDataspace(mDataspace, &dataspace_display2active);
	getDataspace(mDataspace, &dataspace_override2active);
	
	// If there is already a unit defined, then we try to use that
	// Otherwise we use the default (neutral) unit.
	err = kTTErrGeneric;
	if (mDataspaceUnitActive) {
		err = dataspace_active2native->setInputUnit(mDataspaceUnitActive);
		err = dataspace_active2display->setInputUnit(mDataspaceUnitActive);
		err = dataspace_display2active->setOutputUnit(mDataspaceUnitActive);
		
		// override always defaults to the active unit
		err = dataspace_override2active->setInputUnit(mDataspaceUnitActive);
		err = dataspace_override2active->setOutputUnit(mDataspaceUnitActive);
	}
	if (err) {
		mDataspaceUnitActive = dataspace_active2native->neutralUnit;
		err = dataspace_active2native->setInputUnit(mDataspaceUnitActive);
		err = dataspace_active2display->setInputUnit(mDataspaceUnitActive);
		err = dataspace_display2active->setOutputUnit(mDataspaceUnitActive);
		err = dataspace_override2active->setOutputUnit(mDataspaceUnitActive);
	}
	
	err = kTTErrGeneric;
	if (mDataspaceUnitNative) 
		err = dataspace_active2native->setOutputUnit(mDataspaceUnitNative);
	if (err)
		mDataspaceUnitNative = dataspace_active2native->neutralUnit;
	
	err = kTTErrGeneric;
	if (mDataspaceUnitDisplay) {
		err = dataspace_active2display->setOutputUnit(mDataspaceUnitDisplay);
		err = dataspace_display2active->setInputUnit(mDataspaceUnitDisplay);
	}
	if (err)
		mDataspaceUnitNative = dataspace_active2native->neutralUnit;

	notifyObservers(kTTSym_Dataspace, n);
	return kTTErrNone;
}

TTErr TTParameter::setDataspaceUnitNative(const TTValue& value)
{
	TTValue n = value;				// use new value to protect the attribute
	mDataspaceUnitNative = value;
	if (dataspace_active2native)
		dataspace_active2native->setOutputUnit(mDataspaceUnitNative);
	
	notifyObservers(kTTSym_DataspaceUnitNative, n);
	return kTTErrNone;
}

TTErr TTParameter::setDataspaceUnitActive(const TTValue& value)
{	
	TTValue n = value;				// use new value to protect the attribute
	mDataspaceUnitActive = value;
	
	if (dataspace_active2native)
		dataspace_active2native->setInputUnit(mDataspaceUnitActive);
	
	if (dataspace_active2display)
		dataspace_active2display->setInputUnit(mDataspaceUnitActive);
	
	if (dataspace_display2active)
		dataspace_display2active->setOutputUnit(mDataspaceUnitActive);
	
	notifyObservers(kTTSym_DataspaceUnitActive, n);
	return kTTErrNone;
}

TTErr TTParameter::setDataspaceUnitDisplay(const TTValue& value)
{
	TTValue n = value;				// use new value to protect the attribute
	mDataspaceUnitDisplay = value;
	
	if (dataspace_active2display)
		dataspace_active2display->setOutputUnit(mDataspaceUnitDisplay);
	
	if (dataspace_display2active)
		dataspace_display2active->setInputUnit(mDataspaceUnitDisplay);
	
	notifyObservers(kTTSym_DataspaceUnitDisplay, n);
	return kTTErrNone;
}

TTBoolean TTParameter::checkType(const TTValue& value)
{
	if (mType == kTTSym_generic) return true;
	
	switch (value.getType()) 
	{
		case kTypeNone :		return mType == kTTSym_none;
		case kTypeFloat32 :		return mType == kTTSym_integer || mType == kTTSym_decimal;
		case kTypeFloat64 :		return mType == kTTSym_integer || mType == kTTSym_decimal;
		case kTypeInt8 :		return mType == kTTSym_integer || mType == kTTSym_decimal;
		case kTypeUInt8 :		return mType == kTTSym_integer || mType == kTTSym_decimal;
		case kTypeInt16 :		return mType == kTTSym_integer || mType == kTTSym_decimal;
		case kTypeUInt16 :		return mType == kTTSym_integer || mType == kTTSym_decimal;
		case kTypeInt32 :		return mType == kTTSym_integer || mType == kTTSym_decimal;
		case kTypeUInt32 :		return mType == kTTSym_integer || mType == kTTSym_decimal;
		case kTypeInt64 :		return mType == kTTSym_integer || mType == kTTSym_decimal;
		case kTypeUInt64 :		return mType == kTTSym_integer || mType == kTTSym_decimal;
		case kTypeBoolean :		return mType == kTTSym_boolean;
		case kTypeSymbol :		return mType == kTTSym_string;
		case kTypeObject :		return false;
		case kTypePointer :		return false;
		case kTypeString :		return false;
		case kTypeLocalValue :	return false;
		case kNumTTDataTypes :	return false;
		default :				return false;
	}
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
				mValue.cliplow(mRangeBoundsMin);
			else if (mRangeClipmode == kTTSym_high)
				mValue.cliphigh(mRangeBoundsMax);
			else if (mRangeClipmode == kTTSym_both)
				mValue.clip(mRangeBoundsMin, mRangeBoundsMax);
			else if (mRangeClipmode == kTTSym_wrap)
				;//mValue.clipwrap(mRangeBoundsMin, mRangeBoundsMax);
			else if (mRangeClipmode == kTTSym_fold)
				;//mValue.clipfold(mRangeBoundsMin, mRangeBoundsMax);
		}
	}
	
	return false;
}

/*
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
		RampLib::createUnit(mRampDrive, &mRamper, &TTParameterRampUnitCallback, (void *)this);
	
	if (mRamper == NULL)
		return kTTErrGeneric; //error("jcom.parameter (%s module): could not allocate memory for ramp unit!", x->common.module_name);
	
	// 3. reset the ramp function
	setRampFunction(mRampFunction);
	
	return kTTErrNone;	
}
*/

TTErr TTParameter::convertUnit(const TTValue& inValue, TTValue& outValue)
{
	if (mDataspace && dataspace_active2native && (mDataspaceUnitActive != mDataspaceUnitNative))
		dataspace_active2native->convert(inValue, outValue);
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

/*
void TTParameterRampUnitCallback(void *o, TTUInt32 n, TTFloat64 *rampedArray)
{
	TTParameterPtr	aParameter = (TTParameterPtr)o;
	TTValue			rampedValue;
	TTUInt16		i;
	
	rampedValue.setSize(n);
	for (i=0; i<n; i++)
		rampedValue.set(i, rampedArray[i]);
	
	if (aParameter->mRepetitionsAllow || !(aParameter->mValue == rampedValue)) {
		
		// set internal value
		aParameter->mValue = rampedValue;
		
		// return the value to his owner
		aParameter->mReturnValueCallback->notify(aParameter->mValue);
		
		// notify each observers
		aParameter->notifyObservers(kTTSym_Value, aParameter->mValue);
	}
}
*/
