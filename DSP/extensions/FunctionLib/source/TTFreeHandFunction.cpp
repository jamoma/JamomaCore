/* 
 * TTFreeHandFunction Unit for TTBlue
 * Originally written for the Jamoma FunctionLib
 * Copyright © 2013 by Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTFreeHandFunction.h"
#include <math.h>

#define thisTTClass			TTFreeHandFunction
#define thisTTClassName		"freehand"
#define thisTTClassTags		"dspFunctionLib, audio, processor, function"


TT_AUDIO_CONSTRUCTOR
{
    registerAttribute(TTSymbol("curveList"), kTypeLocalValue, NULL, (TTGetterMethod)&TTFreeHandFunction::getCurveList, (TTSetterMethod)&TTFreeHandFunction::setCurveList);
    
	setProcessMethod(processAudio);
	setCalculateMethod(calculateValue);
    
    Clear();
}

TTFreeHandFunction::~TTFreeHandFunction()
{
	;
}

TTErr TTFreeHandFunction::getCurveList(TTValue& value)
{
    TTAudioObjectBasePtr aFunction;
    TTValue     v, attributeNames;
    TTSymbol    aName;
    TTUInt8     i;
    TTBoolean   firstFunction = YES;
    
    mFunctions.begin();
    
    // for each point
    for (mPoints.begin(); mPoints.end(); mPoints.next()) {
        
        // append the point coordinate
        value.append(mPoints.current());
        
        // the first function is always an exponential base 1. function
        if (firstFunction) {
            
            value.append(TTSymbol("exponential"));
            value.append(TTSymbol("base"));
            value.append(1.);
            
            firstFunction = NO;
            continue;
        }
        
        // append function info
        if (mFunctions.end()) {
            
            aFunction = NULL;
            aFunction = TTAudioObjectBasePtr((TTPtr)mFunctions.current()[0]);
            
            if (aFunction) {
                
                // append function name
                value.append(aFunction->getName());
                
                // for all attributes
                aFunction->getAttributeNames(attributeNames);
                
                for (i = 0; i < attributeNames.size(); i++) {
                    
                    aName = attributeNames[i];
                    if (aName == kTTSym_bypass || aName == TTSymbol("mute") || aName == kTTSym_maxNumChannels || aName == kTTSym_sampleRate)
                        continue;										// don't publish these datas
                    
                    // append attribute name and value
                    aFunction->getAttributeValue(aName, v);
                    value.append(attributeNames[i]);
                    value.append(v);
                }
            }
            
            mFunctions.next();
        }
    }
    
    return kTTErrNone;
}

TTErr TTFreeHandFunction::setCurveList(const TTValue& value)
{
    TTUInt8             curveId;
    TTUInt32            i, next, size;
    TTFloat64           x, y;
    TTSymbol            function, parameterName;
    TTAudioObjectBasePtr aFunction;
    TTValue             v;
    TTErr               err = kTTErrNone;
    
    locked = YES;
    
    // clear all existing points
    if (!mPoints.isEmpty())
        mPoints.clear();
    
    // clear all existing functions
    if (!mFunctions.isEmpty()) {
        
        for (mFunctions.begin(); mFunctions.end(); mFunctions.next()) {
            
            aFunction = NULL;
            aFunction = TTAudioObjectBasePtr((TTPtr)mFunctions.current()[0]);
            
            if (aFunction)
                TTObjectBaseRelease(TTObjectBaseHandle(&aFunction));
        }
        
        mFunctions.clear();
    }
    
    // set all points and curves
    size = value.size();
    curveId = 0;
    for (i = 0; i < size; i = i + next) {
        
        // check size
        if (i+1 >= size)
            err = kTTErrGeneric;
        
        // append a point : x y
        if (value[i].type() == kTypeFloat64 && value[i+1].type() == kTypeFloat64) {
            
            x = value[i];
            y = value[i+1];
            
            v = TTValue(x);
            v.append(y);
            mPoints.append(v);
            
            next = 2;
        }
        else
            err = kTTErrGeneric;
        
        // create a function
        aFunction = NULL;
        
        // check size
        if (i+2 >= size) {
            TTObjectBaseInstantiate(TTSymbol("linear"), (TTObjectBase**)&aFunction, 1);      // 1 is the numChannel
            
            // set function type
        } else if (value[i+2].type() == kTypeSymbol) {
            
            function = value[i+2];
            TTObjectBaseInstantiate(function, (TTObjectBase**)&aFunction, 1);      // 1 is the numChannel
            
            next = 3;
            
            // check size
            if (i+5 > size)
                ;
            
            // set function parameter
            else if (value[i+3].type() == kTypeSymbol) {
                
                parameterName = value[i+3];
                
                v.copyRange(value, i+4, i+5);
                aFunction->setAttributeValue(parameterName, v);
                
                next = 5;
            }
            else
                err = kTTErrGeneric;
        }
        else
            TTObjectBaseInstantiate(TTSymbol("linear"), (TTObjectBase**)&aFunction, 1);      // 1 is the numChannel
        
        // for the first point : release the function
        if (!curveId) {
            TTObjectBaseRelease(TTObjectBaseHandle(&aFunction));
        }
        
        // append the function
        else {
            v = TTValue((TTPtr)aFunction);
            mFunctions.append(v);
        }
        
        curveId++;
    }
    
    locked = NO;
    
    return err;
}

TTErr TTFreeHandFunction::Clear()
{
    TTValue init;
    
    init.append(0.);
    init.append(0.);
    
    init.append(1.);
    init.append(1.);
    
    return setCurveList(init);
}

TTErr TTFreeHandFunction::calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data)
{
    TTFloat64           lastX, lastY;
    TTFloat64           currentX, currentY;
    TTFloat64           scaledX, scaledY;
    TTAudioObjectBasePtr aFunction;
    TTErr               err;
    
    if (locked)
        return kTTErrGeneric;
    
    if (mPoints.isEmpty())
        return kTTErrNone;
    
    mPoints.begin();
    lastX = mPoints.current()[0];
    lastY = mPoints.current()[1];
    
    if (x < lastX) {
        y = lastY;
        return kTTErrNone;
    }
    
     mPoints.next();
    
    // select the function to use
    for (mFunctions.begin(); mFunctions.end(); mFunctions.next()) {
        
        currentX = mPoints.current()[0];
        currentY = mPoints.current()[1];
        
        if (x < currentX) {
            
            aFunction = TTAudioObjectBasePtr((TTPtr)mFunctions.current()[0]);
            
            // scale x
            scaledX = (x - lastX) / (currentX - lastX);
            
            // use function
            err = aFunction->calculate(scaledX, scaledY);
            
            // scale y
            y = (currentY - lastY) * scaledY + lastY;

            return err;
        }
        
        lastX = currentX;
        lastY = currentY;
        mPoints.next();
    }
    
    y = lastY;

	return kTTErrNone;
}


TTErr TTFreeHandFunction::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TT_WRAP_CALCULATE_METHOD(calculateValue);
}

