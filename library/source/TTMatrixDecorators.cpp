/*
 * Decorators for the TTMatrix class
 * Copyright © 2012, Nathan Wolek
 *
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTMatrix.h"
#include "TTEnvironment.h"
#include "TTMatrixDecorators.h"

/** macro used to make sure that we setup all decorators the same */
#define TT_MATRIXDECORATOR_CONSTRUCTOR \
	TTObjectPtr thisTTClass :: decorate (TTDataObjectPtr decoratedMatrix, TTValue& arguments) \
		{return new thisTTClass (decoratedMatrix, arguments);} \
	\
	extern "C" void thisTTClass :: registerClass () \
		{TTClassRegister( TT(thisTTClassName), thisTTClassTags, thisTTClass :: decorate );} \
	\
	thisTTClass :: thisTTClass (TTDataObjectPtr decoratedMatrix, TTValue& arguments) : TTDataObjectPtr(arguments), mDecoratedMatrix(decoratedMatrix)


/******************** a base class for all other matrix decorators ********************/

#define thisTTClass			TTMatrixDecorator
#define thisTTClassName		"matrixdecorator"
#define thisTTClassTags		"matrix, decorator"

// TODO: will the TT_OBJECT_CONSTRUCTOR need to be revamped for decorator purposes?

TT_MATRIXDECORATOR_CONSTRUCTOR,
{;}

TTMatrixDecorator::~TTMatrixDecorator
{;}


/******************** matrix decorator that provides 2d access methods ********************/

#define thisTTClass			TT2dAccessMatrixDecorator
#define thisTTClassName		"matrixdecorator.2daccess"
#define thisTTClassTags		"matrix, decorator, 2daccess"

TT_MATRIXDECORATOR_CONSTRUCTOR,
{;}

TT2dAccessMatrixDecorator::~TT2dAccessMatrixDecorator
{;}

TTErr TT2dAccessMatrixDecorator::where2d(TTRowID i, TTColumnID j, TTPtr pointerReturn)
{;}

TTErr TT2dAccessMatrixDecorator::where2d(TTRowID i, TTColumnID j, TTUInt32 element, TTPtr pointerReturn)
{;}
	
template<typename T>
TTErr TT2dAccessMatrixDecorator::get2d(TTPtr pointerStart, T& data)
{;}
	
template<typename T>
TTErr TT2dAccessMatrixDecorator::set2d(TTPtr pointerStart, T& data)
{;}


/******************** matrix decorator that provides zero-based indexing ********************/

#define thisTTClass			TTZeroIndexMatrixDecorator
#define thisTTClassName		"matrixdecorator.zeroindex"
#define thisTTClassTags		"matrix, decorator, zeroindex"

TT_MATRIXDECORATOR_CONSTRUCTOR,
{;}

TTZeroIndexMatrixDecorator::~TTZeroIndexMatrixDecorator
{;}


/******************** matrix decorator that provides one-based indexing ********************/

#define thisTTClass			TTOneIndexMatrixDecorator
#define thisTTClassName		"matrixdecorator.oneindex"
#define thisTTClassTags		"matrix, decorator, oneindex"

TT_MATRIXDECORATOR_CONSTRUCTOR,
{;}

TTOneIndexMatrixDecorator::~TTOneIndexMatrixDecorator
{;}

// TODO: decide if this should be here or in the h-file
TTErr TTOneIndexMatrixDecorator::where2d(TTRowID i, TTColumnID j, TTPtr pointerReturn)
{
	i -= 1;			// convert to zero-based indices for data access
	j -= 1;			// convert to zero-based indices for data access
	mDecoratedMatrix->where(i,j,pointerReturn);
}

// TODO: decide if this should be here or in the h-file
TTErr TTOneIndexMatrixDecorator::where2d(TTRowID i, TTColumnID j, TTUInt32 element, TTPtr pointerReturn)
{
	i -= 1;			// convert to zero-based indices for data access
	j -= 1;			// convert to zero-based indices for data access
	element -=1;	// convert to zero-based indices for data access
	mDecoratedMatrix->where(i,j,element,pointerReturn);
}

/******************** matrix decorator that causes out of bounds to throw errors ********************/

#define thisTTClass			TTOutOfBoundsErrorMatrixDecorator
#define thisTTClassName		"matrixdecorator.outofbounds.error"
#define thisTTClassTags		"matrix, decorator, outofbounds, error"

TT_MATRIXDECORATOR_CONSTRUCTOR,
{;}

TTOutOfBoundsErrorMatrixDecorator::~TTOutOfBoundsErrorMatrixDecorator
{;}
	
// get/set would need to be decorated
// these methods would throw an error when out of bounds


/******************** matrix decorator that causes out of bounds to fill with zeros ********************/

#define thisTTClass			TTOutOfBoundsZeroFillMatrixDecorator
#define thisTTClassName		"matrixdecorator.outofbounds.zerofill"
#define thisTTClassTags		"matrix, decorator, outofbounds, zerofill"

TT_MATRIXDECORATOR_CONSTRUCTOR,
{;}

TTOutOfBoundsZeroFillMatrixDecorator::~TTOutOfBoundsZeroFillMatrixDecorator
{;}

// get/set would need to be decorated
// these methods would fill with zero values when out of bounds
// could we use a mask?


/******************** matrix decorator that causes out of bounds to wrap like circular array ********************/

#define thisTTClass			TTOutOfBoundsWrapMatrixDecorator
#define thisTTClassName		"matrixdecorator.outofbounds.wrap"
#define thisTTClassTags		"matrix, decorator, outofbounds, zerofill"

TT_MATRIXDECORATOR_CONSTRUCTOR,
{;}

TTOutOfBoundsWrapMatrixDecorator::~TTOutOfBoundsWrapMatrixDecorator
{;}

// get/set would need to be decorated
// these methods would loop around when out of bounds
