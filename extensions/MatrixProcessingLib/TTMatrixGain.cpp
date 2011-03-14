/* 
 * Jamoma MatrixProcessingLib: Gain
 * Copyright © 2011, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTMatrixGain.h"

#define thisTTClass			TTMatrixGain
#define thisTTClassName		"matrix.gain"
#define thisTTClassTags		"matrix"


TT_OBJECT_CONSTRUCTOR,
	mGain(1.0)
{
	addAttribute(Gain, kTypeFloat64);
	setMatrixCalculateMethod(matrixCalculateGain);
}


TTMatrixGain::~TTMatrixGain()
{
	;
}


template<typename T>
TTErr TTMatrixGain::doCalculateGain(TTMatrixPtr x, TTMatrixPtr y)
{
	T*			xData = (T*)x->getLockedPointer();
	T*			yData = (T*)y->getLockedPointer();
	TTUInt32	valueCount = x->getDataCount();
		
	for (TTUInt32 i=0; i<valueCount; i++)
		*yData++ = *xData++ * mGain;
	
	y->releaseLockedPointer();
	x->releaseLockedPointer();
	return kTTErrNone;
}


TTErr TTMatrixGain::matrixCalculateGain(TTMatrixArray& inputMatrices, TTMatrixArray& outputMatrices)
{
	TTMatrixPtr x	= inputMatrices.getMatrix(0);
	TTMatrixPtr y	= outputMatrices.getMatrix(0);
	TTErr		err;
	
	y->adaptTo(x);	// set dimensions, element count, datatype, etc.
	
	TTMATRIX_PROCESS_MATRICES_WITH_NAMED_TEMPLATE(doCalculateGain, x, y);
	
	return err;
}

