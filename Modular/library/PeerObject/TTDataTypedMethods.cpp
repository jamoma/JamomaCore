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

TTErr TTData::setType(const TTValue& value)
{
    TTMessagePtr    initMessage;
	TTAttributePtr  valueDefaultAttribute, valueStepSizeAttribute;
    
	// if the new type is different
	if (!(TTValue(mType) == value)) {
		
		TTValue n = value;				// use new value to protect the attribute
		mType = value;
		
		// Get ValueDefault and ValueStepsize attributes (because commande message and value attribute are already cached)
        this->findMessage(kTTSym_Init, &initMessage);
		this->findAttribute(kTTSym_valueDefault, &valueDefaultAttribute);
		this->findAttribute(kTTSym_valueStepsize, &valueStepSizeAttribute);
        
		mInstanceBounds.set(0, TTInt16(0));
		mInstanceBounds.set(1, TTInt16(-1));
		
		// register mValue Attribute and prepare memory
        // We establish the behavior of TTData based on the attribute type. We do this by setting a funciton pointer that depends on the type.
		if (mType == kTTSym_integer) {
            commandMethod = (TTMethodValue)&TTData::IntegerCommand;
            initMessage->method = (TTMethod)&TTData::IntegerInit;
			valueAttribute->type = kTypeInt32;
            valueAttribute->setter = (TTSetterMethod)&TTData::setIntegerValue;
			valueDefaultAttribute->type = kTypeInt32;
			valueStepSizeAttribute->type = kTypeInt32;
			mValue = TTValue(0);
            mValueDefault = TTValue(0);
            
            // if mValueStepsize still equals to the value passed in constructor
            if (mValueStepsize == TTValue(0.1))
                mValueStepsize = TTValue(1);
            
            // if mRangeBounds still equals to the value passed in constructor
            if (mRangeBounds == TTValue(0.0, 1.0)) {
                mRangeBounds.set(0, TTUInt16(0));
                mRangeBounds.set(1, TTUInt16(1));
            }
            
            // if mRampDrive still equals to the value passed in constructor
            if (mRampDrive == kTTSym_none)
                mRampDrive = TTSymbol("max");   // TODO : move this very Max specific thing else where
		}
		else if (mType == kTTSym_decimal) {
            commandMethod = (TTMethodValue)&TTData::DecimalCommand;
            initMessage->method = (TTMethod)&TTData::DecimalInit;
			valueAttribute->type = kTypeFloat64;
            valueAttribute->setter = (TTSetterMethod)&TTData::setDecimalValue;
			valueDefaultAttribute->type = kTypeFloat64;
			valueStepSizeAttribute->type = kTypeFloat64;
			mValue = TTValue(0.);
            mValueDefault = TTValue(0.);
			
            // don't reset mValueStepsize as the default values is equals to the value passed in constructor
            
			// don't reset mRangeBounds as the default values is equals to the value passed in constructor
            
            // if mRampDrive still equals to the value passed in constructor
            if (mRampDrive == kTTSym_none)
                mRampDrive = TTSymbol("max");   // TODO : move this very Max specific thing else where
		}
		else if (mType == kTTSym_string) {
            commandMethod = (TTMethodValue)&TTData::StringCommand;
            initMessage->method = (TTMethod)&TTData::StringInit;
			valueAttribute->type = kTypeSymbol;
            valueAttribute->setter = (TTSetterMethod)&TTData::setStringValue;
			valueDefaultAttribute->type = kTypeSymbol;
			valueStepSizeAttribute->type = kTypeSymbol;
			mValue = TTValue(kTTSymEmpty);
            mValueDefault = TTValue(kTTSymEmpty);
            
            // if mValueStepsize still equals to the value passed in constructor
            if (mValueStepsize == TTValue(0.1))
                mValueStepsize.clear();
            
            // if mRangeBounds still equals to the value passed in constructor
            if (mRangeBounds == TTValue(0.0, 1.0))
                mRangeBounds.clear();
            
            mRampDrive = kTTSym_none;
		}
		else if (mType == kTTSym_boolean) {
            commandMethod = (TTMethodValue)&TTData::BooleanCommand;
            initMessage->method = (TTMethod)&TTData::BooleanInit;
			valueAttribute->type = kTypeBoolean;
            valueAttribute->setter = (TTSetterMethod)&TTData::setBooleanValue;
			valueDefaultAttribute->type = kTypeBoolean;
			valueStepSizeAttribute->type = kTypeBoolean;
			mValue = TTValue(NO);
            mValueDefault = TTValue(NO);
            
            // if mValueStepsize still equals to the value passed in constructor
            if (mValueStepsize == TTValue(0.1))
                mValueStepsize = TTValue(YES);
            
            // if mRangeBounds still equals to the value passed in constructor
            if (mRangeBounds == TTValue(0.0, 1.0)) {
                mRangeBounds.set(0, NO);
                mRangeBounds.set(1, YES);
            }
            
            mRampDrive = kTTSym_none;
		}
		else if (mType == kTTSym_array) {
            commandMethod = (TTMethodValue)&TTData::ArrayCommand;
            initMessage->method = (TTMethod)&TTData::ArrayInit;
			valueAttribute->type = kTypeFloat64;
            valueAttribute->setter = (TTSetterMethod)&TTData::setArrayValue;
			valueDefaultAttribute->type = kTypeFloat64;
			valueStepSizeAttribute->type = kTypeFloat64;
			mValue = TTValue(0.);
            mValueDefault = TTValue(0.);
            
			// don't reset mValueStepsize as the default values is equals to the value passed in constructor
			
            // don't reset mRangeBounds as the default values is equals to the value passed in constructor
            
            // if mRampDrive still equals to the value passed in constructor
            if (mRampDrive == kTTSym_none)
                mRampDrive = TTSymbol("max");   // TODO : move this very Max specific thing else where
		}
		else if (mType == kTTSym_none) {
            commandMethod = (TTMethodValue)&TTData::NoneCommand;
            initMessage->method = (TTMethod)&TTData::NoneInit;
			valueAttribute->type = kTypeNone;
            valueAttribute->setter = (TTSetterMethod)&TTData::setNoneValue;
			valueDefaultAttribute->type = kTypeNone;
			valueStepSizeAttribute->type = kTypeNone;
			mValue.clear();
            mValueDefault.clear();
            
            // if mValueStepsize still equals to the value passed in constructor
            if (mValueStepsize == TTValue(0.1))
                mValueStepsize.clear();
            
			// if mRangeBounds still equals to the value passed in constructor
            if (mRangeBounds == TTValue(0.0, 1.0))
                mRangeBounds.clear();
            
            mRampDrive = kTTSym_none;
		}
		else {
            commandMethod = (TTMethodValue)&TTData::GenericCommand;
            initMessage->method = (TTMethod)&TTData::GenericInit;
			valueAttribute->type = kTypeFloat64;
            valueAttribute->setter = (TTSetterMethod)&TTData::setGenericValue;
			valueDefaultAttribute->type = kTypeFloat64;
			valueStepSizeAttribute->type = kTypeFloat64;
			mType = kTTSym_generic;
			mValue = TTValue(0.);
            mValueDefault = TTValue(0.);
            
			// don't reset mValueStepsize as the default values is equals to the value passed in constructor
			
            // don't reset mRangeBounds as the default values is equals to the value passed in constructor
            
            mRampDrive = kTTSym_none;
			return kTTErrGeneric;
		}
        
        // TODO : move this very Max specific thing else where
        if (mRampDrive == TTSymbol("max"))
            if (ttEnvironment->isClassRegistered("max"))
                mRampDrive = TTSymbol("system");
        
		rampSetup();
		
		this->notifyObservers(kTTSym_type, n);
	}
	return kTTErrNone;
}

