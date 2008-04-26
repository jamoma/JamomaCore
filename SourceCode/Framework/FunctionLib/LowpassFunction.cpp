/* 
 * Jamoma FunctionLib: LowpassFunction
 * Copyright © 2007 by Tim Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "LowpassFunction.h"


LowpassFunction::LowpassFunction()
	: FunctionUnit("function.lowpass")
{
	registerAttribute(TT("coefficient"), kTypeFloat64, &attrCoefficient, (TTSetterMethod)&LowpassFunction::setCoefficient);	
	registerMessage(TT("clear"), (TTMethod)&LowpassFunction::clear);
	
	// Set Defaults...
	setAttributeValue(TT("coefficient"), 0.75);
	sendMessage(TT("clear"));
}

LowpassFunction::~LowpassFunction()
{
	;
}


double LowpassFunction::map(double x)
{
	feedback = antiDenormal((feedback * attrCoefficient) + (x * one_minus_coefficient));
	return feedback;
}


TTErr LowpassFunction::clear()
{
	feedback = 0.0;
	return kTTErrNone;
}


TTErr LowpassFunction::setCoefficient(const TTValue& newValue)
{
	attrCoefficient = newValue;
	one_minus_coefficient = 1.0 - attrCoefficient;
	return kTTErrNone;
}

