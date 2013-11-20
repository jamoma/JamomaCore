/* 
 * Jamoma MatrixProcessingLib: Gain
 * Copyright © 2011, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TTMATRIXGAIN_H__
#define __TTMATRIXGAIN_H__

#include "TTMatrixProcessingLib.h"


/****************************************************************************************************/
// Class Specifications

/**
	This class scales all of the values in a matrix to produce an output matrix.
 
	The trivial nature of this operation could possibly be combined in the the gain class in the Jamoma DSP library.  
	It is probably worth considering doing this for a variety of classes.
 
	However, this simple class is useful in that it provides a testbed for basic matrix operation.
 */
class TTMatrixGain : public TTDataObjectBase {
	TTCLASS_SETUP(TTMatrixGain)
	
	
	TTFloat64	mGain;		// attribute: factor by which to scale matrix values
	
	
	/**	Calculate matrix output using an average of the stencil.			*/
	TTErr matrixCalculateGain(TTMatrixArray& inputMatrices, TTMatrixArray& outputMatrices);
	
	template<typename T>
	TTErr doCalculateGain(const TTMatrixPtr inMatrix, TTMatrixPtr outMatrix);

	/**	Unit Tests	*/
	virtual TTErr test(TTValue& returnedTestInfo);	
};


#endif // __TTMATRIXGAIN_H__