TTErr TTData::Command(const TTValue& inputValue, TTValue& outputValue)
{
    externalRampTime = 0;
    
    // Is the command already parsed ?
    if (inputValue.size()) {
        
        if (inputValue[0].type() == kTypePointer)
            
            // call the specific command method depending on mType
            return (this->*commandMethod)(inputValue, outputValue);
    }
    
    // else we parse command locally (and we need to free the parsed command afterwards)
    TTDictionaryBasePtr command = NULL;
    TTErr           err;

    // for string type : keep only the first element
    if (mType == kTTSym_string && inputValue.size())
        command = TTDataParseCommand(inputValue[0], NO);
    
    // for integer, decimal or array type : parse unit and ramp
    else
        command = TTDataParseCommand(inputValue, mType == kTTSym_integer || mType == kTTSym_decimal || mType == kTTSym_array);
    
    if (!command)
        return kTTErrGeneric;
    
    // call the specific command method depending on mType
    err = (this->*commandMethod)((TTPtr)command, outputValue);
    
    // free the command
    delete command;
    
    return err;
}

TTBoolean TTData::clipValue()
{
	//bool	didClipAll = false;
	
	// the code regarding didClipAll is supposed to return true when every member of the list has been clipped to its limit
	// that way ramping can be terminated prematurely if it was trying to ramp to something out of range
	// however, this code as it is doesn't work, and it doesn't buy us much anyway
	// so I'm just commenting it out for the time being [TAP]
	
	if (mRangeClipmode != kTTSym_none) {
		
		if (mRangeClipmode == kTTSym_low)
			mValue.cliplow(TTFloat64(mRangeBounds[0]));
		else if (mRangeClipmode == kTTSym_high)
			mValue.cliphigh(TTFloat64(mRangeBounds[1]));
		else if (mRangeClipmode == kTTSym_both)
			mValue.clip(TTFloat64(mRangeBounds[0]), TTFloat64(mRangeBounds[1]));
		else if (mRangeClipmode == kTTSym_wrap)
			mValue = TTInfWrap(TTFloat64(mValue), TTFloat64(mRangeBounds[0]), TTFloat64(mRangeBounds[1]));
		//else if (mRangeClipmode == kTTSym_wrap)
            //mValue.clipwrap(TTFloat64(mRangeBounds[0]), TTFloat64(mRangeBounds[1]));
		else if (mRangeClipmode == kTTSym_fold)
			mValue = TTFold(TTFloat64(mValue), TTFloat64(mRangeBounds[0]), TTFloat64(mRangeBounds[1]));
	}
	
	return false;
}

