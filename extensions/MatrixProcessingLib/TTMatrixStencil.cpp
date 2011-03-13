/* 
 * Jamoma MatrixProcessingLib: Stencil
 * Copyright © 2011, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTMatrixStencil.h"
//#include <math.h>


#define thisTTClass			TTMatrixStencil
#define thisTTClassName		"matrix.stencil"
#define thisTTClassTags		"matrix"


TT_OBJECT_CONSTRUCTOR
{
	setMatrixCalculateMethod(matrixCalculateAverage);
}


TTMatrixStencil::~TTMatrixStencil()
{
	;
}


template<typename T>
TTErr TTMatrixStencil::doCalculateAverage(TTMatrixPtr inMatrix, TTMatrixPtr outMatrix)
{
	T* inData = (T*)inMatrix->getLockedPointer();
	T* outData = (T*)outMatrix->getLockedPointer();
	
	// temporary: just pass in the input to the output
	
	for (int i=0;i<1;i++)
		*outData++ = *inData++;
	
	inMatrix->releaseLockedPointer();
	outMatrix->releaseLockedPointer();
	return kTTErrNone;
}


template<typename T>
TTErr TTMatrixStencil::doCalculateFirstDerivative(TTMatrixPtr inMatrix, TTMatrixPtr outMatrix)
{
	T* inData = (T*)inMatrix->getLockedPointer();
	T* outData = (T*)outMatrix->getLockedPointer();
	
	// temporary: just pass in the input to the output
	
	for (int i=0;i<1;i++)
		*outData++ = *inData++;
	
	inMatrix->releaseLockedPointer();
	outMatrix->releaseLockedPointer();
	return kTTErrNone;
}



/*
// Grid Relaxation (Stencil)
// Each value is an average of its neighbors
// USEFUL FOR SMOOTHING SPECTRAL AUDIO SIGNALS TOO -- PROVIDED THAT WE ONLY DO IT ON VECTORS AND **NOT** 2-DIMENSIONALLY!
//	- so I guess that means we need an attribute to reduce the dimensionality, I guess a "mode" attribute of some kind...

// TODO: This will be a good benchmarking example!
// particularly for multithreading

TTErr TTMatrix::relax()
{
	
	
	// we want to have an attr saying how many steps (iterations) of the averaging to run
	
	for (int t=0; t<mSteps; t++) {
		
		
		// in 2D it looks like this:
		
		for (x=0; x<X; x++) {
			for (y=0; y<Y; y++)
				grid[x][y] = // avg of neighbors;
		}
		
		// note: in the above, you can't do the operation in-place because you would be writing to cells
		// before you had read its value for other cells depending on its old value!
		
		// so we need another matrix, and then we can swap the pointers when we are done
		
		temp_grid = grid;
		grid = other_grid;
		other_grid = temp_grid;
		
	}
	
}

*/


TTErr TTMatrixStencil::matrixCalculateAverage(TTMatrixArray& inputMatrices, TTMatrixArray& outputMatrices)
{
	TTMatrixPtr inMatrix	= inputMatrices.getMatrix(0);
	TTMatrixPtr outMatrix	= outputMatrices.getMatrix(0);
	TTErr		err;
	
	outMatrix->adaptTo(inMatrix);	// set dimensions, element count, datatype, etc.

	/*
	if (type == TT("uint8"))
		err = doCalculateAverage<TTUInt8>(inMatrix, outMatrix);
	else if (type == TT("int32"))
		err = doCalculateAverage<TTInt32>(inMatrix, outMatrix);
	else if (type == TT("float32"))
		err = doCalculateAverage<TTFloat32>(inMatrix, outMatrix);
	else if (type == TT("float64"))
		err = doCalculateAverage<TTFloat64>(inMatrix, outMatrix);
	else
		err = kTTErrInvalidType;
	*/
	
	TTMATRIX_PROCESS_MATRICES_WITH_NAMED_TEMPLATE(doCalculateAverage, inMatrix, outMatrix);
	
	return err;
}






/*	Vector Case:
	where t is the step size
 
			-f(x+2t)  +  8f(x+t)  -  8f(x-t)  +  f(x-2t)
	f'(x) = --------------------------------------------
								 12t
 
	re-writing to more C-like nomenclature:
 
 
	data[x]  = ( -1 * data[x+2*t]  +  8 * data[x+t]  -  8 * data[x-t]  +  data[x-2*t] )   /   12 * t;
	
	re-ordering:
 
	data[x]  = ( data[x-2*t]  +  8 * data[x+t]  -  8 * data[x-t]  -  data[x+2*t] )   /   12 * t;
 
 
 
 
	Moving up to 2-dimensions (to get the Laplacian derivative):
 
					 data[x-t][y]  +  data[x+t][y]  +  data[x][y-t]  +  data[x][y+t]  -  4 * data[x][y]
	data[x][y] = ----------------------------------------------------- 
								t*t
 
 

	Is there any sensible reason to try and scale this up beyond 2 dimensions?
 
 */


TTErr TTMatrixStencil::matrixCalculateFirstDerivative(TTMatrixArray& inputMatrices, TTMatrixArray& outputMatrices)
{
	TTMatrixPtr inMatrix	= inputMatrices.getMatrix(0);
	TTMatrixPtr outMatrix	= outputMatrices.getMatrix(0);
	TTErr		err;
	
	outMatrix->adaptTo(inMatrix);
	TTMATRIX_PROCESS_MATRICES_WITH_NAMED_TEMPLATE(doCalculateFirstDerivative, inMatrix, outMatrix);
	return err;
}

