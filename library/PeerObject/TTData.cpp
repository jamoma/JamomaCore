/* 
 * A Data Object
 * Copyright © 2010, Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTData.h"

#define thisTTClass			TTData
#define thisTTClassName		"Data"
#define thisTTClassTags		"data"

TT_MODULAR_CONSTRUCTOR,
mValue(TTValue(0.0)),
mValueDefault(kTTValNONE),
mValueStepsize(TTValue(0.1)),
mType(kTTSym_generic),
mTag(TTValue(kTTSym_none)),
mPriority(0),
mDescription(kTTSymEmpty),
mRepetitionsAllow(YES),
mEnable(YES),
mInitialized(NO),
mRangeBounds(0.0, 1.0),
mRangeClipmode(kTTSym_none),
mDynamicInstances(NO),
mInstanceBounds(0, -1),
#ifndef TTDATA_NO_RAMPLIB
mRampDrive(kTTSym_none),
mRampFunction(kTTSymEmpty),
#endif
mDataspace(kTTSym_none),
mDataspaceUnit(kTTSym_none),
mDataspaceConverter(NULL),
mService(kTTSymEmpty),
mReturnValueCallback(NULL)
{
	TT_ASSERT("Correct number of args to create TTData", arguments.getSize() == 1);
	
	arguments.get(0, (TTPtr*)&mReturnValueCallback);
	TT_ASSERT("Return Value Callback passed to TTData is not NULL", mReturnValueCallback);
	
	if (arguments.getSize() == 2)
		arguments.get(1, &mService);
	
	addAttributeWithGetterAndSetter(Value, kTypeNone);
	addAttributeWithGetterAndSetter(ValueDefault, kTypeNone);
	addAttributeWithGetterAndSetter(ValueStepsize, kTypeNone);
	
	addAttributeWithSetter(Type, kTypeSymbol);
	addAttributeWithSetter(Tag, kTypeLocalValue);
	addAttribute(Priority, kTypeInt32);
	addAttribute(Description, kTypeSymbol);
	addAttributeWithSetter(RepetitionsAllow, kTypeBoolean);
	
	addAttributeWithSetter(Enable, kTypeBoolean);
	
	addAttribute(Initialized, kTypeBoolean);
	addAttributeProperty(Initialized, readOnly, YES);
	addAttributeProperty(Initialized, hidden, YES);
	
	addAttributeWithSetter(RangeBounds, kTypeLocalValue);
	addAttributeWithSetter(RangeClipmode, kTypeSymbol);
	
	addAttribute(DynamicInstances, kTypeBoolean);
	addAttributeProperty(DynamicInstances, hidden, YES);
	addAttributeWithSetter(InstanceBounds, kTypeLocalValue);
	addAttributeProperty(InstanceBounds, hidden, YES);
	
#ifndef TTDATA_NO_RAMPLIB
	addAttributeWithSetter(RampDrive, kTypeSymbol);
	addAttributeWithSetter(RampFunction, kTypeSymbol);
#endif
	
	addAttributeWithSetter(Dataspace, kTypeSymbol);
	addAttributeWithSetter(DataspaceUnit, kTypeSymbol);
	
	addAttribute(Service, kTypeSymbol);
	addAttributeProperty(Service, readOnly, YES);
	
	addMessage(Reset);
	addMessageWithArguments(Inc);
	addMessageWithArguments(Dec);
	addMessageWithArguments(Command);
	addMessageProperty(Command, hidden, YES);
	
	// needed to be handled by a TTTextHandler
	addMessageWithArguments(WriteAsText);
	addMessageProperty(WriteAsText, hidden, YES);
	
	mIsSending = NO;
	
#ifndef TTDATA_NO_RAMPLIB
	mRamper = NULL;
	mRampDataNames = new TTHash();
#endif
}

TTData::~TTData()
{
#ifndef TTDATA_NO_RAMPLIB	
	if (mRamper)
		TTObjectRelease(TTObjectHandle(&mRamper));
#endif
	
	if (mDataspaceConverter)
		TTObjectRelease(TTObjectHandle(&mDataspaceConverter));
	
	if (mReturnValueCallback) {
		delete (TTValuePtr)mReturnValueCallback->getBaton();
		TTObjectRelease(TTObjectHandle(&mReturnValueCallback));
	}
}

TTErr TTData::Reset()
{
	// if valueDefault type is right
	if (checkType(mValueDefault))
		if (!(mValueDefault == kTTValNONE)) {
			return setValue(mValueDefault);
		}
	
	// In case the data have no default value : set data to be uninitialised
	mInitialized = NO;
	this->notifyObservers(kTTSym_initialized, NO);
	
	return kTTErrNone;
}

TTErr TTData::Inc(const TTValue& inputValue, TTValue& outputValue)
{
	TTUInt32	i;
	TTFloat64	inc, ramptime, v, vStepsize;
	TTSymbolPtr	ramp;
	TTValue		command;
	
	mValueStepsize.get(0, vStepsize);
	
	switch (inputValue.getSize()) {
			
			// 1 incrementation step	
		case 1 :
		{
			if (inputValue.getType(0) == kTypeFloat32 || inputValue.getType(0)  == kTypeInt32) {
				inputValue.get(0, inc);
				
				for (i=0; i<mValue.getSize(); i++) {
					mValue.get(i, v);
					command.append(v + inc * vStepsize);
				}
			}
			break;
		}
			
			// 1 incrementation step + ramp ramptime
		case 3 :
		{
			if (inputValue.getType(0) == kTypeFloat32 || inputValue.getType(0)  == kTypeInt32) {
				inputValue.get(0, inc);
				
				for (i=0; i<mValue.getSize(); i++) {
					mValue.get(i, v);
					command.append(v + inc * vStepsize);
				}
				
				if (inputValue.getType(1) == kTypeSymbol) {
					inputValue.get(1, &ramp);
					if (ramp == kTTSym_ramp) {
						command.append(ramp);
						if (inputValue.getType(2) == kTypeFloat32 || inputValue.getType(2)  == kTypeInt32) {
							inputValue.get(2, ramptime);
							command.append(ramptime);
						}
					}
				}
				break;	
			}
		}
			
			// no value or wrong value
		default :
		{
			for (i=0; i<mValue.getSize(); i++) {
				mValue.get(i, v);
				command.append(v + vStepsize);
			}
			
			break;	
		}
	}
	
	this->Command(command, kTTValNONE);
	
	return kTTErrNone;
}

TTErr TTData::Dec(const TTValue& inputValue, TTValue& outputValue)
{
	TTUInt32	i;
	TTFloat64	dec, ramptime, v, vStepsize;
	TTSymbolPtr	ramp;
	TTValue		command;
	
	mValueStepsize.get(0, vStepsize);
	
	switch (inputValue.getSize()) {
			
			// 1 decrementation step	
		case 1 :
		{
			if (inputValue.getType(0) == kTypeFloat32 || inputValue.getType(0)  == kTypeInt32) {
				inputValue.get(0, dec);
				
				for (i=0; i<mValue.getSize(); i++) {
					mValue.get(i, v);
					command.append(v - dec * vStepsize);
				}
			}
			break;
		}
			
			// 1 decrementation step + ramp ramptime
		case 3 :
		{
			if (inputValue.getType(0) == kTypeFloat32 || inputValue.getType(0)  == kTypeInt32) {
				inputValue.get(0, dec);
				
				for (i=0; i<mValue.getSize(); i++) {
					mValue.get(i, v);
					command.append(v - dec * vStepsize);
				}
				
				if (inputValue.getType(1) == kTypeSymbol) {
					inputValue.get(1, &ramp);
					if (ramp == kTTSym_ramp) {
						command.append(ramp);
						if (inputValue.getType(2) == kTypeFloat32 || inputValue.getType(2)  == kTypeInt32) {
							inputValue.get(2, ramptime);
							command.append(ramptime);
						}
					}
				}
				break;	
			}
		}
			
			// no value or wrong value
		default :
		{
			for (i=0; i<mValue.getSize(); i++) {
				mValue.get(i, v);
				command.append(v - vStepsize);
			}
			
			break;	
		}
	}
	
	this->Command(command, kTTValNONE);
	
	return kTTErrNone;
}

TTErr TTData::Command(const TTValue& commandValue, TTValue& outputValue)
{
	TTDictionaryPtr command = NULL;
	TTMessagePtr	aMessage;
	TTSymbolPtr		unit;
#ifndef TTDATA_NO_RAMPLIB
	double			time;
#endif
	TTValue			v, aValue, c;
	TTErr			err = kTTErrNone;
	
	// 0. Get the command TTDictionnary 
	// or parse any incoming value into a TTDictionnary
	///////////////////////////////////////////////////
	if (commandValue.getType() == kTypePointer)
		commandValue.get(0, (TTPtr*)&command);
	else 
		command = TTDataParseCommand(commandValue);
	
	if (!command)
		return kTTErrGeneric;

	// 1. Notify Command observer for value changes only
	///////////////////////////////////////////////////
	c = commandValue;									// protect the command value
	err = this->findMessage(kTTSym_Command, &aMessage);
	if (!err)
		aMessage->sendNotification(kTTSym_notify, c);	// we use kTTSym_notify because we know that observers are TTCallback
	
	// 2. Get the value
	command->getValue(aValue);
	
	// 3. Set Dataspace input unit and convert the value
	// Note : The current implementation does not override the active unit temporarily or anything fancy.
	// It just sets the input unit and then runs with it...
	// For this initial implementation we are converting the values prior to ramping, as it is easier.
	// Ultimately though, we actually want to convert the units after the ramping, 
	// for example to perform a sweep that is linear vs logarithmic
	////////////////////////////////////////////////////////////////
	if (!command->lookup(kTTSym_unit, v)) {
		
		v.get(0, &unit);
		
		if (mDataspaceConverter) {
			TTValue convertedValue;
			
			mDataspaceConverter->setAttributeValue(TT("inputUnit"), unit);
			convertUnit(aValue, convertedValue);
			aValue = convertedValue;
		}
	}
	
	// 4. Filter repetitions
	//////////////////////////////////
	if (!mRepetitionsAllow && mInitialized) {
		
		// float to integer case
		if (mType == kTTSym_integer)
			aValue.truncate();
		
		// integer/float to boolean case
		if (mType == kTTSym_boolean)
			aValue.booleanize();
		
		if (mValue == aValue)
			return kTTErrNone;	// nothing to do
	}

#ifndef TTDATA_NO_RAMPLIB
	// 5. Ramp the convertedValue
	/////////////////////////////////
	if (!command->lookup(kTTSym_ramp, v)) {
		
		v.get(0, time);
		
		if (mRamper && time > 0) {
			TTUInt16	i, s = aValue.getSize();
			TTFloat64*	startArray = new TTFloat64[s];		// start to mValue
			TTFloat64*	targetArray = new TTFloat64[s];		// go to convertedValue
			
			if(mValue.getSize() != s)
				mValue.setSize(s);
			
			for (i=0; i<s; i++) {
				startArray[i] = mValue.getFloat64(i);
				targetArray[i] = aValue.getFloat64(i);
			}
			
			mRamper->set(s, startArray);		
			mRamper->go(s, targetArray, time);	
			
			delete [] startArray;
			delete [] targetArray;
			
			return kTTErrNone;
		}
	}
	
	// in any other cases :
	// stop ramping before to set a value
	if (mRamper)
		mRamper->stop();
#endif
	
	// 6. Set the value directly
	return setValue(aValue);
}

TTErr TTData::getValue(TTValue& value)
{
	// can't get the value before the data has been initialized
	if (mInitialized) {
		
		value = mValue;
		return kTTErrNone;
	}
	else
		return kTTErrGeneric;
}

TTErr TTData::setValue(const TTValue& value)
{
	TTValue r, n;
	
	if (!mIsSending && mEnable) {
		
		// lock
		mIsSending = YES;
		
		// a kTTValNONE would only return the actual value
		if (value == kTTValNONE) {
			
			// if mType is 'none' we have had our value set at least once
			if (mService == kTTSym_parameter && mType == kTTSym_none && !mInitialized) {
				mInitialized = YES;
				this->notifyObservers(kTTSym_initialized, YES);
			}
		}
		// otherwise check the type of the incoming value
		else if (checkType(value)) {
			
			// set internal value 
			mValue = value;
			
			// float to integer case
			if (mType == kTTSym_integer)
				mValue.truncate();
			
			// integer/float to boolean case
			if (mType == kTTSym_boolean)
				mValue.booleanize();
			
#ifndef TTDATA_NO_RAMPLIB
			if (clipValue() && mRamper)
				mRamper->stop();
#else
			clipValue();
#endif
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
		if (!(mService == kTTSym_return))
			this->mReturnValueCallback->notify(r, kTTValNONE);
		
		// notify each observers
		//if (!(mService == kTTSym_message))		// to -- to allow message to be mapped for example
			this->notifyObservers(kTTSym_value, n);
		
		// we have had our value set at least once
		// only parameters notify their initialisation
		if (mService == kTTSym_parameter && !mInitialized) {
			mInitialized = YES;
			this->notifyObservers(kTTSym_initialized, YES);
		}
		else if (!mInitialized) mInitialized = YES;
		
		// unlock
		mIsSending = NO;
		
		return kTTErrNone;
	}
	
	return kTTErrGeneric;
}

TTErr TTData::getValueDefault(TTValue& value)
{
	value = mValueDefault;
	return kTTErrNone;
}

TTErr TTData::setValueDefault(const TTValue& value)
{
	TTValue n = value;				// use new value to protect the attribute
	mValueDefault = value;
	this->notifyObservers(kTTSym_valueDefault, n);
	return kTTErrNone;
}

TTErr TTData::getValueStepsize(TTValue& value)
{
	value = mValueStepsize;
	return kTTErrNone;
}

TTErr TTData::setValueStepsize(const TTValue& value)
{
	TTValue n = value;				// use new value to protect the attribute
	mValueStepsize = value;
	this->notifyObservers(kTTSym_valueStepsize, n);
	return kTTErrNone;
}

TTErr TTData::setType(const TTValue& value)
{
	TTAttributePtr valueAttribute, valueDefaultAttribute, valueStepSizeAttribute;
	// if the new type is different
	if (!(TTValue(mType) == value)) {
		
		TTValue n = value;				// use new value to protect the attribute
		mType = value;
		
		// Get Value, ValueDefault and ValueStepsize attributes
		this->findAttribute(kTTSym_value, &valueAttribute);
		this->findAttribute(kTTSym_value, &valueDefaultAttribute);
		this->findAttribute(kTTSym_valueStepsize, &valueStepSizeAttribute);

		mInstanceBounds.set(0, TTInt16(0));
		mInstanceBounds.set(1, TTInt16(-1));
		
		// register mValue Attribute and prepare memory
		if (mType == kTTSym_integer) {
			valueAttribute->type = kTypeInt32;
			valueDefaultAttribute->type = kTypeInt32;
			valueStepSizeAttribute->type = kTypeInt32;
			mValue = TTValue(0);
			mValueStepsize = TTValue(1);
			mRangeBounds.set(0, TTUInt16(0));
			mRangeBounds.set(1, TTUInt16(1));
		}
		else if (mType == kTTSym_decimal) {
			valueAttribute->type = kTypeFloat64;
			valueDefaultAttribute->type = kTypeFloat64;
			valueStepSizeAttribute->type = kTypeFloat64;
			mValue = TTValue(0.);
			mValueStepsize = TTValue(0.1);
			mRangeBounds.set(0, 0.);
			mRangeBounds.set(1, 1.);
		}
		else if (mType == kTTSym_string) {
			valueAttribute->type = kTypeSymbol;
			valueDefaultAttribute->type = kTypeSymbol;
			valueStepSizeAttribute->type = kTypeSymbol;
			mValue = TTValue(kTTSymEmpty);
			mValueStepsize = kTTValNONE;
			mRangeBounds = kTTValNONE;
		}
		else if (mType == kTTSym_boolean) {
			valueAttribute->type = kTypeBoolean;
			valueDefaultAttribute->type = kTypeBoolean;
			valueStepSizeAttribute->type = kTypeBoolean;
			mValue = TTValue(NO);
			mValueStepsize = TTValue(YES);
			mRangeBounds.set(0, NO);
			mRangeBounds.set(1, YES);
		}
		else if (mType == kTTSym_array) {				// Is this case means something now we have TTValue?
			valueAttribute->type = kTypeFloat64;
			valueDefaultAttribute->type = kTypeFloat64;
			valueStepSizeAttribute->type = kTypeFloat64;
			mValue = TTValue(0.);
			mValueStepsize = TTValue(0.1);
			mRangeBounds.set(0, 0.);
			mRangeBounds.set(1, 1.);
		}
		else if (mType == kTTSym_none) {
			valueAttribute->type = kTypeNone;
			valueDefaultAttribute->type = kTypeNone;
			valueStepSizeAttribute->type = kTypeNone;
			mValue = kTTValNONE;
			mValueStepsize = kTTValNONE;
			mRangeBounds = kTTValNONE;
		}
		else {
			valueAttribute->type = kTypeFloat64;
			valueDefaultAttribute->type = kTypeFloat64;
			valueStepSizeAttribute->type = kTypeFloat64;
			mType = kTTSym_generic;						// Is this case means something now we have TTValue ?
			mValue = TTValue(0.);
			mValueStepsize = TTValue(0.1);
			mRangeBounds = TTValue(0., 1.);
			return kTTErrGeneric;
		}

#ifndef TTDATA_NO_RAMPLIB
		rampSetup();
#endif
		
		this->notifyObservers(kTTSym_type, n);
	}
	return kTTErrNone;
}

TTErr TTData::setTag(const TTValue& value)
{
	TTValue n = value;				// use new value to protect the attribute
	mTag = value;
	this->notifyObservers(kTTSym_tag, n);
	return kTTErrNone;
}

TTErr TTData::setRepetitionsAllow(const TTValue& value)
{
	TTValue n = value;				// use new value to protect the attribute
	mRepetitionsAllow = value;
	this->notifyObservers(kTTSym_repetitionsAllow, n);
	return kTTErrNone;
}

TTErr TTData::setEnable(const TTValue& value)
{
	TTValue n = value;				// use new value to protect the attribute
	mEnable = value;
	this->notifyObservers(kTTSym_enable, n);
	return kTTErrNone;
}

TTErr TTData::setRangeBounds(const TTValue& value)
{	
	TTValue n;				// use new value to protect the attribute
	mRangeBounds = value;
	
	if (mType == kTTSym_integer)
		mRangeBounds.truncate();
	
	n = mRangeBounds;
	
	this->notifyObservers(kTTSym_rangeBounds, n);
	return kTTErrNone;
}

TTErr TTData::setRangeClipmode(const TTValue& value)
{
	TTValue n = value;				// use new value to protect the attribute
	mRangeClipmode = value;
	this->notifyObservers(kTTSym_rangeClipmode, n);
	return kTTErrNone;
}

TTErr TTData::setInstanceBounds(const TTValue& value)
{
	TTValue n;				// use new value to protect the attribute
	TTInt16 vmin, vmax;
	value.get(0, vmin);
	value.get(1, vmax);
	mInstanceBounds.set(0, vmin);
	mInstanceBounds.set(1, vmax);
	
	return kTTErrNone;
}

#ifndef TTDATA_NO_RAMPLIB
TTErr TTData::setRampDrive(const TTValue& value)
{
	TTValue n = value;				// use new value to protect the attribute
	mRampDrive = value;
	
	rampSetup();
	
	this->notifyObservers(kTTSym_rampDrive, n);
	return kTTErrNone;
}

TTErr TTData::setRampFunction(const TTValue& value)
{
	TTValue n = value;				// use new value to protect the attribute
	mRampFunction = value;
	
	if (mRamper && mRampFunction != kTTSymEmpty && mRampFunction != TT("linear")) {
		
			// set the function of the ramper
			mRamper->setAttributeValue(kTTSym_function, mRampFunction);
			
			 long		n;
			 TTValue		names;
			 TTSymbolPtr	aName;
			 TTString	nameString;
			 
			// cache the function's attribute names
			mRampDataNames->clear();
			mRamper->getFunctionParameterNames(names);
			n = names.getSize();
			for (int i=0; i<n; i++) {
				
				names.get(i, &aName);
				nameString = aName->getCString();
				
				if (aName == kTTSym_bypass || aName == kTTSym_mute || aName == kTTSym_maxNumChannels || aName == kTTSym_sampleRate)
					continue;										// don't publish these datas
				
				if (nameString[0] > 64 && nameString[0] < 91) {		// ignore all params not starting with upper-case
					nameString[0] += 32;							// convert first letter to lower-case for Max
					
					TTValue v = aName;
					mRampDataNames->append(TT(nameString.c_str()), v);
				}
			}
	}
	
	this->notifyObservers(kTTSym_rampFunction, n);
	return kTTErrNone;
}
#endif

TTErr TTData::setDataspace(const TTValue& value)
{
	TTErr	err;
	TTValue v;
	TTValue n = value;				// use new value to protect the attribute
	mDataspace = value;
	
	TTObjectInstantiate(TT("dataspace"),  &mDataspaceConverter, kTTValNONE);
	mDataspaceConverter->setAttributeValue(TT("dataspace"), mDataspace);
	
	// If there is already a unit defined, then we try to use that
	// Otherwise we use the default (neutral) unit.
	err = kTTErrGeneric;
	if (mDataspaceUnit)
		err = mDataspaceConverter->setAttributeValue(TT("outputUnit"), mDataspaceUnit);

	if (err) {
		mDataspaceConverter->getAttributeValue(TT("outputUnit"), v);
		v.get(0, &mDataspaceUnit);
		mDataspaceConverter->setAttributeValue(TT("outputUnit"), mDataspaceUnit);
	}
	
	this->notifyObservers(kTTSym_dataspace, n);
	return kTTErrNone;
}

TTErr TTData::setDataspaceUnit(const TTValue& value)
{
	TTValue n = value;				// use new value to protect the attribute
	mDataspaceUnit = value;
	if (mDataspaceConverter)
		mDataspaceConverter->setAttributeValue(TT("outputUnit"), mDataspaceUnit);
	
	this->notifyObservers(kTTSym_dataspaceUnit, n);
	return kTTErrNone;
}

TTBoolean TTData::checkType(const TTValue& value)
{
	if (mType == kTTSym_generic || mType == kTTSym_array) return true;
	
	switch (value.getType()) 
	{
		case kTypeNone :		return mType == kTTSym_none;
		case kTypeFloat32 :		return mType == kTTSym_integer || mType == kTTSym_decimal || mType == kTTSym_boolean;
		case kTypeFloat64 :		return mType == kTTSym_integer || mType == kTTSym_decimal || mType == kTTSym_boolean;
		case kTypeInt8 :		return mType == kTTSym_integer || mType == kTTSym_decimal || mType == kTTSym_boolean;
		case kTypeUInt8 :		return mType == kTTSym_integer || mType == kTTSym_decimal || mType == kTTSym_boolean;
		case kTypeInt16 :		return mType == kTTSym_integer || mType == kTTSym_decimal || mType == kTTSym_boolean;
		case kTypeUInt16 :		return mType == kTTSym_integer || mType == kTTSym_decimal || mType == kTTSym_boolean;
		case kTypeInt32 :		return mType == kTTSym_integer || mType == kTTSym_decimal || mType == kTTSym_boolean;
		case kTypeUInt32 :		return mType == kTTSym_integer || mType == kTTSym_decimal || mType == kTTSym_boolean;
		case kTypeInt64 :		return mType == kTTSym_integer || mType == kTTSym_decimal || mType == kTTSym_boolean;
		case kTypeUInt64 :		return mType == kTTSym_integer || mType == kTTSym_decimal || mType == kTTSym_boolean;
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

TTBoolean TTData::clipValue()
{
	//bool	didClipAll = false;
	
	// the code regarding didClipAll is supposed to return true when every member of the list has been clipped to its limit
	// that way ramping can be terminated prematurely if it was trying to ramp to something out of range
	// however, this code as it is doesn't work, and it doesn't buy us much anyway
	// so I'm just commenting it out for the time being [TAP]
	
	if (mRangeClipmode != kTTSym_none) {
		
		if (mType == kTTSym_generic || mType == kTTSym_integer || mType == kTTSym_decimal) {
			
			if (mRangeClipmode == kTTSym_low)
				mValue.cliplow(mRangeBounds.getFloat64(0));
			else if (mRangeClipmode == kTTSym_high)
				mValue.cliphigh(mRangeBounds.getFloat64(1));
			else if (mRangeClipmode == kTTSym_both)
				mValue.clip(mRangeBounds.getFloat64(0), mRangeBounds.getFloat64(1));
			//else if (mRangeClipmode == kTTSym_wrap)
				;//mValue.clipwrap(mRangeBounds.getFloat64(0), mRangeBounds.getFloat64(1));
			//else if (mRangeClipmode == kTTSym_fold)
				;//mValue.clipfold(mRangeBounds.getFloat64(0), mRangeBounds.getFloat64(1));
		}
	}
	
	return false;
}

#ifndef TTDATA_NO_RAMPLIB
TTErr TTData::rampSetup()
{

	// 1. destroy the old rampunit
	if (mRamper != NULL) {
		TTObjectRelease(TTObjectHandle(&mRamper));
		mRamper = NULL;
	}
	
	// 2. create the new rampunit
	// For some types ramping doesn't make sense, so they will be set to none
	if (mType == kTTSym_none || mType == kTTSym_string || mType == kTTSym_generic)
		mRampDrive = kTTSym_none;
	else 
		RampLib::createUnit(mRampDrive, &mRamper, &TTDataRampUnitCallback, (void *)this);
	
	if (mRamper == NULL)
		return kTTErrGeneric; //error("jcom.data (%s module): could not allocate memory for ramp unit!", x->common.module_name);
	
	// 3. reset the ramp function
	setRampFunction(mRampFunction);
	
	return kTTErrNone;	
}
#endif

TTErr TTData::convertUnit(const TTValue& inputValue, TTValue& outputValue)
{
	if (mDataspaceConverter)
		return mDataspaceConverter->sendMessage(TT("convert"), inputValue, outputValue);

	return kTTErrNone;
}

TTErr TTData::notifyObservers(TTSymbolPtr attrName, const TTValue& value)
{
	TTAttributePtr	anAttribute = NULL;
	TTErr			err;
	
	err = this->findAttribute(attrName, &anAttribute);
	
	if (!err)
		anAttribute->sendNotification(kTTSym_notify, value);	// we use kTTSym_notify because we know that observers are TTCallback
	
	return kTTErrNone;
}

TTErr TTData::WriteAsText(const TTValue& inputValue, TTValue& outputValue)
{
	TTTextHandlerPtr aTextHandler;
	TTString		*buffer;
	TTValue			toString;
	TTString		line;
	
	inputValue.get(0, (TTPtr*)&aTextHandler);
	buffer = aTextHandler->mWriter;
	
	// Type
	*buffer += "\t\t\t<td class =\"instructionType\">";
	*buffer += this->mType->getCString();
	*buffer += "</td>";

	// range/bounds
	toString = this->mRangeBounds;
	toString.toString();
	toString.get(0, line);
	
	if ( (this->mType == kTTSym_integer) || (this->mType == kTTSym_boolean) || (this->mType == kTTSym_decimal) || (this->mType == kTTSym_generic) ) {
		*buffer +="\t\t\t<td class =\"instructionRangeBounds\">";
		*buffer +=line.data();
		*buffer += "</td>";
	}
	else
		*buffer += "\t\t\t<td class = \"instructionRangeBounds\"> N/A </td>";

	// range/clipmode
	*buffer += "\t\t\t<td class =\"instructionRangeClipmode\">";
	*buffer += this->mRangeClipmode->getCString();
	*buffer += "</td>";

#ifndef TTDATA_NO_RAMPLIB
	// ramp/drive
	*buffer += "\t\t\t<td class =\"instructionRampDrive\">";
	*buffer += this->mRampDrive->getCString();
	*buffer += "</td>";
	
	// ramp/function
	*buffer += "\t\t\t<td class =\"instructionRampFunction\">";
	*buffer += this->mRampFunction->getCString();
	*buffer += "</td>";
#endif
	
	// dataspace
	*buffer += "\t\t\t<td class =\"instructionDataspace\">";
	*buffer += this->mDataspace->getCString();
	*buffer += "</td>";
	
	// dataspace/unit/native
	*buffer += "\t\t\t<td class =\"instructionDataspaceUnit\">";
	*buffer += this->mDataspaceUnit->getCString();
	*buffer += "</td>";
	
	// repetitions/allow
	toString = this->mRepetitionsAllow;
	toString.toString();
	toString.get(0, line);
	*buffer += "\t\t\t<td class =\"instructionRepetitionsAllow\">";
	*buffer += line.data();
	*buffer += "</td>";
	
	// description
	*buffer += "\t\t\t<td class =\"instructionDescription\">";
	*buffer += this->mDescription->getCString();
	*buffer += "</td>";
	return kTTErrNone;
}

#if 0
#pragma mark -
#pragma mark Some Methods
#endif

TTDictionaryPtr TTDataParseCommand(const TTValue& commandValue)
{
	TTDictionaryPtr		command = new TTDictionary();
	double				time;
	int					commandSize;
	TTSymbolPtr			unit, ramp;
	TTValue				aValue, c;
	bool				hasRamp = false;
	bool				hasUnit = false;
	
	// Parse the command to handle unit and ramp
	///////////////////////////////////////////////////
	commandSize = commandValue.getSize();
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
			if (commandValue.getType(0) != kTypeSymbol && commandValue.getType(1) == kTypeSymbol) {
				hasUnit = true;
				commandValue.get(1, &unit);
			}
			
			break;	
		}
			
			// 3 values || 2 values + unit || 1 value + ramp ramptime
		case 3 :
		{
			// Is the second element is a ramp symbol ?
			if (commandValue.getType(1) == kTypeSymbol) {
				commandValue.get(1, &ramp);
				if (ramp == kTTSym_ramp)
					hasRamp = true;
			}
			// or is the last element is a unit symbol ?
			else if (commandValue.getType(0) != kTypeSymbol && commandValue.getType(2) == kTypeSymbol) {
				hasUnit = true;
				commandValue.get(2, &unit);
			}
			
			break;	
		}
			
			// X values || X-1 values + unit || X-2 values + ramp ramptime || X-3 values + unit + ramp ramptime
		default :
		{
			// Is the X-2 element is a ramp symbol ?
			if (commandValue.getType(commandSize - 2) == kTypeSymbol) {
				commandValue.get(commandSize - 2, &ramp);
				if (ramp == kTTSym_ramp)
					hasRamp = true;
			}
			
			// Is the X-3 or last element a unit symbol ?
			if (commandValue.getType(0) != kTypeSymbol) {
				if (hasRamp) {
					if (commandValue.getType(commandSize - 3) == kTypeSymbol) {
						hasUnit = true;
						commandValue.get(commandSize - 3, &unit);
					}
					else
						if (commandValue.getType(commandSize - 1) == kTypeSymbol) {
							hasUnit = true;
							commandValue.get(commandSize - 1, &unit);
						}
				}
			}
			
			break;	
		}
	}
	
	// 3. Strip ramp or unit informations if needed
	if (hasRamp && hasUnit) {
		aValue = commandValue;
		aValue.setSize(commandSize - 3);
	}
	else if (hasRamp) {
		aValue = commandValue;
		aValue.setSize(commandSize - 2);
	}
	else if (hasUnit) {
		aValue = commandValue;
		aValue.setSize(commandSize - 1);
	}
	else
		aValue = commandValue;
	
	// 4. Edit command
	command->setValue(aValue);
	
	if (hasUnit)
		command->append(kTTSym_unit, unit);
	
	if (hasRamp) {
		commandValue.get(commandSize - 1, time);
		command->append(kTTSym_ramp, time);
	}
	
	command->setSchema(kTTSym_command);
	
	return command;
}

#ifndef TTDATA_NO_RAMPLIB
void TTDataRampUnitCallback(void *o, TTUInt32 n, TTFloat64 *rampedArray)
{
	TTDataPtr	aData = (TTDataPtr)o;
	TTValue		rampedValue;
	TTUInt16	i;
	
	rampedValue.setSize(n);
	for (i=0; i<n; i++)
		rampedValue.set(i, rampedArray[i]);
	
	if (aData->mType == kTTSym_integer)
		rampedValue.truncate();
	
	if (!aData->mRepetitionsAllow)
		if (aData->mValue == rampedValue)
			return;
		
	// set internal value
	aData->setValue(rampedValue);
}
#endif
