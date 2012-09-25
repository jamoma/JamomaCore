/*
 * Decorators for the TTMatrix class
 * Copyright © 2012, Nathan Wolek
 *
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_MATRIXDECORATORS_H__
#define __TT_MATRIXDECORATORS_H__

#include "TTMatrix.h"
#include "TTEnvironment.h"

// will the TTCLASS_SETUP need to be revamped for decorator purposes?

class TTFOUNDATION_EXPORT TTMatrixDecorator : public TTDataObject {
	TTCLASS_SETUP(TTMatrixDecorator)
	
	protected:
		TTMatrixPtr matrix;
	
};

class TTFOUNDATION_EXPORT TTZeroIndexMatrixDecorator : public TTMatrixDecorator {
	TTCLASS_SETUP(TTZeroIndexMatrixDecorator)
	
};

class TTFOUNDATION_EXPORT TTOneIndexMatrixDecorator : public TTMatrixDecorator {
	TTCLASS_SETUP(TTOneIndexMatrixDecorator)
	
	TTErr where(TTRowID i, TTColumnID j, TTPtr pointerReturn)
	{
		i -= 1;			// convert to zero-based indices for data access
		j -= 1;			// convert to zero-based indices for data access
		matrix->where(i,j,pointerReturn);
	};
	TTErr where(TTRowID i, TTColumnID j, TTUInt32 element, TTPtr pointerReturn)
	{
		i -= 1;			// convert to zero-based indices for data access
		j -= 1;			// convert to zero-based indices for data access
		element -=1;	// convert to zero-based indices for data access
		matrix->where(i,j,element,pointerReturn);
	};
	
};

class TTFOUNDATION_EXPORT TT2dMatrixDecorator : public TTMatrixDecorator {
	TTCLASS_SETUP(TT2dMatrixDecorator)
	
	TTErr where(TTRowID i, TTColumnID j, TTPtr pointerReturn);
	TTErr where(TTRowID i, TTColumnID j, TTUInt32 element, TTPtr pointerReturn);
	
	template<typename T>
	TTErr get(TTPtr pointerStart, T& data);
	
	template<typename T>
	TTErr set(TTPtr pointerStart, T& data);
};

class TTFOUNDATION_EXPORT TTOutOfBoundsErrorMatrixDecorator : public TTMatrixDecorator {
	TTCLASS_SETUP(TTOutOfBoundsErrorMatrixDecorator)
	
	// get/set would need to be decorated
	// these methods would throw an error when out of bounds
};

class TTFOUNDATION_EXPORT TTOutOfBoundsZeroPadMatrixDecorator : public TTMatrixDecorator {
	TTCLASS_SETUP(TTOutOfBoundsZeroPadMatrixDecorator)
	
	// get/set would need to be decorated
	// these methods would fill with zero values when out of bounds
	// could we use a mask?
	
};

class TTFOUNDATION_EXPORT TTOutOfBoundsCircularMatrixDecorator : public TTMatrixDecorator {
	TTCLASS_SETUP(TTOutOfBoundsCircularMatrixDecorator)
	
	// get/set would need to be decorated
	// these methods would loop around when out of bounds
	
};
	
#endif // __TT_MATRIXDECORATORS_H__