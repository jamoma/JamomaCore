/** @file
 *
 * @ingroup modularLibrary
 *
 * @brief A Mapper Object
 *
 * @details
 *
 * @authors Théo de la Hogue
 *
 * @copyright © 2010, Théo de la Hogue @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#include "TTMapper.h"

#define thisTTClass			TTMapper
#define thisTTClassName		"Mapper"
#define thisTTClassTags		"mapper"

TT_MODULAR_CONSTRUCTOR,
mInput(kTTAdrsEmpty),
mInputMin(0.),
mInputMax(1.),
mInputIndex(0),
mInputThresholdDown(0.),
mInputThresholdUp(1.),
mInputGoingDown(NO),
mInputGoingUp(NO),
mOutput(kTTAdrsEmpty),
mOutputMin(0.),
mOutputMax(1.),
mOutputThresholdDown(0.),
mOutputThresholdUp(1.),
mOutputGoingDown(NO),
mOutputGoingUp(NO),
mActive(YES),
mInverse(NO),
#ifndef TT_NO_DSP
mFunction(kTTSymEmpty),
#endif
mClipmode(kTTSym_none),
mRamp(0)
{
	if(arguments.size() >= 1)
		mReturnValueCallback = arguments[0];
    
    if(arguments.size() >= 2)
		mReturnInputGoingDownCallback = arguments[1];
    
    if(arguments.size() >= 3)
		mReturnInputGoingUpCallback = arguments[2];
    
    if(arguments.size() >= 4)
		mReturnOutputGoingDownCallback = arguments[3];
    
    if(arguments.size() >= 5)
		mReturnOutputGoingUpCallback = arguments[4];
	
	addAttributeWithSetter(Input, kTypeSymbol);
    
	addAttributeWithSetter(InputMin, kTypeFloat64);
	addAttributeWithSetter(InputMax, kTypeFloat64);
    
    addAttribute(InputIndex, kTypeUInt32);
    
    addAttribute(InputThresholdDown, kTypeFloat64);
	addAttribute(InputThresholdUp, kTypeFloat64);
    
    addAttributeWithSetter(Output, kTypeSymbol);
    
	addAttributeWithSetter(OutputMin, kTypeFloat64);
	addAttributeWithSetter(OutputMax, kTypeFloat64);
    
    addAttribute(OutputThresholdDown, kTypeFloat64);
	addAttribute(OutputThresholdUp, kTypeFloat64);
    
	addAttributeWithSetter(Active, kTypeBoolean);
	
	addAttributeWithSetter(Clipmode, kTypeSymbol);
	
	addAttribute(Inverse, kTypeBoolean);
#ifndef TT_NO_DSP	
	addAttributeWithGetter(FunctionLibrary, kTypeLocalValue);
	addAttributeProperty(FunctionLibrary, readOnly, YES);
	
	addAttributeWithSetter(Function, kTypeSymbol);
	
	addAttribute(FunctionParameters, kTypeLocalValue);
	addAttributeProperty(FunctionParameters, readOnly, YES);
	
	addAttributeWithGetter(FunctionSamples, kTypeLocalValue);
	addAttributeProperty(FunctionSamples, readOnly, YES);
#endif
    addAttribute(Ramp, kTypeUInt32);
	
	addMessageWithArguments(Map);
	addMessageProperty(Map, hidden, YES);
	
	scaleInput();
	scaleOutput();
    
    TTObject::GetRegisteredClassNamesForTags(mFunctionLibrary, kTTSym_function);
}

TTMapper::~TTMapper() // TODO : delete things...
{
	TTSymbol	aName;
#ifndef TT_NO_DSP
	long		n;
    
	if (mFunctionUnit.valid()) {
		
		// Remove former datas
		n = mFunctionParameters.size();
		for (int i = 0; i < n; i++) {
			aName = mFunctionParameters[i];
			this->removeAttribute(aName);
		}
		
		mFunction = kTTSymEmpty;
		mFunctionParameters.clear();
	}
#endif
}

TTErr TTMapper::Map(TTValue& inputValue, TTValue& outputValue)
{
	if (mActive) {
        
		TTValue none;
		
		processMapping(inputValue, outputValue);
		
		// return value (+ ramp)
		if (mSender.valid()) {
            
            // if there is a ramp value, edit the command here
            if (mRamp > 0) {
                
                TTDictionaryBasePtr	command;
                TTValue valueAndRamp;
                
                command = new TTDictionaryBase();
                command->setSchema(kTTSym_command);
                command->setValue(outputValue);
                command->append(kTTSym_ramp, mRamp);
                
                valueAndRamp = TTValue((TTPtr)command);
                
                mSender.send(kTTSym_Send, valueAndRamp);
                
                delete command;
            }
            else
                mSender.send(kTTSym_Send, outputValue);
        }
		
        mReturnValueCallback.send("notify", outputValue);
        
        // notify if input going down
        TTBoolean newInputGoingDown = inputValue <= TTValue(mInputThresholdDown);
        if (newInputGoingDown != mInputGoingDown) {
            
            mInputGoingDown = newInputGoingDown;
            mReturnInputGoingDownCallback.send("notify", mInputGoingDown);
        }
        
        // notify if input going up
        TTBoolean newInputGoingUp = inputValue >= TTValue(mInputThresholdUp);
        if (newInputGoingUp != mInputGoingUp) {
            
            mInputGoingUp = newInputGoingUp;
            mReturnInputGoingUpCallback.send("notify", mInputGoingUp);
        }
        
        // notify if output going down
        TTBoolean newOutputGoingDown = outputValue <= TTValue(mOutputThresholdDown);
        if (newOutputGoingDown != mOutputGoingDown) {
            
            mOutputGoingDown = newOutputGoingDown;
            mReturnOutputGoingDownCallback.send("notify", mOutputGoingDown);
        }
        
        // notify if output going up
        TTBoolean newOutputGoingUp = outputValue >= TTValue(mOutputThresholdUp);
        if (newOutputGoingUp != mOutputGoingUp) {
            
            mOutputGoingUp = newOutputGoingUp;
            mReturnOutputGoingUpCallback.send("notify", mOutputGoingUp);
        }
	}
	
	return kTTErrNone;
}
#ifndef TT_NO_DSP
TTErr TTMapper::getFunctionLibrary(TTValue& value)
{
	TTObject::GetRegisteredClassNamesForTags(mFunctionLibrary, kTTSym_function);
	
	value = mFunctionLibrary;
	return kTTErrNone;
}

TTErr TTMapper::getFunctionSamples(TTValue& value)
{
	TTValue		inputSamples;
	TTFloat64	s, resolution;
	
	resolution = (mInputMax - mInputMin) / 100; // TODO : add an attribute for the number of samples (default : 100)
	
	for (s = mInputMin; s < mInputMax; s += resolution)
		inputSamples.append(s);
	
	processMapping(inputSamples, value);
	
	return kTTErrNone;
}
#endif
TTErr TTMapper::setInput(const TTValue& value)
{
	TTValue		v, min, max, none;
	TTNodePtr	aNode;
	TTObject	returnValueCallback, anObject;
	TTErr		err;
    
	mInput = value[0];
	
	mObserveInputRange = YES;
    
    if (mInput == kTTAdrsEmpty) {
        
        if (mReceiver.valid()) {
            mReceiver.set(kTTSym_address, kTTAdrsEmpty);
            mReceiver = TTObject();
        }
        
        if (mInputObserver.valid()) {
            mInputObserver.set(kTTSym_address, kTTAdrsEmpty);
            mInputObserver = TTObject();
        }
        
        if (mInputRangeObserver.valid()) {
            mInputRangeObserver.set(kTTSym_address, kTTAdrsEmpty);
            mInputRangeObserver = TTObject();
        }
        
        return kTTErrGeneric;
    }
    
    // create a receiver if needed
    if (!mReceiver.valid()) {
		
        TTValue     args;
        TTObject    empty;
        
        args.append(empty);
        
        returnValueCallback = TTObject("callback");
        
        returnValueCallback.set(kTTSym_baton, TTObject(this));
        returnValueCallback.set(kTTSym_function, TTPtr(&TTMapperReceiveValueCallback));
        args.append(returnValueCallback);
        
        mReceiver = TTObject(kTTSym_Receiver, args);
    }
	
	mReceiver.set(kTTSym_address, mInput.appendAttribute(kTTSym_value));
	
	// Trying to get the Data at this address 
	// and get some infos about range bounds 
	// and if the mapper was created before we observe the input address
	if (accessApplicationDirectoryFrom(mInput)) {
		err = accessApplicationDirectoryFrom(mInput)->getTTNode(mInput, &aNode);
		
		if (!err) {
			
			anObject = aNode->getObject();
			if (anObject.valid()) {
                
				if (anObject.name() == kTTSym_Data) {
					
					anObject.get(kTTSym_rangeBounds, v);
					
					mInputMin = TTFloat64(v[0]);
					mInputMax = TTFloat64(v[1]);
                    mInputThresholdDown = TTFloat64(v[0]);
                    mInputThresholdUp = TTFloat64(v[1]);
                    
					scaleInput();
					
					observeInputRange();
				}
            }
            return kTTErrNone;
		}
	}
    
    return observeInput();
}

TTErr TTMapper::observeInput()
{
	TTObject returnInputCreationCallback;
	
    // create a receiver if needed
	if (!mInputObserver.valid()) {
        
        TTValue     args;
        TTObject    empty;
		
        returnInputCreationCallback = TTObject("callback");
        
        returnInputCreationCallback.set(kTTSym_baton, TTObject(this));
        returnInputCreationCallback.set(kTTSym_function, TTPtr(&TTMapperInputCreationCallback));
        args.append(returnInputCreationCallback);
        
        args.append(empty);
        
        mInputObserver = TTObject(kTTSym_Receiver, args);
    }
	
	mInputObserver.set(kTTSym_address, mInput.appendAttribute(kTTSym_created));

	return kTTErrNone;
}

TTErr TTMapper::observeInputRange()
{
	TTObject returnInputRangeCallback;
	
	if (!mInputRangeObserver.valid()) {
		
        TTValue     args;
        TTObject    empty;
        
        args.append(empty);
	
        returnInputRangeCallback = TTObject("callback");
    
        returnInputRangeCallback.set(kTTSym_baton, TTObject(this));
        returnInputRangeCallback.set(kTTSym_function, TTPtr(&TTMapperInputRangeCallback));
        args.append(returnInputRangeCallback);
	
        mInputRangeObserver = TTObject(kTTSym_Receiver, args);
    }
	
	mInputRangeObserver.set(kTTSym_address, mInput.appendAttribute(kTTSym_rangeBounds));
	
	return kTTErrNone;
}

TTErr TTMapper::setOutput(const TTValue& value)
{
	TTValue		args, v, min, max;
	TTNodePtr	aNode;
	TTObject    anObject;
	TTErr		err;
	
	mOutput = value[0];
	
	mObserveOutputRange = YES;
    
    if (mOutput == kTTAdrsEmpty) {
        
        if (mSender.valid()) {
            mSender.set(kTTSym_address, kTTAdrsEmpty);
            mSender = TTObject();
        }
        
        if (mOutputObserver.valid()) {
            mOutputObserver.set(kTTSym_address, kTTAdrsEmpty);
            mOutputObserver = TTObject();
        }
        
        if (mOutputRangeObserver.valid()) {
            mOutputRangeObserver.set(kTTSym_address, kTTAdrsEmpty);
            mOutputRangeObserver = TTObject();
        }
        
        return kTTErrGeneric;
    }
		
	// Make a sender if needed
    if (!mSender.valid())
        mSender = TTObject(kTTSym_Sender);
	
	mSender.set(kTTSym_address, mOutput.appendAttribute(kTTSym_value));
	
	// Trying to get the Data at this address 
	// and get some infos about range bounds 
	// and if the mapper created before we observe the output address
	if (accessApplicationDirectoryFrom(mOutput)) {
		err = accessApplicationDirectoryFrom(mOutput)->getTTNode(mOutput, &aNode);
		
		if (!err) {
			
			anObject = aNode->getObject();
			if (anObject.valid()) {
                
				if (anObject.name() == kTTSym_Data) {
					
					anObject.get(kTTSym_rangeBounds, v);
					
                    mOutputMin = TTFloat64(v[0]);
                    mOutputMax = TTFloat64(v[1]);
                    mOutputThresholdDown = TTFloat64(v[0]);
                    mOutputThresholdUp = TTFloat64(v[1]);

					scaleOutput();
					
					observeOutputRange();
				}
            }
            return kTTErrNone;
		}
	}
    
    return observeOutput();
}

TTErr TTMapper::observeOutput()
{
	TTObject returnOutputCreationCallback;
	
	if (!mOutputObserver.valid()) {
		
        TTValue     args;
        TTObject    empty;
        
        returnOutputCreationCallback = TTObject("callback");
    
        returnOutputCreationCallback.set(kTTSym_baton, TTObject(this));
        returnOutputCreationCallback.set(kTTSym_function, TTPtr(&TTMapperOutputCreationCallback));
        args.append(returnOutputCreationCallback);
	
        args.append(empty);
	
        mOutputObserver = TTObject(kTTSym_Receiver, args);
    }
	
	mOutputObserver.set(kTTSym_address, mOutput.appendAttribute(kTTSym_created));
	
	return kTTErrNone;
}

TTErr TTMapper::observeOutputRange()
{
	TTObject returnOutputRangeCallback;
	
	if (!mOutputRangeObserver.valid()) {
		
        TTValue     args;
        TTObject    empty;
        
        args.append(empty);
	
        returnOutputRangeCallback = TTObject("callback");
        returnOutputRangeCallback.set(kTTSym_baton, TTObject(this));
        returnOutputRangeCallback.set(kTTSym_function, TTPtr(&TTMapperOutputRangeCallback));
        args.append(returnOutputRangeCallback);
	
        mOutputRangeObserver = TTObject(kTTSym_Receiver, args);
    }
	
	mOutputRangeObserver.set(kTTSym_address, mOutput.appendAttribute(kTTSym_rangeBounds));
	
	return kTTErrNone;
}
#ifndef TT_NO_DSP
TTErr TTMapper::setFunction(const TTValue& value)
{
	long		n;
	TTValue		names;
	TTSymbol	aName;
    TTBoolean   found = NO;
	
	if (mFunctionUnit.valid()) {

		// Remove former datas
		n = mFunctionParameters.size();
		for (int i = 0; i < n; i++) {
			aName = mFunctionParameters[i];
			this->removeAttribute(aName);
		}
		
        mFunctionUnit = TTObject();
		mFunction = kTTSymEmpty;
		mFunctionParameters.clear();
	}
	
    // Check the unit exist and create a new function unit
    mFunction = value;
    
    for (TTElementIter it = mFunctionLibrary.begin() ; it != mFunctionLibrary.end() ; it++)
    {
        TTSymbol unitName = TTElement(*it);
        if (unitName == mFunction)
            found = YES;
    }
    
    if (!found)
        return kTTErrGeneric;
    
    mFunctionUnit = TTObject(mFunction, 1);
	
	// Extend function unit attributes as attributes of this mapper
	// and set mFunctionParameters attribute
	if (mFunctionUnit.valid()) {

		mFunctionUnit.attributes(names);
		n = names.size();
		
		if (n) {
			for (int i = 0; i < n; i++) {
				
				aName = names[i];
				
				// don't publish these datas
				if (aName == kTTSym_bypass || aName == kTTSym_mute || aName == kTTSym_maxNumChannels || aName == kTTSym_sampleRate)
					continue;
				
				// extend attribute with the same name
				this->extendAttribute(aName, mFunctionUnit.instance(), aName);
				mFunctionParameters.append(aName);
			}
		}
		else
			mFunctionParameters.append(kTTSym_none);
		
		notifyObservers(kTTSym_function, value);
		notifyObservers(TTSymbol("functionParameters"), mFunctionParameters);
		return kTTErrNone;
	}

	return kTTErrGeneric;
}
#endif

TTErr TTMapper::setInputMin(const TTValue& value)
{
	mInputMin = value;
	
	// stop input range observation
	mObserveInputRange = false;
	
	if (mInputRangeObserver.valid())
    {
        mInputRangeObserver.set(kTTSym_address, kTTAdrsEmpty);
		mInputRangeObserver = TTObject();
    }
	
	notifyObservers(TTSymbol("inputMin"), value);
	return scaleInput();
}

TTErr TTMapper::setInputMax(const TTValue& value)
{
	mInputMax = value;
	
	// stop input range observation
	mObserveInputRange = false;
	
	if (mInputRangeObserver.valid())
    {
        mInputRangeObserver.set(kTTSym_address, kTTAdrsEmpty);
		mInputRangeObserver = TTObject();
    }
	
	notifyObservers(TTSymbol("inputMax"), value);
	return scaleInput();
}

TTErr TTMapper::setOutputMin(const TTValue& value)
{
	mOutputMin = value;
	
	// stop output range observation
	mObserveOutputRange = false;
	
	if (mOutputRangeObserver.valid())
    {
        mOutputRangeObserver.set(kTTSym_address, kTTAdrsEmpty);
		mOutputRangeObserver = TTObject();
    }
	
	notifyObservers(TTSymbol("outputMin"), value);
	return scaleOutput();
}

TTErr TTMapper::setOutputMax(const TTValue& value)
{
	mOutputMax = value;
	
	// stop output range observation
	mObserveOutputRange = false;
	
	if (mOutputRangeObserver.valid())
    {
        mOutputRangeObserver.set(kTTSym_address, kTTAdrsEmpty);
		mOutputRangeObserver = TTObject();
    }
	
	notifyObservers(TTSymbol("outputMax"), value);
	return scaleOutput();
}

TTErr TTMapper::setActive(const TTValue& value)
{
	mActive = value;
	
	notifyObservers(kTTSym_active, value);
	return kTTErrNone;
}

TTErr TTMapper::setClipmode(const TTValue& value)
{
	TTValue n = value;				// use new value to protect the attribute
	mClipmode = value;
	notifyObservers(kTTSym_clipmode, n);
	return kTTErrNone;
}

// Recalculate values to use for scaling of input values
TTErr TTMapper::scaleInput()
{
	// Prevent dividing by 0
	if (mInputMin == mInputMax)
		mA = 1;
	else
		mA = 1./(mInputMax - mInputMin);
	mB = -1 * mA * mInputMin;
	
	return kTTErrNone;
}

// Recalculate values to use for scaling of output values
TTErr TTMapper::scaleOutput()
{
	mC = mOutputMax - mOutputMin;
	mD = mOutputMin;
	return kTTErrNone;
}

TTErr TTMapper::processMapping(const TTValue& inputValue, TTValue& outputValue)
{
	TTValue		inputCopy, in, out;
	TTFloat64	f;
	TTInt32		i, size;
    
    // we need to copy to protect the inputValue
    inputCopy = inputValue;
	
	size = inputCopy.size();
	
	// clip input value
	if (mClipmode != kTTSym_none) {
		if (mClipmode == kTTSym_low)
			inputCopy.cliplow(mInputMin);
		else if (mClipmode == kTTSym_high)
			inputCopy.cliphigh(mInputMax);
		else if (mClipmode == kTTSym_both)
			inputCopy.clip(mInputMin, mInputMax);
		// Invalid values for mClipmode will result in no clipping
	}
	
	// scale input value
	for (i = 0; i < size; i++) {
		f = inputCopy[i];
		in.append(mA * f + mB);
	}
    
    // select index if needed
	if (mInputIndex > 0 && mInputIndex <= (TTUInt32) size) {
        in = in[mInputIndex-1];
        size = 1;
    }

#ifndef TT_NO_DSP
	// process function
	if (mFunctionUnit.valid())
		TTAudioObjectBasePtr(mFunctionUnit.instance())->calculate(in, out);
	else
#endif		
		out = in;
	
	// scale output value
	for (i = 0; i < size; i++) {
		f = out[i];
		
		if (!mInverse)
			outputValue.append(mC * f + mD);
		else
			outputValue.append(mC * (1. - f) + mD);
	}
	
	// If input value has been clipped, there is generally no need to clip output value
	// Some easing functions are going beyond boundaries (e.g. the easeBack functions), but we assume that if the user opt for one of these easing functions, this is desired behaviour.
	//outputValue.clip(mOutputMin, mOutputMax);
	
	return kTTErrNone;
}

TTErr TTMapper::notifyObservers(TTSymbol attrName, const TTValue& value)
{
	TTAttributePtr	anAttribute = NULL;
	TTErr			err;
	
	err = this->findAttribute(attrName, &anAttribute);
	
	if (!err)
		anAttribute->sendNotification(kTTSym_notify, value);	// we use kTTSym_notify because we know that observers are TTCallback
	
	return kTTErrNone;
}

#if 0
#pragma mark -
#pragma mark Some Methods
#endif

TTErr TTMapperInputCreationCallback(const TTValue& baton, const TTValue& data)
{
    TTObject    o;
	TTMapperPtr aMapper;
	TTValue		v;
	TTAddress   address;
	TTNodePtr	aNode;
	
	// unpack baton (a TTMapper)
    o = baton[0];
	aMapper = (TTMapperPtr)o.instance();
	
	// unpack data (an address)
	address = data[0];
	
	// get the Data at this address 
	// and get some infos about range bounds 
	TTErr err = accessApplicationDirectoryFrom(address)->getTTNode(address, &aNode);
	
	if (!err) {
		
		o = aNode->getObject();
		if (o.valid()) {
            
			if (o.name() == kTTSym_Data || o.name() == kTTSym_Mirror) {
				
				o.get(kTTSym_rangeBounds, v);
				
                if (v.size() == 2) {
                    
                    // if inputMin isn't a specific value or observation is active
                    if (aMapper->mInputMin == 0. || aMapper->mObserveInputRange)
                        aMapper->mInputMin = TTFloat64(v[0]);
                    
                    // if inputMax isn't a specific value or observation is active
                    if (aMapper->mInputMax == 1. || aMapper->mObserveInputRange)
                        aMapper->mInputMax = TTFloat64(v[1]);
                    
                    aMapper->scaleInput();
                }
                
                aMapper->observeInputRange();
			}
		}
	}
	
	return err;
}

TTErr TTMapperOutputCreationCallback(const TTValue& baton, const TTValue& data)
{
    TTObject    o;
	TTMapperPtr aMapper;
	TTValue		v;
	TTAddress   address;
	TTNodePtr	aNode;
	
	// unpack baton (a TTMapper)
    o = baton[0];
	aMapper = (TTMapperPtr)o.instance();
	
	// unpack data (an address)
	address = data[0];
	
	// get the Data at this address 
	// and get some infos about range bounds 
	TTErr err = accessApplicationDirectoryFrom(address)->getTTNode(address, &aNode);
	
	if (!err) {
		
		o = aNode->getObject();
		if (o.valid()) {
            
			if (o.name() == kTTSym_Data || o.name() == kTTSym_Mirror) {
				
				o.get(kTTSym_rangeBounds, v);
                
                if (v.size() == 2) {
                    
                    // if outputMin isn't a specific value or observation is active
                    if (aMapper->mOutputMin == 0. || aMapper->mObserveOutputRange)
                        aMapper->mOutputMin = TTFloat64(v[0]);
                    
                    // if outputMax isn't a specific value or observation is active
                    if (aMapper->mOutputMax == 1. || aMapper->mObserveOutputRange)
                        aMapper->mOutputMax = TTFloat64(v[1]);
                    
                    aMapper->scaleOutput();
                }
                
                aMapper->observeOutputRange();
			}
		}
	}
	
	return err;
}

TTErr TTMapperInputRangeCallback(const TTValue& baton, const TTValue& data)
{
    TTObject    o;
	TTMapperPtr aMapper;

	// unpack baton (a TTMapper)
    o = baton[0];
	aMapper = (TTMapperPtr)o.instance();
	
	if (aMapper->mObserveInputRange) {
		// unpack data (min, max)
		aMapper->mInputMin = data[0];
		aMapper->mInputMax = data[1];
        aMapper->mInputThresholdDown = data[0];
		aMapper->mInputThresholdUp = data[1];
		
		aMapper->scaleInput();
	}
	
	return kTTErrNone;
}

TTErr TTMapperOutputRangeCallback(const TTValue& baton, const TTValue& data)
{
    TTObject    o;
	TTMapperPtr aMapper;
	
	// unpack baton (a TTMapper)
    o = baton[0];
	aMapper = (TTMapperPtr)o.instance();
	
	if (aMapper->mObserveOutputRange) {
		// unpack data (min, max)
		aMapper->mOutputMin = data[0];
		aMapper->mOutputMax = data[1];
        aMapper->mOutputThresholdDown = data[0];
		aMapper->mOutputThresholdUp = data[1];
	
		aMapper->scaleOutput();
	}
	
	return kTTErrNone;
}

TTErr TTMapperReceiveValueCallback(const TTValue& baton, const TTValue& inputValue)
{
    TTObject    o;
	TTMapperPtr aMapper;
	TTValue		outputValue;
	TTValue     none;
	
	// unpack baton (a TTMapper)
    o = baton[0];
	aMapper = (TTMapperPtr)o.instance();
	
	if (aMapper->mActive) {
		
		// process the mapping
		aMapper->processMapping(inputValue, outputValue);
        
        // return value (+ ramp)
		if (aMapper->mSender.valid()) {
            
            // if there is a ramp value, edit the command here
            if (aMapper->mRamp > 0) {
                
                TTDictionaryBasePtr	command;
                TTValue valueAndRamp;
                
                command = new TTDictionaryBase();
                command->setSchema(kTTSym_command);
                command->setValue(outputValue);
                command->append(kTTSym_ramp, aMapper->mRamp);
                
                valueAndRamp = TTValue((TTPtr)command);
                
                aMapper->mSender.send(kTTSym_Send, valueAndRamp);
                
                delete command;
            }
            else
                aMapper->mSender.send(kTTSym_Send, outputValue);
        }
		
        aMapper->mReturnValueCallback.send("notify", outputValue);
        
        // notify if input going down
        TTBoolean newInputGoingDown = inputValue <= TTValue(aMapper->mInputThresholdDown);
        if (newInputGoingDown != aMapper->mInputGoingDown) {
            
            aMapper->mInputGoingDown = newInputGoingDown;
            aMapper->mReturnInputGoingDownCallback.send("notify", aMapper->mInputGoingDown);
        }
        
        // notify if input going up
        TTBoolean newInputGoingUp = inputValue >= TTValue(aMapper->mInputThresholdUp);
        if (newInputGoingUp != aMapper->mInputGoingUp) {
            
            aMapper->mInputGoingUp = newInputGoingUp;
            aMapper->mReturnInputGoingUpCallback.send("notify", aMapper->mInputGoingUp);
        }
        
        // notify if output going down
        TTBoolean newOutputGoingDown = outputValue <= TTValue(aMapper->mOutputThresholdDown);
        if (newOutputGoingDown != aMapper->mOutputGoingDown) {
            
            aMapper->mOutputGoingDown = newOutputGoingDown;
            aMapper->mReturnOutputGoingDownCallback.send("notify", aMapper->mOutputGoingDown);
        }
        
        // notify if output going up
        TTBoolean newOutputGoingUp = outputValue >= TTValue(aMapper->mOutputThresholdUp);
        if (newOutputGoingUp != aMapper->mOutputGoingUp) {
            
            aMapper->mOutputGoingUp = newOutputGoingUp;
            aMapper->mReturnOutputGoingUpCallback.send("notify", aMapper->mOutputGoingUp);
        }
	}
	
	return kTTErrNone;
}

