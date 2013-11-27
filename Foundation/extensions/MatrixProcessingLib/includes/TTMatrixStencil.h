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
	
	With the averaging case, and the middle point omitted, the result is thus similar to the operation of the jit.avg4 object in Jitter.
 */
class TTMatrixStencil : public TTDataObjectBase {
	TTCLASS_SETUP(TTMatrixStencil)
	
	TTSymbol			mMode;			// what kind of calculation to perform on the stencil: average, firstDerivative
	TTSymbol			mEdges;			// what to do at the edges: none, clip, fold, or wrap
	TTSymbol			mStencilType;	// currently only 5-point stencil...
	std::vector<TTUInt32>	mStepSize;		// step size for each dimension
	

	// Attribute Accessors
	TTErr getStepSize(TTValue& returnedStepSize);
	TTErr setStepSize(const TTValue& newStepSize);

	
	// Matrix calculation methods pass arrays of inputs and outputs.
	
	/**	Calculate matrix output using an average of the stencil.			*/
	TTErr matrixCalculateAverage(TTMatrixArray& inputMatrices, TTMatrixArray& outputMatrices);
	
	/**	Calculate matrix output using the first derivative of the stencil.	*/
	TTErr matrixCalculateFirstDerivative(TTMatrixArray& inputMatrices, TTMatrixArray& outputMatrices);

	
	template<typename T>
	TTErr doCalculateAverage2D_zeroedEdges(TTMatrixPtr inMatrix, TTMatrixPtr outMatrix);

	template<typename T>
	TTErr doCalculateAverage2D_clippedEdges(TTMatrixPtr inMatrix, TTMatrixPtr outMatrix);

	template<typename T>
	TTErr doCalculateFirstDerivative(TTMatrixPtr inMatrix, TTMatrixPtr outMatrix);

	/**	Unit Tests	*/
	virtual TTErr test(TTValue& returnedTestInfo);	
};


#endif // __TTMATRIXSTENCIL_H__
