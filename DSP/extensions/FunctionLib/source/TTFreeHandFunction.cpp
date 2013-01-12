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
#define thisTTClassTags		"audio, processor, function"


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
    return kTTErrNone;
}

TTErr TTFreeHandFunction::setCurveList(const TTValue& value)
{
    TTUInt8             curveId;
    TTUInt32            i, next, size;
    TTFloat64           x, y;
    TTSymbol            function, parameterName;
    TTAudioObjectBasePtr    aFunction;
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
            mFunctions.current().get(0, (TTPtr*)&aFunction);
            
            if (aFunction)
                TTObjectBaseRelease(TTObjectBaseHandle(&aFunction));
        }
        
        mFunctions.clear();
    }
    
    // set all points and curves
    size = value.getSize();
    curveId = 0;
    for (i=0; i<size; i = i + next) {
        
        // check size
        if (i+1 >= size)
            err = kTTErrGeneric;
        
        // append a point : x y
        if (value.getType(i) == kTypeFloat64 && value.getType(i+1) == kTypeFloat64) {
            
            value.get(i, x);
            value.get(i+1, y);
            
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
        } else if (value.getType(i+2) == kTypeSymbol) {
            
            value.get(i+2, function);
            TTObjectBaseInstantiate(function, (TTObjectBase**)&aFunction, 1);      // 1 is the numChannel
            
            next = 3;
            
            // check size
            if (i+5 > size)
                ;
            
            // set function parameter
            else if (value.getType(i+3) == kTypeSymbol) {
                
                value.get(i+3, parameterName);
                
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
    TTAudioObjectBasePtr    aFunction;
    TTErr               err;
    
    if (locked)
        return kTTErrGeneric;
    
    if (mPoints.isEmpty())
        return kTTErrNone;
    
    mPoints.begin();
    mPoints.current().get(0, lastX);
    mPoints.current().get(1, lastY);
    
    if (x < lastX) {
        y = lastY;
        return kTTErrNone;
    }
    
     mPoints.next();
    
    // select the function to use
    for (mFunctions.begin(); mFunctions.end(); mFunctions.next()) {
        
        mPoints.current().get(0, currentX);
        mPoints.current().get(1, currentY);
        
        if (x < currentX) {
            
            mFunctions.current().get(0, (TTPtr*)&aFunction);
            
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