TTErr TTData::returnValue()
{
    // used a new value to protect the internal value
    TTValue v = mValue;
	
    
    // This is a temporary solution to have audio rate ramping outside the #TTData
    // TODO JamomaCore #212 : when Trond ports dataspace ramp we need to think about how that works with audio rate ramps
    if (mRampDrive == kTTSym_external) {
        
        if (externalRampTime > 0)
            v.append(externalRampTime);
    }
    
    // we have had our value set at least once
    // only parameters notify their initialisation
    if (mService == kTTSym_parameter && !mInitialized) {
        mInitialized = YES;
        initializedAttribute->sendNotification(kTTSym_notify, YES);	// we use kTTSym_notify because we know that observers are TTCallback
    }
    else if (!mInitialized)
        mInitialized = YES;
    
    // return the value to his owner
    this->deliver(v);
    
    // notify each observers
    valueAttribute->sendNotification(kTTSym_notify, v);             // we use kTTSym_notify because we know that observers are TTCallback
    
    return kTTErrNone;
}

TTErr TTData::NoneCommand(const TTValue& inputValue, TTValue& outputValue)
{
    TTValue none;
    return this->setNoneValue(none);
}

TTErr TTData::setNoneValue(const TTValue& value)
{   
    if (!mIsSending && mActive) {
		
        // lock
		mIsSending = YES;
        
        // we have had our value set at least once
        if (mService == kTTSym_parameter && !mInitialized) {
            mInitialized = YES;
            initializedAttribute->sendNotification(kTTSym_notify, YES);
        }
       
        // return the internal value
        returnValue();
		
		// unlock
		mIsSending = NO;
		
		return kTTErrNone;
	}

	return kTTErrGeneric;
}

TTErr TTData::NoneInit()
{
    // the value is not initialized
    mInitialized = NO;
    
    // notify observers about the initialization state
	initializedAttribute->sendNotification(kTTSym_notify, mInitialized);
    
    return kTTErrNone;
}

TTErr TTData::GenericCommand(const TTValue& inputValue, TTValue& outputValue)
{
    TTDictionaryBasePtr command = NULL;
    TTValue			c, aValue;

    if (inputValue.size()) {
        
        // 1. Get the command TTDictionnary
        ///////////////////////////////////////////////////
        if (inputValue[0].type() == kTypePointer)
            command = TTDictionaryBasePtr((TTPtr)inputValue[0]);
        else
            return kTTErrGeneric;

        // 2. Get the value
        command->getValue(aValue);
        
        // 3. Filter repetitions
        //////////////////////////////////
        if (mRepetitionsFilter && mInitialized)
            if (mValue == aValue)
                return kTTErrNone;	// nothing to do
        
    }

    // 4. Set the value directly
    return this->setGenericValue(aValue);
}

TTErr TTData::setGenericValue(const TTValue& value)
{
    if (!mIsSending && mActive) {
		
        // lock
		mIsSending = YES;

        // don't update the internal value with empty value
        if (value.size()) {
            
            // set internal value
            mValue = value;
        
            // clip the internal value
            clipValue();
        }
        
        // return the internal value
        returnValue();
		
		// unlock
		mIsSending = NO;
		
		return kTTErrNone;
	}
    
	return kTTErrGeneric;
}

TTErr TTData::GenericInit()
{
    // reset initialisation state
    mInitialized = NO;
    
    // if valueDefault type is right
    if (!mValueDefault.empty())
    {
        TTValue empty;
        this->Command(mValueDefault, empty);
    }
    
    // notify observers about the initialization state
	initializedAttribute->sendNotification(kTTSym_notify, mInitialized);
    
    return kTTErrNone;
}

