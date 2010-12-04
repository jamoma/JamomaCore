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
mValueDefault(TTValue(0.0)),
mValueStepsize(TTValue(0.0)),
mType(kTTSym_generic),
mPriority(0),
mDescription(kTTSymEmpty),
mRepetitionsAllow(YES),
mReadonly(NO),
mInitialized(NO),
mRangeBounds(0.0, 1.0),
mRangeClipmode(kTTSym_none),
#ifdef TTDATA_RAMPLIB
mRampDrive(kTTSym_none),
mRampFunction(kTTSymEmpty),
#endif
mDataspace(kTTSym_none),
mDataspaceUnitNative(kTTSym_none),
mDataspaceUnitActive(kTTSym_none),
mDataspaceUnitDisplay(kTTSym_none),
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
	addAttributeWithSetter(ValueStepsize, kTypeFloat32);
	
	addAttributeWithSetter(Type, kTypeSymbol);
	addAttribute(Priority, kTypeUInt8);
	addAttribute(Description, kTypeSymbol);
	addAttributeWithSetter(RepetitionsAllow, kTypeBoolean);
	addAttributeWithSetter(Readonly, kTypeBoolean);
	
	addAttribute(Initialized, kTypeBoolean);
	addAttributeProperty(initialized, readOnly, YES);
	addAttributeProperty(initialized, hidden, YES);
	
	addAttributeWithSetter(RangeBounds, kTypeLocalValue);
	addAttributeWithSetter(RangeClipmode, kTypeSymbol);
	
#ifdef TTDATA_RAMPLIB
	addAttributeWithSetter(RampDrive, kTypeSymbol);
	addAttributeWithSetter(RampFunction, kTypeSymbol);
#endif
	
	addAttributeWithSetter(Dataspace, kTypeSymbol);
	addAttributeWithSetter(DataspaceUnitNative, kTypeSymbol);
	addAttributeWithSetter(DataspaceUnitActive, kTypeSymbol);
	addAttributeWithSetter(DataspaceUnitDisplay, kTypeSymbol);
	
	addAttribute(Service, kTypeSymbol);
	addAttributeProperty(service, hidden, YES);
	
	addMessage(Reset);
	addMessageWithArgument(Inc);
	addMessageWithArgument(Dec);
	addMessageWithArgument(Command);
	addMessageProperty(Command, hidden, YES);
	
	// needed to be handled by a TTTextHandler
	addMessageWithArgument(WriteAsText);
	addMessageProperty(WriteAsText, hidden, YES);
	
	mIsSending = NO;
	
#ifdef TTDATA_RAMPLIB
	mRamper = NULL;
	mRampDataNames = new TTHash();
#endif
	dataspace_active2native	= NULL;
	dataspace_override2active = NULL;
	dataspace_active2display = NULL;
	dataspace_display2active = NULL;
}

TTData::~TTData()
{
#ifdef TTDATA_RAMPLIB	
	if (mRamper)
		TTObjectRelease(TTObjectHandle(&mRamper));
#endif
	
	if (mReturnValueCallback)
		TTObjectRelease(TTObjectHandle(&mReturnValueCallback));
}

TTErr TTData::Reset()
{
	// if valueDefault type is right
	if (checkType(mValueDefault))
		setValue(mValueDefault);
	
	// Set data to be uninitialised
	// to circumvent filtering of repetitions when outputing value from default preset
	mInitialized = NO;
	notifyObservers(kTTSym_initialized, NO);
	
	return kTTErrNone;
}

