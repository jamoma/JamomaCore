/* 
 * Jamoma FunctionLib: TanhFunction
 * Copyright © 2007 by Trond Lossius
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __TANHFUNCTION_H__
#define __TANHFUNCTION_H__

#include "FunctionLib.h"


/****************************************************************************************************/
// Class Specification


// Specification of our base class
class TanhFunction : public FunctionUnit{
private: 
	TTFloat64	attrWidth;		///< Parameter for function: y pow(x,pow(2,powerValue))	
	TTFloat64	attrOffset;		///< k = pow(2,powerValue)
	double		a;				///< Internal coefficient
	double		b;				///< Internal coefficient
	double		alpha;			///< Internal coefficient
	double		beta;			///< Internal coefficient
	
	/** Calculate coefficients */
	void calculateOutputScaling(void);
	
	/** Calculate coefficients when this attr is set */
	TTErr setWidth(const TTValue& value);
	
	/** Calculate coefficients when this attr is set */
	TTErr setOffset(const TTValue& value);

public:
	//** Constructor. */
	TanhFunction();
	
	/** Destructor. */
	virtual ~TanhFunction();
	
	/** apply the function -- declared public so it can be called directly for efficiency */
	double map(double x);	
};


#endif // __TANHFUNCTION_H__
