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

TTObjectBasePtr TTData::instantiate (TTSymbol name, TTValue arguments)
{
	return new TTData(arguments);
}


extern "C" void TTData::registerClass()
{
	TTClassRegister(TTSymbol("Data"), thisTTClassTags, TTData::instantiate);
}


TTData::TTData(const TTValue& arguments) :
TTCallback(arguments),
mValue(TTValue(0.0)),
mValueDefault(TTValue(0.0)),
mValueStepsize(TTValue(0.1)),       // this default value is expected in #TTData::setType method
mType(kTTSym_generic),
mTags(TTValue(kTTSym_none)),
mPriority(0),
mDescription(kTTSym_none),
mRepetitionsFilter(NO),
mActive(YES),
mInitialized(NO),
mRangeBounds(0.0, 1.0),             // this default value is expected in #TTData::setType method
mRangeClipmode(kTTSym_none),
mDynamicInstances(NO),
mInstanceBounds(0, -1),
mRampDrive(kTTSym_none),
mRampDriveDefault(TTSymbol("system")),
#ifndef TT_NO_DSP
mRampFunction(kTTSym_none),         // this default value is expected in #TTData::setType method
#endif
mRampStatus(NO),
mDataspace(kTTSym_none),
mDataspaceUnit(kTTSym_none),
mService(kTTSymEmpty)
{
	if (arguments.size() == 1)
		mService = arguments[0];
	
    registerAttribute(kTTSym_value, kTypeNone, NULL, (TTGetterMethod)&TTData::getValue, (TTSetterMethod)&TTData::setGenericValue);
	addAttributeWithGetterAndSetter(ValueDefault, kTypeNone);
	addAttributeWithGetterAndSetter(ValueStepsize, kTypeNone);
	
	addAttributeWithSetter(Type, kTypeSymbol);
	addAttributeWithSetter(Tags, kTypeLocalValue);
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
    addAttribute(RampDriveDefault, kTypeSymbol);
    addAttributeProperty(RampDriveDefault, hidden, YES);
#ifndef TT_NO_DSP    
	addAttributeWithSetter(RampFunction, kTypeSymbol);
#endif
	
	addAttribute(RampFunctionParameters, kTypeLocalValue);
	addAttributeProperty(RampFunctionParameters, readOnly, YES);
	
	addAttribute(RampStatus, kTypeBoolean);
	addAttributeProperty(RampStatus, readOnly, YES);
    addAttributeProperty(RampStatus, hidden, YES);          // hidden for Max
	
	addAttributeWithSetter(Dataspace, kTypeSymbol);
	addAttributeWithSetter(DataspaceUnit, kTypeSymbol);
	
	addAttribute(Service, kTypeSymbol);
	addAttributeProperty(Service, readOnly, YES);
    //addAttributeProperty(Service, hidden, YES);            // we don't hide this attribute to mirror it (even if we want to hide it for Max)
	
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
	mIsOverridingDataspaceUnit = NO;
    
    commandMethod = (TTMethodValue)&TTData::GenericCommand;
    
    // cache some message and attribute for observer notification
    this->findAttribute(kTTSym_value, &valueAttribute);
    this->findAttribute(kTTSym_initialized, &initializedAttribute);
    
    // set no time for external ramp drive
    externalRampTime = 0;
}


