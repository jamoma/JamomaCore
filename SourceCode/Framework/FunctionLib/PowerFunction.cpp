/* 
 * Jamoma FunctionLib: PowerFunction
 * Copyright © 2007 by Trond Lossius
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "PowerFunction.h"


PowerFunction::PowerFunction()
	: FunctionUnit("function.power")
{
	registerAttribute(TT("symmetry"),	kTypeSymbol, &attrSymmetry);	
	registerAttribute(TT("powerValue"),	kTypeFloat64, &attrPowerValue, (TTSetterMethod)&PowerFunction::setPowerValue);	
	
	// Set Defaults...
	setAttributeValue(TT("powerValue"), 0.0);
	setAttributeValue(TT("symmetry"), TT("none"));
}


PowerFunction::~PowerFunction()
{
	;
}


double PowerFunction::map(double x)
{
	double y, sign;	
	
	if (attrSymmetry==TT("point")) {
//	if(attrSymmetry == kTTSym_point){
		y = 2*x-1;
		if (y<0)
			sign=-1;
		else
			sign=1;
		return 0.5*(sign*pow(fabs(y),k)+1);
	}
	else if (attrSymmetry==TT("axis"))
//	else if(attrSymmetry == kTTSym_axis)
		return pow(fabs(2*x-1),k);
	else 
		return pow(x,k);
}


TTErr PowerFunction::setPowerValue(const TTValue& newValue)
{
	attrPowerValue = newValue;
	k = pow(2, attrPowerValue);
	return kTTErrNone;
}

