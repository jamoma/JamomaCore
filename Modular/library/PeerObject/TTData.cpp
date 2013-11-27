/** @file
 *
 * @ingroup modularLibrary
 *
 * @brief A Data Object
 *
 * @details
 *
 * @authors Théo de la Hogue
 *
 * @copyright © 2010, Théo de la Hogue @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#include "TTData.h"

#define thisTTClass			TTData
#define thisTTClassName		"Data"
#define thisTTClassTags		"data"

TT_MODULAR_CONSTRUCTOR,
mValue(TTValue(0.0)),
mValueStepsize(TTValue(0.1)),
mType(kTTSym_generic),
mTag(TTValue(kTTSym_none)),
mPriority(0),
mDescription(kTTSym_none),
mRepetitionsFilter(NO),
mActive(YES),
mInitialized(NO),
mRangeBounds(0.0, 1.0),
mRangeClipmode(kTTSym_none),
mDynamicInstances(NO),
mInstanceBounds(0, -1),
mRampDrive(kTTSym_none),
#ifndef TT_NO_DSP
mRampFunction(kTTSym_none),
#endif
mRampStatus(NO),
mDataspace(kTTSym_none),
mDataspaceUnit(kTTSym_none),
mDataspaceConverter(NULL),
mService(kTTSymEmpty),
mReturnValueCallback(NULL)
{
	TT_ASSERT("Correct number of args to create TTData", arguments.size() == 1);
	
	mReturnValueCallback = TTCallbackPtr((TTObjectBasePtr)arguments[0]);
	TT_ASSERT("Return Value Callback passed to TTData is not NULL", mReturnValueCallback);
	
	if (arguments.size() == 2)
		mService = arguments[1];
	
    registerAttribute(kTTSym_value, kTypeNone, NULL, (TTGetterMethod)&TTData::getValue, (TTSetterMethod)&TTData::setGenericValue);
	addAttributeWithGetterAndSetter(ValueDefault, kTypeNone);
	addAttributeWithGetterAndSetter(ValueStepsize, kTypeNone);
	
	addAttributeWithSetter(Type, kTypeSymbol);
	addAttributeWithSetter(Tag, kTypeLocalValue);
	addAttributeWithSetter(Priority, kTypeInt32);
	addAttributeWithSetter(Description, kTypeSymbol);
	addAttributeWithSetter(RepetitionsFilter, kTypeBoolean);
	
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
	
	addAttributeWithSetter(RampDrive, kTypeSymbol);
#ifndef TT_NO_DSP    
	addAttributeWithSetter(RampFunction, kTypeSymbol);
#endif
	
	addAttribute(RampFunctionParameters, kTypeLocalValue);
	addAttributeProperty(RampFunctionParameters, readOnly, YES);
	
	addAttribute(RampStatus, kTypeBoolean);
	addAttributeProperty(RampStatus, readOnly, YES);
	
	addAttributeWithSetter(Dataspace, kTypeSymbol);
	addAttributeWithSetter(DataspaceUnit, kTypeSymbol);
	
	addAttribute(Service, kTypeSymbol);
	addAttributeProperty(Service, readOnly, YES);
	
    registerMessage(kTTSym_Init, (TTMethod)&TTData::GenericInit, kTTMessagePassNone);
	addMessageWithArguments(Inc);
	addMessageWithArguments(Dec);
    
    addMessageWithArguments(Command);
	addMessageProperty(Command, hidden, YES);
    
    addMessageWithArguments(RampSet);
    addMessageProperty(RampSet, hidden, YES);
    addMessageWithArguments(RampTarget);
    addMessageProperty(RampTarget, hidden, YES);
    addMessageWithArguments(RampGo);
    addMessageProperty(RampGo, hidden, YES);
    addMessageWithArguments(RampSlide);
    addMessageProperty(RampSlide, hidden, YES);
	
	// needed to be handled by a TTTextHandler
	addMessageWithArguments(WriteAsText);
	addMessageProperty(WriteAsText, hidden, YES);
	
	mIsSending = NO;
	
	mRamper = NULL;
    
    commandMethod = (TTMethodValue)&TTData::GenericCommand;
    
    // cache some message and attribute for observer notification
    this->findAttribute(kTTSym_value, &valueAttribute);
    this->findAttribute(kTTSym_initialized, &initializedAttribute);
    
    // set no time for external ramp drive
    externalRampTime = 0;
}

TTData::~TTData()
{
	if (mRamper)
        TTObjectBaseRelease(TTObjectBaseHandle(&mRamper));
	
	if (mDataspaceConverter)
		TTObjectBaseRelease(TTObjectBaseHandle(&mDataspaceConverter));
	
	if (mReturnValueCallback) {
		delete (TTValuePtr)mReturnValueCallback->getBaton();
		TTObjectBaseRelease(TTObjectBaseHandle(&mReturnValueCallback));
	}
}

TTErr TTData::Inc(const TTValue& inputValue, TTValue& outputValue)
{
	TTUInt32	i;
	TTFloat64	inc, ramptime, v, vStepsize;
	TTSymbol	ramp;
	TTValue		command, none;
	
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
	
	this->sendMessage(kTTSym_Command, command, none);
	
	return kTTErrNone;
}

TTErr TTData::Dec(const TTValue& inputValue, TTValue& outputValue)
{
	TTUInt32	i;
	TTFloat64	dec, ramptime, v, vStepsize;
	TTSymbol	ramp;
	TTValue		command, none;
    
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
	
	this->sendMessage(kTTSym_Command, command, none);
	
	return kTTErrNone;
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

TTErr TTData::setTag(const TTValue& value)
{
	TTValue n = value;				// use new value to protect the attribute
	mTag = value;
	this->notifyObservers(kTTSym_tag, n);
	return kTTErrNone;
}

TTErr TTData::setRepetitionsFilter(const TTValue& value)
{
	TTValue n = value;				// use new value to protect the attribute
	mRepetitionsFilter = value;
	this->notifyObservers(kTTSym_repetitionsFilter, n);
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

TTErr TTData::setRampDrive(const TTValue& value)
{
	TTValue n = value;				// use new value to protect the attribute
	mRampDrive = value;
	
	rampSetup();
	
	this->notifyObservers(kTTSym_rampDrive, n);
	return kTTErrNone;
}
#ifndef TT_NO_DSP
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
        TTRampPtr(mRamper)->mFunctionUnit->getAttributeNames(names);
		n = names.size();
		
		if (n) {
			for (i = 0; i < n; i++) {
				
				aName = names[i];
				
				if (aName == kTTSym_bypass || aName == kTTSym_mute || aName == kTTSym_maxNumChannels || aName == kTTSym_sampleRate)
					continue;										// don't publish these datas
				
				// extend attribute with the same name
				this->extendAttribute(aName, TTRampPtr(mRamper)->mFunctionUnit, aName);
				
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
	TTValue v, none;
	TTValue n = value;				// use new value to protect the attribute
	mDataspace = value;
	
	TTObjectBaseInstantiate(TTSymbol("dataspace"),  &mDataspaceConverter, none);
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

TTErr TTData::RampSet(const TTValue& inputValue, TTValue& outputValue)
{
    if (mRamper)
        return mRamper->sendMessage(TTSymbol("Set"), inputValue, outputValue);
    
    return kTTErrGeneric;
}

TTErr TTData::RampTarget(const TTValue& inputValue, TTValue& outputValue)
{
    if (mRamper)
        return mRamper->sendMessage(TTSymbol("Target"), inputValue, outputValue);
    
    return kTTErrGeneric;
}

TTErr TTData::RampGo(const TTValue& inputValue, TTValue& outputValue)
{
    if (mRamper)
        return mRamper->sendMessage(kTTSym_Go, inputValue, outputValue);
    
    return kTTErrGeneric;
}

TTErr TTData::RampSlide(const TTValue& inputValue, TTValue& outputValue)
{
    if (mRamper)
        return mRamper->sendMessage(TTSymbol("Slide"), inputValue, outputValue);
    
    return kTTErrGeneric;
}

TTErr TTData::rampSetup()
{
    TTValue args;
    TTErr   err;
    
	// 1. destroy the old ramp object
	if (mRamper != NULL) {
		TTObjectBaseRelease(TTObjectBaseHandle(&mRamper));
		mRamper = NULL;
        externalRampTime = 0;
	}
	
	// 2. create the new ramp object
	// For some types ramping doesn't make sense, so they will be set to none
	if (mType == kTTSym_none || mType == kTTSym_string || mType == kTTSym_generic)
		mRampDrive = kTTSym_none;
    
	else {
        
        // don't create ramper for external ramp drive
        if (mRampDrive == kTTSym_external)
            return kTTErrNone;
        
        // TODO : move this very Max specific thing else where
        // (but it is not a problem if the Max plugin is not available)
        if (mRampDrive == kTTSym_none)
            mRampDrive = TTSymbol("Max");
        
        args.append((TTPtr)&TTDataRampCallback);
        args.append((TTPtr)this); // we have to store this as a pointer
        
		err = TTObjectBaseInstantiate(TTSymbol("Ramp"), TTObjectBaseHandle(&mRamper), args);
        
        if (!err)
            mRamper->setAttributeValue(TTSymbol("scheduler"), mRampDrive);
        else
            mRamper = NULL;
    }
	
	if (mRamper == NULL)
		return kTTErrGeneric;
#ifndef TT_NO_DSP	
	// 3. reset the ramp function
	setRampFunction(mRampFunction);
#endif
	return kTTErrNone;	
}

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
	
	aTextHandler = TTTextHandlerPtr((TTObjectBasePtr)inputValue[0]);
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
    
	// ramp/drive
	*buffer += "\t\t\t<td class =\"instructionRampDrive\">";
	*buffer += this->mRampDrive.c_str();
	*buffer += "</td>";
#ifndef TT_NO_DSP	
	// ramp/function
	*buffer += "\t\t\t<td class =\"instructionRampFunction\">";
	*buffer += this->mRampFunction.c_str();
	*buffer += "</td>";
#endif
	// dataspace
	*buffer += "\t\t\t<td class =\"instructionDataspace\">";
	*buffer += this->mDataspace.c_str();
	*buffer += "</td>";
	
	// dataspace/unit
	*buffer += "\t\t\t<td class =\"instructionDataspaceUnit\">";
	*buffer += this->mDataspaceUnit.c_str();
	*buffer += "</td>";
	
	// repetitions/filter
	toString = this->mRepetitionsFilter;
	toString.toString();
	line = TTString(toString[0]);
	*buffer += "\t\t\t<td class =\"instructionRepetitionsFilter\">";
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

TTDictionaryBasePtr TTDataParseCommand(const TTValue& commandValue)
{
	TTDictionaryBasePtr		command = new TTDictionaryBase();
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
				}
                else if (commandValue[commandSize - 1].type() == kTypeSymbol) {
                    
                    // only if all values before are numerical
                    TTBoolean numerical = YES;
                    for (TTUInt32 i = 0; i < commandSize - 1; i++)
                        numerical &= commandValue[i].type() != kTypeSymbol;
                    
                    if (numerical) {
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
	if (hasUnit)
		command->append(kTTSym_unit, unit);
	
	if (hasRamp) {
        
        // any other case it is a ramp time
        time = commandValue[commandSize - 1];
        command->append(kTTSym_ramp, (int)time);
	}
	
    command->setValue(aValue);
	command->setSchema(kTTSym_command);
	
	return command;
}

void TTDataRampCallback(void *o, TTUInt32 n, TTFloat64 *rampedArray)
{
	TTDataPtr	aData = (TTDataPtr)o;
	TTValue		rampedValue;
    TTBoolean   isRunning;
	TTUInt16	i;
    
	rampedValue.resize(n);
	for (i = 0; i <  n; i++)
		rampedValue[i] = rampedArray[i];
    
	if (aData->mType == kTTSym_integer)
		rampedValue.truncate();
    
	if (aData->mRepetitionsFilter)
		if (aData->mValue == rampedValue)
			return;
    
	// set internal value
	aData->setAttributeValue(kTTSym_value, rampedValue);
    
	// update the ramp status attribute
    aData->mRamper->getAttributeValue(TTSymbol("running"), isRunning);
	if (aData->mRampStatus != isRunning) {
        
		aData->mRampStatus = isRunning;
        
		// stop the ramp
		if (!aData->mRampStatus)
			aData->mRamper->sendMessage(kTTSym_Stop);
        
		aData->notifyObservers(kTTSym_rampStatus, aData->mRampStatus);
	}
}
