/* 
 * A Data Object
 * Copyright © 2010, Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTData.h"

TTErr TTData::setType(const TTValue& value)
{
    TTMessagePtr    resetMessage;
	TTAttributePtr  valueDefaultAttribute, valueStepSizeAttribute;
    
	// if the new type is different
	if (!(TTValue(mType) == value)) {
		
		TTValue n = value;				// use new value to protect the attribute
		mType = value;
		
		// Get ValueDefault and ValueStepsize attributes (because commande message and value attribute are already cached)
        this->findMessage(kTTSym_Reset, &resetMessage);
		this->findAttribute(kTTSym_valueDefault, &valueDefaultAttribute);
		this->findAttribute(kTTSym_valueStepsize, &valueStepSizeAttribute);
        
		mInstanceBounds.set(0, TTInt16(0));
		mInstanceBounds.set(1, TTInt16(-1));
		
		// register mValue Attribute and prepare memory
		if (mType == kTTSym_integer) {
            commandMessage->method = (TTMethod)&TTData::IntegerCommand;
            resetMessage->method = (TTMethod)&TTData::IntegerReset;
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
            commandMessage->method = (TTMethod)&TTData::DecimalCommand;
            resetMessage->method = (TTMethod)&TTData::DecimalReset;
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
            commandMessage->method = (TTMethod)&TTData::StringCommand;
            resetMessage->method = (TTMethod)&TTData::StringReset;
			valueAttribute->type = kTypeSymbol;
            valueAttribute->setter = (TTSetterMethod)&TTData::setStringValue;
			valueDefaultAttribute->type = kTypeSymbol;
			valueStepSizeAttribute->type = kTypeSymbol;
			mValue = TTValue(kTTSymEmpty);
			mValueStepsize = kTTValNONE;
			mRangeBounds = kTTValNONE;
		}
		else if (mType == kTTSym_boolean) {
            commandMessage->method = (TTMethod)&TTData::BooleanCommand;
            resetMessage->method = (TTMethod)&TTData::BooleanReset;
			valueAttribute->type = kTypeBoolean;
            valueAttribute->setter = (TTSetterMethod)&TTData::setBooleanValue;
			valueDefaultAttribute->type = kTypeBoolean;
			valueStepSizeAttribute->type = kTypeBoolean;
			mValue = TTValue(NO);
			mValueStepsize = TTValue(YES);
			mRangeBounds.set(0, NO);
			mRangeBounds.set(1, YES);
		}
		else if (mType == kTTSym_array) {				// Is this case means something now we have TTValue ?
            commandMessage->method = (TTMethod)&TTData::ArrayCommand;
            resetMessage->method = (TTMethod)&TTData::ArrayReset;
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
            commandMessage->method = (TTMethod)&TTData::NoneCommand;
            resetMessage->method = (TTMethod)&TTData::NoneReset;
			valueAttribute->type = kTypeNone;
            valueAttribute->setter = (TTSetterMethod)&TTData::setNoneValue;
			valueDefaultAttribute->type = kTypeNone;
			valueStepSizeAttribute->type = kTypeNone;
			mValue = kTTValNONE;
			mValueStepsize = kTTValNONE;
			mRangeBounds = kTTValNONE;
		}
		else {
            commandMessage->method = (TTMethod)&TTData::DecimalCommand;
            resetMessage->method = (TTMethod)&TTData::DecimalReset;
			valueAttribute->type = kTypeFloat64;
            valueAttribute->setter = (TTSetterMethod)&TTData::setDecimalValue;
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

TTBoolean TTData::clipValue()
{
	//bool	didClipAll = false;
	
	// the code regarding didClipAll is supposed to return true when every member of the list has been clipped to its limit
	// that way ramping can be terminated prematurely if it was trying to ramp to something out of range
	// however, this code as it is doesn't work, and it doesn't buy us much anyway
	// so I'm just commenting it out for the time being [TAP]
	
	if (mRangeClipmode != kTTSym_none) {
		
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
	
	return false;
}

TTErr TTData::returnValue()
{
    // used a new value to protect the internal value
    TTValue v = mValue;
    
#ifndef TTDATA_NO_RAMPLIB
    // This is a temporary solution to have audio rate ramping outside the TTData
    if (mRamper)
        if (mRampDrive == kTTSym_external)
            if (mExternalRampTime > 0)
                v.append(mExternalRampTime);
#endif
    
    // return the value to his owner
    if (!(mService == kTTSym_return))
        this->mReturnValueCallback->notify(v, kTTValNONE);
    
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
    // 0. Notify Command observer for value changes only
    ///////////////////////////////////////////////////
#ifdef USE_ACTIVITY     
    commandMessage->sendNotification(kTTSym_notify, kTTValNONE);     // we use kTTSym_notify because we know that observers are TTCallback
#endif
    return this->setNoneValue(kTTValNONE);
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

TTErr TTData::NoneReset()
{
    // the value is not initialized
    mInitialized = NO;
    
    // notify observers about the initialization state
	initializedAttribute->sendNotification(kTTSym_notify, mInitialized);
    
    return kTTErrNone;
}

TTErr TTData::GenericCommand(const TTValue& inputValue, TTValue& outputValue)
{
    TTDictionaryPtr command = NULL;
    TTValue			c, aValue;

    // 0. Get the command TTDictionnary
    // or parse any incoming value into a TTDictionnary
    ///////////////////////////////////////////////////
    if (inputValue.getType() == kTypePointer)
        inputValue.get(0, (TTPtr*)&command);
    else
        command = TTDataParseCommand(inputValue);
    
    if (!command)
        return kTTErrGeneric;
#ifdef USE_ACTIVITY     
    // 1. Notify Command observer for value changes only
    ///////////////////////////////////////////////////
    commandMessage->sendNotification(kTTSym_notify, inputValue);     // we use kTTSym_notify because we know that observers are TTCallback
#endif
    // 2. Get the value
    command->getValue(aValue);
    
    // 3. Filter repetitions
    //////////////////////////////////
    if (!mRepetitionsAllow && mInitialized)
        if (mValue == aValue)
            return kTTErrNone;	// nothing to do

    // 4. Set the value directly
    return this->setGenericValue(aValue);
}

TTErr TTData::setGenericValue(const TTValue& value)
{
    if (!mIsSending && mActive) {
		
        // lock
		mIsSending = YES;

        // don't update the internal value with empty value
        if (value.getSize()) {
            
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

TTErr TTData::GenericReset()
{
    // if valueDefault type is right
    if (!(mValueDefault == kTTValNONE))
			return this->setAttributeValue(kTTSym_value, mValueDefault);
    
    // the value is not initialized if the value equals to the start value
    mInitialized = !(mValue == TTValue(0.));
    
    // notify observers about the initialization state
	initializedAttribute->sendNotification(kTTSym_notify, mInitialized);
    
    return kTTErrNone;
}

TTErr TTData::BooleanCommand(const TTValue& inputValue, TTValue& outputValue)
{
    TTDictionaryPtr command = NULL;
    TTSymbol		unit;
#ifndef TTDATA_NO_RAMPLIB
    double			time;
#endif
    TTValue			c, v, aValue;
    
    // 0. Get the command TTDictionnary
    // or parse any incoming value into a TTDictionnary
    ///////////////////////////////////////////////////
    if (inputValue.getType() == kTypePointer)
        inputValue.get(0, (TTPtr*)&command);
    else
        command = TTDataParseCommand(inputValue);
    
    if (!command)
        return kTTErrGeneric;
#ifdef USE_ACTIVITY     
    // 1. Notify Command observer for value changes only
    ///////////////////////////////////////////////////
    commandMessage->sendNotification(kTTSym_notify, inputValue);     // we use kTTSym_notify because we know that observers are TTCallback
#endif
    // 2. Get the value
    command->getValue(aValue);
    
    // 3. Filter repetitions
    //////////////////////////////////
    if (!mRepetitionsAllow && mInitialized) {
    
        aValue.booleanize();
        
        if (mValue == aValue)
            return kTTErrNone;	// nothing to do
    }
    
#ifndef TTDATA_NO_RAMPLIB
    // 4. Ramp the convertedValue
    /////////////////////////////////
    if (mRamper) {
        
        if (!command->lookup(kTTSym_ramp, v)) {
            
            v.get(0, time);
            
            if (time > 0) {
                
                TTFloat64*	startArray = new TTFloat64[1];		// start to mValue
                TTFloat64*	targetArray = new TTFloat64[1];		// go to convertedValue
                
                // This is a temporary solution to have audio rate ramping outside the TTData
                mExternalRampTime = time;
                
                startArray[0] = mValue.getFloat64(0);
                targetArray[0] = aValue.getFloat64(0);
                
                mRamper->set(1, startArray);
                mRamper->go(1, targetArray, time);
                
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
    return this->setBooleanValue(aValue);
}

TTErr TTData::setBooleanValue(const TTValue& value)
{
    if (!mIsSending && mActive) {
		
        // lock
		mIsSending = YES;
        
		if (checkBooleanType(value)) {
			
            // don't update the internal value with empty value
            if (value.getSize()) {
                
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
    TTDataType type = value.getType();
    
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

TTErr TTData::BooleanReset()
{
    // if valueDefault type is right
	if (checkBooleanType(mValueDefault))
		if (!(mValueDefault == kTTValNONE)) {
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
    TTDictionaryPtr command = NULL;
    TTSymbol		unit;
#ifndef TTDATA_NO_RAMPLIB
    double			time;
#endif
    TTValue			c, v, aValue;
    
    // 0. Get the command TTDictionnary
    // or parse any incoming value into a TTDictionnary
    ///////////////////////////////////////////////////
    if (inputValue.getType() == kTypePointer)
        inputValue.get(0, (TTPtr*)&command);
    else
        command = TTDataParseCommand(inputValue);
    
    if (!command)
        return kTTErrGeneric;
#ifdef USE_ACTIVITY     
    // 1. Notify Command observer for value changes only
    ///////////////////////////////////////////////////
    commandMessage->sendNotification(kTTSym_notify, inputValue);     // we use kTTSym_notify because we know that observers are TTCallback
#endif
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
    if (!mRepetitionsAllow && mInitialized) {

        aValue.truncate();
        
        if (mValue == aValue)
            return kTTErrNone;	// nothing to do
    }
    
#ifndef TTDATA_NO_RAMPLIB
    // 5. Ramp the convertedValue
    /////////////////////////////////
    if (mRamper) {
        
        if (!command->lookup(kTTSym_ramp, v)) {
            
            v.get(0, time);
            
            if (time > 0) {
                
                TTFloat64*	startArray = new TTFloat64[1];		// start to mValue
                TTFloat64*	targetArray = new TTFloat64[1];		// go to convertedValue
                
                // This is a temporary solution to have audio rate ramping outside the TTData
                mExternalRampTime = time;
                
                startArray[0] = mValue.getFloat64(0);
                targetArray[0] = aValue.getFloat64(0);
                
                mRamper->set(1, startArray);
                mRamper->go(1, targetArray, time);
                
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
    return this->setIntegerValue(aValue);
}

TTErr TTData::setIntegerValue(const TTValue& value)
{
    if (!mIsSending && mActive) {
		
        // lock
		mIsSending = YES;
        
		if (checkIntegerType(value)) {
			
            // don't update the internal value with empty value
            if (value.getSize()) {
                
                // set internal value
                mValue = value;
                
                // truncate internal value
                mValue.truncate();
                
#ifndef TTDATA_NO_RAMPLIB
                if (mRamper)
                    if (clipValue())
                        mRamper->stop();
#else
                clipValue();
#endif
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
    TTDataType type = value.getType();
    
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

TTErr TTData::IntegerReset()
{
    // if valueDefault type is right
	if (checkIntegerType(mValueDefault))
		if (!(mValueDefault == kTTValNONE)) {
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
    TTDictionaryPtr command = NULL;
    TTSymbol		unit;
#ifndef TTDATA_NO_RAMPLIB
    double			time;
#endif
    TTValue			c, v, aValue;
    
    // 0. Get the command TTDictionnary
    // or parse any incoming value into a TTDictionnary
    ///////////////////////////////////////////////////
    if (inputValue.getType() == kTypePointer)
        inputValue.get(0, (TTPtr*)&command);
    else
        command = TTDataParseCommand(inputValue);
    
    if (!command)
        return kTTErrGeneric;
#ifdef USE_ACTIVITY     
    // 1. Notify Command observer for value changes only
    ///////////////////////////////////////////////////
    commandMessage->sendNotification(kTTSym_notify, inputValue);     // we use kTTSym_notify because we know that observers are TTCallback
#endif
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
    if (!mRepetitionsAllow && mInitialized) {
        
        if (mValue == aValue)
            return kTTErrNone;	// nothing to do
    }
    
#ifndef TTDATA_NO_RAMPLIB
    // 5. Ramp the convertedValue
    /////////////////////////////////
    if (mRamper) {
        
        if (!command->lookup(kTTSym_ramp, v)) {
            
            v.get(0, time);
            
            if (time > 0) {
                
                TTFloat64*	startArray = new TTFloat64[1];		// start to mValue
                TTFloat64*	targetArray = new TTFloat64[1];		// go to convertedValue
                
                // This is a temporary solution to have audio rate ramping outside the TTData
                mExternalRampTime = time;
                
                startArray[0] = mValue.getFloat64(0);
                targetArray[0] = aValue.getFloat64(0);
                
                mRamper->set(1, startArray);
                mRamper->go(1, targetArray, time);
                
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
    return this->setDecimalValue(aValue);
}

TTErr TTData::setDecimalValue(const TTValue& value)
{
    if (!mIsSending && mActive) {
		
        // lock
		mIsSending = YES;
        
		if (checkDecimalType(value)) {
			
            // don't update the internal value with empty value
            if (value.getSize()) {
                
                // set internal value
                mValue = value;
                
#ifndef TTDATA_NO_RAMPLIB
                if (mRamper)
                    if (clipValue())
                        mRamper->stop();
#else
                clipValue();
#endif
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
    TTDataType type = value.getType();
    
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

TTErr TTData::DecimalReset()
{
    // if valueDefault type is right
	if (checkDecimalType(mValueDefault))
		if (!(mValueDefault == kTTValNONE)) {
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
    TTDictionaryPtr command = NULL;
    TTSymbol		unit;
#ifndef TTDATA_NO_RAMPLIB
    double			time;
#endif
    TTValue			c, v, aValue;
    
    // 0. Get the command TTDictionnary
    // or parse any incoming value into a TTDictionnary
    ///////////////////////////////////////////////////
    if (inputValue.getType() == kTypePointer)
        inputValue.get(0, (TTPtr*)&command);
    else
        command = TTDataParseCommand(inputValue);
    
    if (!command)
        return kTTErrGeneric;
#ifdef USE_ACTIVITY
    // 1. Notify Command observer for value changes only
    ///////////////////////////////////////////////////
    commandMessage->sendNotification(kTTSym_notify, inputValue);     // we use kTTSym_notify because we know that observers are TTCallback
#endif
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
    if (!mRepetitionsAllow && mInitialized) {
        
        if (mValue == aValue)
            return kTTErrNone;	// nothing to do
    }
    
#ifndef TTDATA_NO_RAMPLIB
    // 5. Ramp the convertedValue
    /////////////////////////////////
    if (mRamper) {
        
        if (!command->lookup(kTTSym_ramp, v)) {
            
            v.get(0, time);
            
            if (time > 0) {
                
                TTUInt16	i, s = aValue.getSize();
                TTFloat64*	startArray = new TTFloat64[s];		// start to mValue
                TTFloat64*	targetArray = new TTFloat64[s];		// go to convertedValue
                
                // This is a temporary solution to have audio rate ramping outside the TTData
                mExternalRampTime = time;
                
                if(mValue.getSize() != s)
                    mValue.setSize(s);
                
                for (i=0; i<s; i++) {
                    startArray[i] = mValue.getFloat64(i);
                    targetArray[i] = aValue.getFloat64(i);
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
    return this->setArrayValue(aValue);
}

TTErr TTData::setArrayValue(const TTValue& value)
{
    if (!mIsSending && mActive) {
		
        // lock
		mIsSending = YES;
        
		if (checkArrayType(value)) {
			
            // don't update the internal value with empty value
            if (value.getSize()) {
                
                // set internal value
                mValue = value;
                
#ifndef TTDATA_NO_RAMPLIB
                if (mRamper)
                    if (clipValue())
                        mRamper->stop();
#else
                clipValue();
#endif
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

TTErr TTData::ArrayReset()
{
    // if valueDefault type is right
	if (checkArrayType(mValueDefault))
		if (!(mValueDefault == kTTValNONE)) {
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
    TTDictionaryPtr command = NULL;
    TTValue			c, aValue;
    
    // 0. Get the command TTDictionnary
    // or parse any incoming value into a TTDictionnary
    ///////////////////////////////////////////////////
    if (inputValue.getType() == kTypePointer)
        inputValue.get(0, (TTPtr*)&command);
    else
        command = TTDataParseCommand(inputValue);
    
    if (!command)
        return kTTErrGeneric;
#ifdef USE_ACTIVITY     
    // 1. Notify Command observer for value changes only
    ///////////////////////////////////////////////////
   commandMessage->sendNotification(kTTSym_notify, inputValue);     // we use kTTSym_notify because we know that observers are TTCallback
#endif
    // 2. Get the value
    command->getValue(aValue);
    
    // 3. Filter repetitions
    //////////////////////////////////
    if (!mRepetitionsAllow && mInitialized) {

        if (mValue == aValue)
            return kTTErrNone;	// nothing to do
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
            if (value.getSize()) {
                
                mValue = value;
                
                if (mValue.getType() != kTypeSymbol) {
                    
                    TTString s;
                    
                    mValue.toString();
                    mValue.get(0, s);
                    mValue = TTValue(TTSymbol(s));
                }
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

TTErr TTData::StringReset()
{
    // if valueDefault type is right
	if (checkStringType(mValueDefault))
		if (!(mValueDefault == kTTValNONE)) {
			return this->setAttributeValue(kTTSym_value, mValueDefault);
		}
    
    // the value is not initialized if the value equals to the start value
    mInitialized = !(mValue == TTValue(kTTSymEmpty));
    
    // notify observers about the initialization state
	initializedAttribute->sendNotification(kTTSym_notify, mInitialized);
    
    return kTTErrNone;
}