TTData::~TTData()
{
    ;
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

TTErr TTData::setTags(const TTValue& value)
{
	TTValue n = value;				// use new value to protect the attribute
	mTags = value;
	this->notifyObservers(kTTSym_tags, n);
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
	vmax = value[1];
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
	
	if (mRampFunction != kTTSym_none && mRamper.valid()) {
		
		// set the function of the ramper
		mRamper.set(kTTSym_function, mRampFunction);
		
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
        TTRampPtr(mRamper.instance())->mFunctionUnit.attributes(names);
		n = names.size();
		
		if (n) {
			for (i = 0; i < n; i++) {
				
				aName = names[i];
				
				if (aName == kTTSym_bypass || aName == kTTSym_mute || aName == kTTSym_maxNumChannels || aName == kTTSym_sampleRate)
					continue;										// don't publish these datas
				
				// extend attribute with the same name
				this->extendAttribute(aName, TTRampPtr(mRamper.instance())->mFunctionUnit.instance(), aName);
				
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
	TTErr   err;
	TTValue v;
	TTValue n = value;				// use new value to protect the attribute
    
	mDataspace = value;
	
	if (!mDataspaceConverter.valid()) {
        mDataspaceConverter = TTObject("dataspace");
		mDataspaceInverseConverter = TTObject("dataspace");
	}
	
	err = mDataspaceConverter.set("dataspace", mDataspace);
	mDataspaceInverseConverter.set("dataspace", mDataspace);
    
    if (err) {
        
        mDataspace = kTTSym_none;
        return err;
    }
	
	// If there is already a unit defined, then we try to use that
    err = mDataspaceConverter.set("outputUnit", mDataspaceUnit);
	mDataspaceInverseConverter.set("inputUnit", mDataspaceUnit);

    // Otherwise we use the default (neutral) unit.
	if (err) {
		mDataspaceConverter.get("outputUnit", v);
		mDataspaceUnit = v[0];
		mDataspaceConverter.set("outputUnit", mDataspaceUnit);
		mDataspaceInverseConverter.set("inputUnit", mDataspaceUnit);
	}
	
	this->notifyObservers(kTTSym_dataspace, n);
	return kTTErrNone;
}


TTErr TTData::setDataspaceUnit(const TTValue& value)
{
	TTValue n = value;				// use new value to protect the attribute
	mDataspaceUnit = value;
    
    if (mDataspaceConverter.valid()) {
        
        mDataspaceConverter.set("outputUnit", mDataspaceUnit);
		mDataspaceInverseConverter.set("inputUnit", mDataspaceUnit);
	
        this->notifyObservers(kTTSym_dataspaceUnit, n);
        return kTTErrNone;
    }
    
    return kTTErrGeneric;
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
    return mRamper.send("Set", inputValue, outputValue);
}


TTErr TTData::RampTarget(const TTValue& inputValue, TTValue& outputValue)
{
    return mRamper.send("Target", inputValue, outputValue);
}


TTErr TTData::RampGo(const TTValue& inputValue, TTValue& outputValue)
{
    return mRamper.send(kTTSym_Go, inputValue, outputValue);
}


TTErr TTData::RampSlide(const TTValue& inputValue, TTValue& outputValue)
{
    return mRamper.send("Slide", inputValue, outputValue);
}


TTErr TTData::rampSetup()
{
    TTValue args;
    
	// 1. destroy the old ramp object
	if (mRamper.valid()) {
		mRamper = TTObject();
        externalRampTime = 0;
	}
	
	// 2. create the new ramp object
	// For some types ramping doesn't make sense, so they will be set to none
	if (mType == kTTSym_none || mType == kTTSym_string || mType == kTTSym_generic)
		mRampDrive = kTTSym_none;
    
	else {
        
        // don't create ramper for external ramp drive
        if (mRampDrive == kTTSym_external || mRampDrive == kTTSym_none)
            return kTTErrNone;
        
        args.append((TTPtr)&TTDataRampCallback);
        args.append((TTPtr)this); // we have to store this as a pointer
        
		mRamper = TTObject("Ramp", args);
        mRamper.set("drive", mRampDrive);
    }
	
#ifndef TT_NO_DSP	
	// 3. reset the ramp function
	return setRampFunction(mRampFunction);
#else
	return kTTErrNone;
#endif
}


TTErr TTData::convertUnit(const TTValue& inputValue, TTValue& outputValue)
{
    return mDataspaceConverter.send("convert", inputValue, outputValue);
}


TTErr TTData::inverseConvertUnit(const TTValue& inputValue, TTValue& outputValue)
{
	return mDataspaceInverseConverter.send("convert", inputValue, outputValue);
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
    TTObject o = inputValue[0];
	TTTextHandlerPtr aTextHandler = (TTTextHandlerPtr)o.instance();
    if (!aTextHandler)
		return kTTErrGeneric;
    
	TTString		*buffer;
	TTValue			toString;
	TTString		line;

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

	// clipmode
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


TTDictionaryBasePtr TTDataParseCommand(const TTValue& commandValue, TTBoolean parseUnitAndRamp)
{
	TTDictionaryBasePtr		command = new TTDictionaryBase();
    
    // don't parse the value, just store it into a dictionary
    // this is useful when unit or ramp doesn't mean anything (e.g. generic case)
    if (!parseUnitAndRamp) {
        
        command->setValue(commandValue);
        command->setSchema(kTTSym_command);
        return command;
    }
    
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
				unit = commandValue[2];
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
    
    // We return a dictionary with one or more keys. It always has a value. If it is ramping, it also has a ramp key, and if it has a unit, it also has a unit key.
	
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
	
	/*******************
	 TL: Commenting out as these processes need to be moved to the typed methods
	 
	// TODO: This need to be moved to the typed method for @type integer
	// Why is it truncated rather than rounded?
	if (aData->mType == kTTSym_integer)
		rampedValue.truncate();
	
	// TODO: This also need to be moved to the typed methods
	if (aData->mRepetitionsFilter)
		if (aData->mValue == rampedValue)
			return;
	 *******************/
    
	// Set internal value - this calls the appropriate typed setter method in TTDataTypedMethods.cpp
	aData->setAttributeValue(kTTSym_value, rampedValue);
    
	// Update the ramp status attribute
    aData->mRamper.get(kTTSym_running, isRunning);
	if (aData->mRampStatus != isRunning) {
        
		aData->mRampStatus = isRunning;
        
		// Stop the ramp
		if (!aData->mRampStatus)
			aData->mRamper.send(kTTSym_Stop);
        
		aData->notifyObservers(kTTSym_rampStatus, aData->mRampStatus);
	}
}
