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
		if (mType == kTTSym_integer) {
            commandMethod = (TTMethodValue)&TTData::IntegerCommand;
            initMessage->method = (TTMethod)&TTData::IntegerInit;
			valueAttribute->type = kTypeInt32;
            valueAttribute->setter = (TTSetterMethod)&TTData::setIntegerValue;
			valueDefaultAttribute->type = kTypeInt32;
			valueStepSizeAttribute->type = kTypeInt32;
			mValue = TTValue(0);
			mValueStepsize = TTValue(1);
			mRangeBounds.set(0, TTUInt16(0));
			mRangeBounds.set(1, TTUInt16(1));
		}
		else if (mType == kTTSym_decimal) {
            commandMethod = (TTMethodValue)&TTData::DecimalCommand;
            initMessage->method = (TTMethod)&TTData::DecimalInit;
			valueAttribute->type = kTypeFloat64;
            valueAttribute->setter = (TTSetterMethod)&TTData::setDecimalValue;
			valueDefaultAttribute->type = kTypeFloat64;
			valueStepSizeAttribute->type = kTypeFloat64;
			mValue = TTValue(0.);
			mValueStepsize = TTValue(0.1);
			mRangeBounds.set(0, 0.);
			mRangeBounds.set(1, 1.);
		}
		else if (mType == kTTSym_string) {
            commandMethod = (TTMethodValue)&TTData::StringCommand;
            initMessage->method = (TTMethod)&TTData::StringInit;
			valueAttribute->type = kTypeSymbol;
            valueAttribute->setter = (TTSetterMethod)&TTData::setStringValue;
			valueDefaultAttribute->type = kTypeSymbol;
			valueStepSizeAttribute->type = kTypeSymbol;
			mValue = TTValue(kTTSymEmpty);
			mValueStepsize.clear();
			mRangeBounds.clear();
		}
		else if (mType == kTTSym_boolean) {
            commandMethod = (TTMethodValue)&TTData::BooleanCommand;
            initMessage->method = (TTMethod)&TTData::BooleanInit;
			valueAttribute->type = kTypeBoolean;
            valueAttribute->setter = (TTSetterMethod)&TTData::setBooleanValue;
			valueDefaultAttribute->type = kTypeBoolean;
			valueStepSizeAttribute->type = kTypeBoolean;
			mValue = TTValue(NO);
			mValueStepsize = TTValue(YES);
			mRangeBounds.set(0, NO);
			mRangeBounds.set(1, YES);
		}
		else if (mType == kTTSym_array) {
            commandMethod = (TTMethodValue)&TTData::ArrayCommand;
            initMessage->method = (TTMethod)&TTData::ArrayInit;
			valueAttribute->type = kTypeFloat64;
            valueAttribute->setter = (TTSetterMethod)&TTData::setArrayValue;
			valueDefaultAttribute->type = kTypeFloat64;
			valueStepSizeAttribute->type = kTypeFloat64;
			mValue = TTValue(0.);
			mValueStepsize = TTValue(0.1);
			mRangeBounds.set(0, 0.);
			mRangeBounds.set(1, 1.);
		}
		else if (mType == kTTSym_none) {
            commandMethod = (TTMethodValue)&TTData::NoneCommand;
            initMessage->method = (TTMethod)&TTData::NoneInit;
			valueAttribute->type = kTypeNone;
            valueAttribute->setter = (TTSetterMethod)&TTData::setNoneValue;
			valueDefaultAttribute->type = kTypeNone;
			valueStepSizeAttribute->type = kTypeNone;
			mValue.clear();
			mValueStepsize.clear();
			mRangeBounds.clear();
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
			mValueStepsize = TTValue(0.1);
			mRangeBounds = TTValue(0., 1.);
			return kTTErrGeneric;
		}
        
		rampSetup();
		
		this->notifyObservers(kTTSym_type, n);
	}
	return kTTErrNone;
}

TTErr TTData::Command(const TTValue& inputValue, TTValue& outputValue)
{
    externalRampTime = 0;
    
    // is the command already parsed ?
    if (inputValue.size()) {
        
        if (inputValue[0].type() == kTypePointer)
            
            // call the specific command method depending on mType
            return (this->*commandMethod)(inputValue, outputValue);
    }
    
    // else we need to free the parsed command afterwards
    TTDictionaryBasePtr command = NULL;
    TTErr           err;
    
    // parse command locally
    command = TTDataParseCommand(inputValue);
    
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
		//else if (mRangeClipmode == kTTSym_wrap)
            ;//mValue.clipwrap(TTFloat64(mRangeBounds[0]), TTFloat64(mRangeBounds[1]));
		//else if (mRangeClipmode == kTTSym_fold)
            ;//mValue.clipfold(TTFloat64(mRangeBounds[0]), mTTFloat64(mRangeBounds[1]));
	}
	
	return false;
}