TTErr TTData::BooleanCommand(const TTValue& inputValue, TTValue& outputValue)
{
    TTDictionaryBasePtr command = NULL;
    TTSymbol		unit;
    TTFloat64		time;
    TTBoolean       isRunning;
    TTValue			c, v, aValue, none;
 
    if (inputValue.size()) {
        
        // 1. Get the command TTDictionnary
        ///////////////////////////////////////////////////
        if (inputValue[0].type() == kTypePointer)
            command = TTDictionaryBasePtr((TTPtr)inputValue[0]);
        else
            return kTTErrGeneric;

        // 2. Get the value
        command->getValue(aValue);
        
        // 3. Filter repetitions
        //////////////////////////////////
        if (mRepetitionsFilter && mInitialized) {
            
            aValue.booleanize();
            
            if (mValue == aValue)
                return kTTErrNone;	// nothing to do
        }
        
        // 4. Ramp the convertedValue
        /////////////////////////////////
        if (mRamper.valid()) {
            
            if (!command->lookup(kTTSym_ramp, v)) {
                
                v.get(0, time);
                
                if (time > 0) {
                    
                    mRamper.send("Set", mValue, none);
                    mRamper.send("Target", aValue, none);
                    mRamper.send(kTTSym_Go, (int)time, none);
                    
                    // update the ramp status attribute
                    mRamper.get(kTTSym_running, isRunning);
                    if (mRampStatus != isRunning) {
                        mRampStatus = isRunning;
                        notifyObservers(kTTSym_rampStatus, mRampStatus);
                    }
                    
                    return kTTErrNone;
                }
            }
            
            // in any other cases :
            // stop ramping before to set a value
            mRamper.send(kTTSym_Stop);
            
            // update the ramp status attribute
            mRamper.get(kTTSym_running, isRunning);
            if (mRampStatus != isRunning) {
                mRampStatus = isRunning;
                notifyObservers(kTTSym_rampStatus, mRampStatus);
            }
        } 
    }
    
    // 6. Set the value directly
    return this->setBooleanValue(aValue);
}

TTErr TTData::setBooleanValue(const TTValue& value)
{
    if (!mIsSending && mActive) {
		
        // lock
		mIsSending = YES;
        
        if (checkBooleanType(value)) {
            
            // don't update the internal value with empty value
            if (value.size() == 1) {
                
                // set internal value
                mValue = value;
                
                // booleanize the internal value
                mValue.booleanize();
            }
            
            // return the internal value
            returnValue();
            
            // unlock
            mIsSending = NO;
            
            return kTTErrNone;
        }
        else {
            
            // unlock
            mIsSending = NO;
            
            return kTTErrInvalidValue;
        }
	}
    
	return kTTErrGeneric;
}

TTBoolean TTData::checkBooleanType(const TTValue& value)
{
    if (value.size() == 0)
        return YES;
    
    TTDataType type = value[0].type();
    
    return  type == kTypeNone       ||
            type == kTypeBoolean    ||
            type == kTypeFloat32    ||
            type == kTypeFloat64    ||
            type == kTypeInt8       ||
            type == kTypeUInt8      ||
            type == kTypeInt16      ||
            type == kTypeUInt16     ||
            type == kTypeInt32      ||
            type == kTypeUInt32     ||
            type == kTypeInt64      ||
            type == kTypeUInt64;
}

TTErr TTData::BooleanInit()
{
    // reset initialisation state
    mInitialized = NO;
    
    // if valueDefault type is right
	if (checkBooleanType(mValueDefault))
		if (!(mValueDefault.empty()))
        {
            TTValue empty;
			this->Command(mValueDefault, empty);
        }
	
    // notify observers about the initialization state
	initializedAttribute->sendNotification(kTTSym_notify, mInitialized);
    
    return kTTErrNone;
}

