/* 
 * Jamoma RampLib Base Class
 * Copyright © 2008, Tim Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifdef WIN_VERSION
 #pragma warning(disable:4083) //warning C4083: expected 'newline'; found identifier 's'
#endif // WIN_VERSION

#include "RampLib.h"
#include "ext.h"

#define thisTTClass RampUnit

//RampUnit::RampUnit(const char* rampName, RampUnitCallback aCallbackMethod, void *aBaton) : 
RampUnit::RampUnit(TTValue& arguments) :
	TTObject(kTTValNONE),
	callback(NULL),
	baton(NULL),
	startValue(NULL),
	targetValue(NULL),
	currentValue(NULL),
	normalizedValue(0.0),
	numValues(0),
	functionUnit(NULL)
{
	setNumValues(1);
	currentValue[0] = 0.0;
	targetValue[0] = 0.0;
	startValue[0] = 0.0;

	arguments.get(0, (TTPtr*)&callback);
	arguments.get(1, (TTPtr*)&baton);
	
	addAttributeWithSetter(Function, kTypeSymbol);
	setAttributeValue(TT("function"), TT("linear"));
}


RampUnit::~RampUnit()
{
	TTObjectRelease(&functionUnit);
	delete [] currentValue;
	delete [] targetValue;
	delete [] startValue;
}


void RampUnit::set(TTUInt32 newNumValues, TTFloat64 *newValues)
{
	TTUInt32 i;
	
	stop();
	setNumValues(newNumValues);
	for (i=0; i<newNumValues; i++)
		currentValue[i] = newValues[i];
}


TTErr RampUnit::setFunction(const TTValue& functionName)
{
	TTErr		err;
	TTSymbol	newFunctionName;
	
	functionName.get(0, newFunctionName);
	
	if (newFunctionName == TT("none"))
		newFunctionName = TT("linear");
	
	if (newFunctionName == mFunction)
		return kTTErrNone;
	
	mFunction = newFunctionName;
	err = FunctionLib::createUnit(mFunction, (TTObject**)&functionUnit);
	if (err)
		logError("Jamoma ramp unit failed to load the requested FunctionUnit from TTBlue.");
	return err;
}


TTErr RampUnit::getFunctionParameterNames(TTValue& names)
{
	functionUnit->getAttributeNames(names);
	return kTTErrNone;
}


TTErr RampUnit::setFunctionParameterValue(const TTSymbol& parameterName, TTValue& newValue)
{
	functionUnit->setAttributeValue(parameterName, newValue);
	return kTTErrNone;
}


TTErr RampUnit::getFunctionParameterValue(const TTSymbol& parameterName, TTValue& value)
{
	functionUnit->getAttributeValue(parameterName, value);
	return kTTErrNone;
}


void RampUnit::setNumValues(TTUInt32 newNumValues)
{
	if (newNumValues != numValues) {
		if (numValues != 0) {
			delete [] currentValue;
			delete [] targetValue;
			delete [] startValue;
		}
		
		currentValue = new TTFloat64[newNumValues];
		targetValue = new TTFloat64[newNumValues];
		startValue = new TTFloat64[newNumValues];
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
	TTValue v;
	
	v.setSize(2);
	v.set(0, TTPtr(callback));
	v.set(1, TTPtr(baton));
	
	// These should be alphabetized
	if (unitName == TT("async"))
		TTObjectInstantiate(TT("AsyncRamp"), (TTObjectPtr*)unit, v);
		//*unit = (RampUnit*) new AsyncRamp(callback, baton);
	else if (unitName == TT("none"))
		TTObjectInstantiate(TT("NoneRamp"), (TTObjectPtr*)unit, v);
//		*unit = (RampUnit*) new NoneRamp(callback, baton);
	else if (unitName == TT("queue"))
		TTObjectInstantiate(TT("QueueRamp"), (TTObjectPtr*)unit, v);
//		*unit = (RampUnit*) new QueueRamp(callback, baton);
	else if (unitName == TT("scheduler"))
		TTObjectInstantiate(TT("SchedulerRamp"), (TTObjectPtr*)unit, v);
//		*unit = (RampUnit*) new SchedulerRamp(callback, baton);
	else {
		// Invalid function specified default to linear
		error("Jamoma RampLib: Invalid RampUnit ( %s ) specified", (const char*)unitName);
		TTObjectInstantiate(TT("NoneRamp"), (TTObjectPtr*)unit, v);
//		*unit = (RampUnit*) new NoneRamp(callback, baton);
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

