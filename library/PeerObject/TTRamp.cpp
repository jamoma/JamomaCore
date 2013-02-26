/*
 * Ramp Class
 * Copyright © 2008, Tim Place, Théo de la Hogue
 *
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTRamp.h"

#define thisTTClass			TTRamp
#define thisTTClassName		"Ramp"
#define thisTTClassTags		"ramp"

TT_MODULAR_CONSTRUCTOR,
mSchedulerUnit(NULL),
#ifndef TT_NO_DSP
mFunctionUnit(NULL),
#endif
mScheduler(kTTSymEmpty),
#ifndef TT_NO_DSP
mFunction(kTTSymEmpty),
#endif
mRampTime(0.),
mNumValues(0),
mCallback(NULL),
mBaton(NULL),
startValue(NULL),
targetValue(NULL),
currentValue(NULL)
{
	mCallback = TTRampCallback((TTPtr)arguments[0]);
	mBaton = (TTPtr)arguments[1];
	
    addAttributeWithSetter(Scheduler, kTypeSymbol);
#ifndef TT_NO_DSP    
	addAttributeWithSetter(Function, kTypeSymbol);
#endif
    addAttribute(RampTime, kTypeFloat64);
    
    registerAttribute(TTSymbol("running"), kTypeLocalValue, NULL, (TTGetterMethod)& TTRamp::getRunning);
    
    addMessageWithArguments(Set);
    addMessageWithArguments(Target);
    addMessageWithArguments(Go);
    addMessageWithArguments(Slide);
	addMessage(Stop);
    
	setAttributeValue(kTTSym_function, TTSymbol("linear"));
}

TTRamp::~TTRamp()
{
    if (mSchedulerUnit)
        TTObjectBaseRelease(&mSchedulerUnit);
#ifndef TT_NO_DSP    
    if (mFunctionUnit)
        TTObjectBaseRelease(&mFunctionUnit);
#endif
	delete [] currentValue;
	delete [] targetValue;
	delete [] startValue;
}

TTErr TTRamp::getRunning(TTValue& value)
{
    if (mSchedulerUnit)
        mSchedulerUnit->getAttributeValue(TTSymbol("running"), value);
    else
        value = NO;
    
    return kTTErrNone;
}

TTErr TTRamp::setScheduler(const TTValue& inputValue)
{
	TTErr		err;
	TTSymbol	newSchedulerName;
    TTValue     args;
	
	newSchedulerName = inputValue[0];
	
	if (newSchedulerName == mScheduler)
		return kTTErrNone;
	
	mScheduler = newSchedulerName;
    
    if (mSchedulerUnit)
        TTObjectBaseRelease(&mSchedulerUnit);
    
    args.append((TTPtr)&TTRampSchedulerCallback);
    args.append((TTPtr)this); // we have to store this as a pointer
    
    err = TTObjectBaseInstantiate(mScheduler, TTObjectBaseHandle(&mSchedulerUnit), args);
    
	if (err) {
        mSchedulerUnit = NULL;
		logError("TTRamp failed to load the requested Scheduler");
    }
    
	return err;
}
#ifndef TT_NO_DSP
TTErr TTRamp::setFunction(const TTValue& inputValue)
{
	TTErr		err;
	TTSymbol	newFunctionName;
	
	newFunctionName = inputValue[0];
	
	if (newFunctionName == TTSymbol("none"))
		newFunctionName = TTSymbol("linear");
	
	if (newFunctionName == mFunction)
		return kTTErrNone;
	
	mFunction = newFunctionName;
    
    if (mFunctionUnit)
        TTObjectBaseRelease(&mFunctionUnit);
    
    err = TTObjectBaseInstantiate(mFunction, TTObjectBaseHandle(&mFunctionUnit), 1); // for 1 channel only
	if (err)
		logError("TTRamp failed to load the requested Function");
    
	return err;
}
#endif
TTErr TTRamp::Set(const TTValue& inputValue, TTValue& outputValue)
{
    TTUInt32 i;
	
    if (mSchedulerUnit)
        mSchedulerUnit->sendMessage(TTSymbol("Stop"));
    
    mNumValues = inputValue.size();
    
    startValue = new TTFloat64[mNumValues];
    
    for (i = 0; i < mNumValues; i++)
        startValue[i] = TTFloat64(inputValue[i]);
    
    return kTTErrNone;
}

TTErr TTRamp::Target(const TTValue& inputValue, TTValue& outputValue)
{
    TTUInt32 i;
	
    if (mSchedulerUnit)
        mSchedulerUnit->sendMessage(TTSymbol("Stop"));
    
    if (mNumValues == inputValue.size()) {
        
        currentValue = new TTFloat64[mNumValues];
        targetValue = new TTFloat64[mNumValues];
        
        for (i = 0; i < mNumValues; i++) {
            currentValue[i] = startValue[i];
            targetValue[i] = TTFloat64(inputValue[i]);
        }
        
        return kTTErrNone;
    }
    
    return kTTErrGeneric;
}

TTErr TTRamp::Go(const TTValue& inputValue, TTValue& outputValue)
{
    if (mSchedulerUnit) {
        
        if (inputValue.size() == 1) {
        
            mRampTime = inputValue[0];
                    
            return mSchedulerUnit->sendMessage(TTSymbol("Go"), mRampTime, kTTValNONE);
        }
    }
    
    return kTTErrGeneric;
}

TTErr TTRamp::Slide(const TTValue& inputValue, TTValue& outputValue)
{    
    if (inputValue.size() == 1) {
        
        if (inputValue[0].type() == kTypeFloat64) {
            
            TTRampSchedulerCallback(TTPtr(this), inputValue[0]);
            return kTTErrNone;
        }
    }

    return kTTErrGeneric;
}

TTErr TTRamp::Stop()
{
    if (mSchedulerUnit) {
        
        mRampTime = 0.;
        
        return mSchedulerUnit->sendMessage(TTSymbol("Stop"));
    }
    
    return kTTErrGeneric;
}
#ifndef TT_NO_DSP
TTErr TTRamp::getFunctionParameterNames(TTValue& names)
{
	mFunctionUnit->getAttributeNames(names);
	return kTTErrNone;
}

TTErr TTRamp::setFunctionParameterValue(TTSymbol ParameterName, TTValue& newValue)
{
	mFunctionUnit->setAttributeValue(ParameterName, newValue);
	return kTTErrNone;
}

TTErr TTRamp::getFunctionParameterValue(TTSymbol ParameterName, TTValue& value)
{
	mFunctionUnit->getAttributeValue(ParameterName, value);
	return kTTErrNone;
}
#endif
void TTRampSchedulerCallback(TTPtr object, TTFloat64 progression)
{
	TTRampPtr	aRamp = (TTRampPtr)object;
    TTUInt32	i;
	TTFloat64	mapped;
	TTFloat64	*current = aRamp->currentValue;
	TTFloat64	*target = aRamp->targetValue;
	TTFloat64	*start = aRamp->startValue;
    
#ifndef TT_NO_DSP     
	if (aRamp->mFunctionUnit) {
       
		aRamp->mFunctionUnit->calculate(progression, mapped);

		for (i = 0; i <  aRamp->mNumValues; i++)
			current[i] = start[i] + ((target[i] - start[i]) * mapped);
		
		(aRamp->mCallback)(aRamp->mBaton, aRamp->mNumValues, current);
	}
    
#else
    
    mapped = progression;
    
    for (i = 0; i <  aRamp->mNumValues; i++)
        current[i] = start[i] + ((target[i] - start[i]) * mapped);
    
    (aRamp->mCallback)(aRamp->mBaton, aRamp->mNumValues, current);
#endif
    
}