TTErr TTData::IntegerCommand(const TTValue& inputValue, TTValue& outputValue)
{
    TTDictionaryBasePtr command = NULL;
    TTSymbol		unit;
    TTFloat64		time;
    TTBoolean       isRunning;
    TTValue			c, v, aValue, none;
    
    if (inputValue.size()) {
        
        // 1. Get the command TTDictionnary
        ///////////////////////////////////////////////////
        if (inputValue[0].type() == kTypePointer)
            command = TTDictionaryBasePtr((TTPtr)inputValue[0]);
        else
            return kTTErrGeneric;

        // 2. Get the value
        command->getValue(aValue);
        
        // 3. Set Dataspace input unit and convert the value
        // Note : The current implementation does not override the active unit temporarily or anything fancy.
        // It just sets the input unit and then runs with it...
        // For this initial implementation we are converting the values prior to ramping, as it is easier.
        // Ultimately though, we actually want to convert the units after the ramping,
        // for example to perform a sweep that is linear vs logarithmic
        ////////////////////////////////////////////////////////////////
        if (mDataspaceConverter.valid()) {
            
            if (!command->lookup(kTTSym_unit, v)) {
                
                TTValue convertedValue;
                
                v.get(0, unit);
                mDataspaceConverter.set(kTTSym_inputUnit, unit);
                convertUnit(aValue, convertedValue);
                aValue = convertedValue;
            }
        }
        
        // 4. Filter repetitions
        //////////////////////////////////
        if (mRepetitionsFilter && mInitialized) {
            
            aValue.truncate();
            
            if (mValue == aValue)
                return kTTErrNone;	// nothing to do
        }
        
        // 5. Ramp the convertedValue
        /////////////////////////////////
        if (mRamper.valid()) {
            
            if (!command->lookup(kTTSym_ramp, v)) {
                
                v.get(0, time);
                
                if (time > 0) {
                    
                    mRamper.send("Set", mValue, none);
                    mRamper.send("Target", aValue, none);
                    mRamper.send(kTTSym_Go, (int)time, none);
                    
                    // update the ramp status attribute
                    mRamper.get(kTTSym_running, isRunning);
                    if (mRampStatus != isRunning) {
                        mRampStatus = isRunning;
                        notifyObservers(kTTSym_rampStatus, mRampStatus);
                    }
                    
                    return kTTErrNone;
                }
            }
            
            // in any other cases :
            // stop ramping before to set a value
            mRamper.send(kTTSym_Stop);
            
            // update the ramp status attribute
            mRamper.get(kTTSym_running, isRunning);
            if (mRampStatus != isRunning) {
                mRampStatus = isRunning;
                notifyObservers(kTTSym_rampStatus, mRampStatus);
            }
        }
        
        // external ramp drive case
        else if (mRampDrive == kTTSym_external) {
            
            if (!command->lookup(kTTSym_ramp, v))
                v.get(0, externalRampTime);
            
        }
    }
    
    // 6. Set the value directly
    return this->setIntegerValue(aValue);
}

TTErr TTData::setIntegerValue(const TTValue& value)
{
    if (!mIsSending && mActive) {
		
        // lock
		mIsSending = YES;
        
		if (checkIntegerType(value)) {
			
            // don't update the internal value with empty value
            if (value.size() == 1) {
                
                // set internal value
                mValue = value;
                
                // truncate internal value
                mValue.truncate();
                
                if (mRamper.valid())
                    if (clipValue())
                        mRamper.send(kTTSym_Stop);
            }
            
            // return the internal value
            returnValue();
            
            // unlock
            mIsSending = NO;
            
            return kTTErrNone;
		}
		else {
			
			// unlock
			mIsSending = NO;
            
			return kTTErrInvalidValue;
		}
	}
    
	return kTTErrGeneric;
}

TTBoolean TTData::checkIntegerType(const TTValue& value)
{
    if (value.size() == 0)
        return YES;
    
    TTDataType type = value[0].type();
    
    return  type == kTypeNone       ||
            type == kTypeFloat32    ||
            type == kTypeFloat64    ||
            type == kTypeInt8       ||
            type == kTypeUInt8      ||
            type == kTypeInt16      ||
            type == kTypeUInt16     ||
            type == kTypeInt32      ||
            type == kTypeUInt32     ||
            type == kTypeInt64      ||
            type == kTypeUInt64;
}

TTErr TTData::IntegerInit()
{
    // reset initialisation state
    mInitialized = NO;
    
    // if valueDefault type is right
	if (checkIntegerType(mValueDefault))
		if (!(mValueDefault.empty()))
        {
            TTValue empty;
			this->Command(mValueDefault, empty);
        }
    
    // notify observers about the initialization state
	initializedAttribute->sendNotification(kTTSym_notify, mInitialized);
    
    return kTTErrNone;
}