TTErr TTData::Inc(const TTValue& value)
{
	TTUInt32	i;
	TTFloat64	inc, ramptime, v;
	TTSymbolPtr	ramp;
	TTValue		command;
	
	switch (value.getSize()) {
			
			// 1 incrementation step	
		case 1 :
		{
			if (value.getType(0) == kTypeFloat32 || value.getType(0)  == kTypeInt32) {
				value.get(0, inc);
				
				for (i=0; i<mValue.getSize(); i++) {
					mValue.get(i, v);
					command.append(v + inc * mValueStepsize);
				}
			}
			break;
		}
			
			// 1 incrementation step + ramp ramptime
		case 3 :
		{
			if (value.getType(0) == kTypeFloat32 || value.getType(0)  == kTypeInt32) {
				value.get(0, inc);
				
				for (i=0; i<mValue.getSize(); i++) {
					mValue.get(i, v);
					command.append(v + inc * mValueStepsize);
				}
				
				if (value.getType(1) == kTypeSymbol) {
					value.get(1, &ramp);
					if (ramp == kTTSym_ramp) {
						command.append(ramp);
						if (value.getType(2) == kTypeFloat32 || value.getType(2)  == kTypeInt32) {
							value.get(2, ramptime);
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
				command.append(v + mValueStepsize);
			}
			
			break;	
		}
	}
	
	this->Command(command);
	
	return kTTErrNone;
}

TTErr TTData::Dec(const TTValue& value)
{
	TTUInt32	i;
	TTFloat64	dec, ramptime, v;
	TTSymbolPtr	ramp;
	TTValue		command;
	
	switch (value.getSize()) {
			
			// 1 decrementation step	
		case 1 :
		{
			if (value.getType(0) == kTypeFloat32 || value.getType(0)  == kTypeInt32) {
				value.get(0, dec);
				
				for (i=0; i<mValue.getSize(); i++) {
					mValue.get(i, v);
					command.append(v - dec * mValueStepsize);
				}
			}
			break;
		}
			
			// 1 decrementation step + ramp ramptime
		case 3 :
		{
			if (value.getType(0) == kTypeFloat32 || value.getType(0)  == kTypeInt32) {
				value.get(0, dec);
				
				for (i=0; i<mValue.getSize(); i++) {
					mValue.get(i, v);
					command.append(v - dec * mValueStepsize);
				}
				
				if (value.getType(1) == kTypeSymbol) {
					value.get(1, &ramp);
					if (ramp == kTTSym_ramp) {
						command.append(ramp);
						if (value.getType(2) == kTypeFloat32 || value.getType(2)  == kTypeInt32) {
							value.get(2, ramptime);
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
				command.append(v - mValueStepsize);
			}
			
			break;	
		}
	}
	
	this->Command(command);
	
	return kTTErrNone;
}

TTErr TTData::Command(const TTValue& command)
{
#ifdef TTDATA_RAMPLIB
	double		time;
#endif
	int			commandSize;
	TTSymbolPtr	first, unit, ramp;
	TTValue		aValue, convertedValue;
	bool		hasRamp = false;
	bool		hasUnit = false;
	
	// 1. Parse the command to handle Attributes
	//////////////////////////////////////////////////
	if (command.getType(0) == kTypeSymbol) {
		command.get(0, &first);
		char*	c = (char*)strrchr(first->getCString(), ':');
		if (c) {
			// TODO
			//if (param_handleProperty(x, msg, argc, argv))
			// return kTTErrGeneric;
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
				command.get(commandSize - 2, &ramp);
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
#ifdef TTDATA_RAMPLIB
	if (hasRamp) {
		
		command.get(commandSize - 1, time);

		if (time <= 0) {
			setValue(convertedValue);
			return kTTErrNone;
		}	
		
		if (!mRepetitionsAllow && mInitialized) {
			
			// float to integer case
			if (mType == kTTSym_integer)
				convertedValue.truncate();
			
			// integer/float to boolean case
			if (mType == kTTSym_boolean)
				convertedValue.booleanize();
			
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
#endif
		// check repetitions
		if (!mRepetitionsAllow && mInitialized) {
			
			// float to integer case
			if (mType == kTTSym_integer)
				convertedValue.truncate();
			
			// integer/float to boolean case
			if (mType == kTTSym_boolean)
				convertedValue.booleanize();
			
			if (mValue == convertedValue)
				return kTTErrNone;	// nothing to do
		}
		
		setValue(convertedValue);
		
#ifdef TTDATA_RAMPLIB
	}
#endif
	
	return kTTErrNone;
}

TTErr TTData::getValue(TTValue& value)
{
	value = mValue;
	return kTTErrNone;
}

TTErr TTData::setValue(const TTValue& value)
{
	TTValue r, n;
	
	if (!mIsSending) {
		
		// lock
		mIsSending = YES;
		
		// a kTTValNONE would only return the actual value
		if (value == kTTValNONE) {
			
			// if mType is 'none' we have had our value set at least once
			if (mService == kTTSym_parameter && mType == kTTSym_none && !mInitialized) {
				mInitialized = YES;
				notifyObservers(kTTSym_initialized, YES);
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
			
#ifdef TTDATA_RAMPLIB
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
			this->mReturnValueCallback->notify(r);
		
		// notify each observers
		if (!(mService == kTTSym_message))
			notifyObservers(kTTSym_value, n);
		
		// we have had our value set at least once
		// only parameters notify their initialisation
		if (mService == kTTSym_parameter && !mInitialized) {
			mInitialized = YES;
			notifyObservers(kTTSym_initialized, YES);
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
	notifyObservers(kTTSym_valueDefault, n);
	return kTTErrNone;
}

TTErr TTData::setValueStepsize(const TTValue& value)
{
	TTValue n = value;				// use new value to protect the attribute
	mValueStepsize = value;
	notifyObservers(kTTSym_valueStepsize, n);
	return kTTErrNone;
}

TTErr TTData::setType(const TTValue& value)
{
	TTAttributePtr valueAttribute, valueDefaultAttribute;
	// if the new type is different
	if (!(TTValue(mType) == value)) {
		
		TTValue n = value;				// use new value to protect the attribute
		mType = value;
		
		// Get Value and ValueDefault attributes
		this->findAttribute(kTTSym_value, &valueAttribute);
		this->findAttribute(kTTSym_value, &valueDefaultAttribute);

		// register mValue Attribute and prepare memory
		if (mType == kTTSym_integer) {
			valueAttribute->type = kTypeInt32;
			valueDefaultAttribute->type = kTypeInt32;
			mValue = TTValue(0);
			mValueDefault = TTValue(0);
			mValueStepsize = TTValue(1);
			mRangeBounds.set(0, TTUInt16(0));
			mRangeBounds.set(1, TTUInt16(1));
		}
		else if (mType == kTTSym_decimal) {
			valueAttribute->type = kTypeFloat64;
			valueDefaultAttribute->type = kTypeFloat64;
			mValue = TTValue(0.);
			mValueDefault = TTValue(0.);
			mValueStepsize = TTValue(0.1);
			mRangeBounds.set(0, 0.);
			mRangeBounds.set(1, 1.);
		}
		else if (mType == kTTSym_string) {
			valueAttribute->type = kTypeSymbol;
			valueDefaultAttribute->type = kTypeSymbol;
			mValue = TTValue(kTTSymEmpty);
			mValueDefault = TTValue(kTTSymEmpty);
			mRangeBounds = kTTValNONE;
		}
		else if (mType == kTTSym_boolean) {
			valueAttribute->type = kTypeBoolean;
			valueDefaultAttribute->type = kTypeBoolean;
			mValue = TTValue(NO);
			mValueDefault = TTValue(NO);
			mRangeBounds.set(0, NO);
			mRangeBounds.set(1, YES);
		}
		else if (mType == kTTSym_array) {				// Is this case means something now we have TTValue?
			valueAttribute->type = kTypeFloat64;
			valueDefaultAttribute->type = kTypeFloat64;
			mValue = TTValue(0.);
			mValueDefault = TTValue(0.);
			mRangeBounds.set(0, 0.);
			mRangeBounds.set(1, 1.);
		}
	//#ifdef JMOD_MESSAGE
		else if (mType == kTTSym_none) {
			valueAttribute->type = kTypeNone;
			valueDefaultAttribute->type = kTypeNone;
			mValue = kTTValNONE;
			mValueDefault = kTTValNONE;
			mRangeBounds = kTTValNONE;
		}
	//#endif // JMOD_MESSAGE
		else {
			valueAttribute->type = kTypeFloat64;
			valueDefaultAttribute->type = kTypeFloat64;
			mType = kTTSym_generic;						// Is this case means something now we have TTValue ?
			mValue = TTValue(0.);
			mValueDefault = TTValue(0.);
			mRangeBounds = TTValue(0., 1.);
			return kTTErrGeneric;
		}

#ifdef TTDATA_RAMPLIB
		rampSetup();
#endif
		
		notifyObservers(kTTSym_type, n);
	}
	return kTTErrNone;
}

TTErr TTData::setRepetitionsAllow(const TTValue& value)
{
	TTValue n = value;				// use new value to protect the attribute
	mRepetitionsAllow = value;
	notifyObservers(kTTSym_repetitionsAllow, n);
	return kTTErrNone;
}

TTErr TTData::setReadonly(const TTValue& value)
{
	TTValue n = value;				// use new value to protect the attribute
	mReadonly = value;
	notifyObservers(kTTSym_readonly, n);
	return kTTErrNone;
}

TTErr TTData::setRangeBounds(const TTValue& value)
{	
	TTValue n;				// use new value to protect the attribute
	mRangeBounds = value;
	
	if (mType == kTTSym_integer)
		mRangeBounds.truncate();
	
	n = mRangeBounds;
	
	notifyObservers(kTTSym_rangeBounds, n);
	return kTTErrNone;
}

TTErr TTData::setRangeClipmode(const TTValue& value)
{
	TTValue n = value;				// use new value to protect the attribute
	mRangeClipmode = value;
	notifyObservers(kTTSym_rangeClipmode, n);
	return kTTErrNone;
}

#ifdef TTDATA_RAMPLIB
TTErr TTData::setRampDrive(const TTValue& value)
{
	TTValue n = value;				// use new value to protect the attribute
	mRampDrive = value;
	
	rampSetup();
	
	notifyObservers(kTTSym_rampDrive, n);
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
				nameString = aName->getString();
				
				if (aName == kTTSym_bypass || aName == kTTSym_mute || aName == kTTSym_maxNumChannels || aName == kTTSym_sampleRate)
					continue;										// don't publish these datas
				
				if (nameString[0] > 64 && nameString[0] < 91) {		// ignore all params not starting with upper-case
					nameString[0] += 32;							// convert first letter to lower-case for Max
					
					TTValuePtr v = new TTValue(aName);
					mRampDataNames->append(TT(nameString.c_str()), *v);
				}
			}
	}
	
	notifyObservers(kTTSym_rampFunction, n);
	return kTTErrNone;
}
#endif

TTErr TTData::setDataspace(const TTValue& value)
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

	notifyObservers(kTTSym_dataspace, n);
	return kTTErrNone;
}

TTErr TTData::setDataspaceUnitNative(const TTValue& value)
{
	TTValue n = value;				// use new value to protect the attribute
	mDataspaceUnitNative = value;
	if (dataspace_active2native)
		dataspace_active2native->setOutputUnit(mDataspaceUnitNative);
	
	notifyObservers(kTTSym_dataspaceUnitNative, n);
	return kTTErrNone;
}

TTErr TTData::setDataspaceUnitActive(const TTValue& value)
{	
	TTValue n = value;				// use new value to protect the attribute
	mDataspaceUnitActive = value;
	
	if (dataspace_active2native)
		dataspace_active2native->setInputUnit(mDataspaceUnitActive);
	
	if (dataspace_active2display)
		dataspace_active2display->setInputUnit(mDataspaceUnitActive);
	
	if (dataspace_display2active)
		dataspace_display2active->setOutputUnit(mDataspaceUnitActive);
	
	notifyObservers(kTTSym_dataspaceUnitActive, n);
	return kTTErrNone;
}

TTErr TTData::setDataspaceUnitDisplay(const TTValue& value)
{
	TTValue n = value;				// use new value to protect the attribute
	mDataspaceUnitDisplay = value;
	
	if (dataspace_active2display)
		dataspace_active2display->setOutputUnit(mDataspaceUnitDisplay);
	
	if (dataspace_display2active)
		dataspace_display2active->setInputUnit(mDataspaceUnitDisplay);
	
	notifyObservers(kTTSym_dataspaceUnitDisplay, n);
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

#ifdef TTDATA_RAMPLIB
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

TTErr TTData::convertUnit(const TTValue& inValue, TTValue& outValue)
{
	if (mDataspace && dataspace_active2native && (mDataspaceUnitActive != mDataspaceUnitNative))
		dataspace_active2native->convert(inValue, outValue);
	else
		outValue = inValue;
	
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

TTErr TTData::WriteAsText(const TTValue& value)
{
	TTTextHandlerPtr aTextHandler;
	ofstream		*file;
	TTValue			toString;
	TTString		line;
	
	value.get(0, (TTPtr*)&aTextHandler);
	file = aTextHandler->mWriter;
	
	// Type
	*file << "\t\t\t<td class =\"instructionType\">" << this->mType->getCString() <<  "</td>";

	// range/bounds
	toString = this->mRangeBounds;
	toString.toString();
	toString.get(0, line);
	
	if ( (this->mType == kTTSym_integer) || (this->mType == kTTSym_boolean) || (this->mType == kTTSym_decimal) || (this->mType == kTTSym_generic) )
		*file << "\t\t\t<td class =\"instructionRangeBounds\">" << line.data() << "</td>";
	else
		*file << "\t\t\t<td class = \"instructionRangeBounds\"> N/A </td>";

	// range/clipmode
	*file << "\t\t\t<td class =\"instructionRangeClipmode\">" << this->mRangeClipmode->getCString() << "</td>";

#ifdef TTDATA_RAMPLIB
	// ramp/drive
	*file << "\t\t\t<td class =\"instructionRampDrive\">" << this->mRampDrive->getCString() << "</td>";
	
	// ramp/function
	*file << "\t\t\t<td class =\"instructionRampFunction\">" << this->mRampFunction->getCString() << "</td>";
#endif
	
	// dataspace
	*file << "\t\t\t<td class =\"instructionDataspace\">" << this->mDataspace->getCString() << "</td>";
	
	// dataspace/unit/native
	*file << "\t\t\t<td class =\"instructionDataspaceUnitNative\">" << this->mDataspaceUnitNative->getCString() << "</td>";
	
	// repetitions/allow
	toString = this->mRepetitionsAllow;
	toString.toString();
	toString.get(0, line);
	*file << "\t\t\t<td class =\"instructionRepetitionsAllow\">" << line.data() << "</td>";
	
	// description
	*file << "\t\t\t<td class =\"instructionDescription\">" << this->mDescription->getCString() << "</td>";
	return kTTErrNone;
}

#if 0
#pragma mark -
#pragma mark Some Methods
#endif

#ifdef TTDATA_RAMPLIB
void TTDataRampUnitCallback(void *o, TTUInt32 n, TTFloat64 *rampedArray)
{
	TTDataPtr	aData = (TTDataPtr)o;
	TTValue			rampedValue;
	TTUInt16		i;
	
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
