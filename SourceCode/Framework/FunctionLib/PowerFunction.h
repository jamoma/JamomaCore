/* 
 * Jamoma FunctionLib: PowerFunction
 * Copyright © 2007 by Trond Lossius
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __POWERFUNCTION_H__
#define __POWERFUNCTION_H__

#include "FunctionLib.h"


/****************************************************************************************************/
// Class Specification


// Specification of our base class
class PowerFunction : public FunctionUnit{
private:
	TTSymbol	attrSymmetry;		///< Mode: none, point or axis
	double		attrPowerValue;		///< Parameter for function: y pow(x,pow(2,powerValue))	
	double		k;					///< k = pow(2,powerValue)

	/** Attribute setter. */
	TTErr PowerFunction::setPowerValue(const TTValue& newValue);
	
public:
	PowerFunction();
	~PowerFunction();
	
	double map(double x);
	// double lookupValue(double x);	
};


#endif // __POWERFUNCTION_H__
