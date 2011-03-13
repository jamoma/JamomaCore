/* 
 * Jamoma MatrixProcessingLib: Stencil
 * Copyright © 2011, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TTMATRIXSTENCIL_H__
#define __TTMATRIXSTENCIL_H__

#include "TTMatrixProcessingLib.h"


/****************************************************************************************************/
// Class Specifications

/**
	This class performs operations on a stencil from a matrix.
	In the initial implementation, we have limited ourselves to 5-point stencil as described @ http://en.wikipedia.org/wiki/Five-point_stencil 
	and we limit the operations to be performed to simple averaging and the first derivitave.
	
	With the averaging case, the result is thus similar to the operation of the jit.avg4 object in Jitter.
 */
class TTMatrixStencil : public TTDataObject {
	TTCLASS_SETUP(TTMatrixStencil)
	
	TTSymbolPtr			mMode;			// what kind of calculation to perform on the stencil: average, firstDerivative
	TTSymbolPtr			mEdges;			// what to do at the edges: none, fold, or wrap
	TTSymbolPtr			mStencilType;	// currently only 5-point stencil...
	vector<TTUInt32>	mStepSize;		// step size for each dimension
	
	
	// Matrix calculation methods pass arrays of inputs and outputs.
	
	/**	Calculate matrix output using an average of the stencil.			*/
	TTErr matrixCalculateAverage(TTMatrixArray& inputMatrices, TTMatrixArray& outputMatrices);
	
	/**	Calculate matrix output using the first derivative of the stencil.	*/
	TTErr matrixCalculateFirstDerivative(TTMatrixArray& inputMatrices, TTMatrixArray& outputMatrices);

	
	template<typename T>
	TTErr doCalculateAverage(TTMatrixPtr inMatrix, TTMatrixPtr outMatrix);

	template<typename T>
	TTErr doCalculateFirstDerivative(TTMatrixPtr inMatrix, TTMatrixPtr outMatrix);

	/**	Unit Tests	*/
	virtual TTErr test(TTValue& returnedTestInfo);	
};


#endif // __TTMATRIXSTENCIL_H__
