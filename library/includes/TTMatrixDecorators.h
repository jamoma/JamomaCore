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

/******************** a base class for all other matrix decorators ********************/

// TODO: TTCLASS_SETUP will likely need to be revamped for decorator purposes
// TODO: define a macro called "decoratematrix" that would call the proper constructor but make actions clearer
//	-- see convenience macros in TTAttribute

class TTFOUNDATION_EXPORT TTMatrixDecorator : public TTDataObjectPtr {
	TTCLASS_SETUP(TTMatrixDecorator)
	
	protected:
		TTMatrixPtr mDecoratedMatrix;
	
};

/******************** matrix decorator that provides 2d access methods ********************/

class TTFOUNDATION_EXPORT TT2dAccessMatrixDecorator : public TTMatrixDecorator {
	TTCLASS_SETUP(TT2dAccessMatrixDecorator)
	
	TTErr where2d(TTRowID i, TTColumnID j, TTPtr pointerReturn);
	TTErr where2d(TTRowID i, TTColumnID j, TTUInt32 element, TTPtr pointerReturn);
	
	template<typename T>
	TTErr get2d(TTPtr pointerStart, T& data);
	
	template<typename T>
	TTErr set2d(TTPtr pointerStart, T& data);
};

/******************** matrix decorator that provides zero-based indexing ********************/

class TTFOUNDATION_EXPORT TTZeroIndexMatrixDecorator : public TTMatrixDecorator {
	TTCLASS_SETUP(TTZeroIndexMatrixDecorator)
	
};

/******************** matrix decorator that provides one-based indexing ********************/

class TTFOUNDATION_EXPORT TTOneIndexMatrixDecorator : public TTMatrixDecorator {
	TTCLASS_SETUP(TTOneIndexMatrixDecorator)
	
	TTErr where2d(TTRowID i, TTColumnID j, TTPtr pointerReturn)
	{
		i -= 1;			// convert to zero-based indices for data access
		j -= 1;			// convert to zero-based indices for data access
		matrix->where(i,j,pointerReturn);
	};
	TTErr where2d(TTRowID i, TTColumnID j, TTUInt32 element, TTPtr pointerReturn)
	{
		i -= 1;			// convert to zero-based indices for data access
		j -= 1;			// convert to zero-based indices for data access
		element -=1;	// convert to zero-based indices for data access
		matrix->where(i,j,element,pointerReturn);
	};
	
};

/******************** matrix decorator that causes out of bounds to throw errors ********************/

class TTFOUNDATION_EXPORT TTOutOfBoundsErrorMatrixDecorator : public TTMatrixDecorator {
	TTCLASS_SETUP(TTOutOfBoundsErrorMatrixDecorator)
	
	// get/set would need to be decorated
	// these methods would throw an error when out of bounds
};

/******************** matrix decorator that causes out of bounds to fill with zeros ********************/

class TTFOUNDATION_EXPORT TTOutOfBoundsZeroFillMatrixDecorator : public TTMatrixDecorator {
	TTCLASS_SETUP(TTOutOfBoundsZeroFillMatrixDecorator)
	
	// get/set would need to be decorated
	// these methods would fill with zero values when out of bounds
	// could we use a mask?
	
};

/******************** matrix decorator that causes out of bounds to act like circular array ********************/

class TTFOUNDATION_EXPORT TTOutOfBoundsCircularMatrixDecorator : public TTMatrixDecorator {
	TTCLASS_SETUP(TTOutOfBoundsCircularMatrixDecorator)
	
	// get/set would need to be decorated
	// these methods would loop around when out of bounds
	
};
	
#endif // __TT_MATRIXDECORATORS_H__