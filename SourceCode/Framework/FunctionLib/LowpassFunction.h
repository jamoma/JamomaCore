/* 
 * Jamoma FunctionLib: LowpassFunction
 * Copyright © 2007 by Tim Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __LOWPASSFUNCTION_H__
#define __LOWPASSFUNCTION_H__

#include "FunctionLib.h"


/****************************************************************************************************/
// Class Specification


// Specification of our base class
class LowpassFunction : public FunctionUnit{
private:
	TTFloat64		attrCoefficient;
	TTFloat64		one_minus_coefficient;
	TTFloat64		feedback;

	TTErr clear();
	TTErr setCoefficient(const TTValue& newValue);

public:
	LowpassFunction();
	~LowpassFunction();
	
	double map(double x);
	// double lookupValue(double x);

};


#endif // __LOWPASSFUNCTION_H__
