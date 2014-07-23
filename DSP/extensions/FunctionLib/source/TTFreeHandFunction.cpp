/** @file
 *
 * @ingroup dspFunctionLib
 *
 * @brief #TTFreeHandFunction Unit for Jamoms DSP
 *
 * @details A piecewise function unit that allows to load a function unit per defined domain. @n
 * The default configuration is a linear function for X[0::1], Y[0::1] domain. @n
 * Setup the curveList attribute to change the configuration. @n
 * For example setting curveList to the < 0.3 0.6 exponential base 0.5 1. 1. logarithm base 0.8 > value @n
 * you will imply the following behavior :
 *  -  if x belongs to [0::0.3] domain, it will use the exponential function and the result will belong to [0.::0.6] domain.
 *  -  if x belongs to ]0.3::1.] domain, it will use the logarithm function and the result will belong to  ]0.6::1.] domain.
 *
 * @authors Théo de la Hogue, Trond Lossius
 *
 * @copyright Copyright © 2013 by Théo de la Hogue @n
 * This code is licensed under the terms of the "New BSD License" @n
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
            
            TTObject aFunction = mFunctions.current()[0];
            
            if (aFunction.valid()) {
                
                TTValue attributeNames;
                TTUInt8 i;
                
                // append function name
                value.append(aFunction.name());

                // for all attributes
                aFunction.attributes(attributeNames);
                
                for (i = 0; i < attributeNames.size(); i++) {
                    
                    TTSymbol aName = attributeNames[i];
                    
                    if (aName == kTTSym_bypass || aName == TTSymbol("mute") || aName == kTTSym_maxNumChannels || aName == kTTSym_sampleRate)
                        continue;										// don't publish these datas

                    // append attribute name
                    value.append(aName);
                    
                    // append attribute value
                    TTValue v;
                    aFunction.get(aName, v);
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
    TTUInt8     curveId;
    TTUInt32    i, next, size;
    TTFloat64   x, y;
    TTSymbol    function, parameterName;
    TTObject    aFunction;
    TTValue     v;
    TTErr       err = kTTErrNone;
    
    locked = YES;
    
    // clear all existing points
    mPoints.clear();
    
    // clear all existing functions
    mFunctions.clear();

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
            aFunction = TTObject("linear", 1);      // 1 is the numChannel
            
            // set function type
        } else if (value[i+2].type() == kTypeSymbol) {
            
            function = value[i+2];
            aFunction = TTObject(function, 1);      // 1 is the numChannel
            
            next = 3;
            
            // check size
            if (i+5 > size)
                ;
            
            // set function parameter
            else if (value[i+3].type() == kTypeSymbol) {
                
                parameterName = value[i+3];
                
                v.copyRange(value, i+4, i+5);
                aFunction.set(parameterName, v);
                
                next = 5;
            }
            else
                err = kTTErrGeneric;
        }
        else
            aFunction = TTObject("linear", 1);      // 1 is the numChannel
        
        // for the first point : release the function
        if (!curveId)
            aFunction = TTObject();
        
        // append the function
        else
            mFunctions.append(aFunction);
        
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
    TTFloat64   lastX, lastY;
    TTFloat64   currentX, currentY;
    TTFloat64   scaledX, scaledY;
    TTObject    aFunction;
    TTErr       err;
    
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
            
            aFunction = mFunctions.current()[0];
            
            // scale x
            scaledX = (x - lastX) / (currentX - lastX);
            
            // use function
            err = TTAudioObjectBasePtr(aFunction.instance())->calculate(scaledX, scaledY);
            
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

