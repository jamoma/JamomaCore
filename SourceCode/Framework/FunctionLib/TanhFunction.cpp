/* 
 * Jamoma FunctionLib: TanhFunction
 * Copyright © 2007 by Trond Lossius
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TanhFunction.h"
#include <math.h>


TanhFunction::TanhFunction()
	: FunctionUnit("function.tanh")
{
	// Register Attributes...
	registerAttribute(TT("offset"),		kTypeFloat64,	&attrOffset,	(TTSetterMethod)&TanhFunction::setOffset);
	registerAttribute(TT("width"),		kTypeFloat64,	&attrWidth,		(TTSetterMethod)&TanhFunction::setWidth);
	
	// Set Defaults...
	setAttributeValue(TT("offset"),	0.0);
	setAttributeValue(TT("width"), 1.0);
}


TanhFunction::~TanhFunction()
{
	;
}


TTErr TanhFunction::setOffset(const TTValue& newValue)
{
	attrOffset = newValue;
	b = 0.5*(attrOffset+1);
	calculateOutputScaling();
	return kTTErrNone;
}


TTErr TanhFunction::setWidth(const TTValue& newValue)
{
	attrWidth = newValue;
	if(attrWidth <= 0)
		a = log(7.0);
	else 
		a = log(7.0)/attrWidth;
	calculateOutputScaling();
	return kTTErrNone;
}


void TanhFunction::calculateOutputScaling(void)
{
	double f0, f1;
	
	f0=tanh(a*(-b));
	f1=tanh(a*(1-b));
	// This will never be division by zero, due to the fact that we always have width > 0
	alpha = 1/(f1-f0);
	beta = f0;
}


double TanhFunction::map(double x)
{
	return alpha*(tanh(a*(x-b)) - beta);
}