TTErr TTData::DecimalCommand(const TTValue& inputValue, TTValue& outputValue)
{
    TTDictionaryBasePtr command = NULL;
    TTSymbol		unit;
    TTUInt32        time;
    TTBoolean       isRunning;
    TTValue			c, v, aValue, none;
    
    if (inputValue.size()) {
		
		// New command terminates any ongoing ramp
		if (mRampStatus) {
			mRamper.send(kTTSym_Stop);
		}
		
        // Get the command TTDictionnary
		// This contains the new value and optional information on ramp and unit
        if (inputValue[0].type() == kTypePointer)
            command = TTDictionaryBasePtr((TTPtr)inputValue[0]);
        else
            return kTTErrGeneric;

        // Get the new target value. This might be specified in an overriding unit
        command->getValue(aValue);
		
		// For mType = "decimal" it does not make sense to have more than one item in aValue.
		if (aValue.size()>1)
			aValue.resize(1);
		
		// Set up ramp if requested, this might include overriding dataspace unit
		if (mRamper.valid()) {
			if (!command->lookup(kTTSym_ramp, v)) {
			
				time = v[0];
				
				// Is a valid ramp time requested?
				if (time > 0) {
				
					// Is the dataspace unit to be temporarily overridden during the ramp?
					if ((mDataspaceConverter.valid()) && (!command->lookup(kTTSym_unit, v))) {
					
						TTValue convertedStartValue;
					
						unit = v[0];
					
						mIsOverridingDataspaceUnit = true;
					
						// Set up units for conversions
						mDataspaceConverter.set(kTTSym_inputUnit, unit);
						mDataspaceInverseConverter.set(kTTSym_outputUnit, unit);
					
						// Convert current value to temporary unit, and use as ramp start value
						inverseConvertUnit(mValue, convertedStartValue);
						mRamper.send("Set", convertedStartValue, none);
					
						// Set the end value using the overriding unit
						mRamper.send("Target", aValue, none);
					
						// Set ramp time and start the ramp, , we don't output any value immediately
						mRamper.send(kTTSym_Go, (int)time, none);
					
						// Update the ramp status attribute
						mRamper.get(kTTSym_running, isRunning);
						if (mRampStatus != isRunning) {
							mRampStatus = isRunning;
							notifyObservers(kTTSym_rampStatus, mRampStatus);
						}
					
						return kTTErrNone;
					}
					else {
						// No dataspace unit conversion is needed during the ramp
						mIsOverridingDataspaceUnit = false;
					
						// set the start (current) value
						mRamper.send("Set", mValue, none);
					
						// set the end value
						mRamper.send("Target", aValue, none);
					
						// set how long it going to take and start the ramp, we don't output any value immediately
						mRamper.send(kTTSym_Go, (int)time, none);
					
						// update the ramp status attribute
						mRamper.get(kTTSym_running, isRunning);
						if (mRampStatus != isRunning) {
							mRampStatus = isRunning;
							notifyObservers(kTTSym_rampStatus, mRampStatus);
						}
					
						return kTTErrNone;
					}
				}
			}
		}
		// 5. External ramp drive case
		else if (mRampDrive == kTTSym_external) {
			
			// TODO: How do we deal with overriding units in this case?
			// TODO: Do mRampStatus need to be updated?
			
			if (!command->lookup(kTTSym_ramp, v))
				externalRampTime = v[0];
		}
		
		// 6. No ramping, target vale will be set immediately
		
		// (This part of the method will only be executed if (a) no ramp was requested, (b) ramp time was less or equal to 0, or (c) we are using an external ramp drive.)
		
		// 6.a Check for overriding unit, convert to default unit if necessary
		if ((mDataspaceConverter.valid()) && (!command->lookup(kTTSym_unit, v))) {
			
			TTValue convertedValue;
			
			unit = v[0];
			mDataspaceConverter.set(kTTSym_inputUnit, unit);
			convertUnit(aValue, convertedValue);
			aValue = convertedValue;
		} else {
			// Ramp and unit conversion implicitly ensure that type is kTypeFloat64, but if we don't have ramp or unit, we need to ensure that mValue is set as kTypeFloat64.
			// We do not run this test if (aValue.size() == 0.). That will be the case in e.g. the Max implementation when sending a "bang" to j.parameter.
			if (aValue.size())
				if (aValue[0].type() != kTypeFloat64)
					aValue = (TTFloat64)aValue[0];
		}
		
		mIsOverridingDataspaceUnit = false;
		
		// Update the ramp status attribute
		mRamper.get(kTTSym_running, isRunning);
		if (mRampStatus != isRunning) {
			mRampStatus = isRunning;
			notifyObservers(kTTSym_rampStatus, mRampStatus);
		}
	}
	
	// Set the value directly
	return this->setDecimalValue(aValue);
}


