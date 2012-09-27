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

/** macro used to make sure that we setup all decorators the same */
#define TT_MATRIXDECORATORCLASS_SETUP(className)												\
		friend class TTEnvironment;												\
	public:																		\
		static void registerClass();											\
	protected:																	\
		static TTObjectPtr decorate (TTDataObjectPtr decoratedMatrix, TTValue& arguments);	\
		/** Constructor */														\
		className (TTDataObjectPtr decoratedMatrix, TTValue& arguments);											\
		/** Destructor */														\
		virtual ~className ();													\

/******************** a base class for all other matrix decorators ********************/

// TODO: TTCLASS_SETUP will likely need to be revamped for decorator purposes
// TODO: define a macro called "decoratematrix" that would call the proper constructor but make actions clearer
//	-- see convenience macros in TTAttribute

class TTFOUNDATION_EXPORT TTMatrixDecorator : public TTDataObjectPtr {
	TT_MATRIXDECORATORCLASS_SETUP(TTMatrixDecorator)
	
	protected:
		TTDataObjectPtr mDecoratedMatrix;
	
};

/******************** matrix decorator that provides 2d access methods ********************/

class TTFOUNDATION_EXPORT TT2dAccessMatrixDecorator : public TTMatrixDecorator {
	TT_MATRIXDECORATORCLASS_SETUP(TT2dAccessMatrixDecorator)
	
	TTErr where2d(TTRowID i, TTColumnID j, TTPtr pointerReturn);
	TTErr where2d(TTRowID i, TTColumnID j, TTUInt32 element, TTPtr pointerReturn);
	
	template<typename T>
	TTErr get2d(TTPtr pointerStart, T& data);
	
	template<typename T>
	TTErr set2d(TTPtr pointerStart, T& data);
};

/******************** matrix decorator that provides zero-based indexing ********************/

class TTFOUNDATION_EXPORT TTZeroIndexMatrixDecorator : public TTMatrixDecorator {
	TT_MATRIXDECORATORCLASS_SETUP(TTZeroIndexMatrixDecorator)
	
};

/******************** matrix decorator that provides one-based indexing ********************/

class TTFOUNDATION_EXPORT TTOneIndexMatrixDecorator : public TTMatrixDecorator {
	TT_MATRIXDECORATORCLASS_SETUP(TTOneIndexMatrixDecorator)
	
	TTErr where2d(TTRowID i, TTColumnID j, TTPtr pointerReturn)
	{
		i -= 1;			// convert to zero-based indices for data access
		j -= 1;			// convert to zero-based indices for data access
		mDecoratedMatrix->where2d(i,j,pointerReturn);
	};
	TTErr where2d(TTRowID i, TTColumnID j, TTUInt32 element, TTPtr pointerReturn)
	{
		i -= 1;			// convert to zero-based indices for data access
		j -= 1;			// convert to zero-based indices for data access
		element -=1;	// convert to zero-based indices for data access
		mDecoratedMatrix->where2d(i,j,element,pointerReturn);
	};
	
};

/******************** matrix decorator that causes out of bounds to throw errors ********************/

class TTFOUNDATION_EXPORT TTOutOfBoundsErrorMatrixDecorator : public TTMatrixDecorator {
	TT_MATRIXDECORATORCLASS_SETUP(TTOutOfBoundsErrorMatrixDecorator)
	
	// get/set would need to be decorated
	// these methods would throw an error when out of bounds
};

/******************** matrix decorator that causes out of bounds to fill with zeros ********************/

class TTFOUNDATION_EXPORT TTOutOfBoundsZeroFillMatrixDecorator : public TTMatrixDecorator {
	TT_MATRIXDECORATORCLASS_SETUP(TTOutOfBoundsZeroFillMatrixDecorator)
	
	// get/set would need to be decorated
	// these methods would fill with zero values when out of bounds
	// could we use a mask?
	
};

/******************** matrix decorator that causes out of bounds to act like circular array ********************/

class TTFOUNDATION_EXPORT TTOutOfBoundsCircularMatrixDecorator : public TTMatrixDecorator {
	TT_MATRIXDECORATORCLASS_SETUP(TTOutOfBoundsCircularMatrixDecorator)
	
	// get/set would need to be decorated
	// these methods would loop around when out of bounds
	
};
	
#endif // __TT_MATRIXDECORATORS_H__