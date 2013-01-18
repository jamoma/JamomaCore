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
mDescription(kTTSym_none),
mRepetitionsAllow(YES),
mActive(YES),
mInitialized(NO),
mRangeBounds(0.0, 1.0),
mRangeClipmode(kTTSym_none),
mDynamicInstances(NO),
mInstanceBounds(0, -1),
#ifndef TTDATA_NO_RAMPLIB
mRampDrive(kTTSym_none),
mRampFunction(kTTSym_none),
mRampFunctionParameters(kTTValNONE),
mRampStatus(NO),
#endif
mDataspace(kTTSym_none),
mDataspaceUnit(kTTSym_none),
mDataspaceConverter(NULL),
mService(kTTSymEmpty),
mReturnValueCallback(NULL)
{
	TT_ASSERT("Correct number of args to create TTData", arguments.size() == 1);
	
	mReturnValueCallback = TTCallbackPtr((TTPtr)arguments[0]);
	TT_ASSERT("Return Value Callback passed to TTData is not NULL", mReturnValueCallback);
	
	if (arguments.size() == 2)
		mService = arguments[1];
	
	addAttributeWithGetterAndSetter(Value, kTypeNone);
	addAttributeWithGetterAndSetter(ValueDefault, kTypeNone);
	addAttributeWithGetterAndSetter(ValueStepsize, kTypeNone);
	
	addAttributeWithSetter(Type, kTypeSymbol);
	addAttributeWithSetter(Tag, kTypeLocalValue);
	addAttributeWithSetter(Priority, kTypeInt32);
	addAttributeWithSetter(Description, kTypeSymbol);
	addAttributeWithSetter(RepetitionsAllow, kTypeBoolean);
	
	addAttributeWithSetter(Active, kTypeBoolean);
	
	addAttribute(Initialized, kTypeBoolean);
	addAttributeProperty(Initialized, readOnly, YES);
	addAttributeProperty(Initialized, hidden, YES);
	
	addAttributeWithSetter(RangeBounds, kTypeLocalValue);
	addAttributeWithSetter(RangeClipmode, kTypeSymbol);
	
    // this is a temporary solution for Blue Yéti
	addAttribute(DynamicInstances, kTypeBoolean);
	addAttributeProperty(DynamicInstances, hidden, YES);
	addAttributeWithSetter(InstanceBounds, kTypeLocalValue);
	addAttributeProperty(InstanceBounds, hidden, YES);
	
#ifndef TTDATA_NO_RAMPLIB
	addAttributeWithSetter(RampDrive, kTypeSymbol);
	addAttributeWithSetter(RampFunction, kTypeSymbol);
	
	addAttribute(RampFunctionParameters, kTypeLocalValue);
	addAttributeProperty(RampFunctionParameters, readOnly, YES);
	
	addAttribute(RampStatus, kTypeBoolean);
	addAttributeProperty(RampStatus, readOnly, YES);
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
	TTSymbol	ramp;
	TTValue		command;
	
    if (mType == kTTSym_string)
        return kTTErrGeneric;
    
	vStepsize = mValueStepsize[0];
	
	switch (inputValue.size()) {
			
			// 1 incrementation step	
		case 1 :
		{
			if (inputValue[0].type() == kTypeFloat64 || inputValue[0].type()  == kTypeInt32) {
				inc = inputValue[0];
				
				for (i = 0; i < mValue.size(); i++) {
					v = mValue[i];
					command.append(v + inc * vStepsize);
				}
			}
			break;
		}
			
			// 1 incrementation step + ramp ramptime
		case 3 :
		{
			if (inputValue[0].type() == kTypeFloat64 || inputValue[0].type()  == kTypeInt32) {
				inc = inputValue[0];
				
				for (i = 0; i < mValue.size(); i++) {
					v = mValue[i];
					command.append(v + inc * vStepsize);
				}
				
				if (inputValue[1].type() == kTypeSymbol) {
					ramp = inputValue[1];
					if (ramp == kTTSym_ramp) {
						command.append(ramp);
						if (inputValue[2].type() == kTypeFloat64 || inputValue[2].type()  == kTypeInt32) {
							ramptime = inputValue[2];
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
			for (i = 0; i < mValue.size(); i++) {
				v = mValue[i];
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
	TTSymbol	ramp;
	TTValue		command;
    
    if (mType == kTTSym_string)
        return kTTErrGeneric;
	
	vStepsize = mValueStepsize[0];
	
	switch (inputValue.size()) {
			
			// 1 decrementation step	
		case 1 :
		{
			if (inputValue[0].type() == kTypeFloat64 || inputValue[0].type()  == kTypeInt32) {
				dec = inputValue[0];
				
				for (i = 0; i < mValue.size(); i++) {
					v = mValue[i];
					command.append(v - dec * vStepsize);
				}
			}
			break;
		}
			
			// 1 decrementation step + ramp ramptime
		case 3 :
		{
			if (inputValue[0].type() == kTypeFloat64 || inputValue[0].type()  == kTypeInt32) {
				dec = inputValue[0];
				
				for (i = 0; i < mValue.size(); i++) {
					v = mValue[i];
					command.append(v - dec * vStepsize);
				}
				
				if (inputValue[1].type() == kTypeSymbol) {
					ramp = inputValue[1];
					if (ramp == kTTSym_ramp) {
						command.append(ramp);
						if (inputValue[2].type() == kTypeFloat64 || inputValue[2].type()  == kTypeInt32) {
							ramptime = inputValue[2];
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
			for (i = 0; i < mValue.size(); i++) {
				v = mValue[i];
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
	TTSymbol		unit;
#ifndef TTDATA_NO_RAMPLIB
	double			time;
#endif
	TTValue			v, aValue, c;
	TTErr			err = kTTErrNone;
	
	// 0. Get the command TTDictionnary 
	// or parse any incoming value into a TTDictionnary
	///////////////////////////////////////////////////
	if (commandValue[0].type() == kTypePointer)
		command = TTDictionaryPtr((TTPtr)commandValue[0]);
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
		
		unit = v[0];
		
		if (mDataspaceConverter) {
			TTValue convertedValue;
			
			mDataspaceConverter->setAttributeValue(TTSymbol("inputUnit"), unit);
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
		
		time = v[0];
		
		if (mRamper && time > 0) {
            
            TTUInt16	i, s = aValue.size();
			TTFloat64*	startArray = new TTFloat64[s];		// start to mValue
			TTFloat64*	targetArray = new TTFloat64[s];		// go to convertedValue
			
            // This is a temporary solution to have audio rate ramping outside the TTData
            mExternalRampTime = time;
            
			if(mValue.size() != s)
				mValue.resize(s);
			
			for (i = 0; i < s; i++) {
				startArray[i] = TTFloat64(mValue[i]);
				targetArray[i] = TTFloat64(aValue[i]);
			}
			
			mRamper->set(s, startArray);		
			mRamper->go(s, targetArray, time);
			
			// update the ramp status attribute
			if (mRampStatus != mRamper->isRunning()) {
				mRampStatus = mRamper->isRunning();
				notifyObservers(kTTSym_rampStatus, mRampStatus);
			}
			
			delete [] startArray;
			delete [] targetArray;
			
			return kTTErrNone;
		}
	}
	
	// in any other cases :
	// stop ramping before to set a value
	if (mRamper) {
        
        // This is a temporary solution to have audio rate ramping outside the TTData
        mExternalRampTime = 0;
        
		mRamper->stop();
		
		// update the ramp status attribute
		if (mRampStatus != mRamper->isRunning()) {
			mRampStatus = mRamper->isRunning();
			notifyObservers(kTTSym_rampStatus, mRampStatus);
		}
	}
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
	TTValue		r, n;
	TTString	s;
	
	if (!mIsSending && mActive) {
		
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
		// in string case : change anything to string
		else if (mType == kTTSym_string) {
		
			mValue = value;
			mValue.toString();
			s = TTString(mValue[0]);
			mValue = TTValue(TTSymbol(s));
		}
		else {
			
			// unlock
			mIsSending = NO;
			return kTTErrInvalidValue;
		}
		
		// used new values to protect the attribute
		r = mValue;
		n = mValue;
        
        // This is a temporary solution to have audio rate ramping outside the TTData
        if (mRampDrive == TT("external"))
            if (mExternalRampTime > 0)
                r.append(mExternalRampTime);
        
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
		this->findAttribute(kTTSym_valueDefault, &valueDefaultAttribute);
		this->findAttribute(kTTSym_valueStepsize, &valueStepSizeAttribute);

		mInstanceBounds[0] = TTInt16(0);
		mInstanceBounds[1] = TTInt16(-1);
		
		// register mValue Attribute and prepare memory
		if (mType == kTTSym_integer) {
			valueAttribute->type = kTypeInt32;
			valueDefaultAttribute->type = kTypeInt32;
			valueStepSizeAttribute->type = kTypeInt32;
			mValue = TTValue(0);
			mValueStepsize = TTValue(1);
			mRangeBounds[0] = TTUInt16(0);
			mRangeBounds[1] = TTUInt16(1);
		}
		else if (mType == kTTSym_decimal) {
			valueAttribute->type = kTypeFloat64;
			valueDefaultAttribute->type = kTypeFloat64;
			valueStepSizeAttribute->type = kTypeFloat64;
			mValue = TTValue(0.);
			mValueStepsize = TTValue(0.1);
			mRangeBounds[0] = 0.;
			mRangeBounds[1] = 1.;
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
			mRangeBounds[0] = NO;
			mRangeBounds[1] = YES;
		}
		else if (mType == kTTSym_array) {				// Is this case means something now we have TTValue?
			valueAttribute->type = kTypeFloat64;
			valueDefaultAttribute->type = kTypeFloat64;
			valueStepSizeAttribute->type = kTypeFloat64;
			mValue = TTValue(0.);
			mValueStepsize = TTValue(0.1);
			mRangeBounds[0] = 0.;
			mRangeBounds[1] = 1.;
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

TTErr TTData::setActive(const TTValue& value)
{
	TTValue n = value;				// use new value to protect the attribute
	mActive = value;
	this->notifyObservers(kTTSym_active, n);
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
	vmin = value[0];
	value.get(1, vmax);
	mInstanceBounds[0] = vmin;
	mInstanceBounds[1] = vmax;
	
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
	
	if (mRamper && mRampFunction != kTTSym_none) {
		
		// set the function of the ramper
		mRamper->setAttributeValue(kTTSym_function, mRampFunction);
		
		TTUInt32	i, n;
		TTValue		names;
		TTSymbol	aName;
		
		// Remove former datas
		n = mRampFunctionParameters.size();
		for (i = 0; i < n; i++) {
			aName = mRampFunctionParameters[i];
			this->removeAttribute(aName);
		}
		mRampFunctionParameters.clear();
		
		// cache the function's attribute names
		mRamper->getFunctionParameterNames(names);
		n = names.size();
		
		if (n) {
			for (i = 0; i < n; i++) {
				
				aName = names[i];
				
				if (aName == kTTSym_bypass || aName == kTTSym_mute || aName == kTTSym_maxNumChannels || aName == kTTSym_sampleRate)
					continue;										// don't publish these datas
				
				// extend attribute with the same name
				this->extendAttribute(aName, mRamper->functionUnit, aName);
				
				mRampFunctionParameters.append(aName);
			}
		}
		
		if (mRampFunctionParameters.size() == 0)
			mRampFunctionParameters.append(kTTSym_none);
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
	
	TTObjectInstantiate(TTSymbol("dataspace"),  &mDataspaceConverter, kTTValNONE);
	mDataspaceConverter->setAttributeValue(TTSymbol("dataspace"), mDataspace);
	
	// If there is already a unit defined, then we try to use that
	// Otherwise we use the default (neutral) unit.
	err = kTTErrGeneric;
	if (mDataspaceUnit)
		err = mDataspaceConverter->setAttributeValue(TTSymbol("outputUnit"), mDataspaceUnit);

	if (err) {
		mDataspaceConverter->getAttributeValue(TTSymbol("outputUnit"), v);
		mDataspaceUnit = v[0];
		mDataspaceConverter->setAttributeValue(TTSymbol("outputUnit"), mDataspaceUnit);
	}
	
	this->notifyObservers(kTTSym_dataspace, n);
	return kTTErrNone;
}

TTErr TTData::setDataspaceUnit(const TTValue& value)
{
	TTValue n = value;				// use new value to protect the attribute
	mDataspaceUnit = value;
    
	if (mDataspaceConverter)
		mDataspaceConverter->setAttributeValue(TTSymbol("outputUnit"), mDataspaceUnit);
	
	this->notifyObservers(kTTSym_dataspaceUnit, n);
	return kTTErrNone;
}

TTErr TTData::setDescription(const TTValue& value)
{
    TTValue n = value;				// use new value to protect the attribute
    mDescription = value;
    
    this->notifyObservers(kTTSym_description, n);
	return kTTErrNone;
}

TTErr TTData::setPriority(const TTValue& value)
{
    TTValue n = value;				// use new value to protect the attribute
    mPriority = value;
    
    this->notifyObservers(kTTSym_priority, n);
	return kTTErrNone;
}

TTBoolean TTData::checkType(const TTValue& value)
{
	if (mType == kTTSym_generic || mType == kTTSym_array) return true;
	
	switch (value[0].type()) 
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
				mValue.cliplow(TTFloat64(mRangeBounds[0]));
			else if (mRangeClipmode == kTTSym_high)
				mValue.cliphigh(TTFloat64(mRangeBounds[1]));
			else if (mRangeClipmode == kTTSym_both)
				mValue.clip(TTFloat64(mRangeBounds[0]), TTFloat64(mRangeBounds[1]));
			//else if (mRangeClipmode == kTTSym_wrap)
				;//mValue.clipwrap(TTFloat64(mRangeBounds[0]), TTFloat64(mRangeBounds[1]));
			//else if (mRangeClipmode == kTTSym_fold)
				;//mValue.clipfold(TTFloat64(mRangeBounds[0]), TTFloat64(mRangeBounds[1]));
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
		return mDataspaceConverter->sendMessage(TTSymbol("convert"), inputValue, outputValue);

	return kTTErrNone;
}

TTErr TTData::notifyObservers(TTSymbol attrName, const TTValue& value)
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
	
	aTextHandler = TTTextHandlerPtr((TTPtr)inputValue[0]);
	buffer = aTextHandler->mWriter;
	
	// Type
	*buffer += "\t\t\t<td class =\"instructionType\">";
	*buffer += this->mType.c_str();
	*buffer += "</td>";

	// range/bounds
	toString = this->mRangeBounds;
	toString.toString();
	line = TTString(toString[0]);
	
	if ( (this->mType == kTTSym_integer) || (this->mType == kTTSym_boolean) || (this->mType == kTTSym_decimal) || (this->mType == kTTSym_generic) ) {
		*buffer +="\t\t\t<td class =\"instructionRangeBounds\">";
		*buffer +=line.data();
		*buffer += "</td>";
	}
	else
		*buffer += "\t\t\t<td class = \"instructionRangeBounds\"> N/A </td>";

	// range/clipmode
	*buffer += "\t\t\t<td class =\"instructionRangeClipmode\">";
	*buffer += this->mRangeClipmode.c_str();
	*buffer += "</td>";

#ifndef TTDATA_NO_RAMPLIB
	// ramp/drive
	*buffer += "\t\t\t<td class =\"instructionRampDrive\">";
	*buffer += this->mRampDrive.c_str();
	*buffer += "</td>";
	
	// ramp/function
	*buffer += "\t\t\t<td class =\"instructionRampFunction\">";
	*buffer += this->mRampFunction.c_str();
	*buffer += "</td>";
#endif
	
	// dataspace
	*buffer += "\t\t\t<td class =\"instructionDataspace\">";
	*buffer += this->mDataspace.c_str();
	*buffer += "</td>";
	
	// dataspace/unit/native
	*buffer += "\t\t\t<td class =\"instructionDataspaceUnit\">";
	*buffer += this->mDataspaceUnit.c_str();
	*buffer += "</td>";
	
	// repetitions/allow
	toString = this->mRepetitionsAllow;
	toString.toString();
	line = TTString(toString[0]);
	*buffer += "\t\t\t<td class =\"instructionRepetitionsAllow\">";
	*buffer += line.data();
	*buffer += "</td>";
	
	// description
	*buffer += "\t\t\t<td class =\"instructionDescription\">";
	*buffer += this->mDescription.c_str();
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
	TTUInt32			time;
	TTUInt32			commandSize;
	TTSymbol			unit, ramp;
	TTValue				aValue, c;
	TTBoolean			hasRamp = false;
	TTBoolean			hasUnit = false;
	
	// Parse the command to handle unit and ramp
	///////////////////////////////////////////////////
	commandSize = commandValue.size();
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
			if (commandValue[0].type() != kTypeSymbol && commandValue[1].type() == kTypeSymbol) {
				hasUnit = true;
				unit = commandValue[1];
			}
			
			break;	
		}
			
			// 3 values || 2 values + unit || 1 value + ramp ramptime
		case 3 :
		{
			// Is the second element is a ramp symbol ?
			if (commandValue[1].type() == kTypeSymbol) {
				ramp = commandValue[1];
				if (ramp == kTTSym_ramp)
					hasRamp = true;
			}
			// or is the last element is a unit symbol ?
			else if (commandValue[0].type() != kTypeSymbol && commandValue[2].type() == kTypeSymbol) {
				hasUnit = true;
				commandValue.get(2, unit);
			}
			
			break;	
		}
			
			// X values || X-1 values + unit || X-2 values + ramp ramptime || X-3 values + unit + ramp ramptime
		default :
		{
			// Is the X-2 element is a ramp symbol ?
			if (commandValue[commandSize - 2].type() == kTypeSymbol) {
				ramp = commandValue[commandSize - 2];
				if (ramp == kTTSym_ramp)
					hasRamp = true;
			}
			
			// Is the X-3 or last element a unit symbol ?
			if (commandValue[0].type() != kTypeSymbol) {
				if (hasRamp) {
					if (commandValue[commandSize - 3].type() == kTypeSymbol) {
						hasUnit = true;
						unit = commandValue[commandSize - 3];
					}
					else
						if (commandValue[commandSize - 1].type() == kTypeSymbol) {
							hasUnit = true;
							unit = commandValue[commandSize - 1];
						}
				}
			}
			
			break;	
		}
	}
	
	// 3. Strip ramp or unit informations if needed
	if (hasRamp && hasUnit) {
		aValue = commandValue;
		aValue.resize(commandSize - 3);
	}
	else if (hasRamp) {
		aValue = commandValue;
		aValue.resize(commandSize - 2);
	}
	else if (hasUnit) {
		aValue = commandValue;
		aValue.resize(commandSize - 1);
	}
	else
		aValue = commandValue;
	
	// 4. Edit command
	command->setValue(aValue);
	
	if (hasUnit)
		command->append(kTTSym_unit, unit);
	
	if (hasRamp) {
		time = commandValue[commandSize - 1];
		command->append(kTTSym_ramp, (int)time);
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
	
	rampedValue.resize(n);
	for (i  =0; i < n; i++)
		rampedValue[i] = rampedArray[i];
	
	if (aData->mType == kTTSym_integer)
		rampedValue.truncate();
	
	if (!aData->mRepetitionsAllow)
		if (aData->mValue == rampedValue)
			return;
		
	// set internal value
	aData->setValue(rampedValue);
	
	// update the ramp status attribute
	if (aData->mRampStatus != aData->mRamper->isRunning()) {
		
		aData->mRampStatus = aData->mRamper->isRunning();
		
		// stop the ramp
		if (!aData->mRampStatus)
			aData->mRamper->stop();
		
		aData->notifyObservers(kTTSym_rampStatus, aData->mRampStatus);
	}
}
#endif
