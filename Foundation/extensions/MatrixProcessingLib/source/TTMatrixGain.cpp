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
#define thisTTClassTags		"foundationMatrixProcessingLib, matrix"


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
TTErr TTMatrixGain::doCalculateGain(const TTMatrixPtr inMatrix, TTMatrixPtr outMatrix)
{
	T*			inData = (T*)inMatrix->getLockedPointer();
	T*			outData = (T*)outMatrix->getLockedPointer();
	TTUInt32	valueCount = inMatrix->getDataCount();
		
	for (TTUInt32 i=0; i<valueCount; i++)
		*outData++ = *inData++ * mGain;
	
	outMatrix->releaseLockedPointer();
	inMatrix->releaseLockedPointer();
	return kTTErrNone;
}


TTErr TTMatrixGain::matrixCalculateGain(TTMatrixArray& inputMatrices, TTMatrixArray& outputMatrices)
{
	TTMatrixPtr inMatrix	= inputMatrices.getMatrix(0);
	TTMatrixPtr outMatrix	= outputMatrices.getMatrix(0);
	TTErr		err;
	
	outMatrix->adaptTo(inMatrix);	// set dimensions, element count, datatype, etc.
	
	TTMATRIX_PROCESS_MATRICES_WITH_NAMED_TEMPLATE(doCalculateGain, inMatrix, outMatrix);
	
	return err;
}