TTErr TTData::setDecimalValue(const TTValue& value)
{
	// Storing locally to protect the input value
	TTValue lValue = value;
	
	if (!mIsSending && mActive) {
		
        // We are locking while updating, in order to prevent returned values from clients to cause an infinite loop.
		mIsSending = YES;
        
		if (checkDecimalType(lValue)) {
			
            // Resize if the value contains more than one element
			//if (lValue.size() > 1)
			//	lValue.resize(1);
			// Only update if the value contains an element (it's not empty). We have already made sure in DecimalCommand that lValue.size does not exceed 1.
			if (lValue.size() == 1) {
				
				TTValue lPreviousValue = mValue;
				
				// If ramp is performed using non-default dataspace unit, the returned values need to be converted
				if (mIsOverridingDataspaceUnit)
					convertUnit(lValue, mValue);
				else
					mValue = lValue;
				
				// Clipping
				clipValue();
				
				// NOTE: If ramps reach the end prematurely (due to requests for ramp targets beyond the accepted range), the ramp will not be stopped.
				
				// Filter repetitions, and return the internal value - this is passing it to the owner of the #TTData and will notify all value observers
				if (mRepetitionsFilter) {
					if (mInitialized) {
						if (mValue != lPreviousValue)
							returnValue();
					}
					else {
						returnValue();
						mInitialized = true;
					}
						
				}
				else
					returnValue();
			} else {
				// If the value is empty, return current value. This is the case in the Max implementation when a "bang" is sent to j.parameter.
				returnValue();
			}
			
            // unlock
            mIsSending = NO;
            
            return kTTErrNone;
		}
		else {
			
			// unlock
			mIsSending = NO;
            
			return kTTErrInvalidValue;
		}
	}
    
	return kTTErrGeneric;
}

TTBoolean TTData::checkDecimalType(const TTValue& value)
{
    if (value.size() == 0)
        return YES;
    
    TTDataType type = value[0].type();
    
    return  //type == kTypeNone       ||
            type == kTypeFloat32    ||
            type == kTypeFloat64    ||
            type == kTypeInt8       ||
            type == kTypeUInt8      ||
            type == kTypeInt16      ||
            type == kTypeUInt16     ||
            type == kTypeInt32      ||
            type == kTypeUInt32     ||
            type == kTypeInt64      ||
            type == kTypeUInt64;
}

TTErr TTData::DecimalInit()
{
    // reset initialisation state
    mInitialized = NO;
    
    // if valueDefault type is right
	if (checkDecimalType(mValueDefault))
		if (!(mValueDefault.empty()))
        {
            TTValue empty;
			this->Command(mValueDefault, empty);
        }
    
    // notify observers about the initialization state
	initializedAttribute->sendNotification(kTTSym_notify, mInitialized);
    
    return kTTErrNone;
}

TTErr TTData::ArrayCommand(const TTValue& inputValue, TTValue& outputValue)
{
    TTDictionaryBasePtr command = NULL;
    TTSymbol		unit;
    TTFloat64		time;
    TTBoolean       isRunning;
    TTValue			c, v, aValue, none;
    
    if (inputValue.size()) {
        
        // 1. Get the command TTDictionnary
        ///////////////////////////////////////////////////
        if (inputValue[0].type() == kTypePointer)
            command = TTDictionaryBasePtr((TTPtr)inputValue[0]);
        else
            return kTTErrGeneric;

        // 2. Get the value
        command->getValue(aValue);
        
        // 3. Set Dataspace input unit and convert the value
        // Note : The current implementation does not override the active unit temporarily or anything fancy.
        // It just sets the input unit and then runs with it...
        // For this initial implementation we are converting the values prior to ramping, as it is easier.
        // Ultimately though, we actually want to convert the units after the ramping,
        // for example to perform a sweep that is linear vs logarithmic
        ////////////////////////////////////////////////////////////////
        if (mDataspaceConverter.valid()) {
            
            if (!command->lookup(kTTSym_unit, v)) {
                
                TTValue convertedValue;
                
                v.get(0, unit);
                mDataspaceConverter.set(kTTSym_inputUnit, unit);
                convertUnit(aValue, convertedValue);
                aValue = convertedValue;
            }
        }
        
        // 4. Filter repetitions
        //////////////////////////////////
        if (mRepetitionsFilter && mInitialized) {
            
            if (mValue == aValue)
                return kTTErrNone;	// nothing to do
        }
        
        // 5. Ramp the convertedValue
        /////////////////////////////////
        if (mRamper.valid()) {
            
            if (!command->lookup(kTTSym_ramp, v)) {
                
                v.get(0, time);
                
                if (time > 0) {
                    
                    if(mValue.size() != aValue.size())
                        mValue.resize(aValue.size());
                    
                    mRamper.send("Set", mValue, none);
                    mRamper.send("Target", aValue, none);
                    mRamper.send(kTTSym_Go, (int)time, none);
                    
                    // update the ramp status attribute
                    mRamper.get(kTTSym_running, isRunning);
                    if (mRampStatus != isRunning) {
                        mRampStatus = isRunning;
                        notifyObservers(kTTSym_rampStatus, mRampStatus);
                    }
                    
                    return kTTErrNone;
                }
            }
            
            // in any other cases :
            // stop ramping before to set a value
            mRamper.send(kTTSym_Stop);
            
            // update the ramp status attribute
            mRamper.get(kTTSym_running, isRunning);
            if (mRampStatus != isRunning) {
                mRampStatus = isRunning;
                notifyObservers(kTTSym_rampStatus, mRampStatus);
            }
        }
        
        // external ramp drive case
        else if (mRampDrive == kTTSym_external) {
            
            if (!command->lookup(kTTSym_ramp, v))
                v.get(0, externalRampTime);
            
        }
    }
    
    // 6. Set the value directly
    return this->setArrayValue(aValue);
}

