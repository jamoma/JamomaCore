/* 
 * Jamoma RampLib Base Class
 * Copyright © 2008, Tim Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "RampLib.h"
#include "ext.h"

RampUnit::RampUnit(const char* rampName, RampUnitCallback aCallbackMethod, void *aBaton)
	: TTObject(rampName), startValue(NULL), targetValue(NULL), currentValue(NULL), normalizedValue(0.0), numValues(0), functionUnit(NULL)
{
	callback = aCallbackMethod;
	baton = aBaton;
	setNumValues(1);
	currentValue[0] = 0.0;
	targetValue[0] = 0.0;
	startValue[0] = 0.0;

	registerAttribute(TT("function"),	kTypeSymbol,	&attrFunction,	(TTSetterMethod)&RampUnit::setFunction);
	
	//registerMessage(TT("getFunctionParameterNames"), (TTMethod)&RampUnit::getFunctionParameterNames);
	//registerMessage(TT("setFunctionParameterValue"), (TTMethod)&RampUnit::setFunctionParameterValue);
	//registerMessage(TT("getFunctionParameterValue"), (TTMethod)&RampUnit::getFunctionParameterValue);
	
	setAttributeValue(TT("function"), TT("linear"));
}


RampUnit::~RampUnit()
{
	delete functionUnit;
	delete [] currentValue;
	delete [] targetValue;
	delete [] startValue;
}


void RampUnit::set(TTUInt32 newNumValues, TTFloat64 *newValues)
{
	short i;
	
	stop();
	setNumValues(newNumValues);
	for(i=0; i<newNumValues; i++)
		currentValue[i] = newValues[i];
}


TTErr RampUnit::setFunction(const TTValue& functionName)
{
	attrFunction = functionName;
	return FunctionLib::createUnit(attrFunction, &functionUnit);
}


TTErr RampUnit::getFunctionParameterNames(TTSymbol& parameterName, TTValue& names)
{
	functionUnit->getAttributeNames(names);
	return kTTErrNone;
}


TTErr RampUnit::setFunctionParameterValue(TTSymbol& parameterName, const TTValue& newValue)
{
	functionUnit->setAttributeValue(parameterName, newValue);
	return kTTErrNone;
}


TTErr RampUnit::getFunctionParameterValue(TTSymbol& parameterName, TTValue& value)
{
	functionUnit->getAttributeValue(parameterName, value);
	return kTTErrNone;
}


void RampUnit::setNumValues(TTUInt32 newNumValues)
{
	if(newNumValues != numValues){
		if(numValues != 0){
			delete [] currentValue;
			delete [] targetValue;
			delete [] startValue;
		}
		
//		if(numValues == 0){
			currentValue = new TTFloat64[newNumValues]; // (TTFloat64*)malloc(newNumValues * sizeof(double));
			targetValue = new TTFloat64[newNumValues]; // (TTFloat64*)malloc(newNumValues * sizeof(double));
			startValue = new TTFloat64[newNumValues]; // (TTFloat64*)malloc(newNumValues * sizeof(double));
//		}
//		else{
			
//			currentValue = // (TTFloat64*)realloc(currentValue, newNumValues * sizeof(double));
//			targetValue = // (TTFloat64*)realloc(targetValue, newNumValues * sizeof(double));
//			startValue = // (TTFloat64*)realloc(startValue, newNumValues * sizeof(double));
//		}
		numValues = newNumValues;
	}
	sendMessage(TT("numValuesChanged"));	// Notify sub-classes (if they respond to this message)
}

 
/***************************************************************************
	RampLib
 ***************************************************************************/

#include "AsyncRamp.h"
#include "NoneRamp.h"
#include "QueueRamp.h"
#include "SchedulerRamp.h"


JamomaError RampLib::createUnit(const TTSymbol& unitName, RampUnit **unit, RampUnitCallback callback, void* baton)
{
	if(*unit)
		delete *unit;

	// These should be alphabetized
	if(unitName == TT("async"))
		*unit = (RampUnit*) new AsyncRamp(callback, baton);
	else if(unitName == TT("none"))
		*unit = (RampUnit*) new NoneRamp(callback, baton);
	else if(unitName == TT("queue"))
		*unit = (RampUnit*) new QueueRamp(callback, baton);
	else if(unitName == TT("scheduler"))
		*unit = (RampUnit*) new SchedulerRamp(callback, baton);
	else {
		// Invalid function specified default to linear
//		TTLogError("rampLib: Invalid rampUnit: %s", (char*)unitName);
		error("puke");
		*unit = (RampUnit*) new NoneRamp(callback, baton);
	}
	return JAMOMA_ERR_NONE;
}


void RampLib::getUnitNames(TTValue& unitNames)
{
	unitNames.clear();
	unitNames.append(TT("async"));
	unitNames.append(TT("none"));
	unitNames.append(TT("queue"));
	unitNames.append(TT("scheduler"));
}