TTErr TTData::returnValue()
{
    // used a new value to protect the internal value
    TTValue v = mValue;
	TTValue dummy;
	
  
    // This is a temporary solution to have audio rate ramping outside the TTData
    if (mRampDrive == kTTSym_external) {
        
        if (externalRampTime > 0)
            v.append(externalRampTime);
    }
    
    // return the value to his owner
    this->mReturnValueCallback->notify(v, dummy);
    
    // notify each observers
    valueAttribute->sendNotification(kTTSym_notify, v);             // we use kTTSym_notify because we know that observers are TTCallback
    
    // we have had our value set at least once
    // only parameters notify their initialisation
    if (mService == kTTSym_parameter && !mInitialized) {
        mInitialized = YES;
        initializedAttribute->sendNotification(kTTSym_notify, YES);	// we use kTTSym_notify because we know that observers are TTCallback
    }
    else if (!mInitialized)
        mInitialized = YES;
    
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
    // if valueDefault type is right
    if (!mValueDefault.empty())
			return this->setAttributeValue(kTTSym_value, mValueDefault);
    
    // the value is not initialized if the value equals to the start value
    mInitialized = !(mValue == TTValue(0.));
    
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
        if (mRamper) {
            
            if (!command->lookup(kTTSym_ramp, v)) {
                
                v.get(0, time);
                
                if (time > 0) {
                    
                    mRamper->sendMessage(TTSymbol("Set"), mValue, none);
                    mRamper->sendMessage(TTSymbol("Target"), aValue, none);
                    mRamper->sendMessage(kTTSym_Go, (int)time, none);
                    
                    // update the ramp status attribute
                    mRamper->getAttributeValue(TTSymbol("running"), isRunning);
                    if (mRampStatus != isRunning) {
                        mRampStatus = isRunning;
                        notifyObservers(kTTSym_rampStatus, mRampStatus);
                    }
                    
                    return kTTErrNone;
                }
            }
            
            // in any other cases :
            // stop ramping before to set a value
            mRamper->sendMessage(kTTSym_Stop);
            
            // update the ramp status attribute
            mRamper->getAttributeValue(TTSymbol("running"), isRunning);
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
    // if valueDefault type is right
	if (checkBooleanType(mValueDefault))
		if (!(mValueDefault.empty())) {
			return this->setAttributeValue(kTTSym_value, mValueDefault);
		}
	
    // the value is not initialized if the value equals to the start value
    mInitialized = !(mValue == TTValue(NO));
    
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
        if (mDataspaceConverter) {
            
            if (!command->lookup(kTTSym_unit, v)) {
                
                TTValue convertedValue;
                
                v.get(0, unit);
                mDataspaceConverter->setAttributeValue(kTTSym_inputUnit, unit);
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
        if (mRamper) {
            
            if (!command->lookup(kTTSym_ramp, v)) {
                
                v.get(0, time);
                
                if (time > 0) {
                    
                    mRamper->sendMessage(TTSymbol("Set"), mValue, none);
                    mRamper->sendMessage(TTSymbol("Target"), aValue, none);
                    mRamper->sendMessage(kTTSym_Go, (int)time, none);
                    
                    // update the ramp status attribute
                    mRamper->getAttributeValue(TTSymbol("running"), isRunning);
                    if (mRampStatus != isRunning) {
                        mRampStatus = isRunning;
                        notifyObservers(kTTSym_rampStatus, mRampStatus);
                    }
                    
                    return kTTErrNone;
                }
            }
            
            // in any other cases :
            // stop ramping before to set a value
            mRamper->sendMessage(kTTSym_Stop);
            
            // update the ramp status attribute
            mRamper->getAttributeValue(TTSymbol("running"), isRunning);
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
                
                if (mRamper)
                    if (clipValue())
                        mRamper->sendMessage(kTTSym_Stop);
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
    // if valueDefault type is right
	if (checkIntegerType(mValueDefault))
		if (!(mValueDefault.empty())) {
			return this->setAttributeValue(kTTSym_value, mValueDefault);
		}
    
    // the value is not initialized if the value equals to the start value
    mInitialized = !(mValue == TTValue(0));
    
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
        if (mDataspaceConverter) {
            
            if (!command->lookup(kTTSym_unit, v)) {
                
                TTValue convertedValue;
                
                unit = v[0];
                mDataspaceConverter->setAttributeValue(kTTSym_inputUnit, unit);
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
        if (mRamper) {
            
            if (!command->lookup(kTTSym_ramp, v)) {
                
                time = v[0];
                
                if (time > 0) {
                    
                    mRamper->sendMessage(TTSymbol("Set"), mValue, none);
                    mRamper->sendMessage(TTSymbol("Target"), aValue, none);
                    mRamper->sendMessage(kTTSym_Go, (int)time, none);
                    
                    // update the ramp status attribute
                    mRamper->getAttributeValue(TTSymbol("running"), isRunning);
                    if (mRampStatus != isRunning) {
                        mRampStatus = isRunning;
                        notifyObservers(kTTSym_rampStatus, mRampStatus);
                    }
                    
                    return kTTErrNone;
                }
            }
            
            // in any other cases :
            // stop ramping before to set a value
            mRamper->sendMessage(kTTSym_Stop);
            
            // update the ramp status attribute
            mRamper->getAttributeValue(TTSymbol("running"), isRunning);
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
    return this->setDecimalValue(aValue);
}

TTErr TTData::setDecimalValue(const TTValue& value)
{
    if (!mIsSending && mActive) {
		
        // lock
		mIsSending = YES;
        
		if (checkDecimalType(value)) {
			
            // don't update the internal value with empty value
            if (value.size() == 1) {
                
                // set internal value
                mValue = value;
                
                if (mRamper)
                    if (clipValue())
                        mRamper->sendMessage(kTTSym_Stop);

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

TTBoolean TTData::checkDecimalType(const TTValue& value)
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

TTErr TTData::DecimalInit()
{
    // if valueDefault type is right
	if (checkDecimalType(mValueDefault))
		if (!(mValueDefault.empty())) {
			return this->setAttributeValue(kTTSym_value, mValueDefault);
		}
	
    // the value is not initialized if the value equals to the start value
    mInitialized = !(mValue == TTValue(0.));
    
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
        if (mDataspaceConverter) {
            
            if (!command->lookup(kTTSym_unit, v)) {
                
                TTValue convertedValue;
                
                v.get(0, unit);
                mDataspaceConverter->setAttributeValue(kTTSym_inputUnit, unit);
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
        if (mRamper) {
            
            if (!command->lookup(kTTSym_ramp, v)) {
                
                v.get(0, time);
                
                if (time > 0) {
                    
                    if(mValue.size() != aValue.size())
                        mValue.resize(aValue.size());
                    
                    mRamper->sendMessage(TTSymbol("Set"), mValue, none);
                    mRamper->sendMessage(TTSymbol("Target"), aValue, none);
                    mRamper->sendMessage(kTTSym_Go, (int)time, none);
                    
                    // update the ramp status attribute
                    mRamper->getAttributeValue(TTSymbol("running"), isRunning);
                    if (mRampStatus != isRunning) {
                        mRampStatus = isRunning;
                        notifyObservers(kTTSym_rampStatus, mRampStatus);
                    }
                    
                    return kTTErrNone;
                }
            }
            
            // in any other cases :
            // stop ramping before to set a value
            mRamper->sendMessage(kTTSym_Stop);
            
            // update the ramp status attribute
            mRamper->getAttributeValue(TTSymbol("running"), isRunning);
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
                
                if (mRamper)
                    if (clipValue())
                        mRamper->sendMessage(kTTSym_Stop);
                
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
    // if valueDefault type is right
	if (checkArrayType(mValueDefault))
		if (!(mValueDefault.empty())) {
			return this->setAttributeValue(kTTSym_value, mValueDefault);
		}
	
    // the value is not initialized if the value equals to the start value
    mInitialized = !(mValue == TTValue(0.));
    
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
    // if valueDefault type is right
	if (checkStringType(mValueDefault))
		if (!(mValueDefault.empty())) {
			return this->setAttributeValue(kTTSym_value, mValueDefault);
		}
    
    // the value is not initialized if the value equals to the start value
    mInitialized = !(mValue == TTValue(kTTSymEmpty));
    
    // notify observers about the initialization state
	initializedAttribute->sendNotification(kTTSym_notify, mInitialized);
    
    return kTTErrNone;
}