TTErr TTData::setArrayValue(const TTValue& value)
{
    if (!mIsSending && mActive) {
		
        // lock
		mIsSending = YES;
        
		if (checkArrayType(value)) {
			
            // don't update the internal value with empty value
            if (value.size()) {
                
                // set internal value
                mValue = value;
                
                if (mRamper.valid())
                    if (clipValue())
                        mRamper.send(kTTSym_Stop);
                
            }
            
            // return the internal value
            returnValue();
            
            // unlock
            mIsSending = NO;
            
            return kTTErrNone;
		}
		else {
			
			// unlock
			mIsSending = NO;
            
			return kTTErrInvalidValue;
		}
    }
    
	return kTTErrGeneric;
}

TTBoolean TTData::checkArrayType(const TTValue& value)
{
	return true;
}

TTErr TTData::ArrayInit()
{
    // reset initialisation state
    mInitialized = NO;
    
    // if valueDefault type is right
	if (checkArrayType(mValueDefault))
		if (!(mValueDefault.empty()))
        {
            TTValue empty;
			this->Command(mValueDefault, empty);
        }
    
    // notify observers about the initialization state
	initializedAttribute->sendNotification(kTTSym_notify, mInitialized);
    
    return kTTErrNone;
}

TTErr TTData::StringCommand(const TTValue& inputValue, TTValue& outputValue)
{
    TTDictionaryBasePtr command = NULL;
    TTValue			c, aValue;
    
    if (inputValue.size()) {
        
        // 1. Get the command TTDictionnary
        ///////////////////////////////////////////////////
        if (inputValue[0].type() == kTypePointer)
            command = TTDictionaryBasePtr((TTPtr)inputValue[0]);
        else
            return kTTErrGeneric;

        // 2. Get the value
        command->getValue(aValue);
        
        // 3. Filter repetitions
        //////////////////////////////////
        if (mRepetitionsFilter && mInitialized) {
            
            if (mValue == aValue)
                return kTTErrNone;	// nothing to do
        }
    }
    
    // 4. Set the value directly
    return this->setStringValue(aValue);
}

TTErr TTData::setStringValue(const TTValue& value)
{
    if (!mIsSending && mActive) {
		
        // lock
		mIsSending = YES;
        
		if (checkStringType(value)) {
            
            // don't update the internal value with empty value
            if (value.size()) {
                
                // make other value type into symbol
                if (value[0].type() != kTypeSymbol) {
                    
                    TTValue  parsed;
                    TTString s;
                    
                    parsed = value;
                    parsed.toString();
                    s = TTString(parsed[0]);
                    parsed = TTValue(TTSymbol(s));
                    
                    // unlock
                    mIsSending = NO;
                    
                    // set again with the parsed value
                    return setStringValue(parsed);
                }
                
                TTBoolean found = YES;
                
                // check if the string is precised into rangeBounds
                if (mRangeBounds.size()) {
                    
                    found = NO;
                    
                    for (TTUInt32 i = 0; i < mRangeBounds.size(); i++) {
                    
                        found = value[0] == mRangeBounds[i];
                        
                        if (found == YES)
                            break;
                    }
                }
                
                // set internal value
                if (found)
                    mValue = value;
            }
            
            // return the internal value
            returnValue();
            
            // unlock
            mIsSending = NO;
            
            return kTTErrNone;
		}
		else {
			
			// unlock
			mIsSending = NO;
			return kTTErrInvalidValue;
		}
		
		// unlock
		mIsSending = NO;
		
		return kTTErrNone;
	}
    
	return kTTErrGeneric;
}

TTBoolean TTData::checkStringType(const TTValue& value)
{
    return true;
}

TTErr TTData::StringInit()
{
    // reset initialisation state
    mInitialized = NO;
    
    // if valueDefault type is right
	if (checkStringType(mValueDefault))
		if (!(mValueDefault.empty()))
        {
            TTValue empty;
			this->Command(mValueDefault, empty);
        }
    
    // notify observers about the initialization state
	initializedAttribute->sendNotification(kTTSym_notify, mInitialized);
    
    return kTTErrNone;
}
