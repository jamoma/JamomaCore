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
#define thisTTClassTags		"foundationMatrixProcessingLib, matrix"


TT_OBJECT_CONSTRUCTOR,
	mMode(TT("average")),
	mEdges(TT("none")),
	mStencilType(TT("5-point"))
{
	mStepSize.resize(2);
	mStepSize[0] = 1;
	mStepSize[1] = 1;
	
	addAttributeWithGetterAndSetter(StepSize, kTypeInt32);
	addAttribute(Edges, kTypeSymbol);
	
	// initially limiting to _average_ of the _5-point_ stencil with _no_ special treatment at the edges
	// and a _step size_ of 1	
	setMatrixCalculateMethod(matrixCalculateAverage);
	setAttributeValue(TT("edges"), kTTSym_clip);
}


TTMatrixStencil::~TTMatrixStencil()
{
	;
}


TTErr TTMatrixStencil::getStepSize(TTValue& returnedStepSize)
{
	returnedStepSize.setSize(mStepSize.size());
	for (TTUInt32 k=0; k<mStepSize.size(); k++)
		returnedStepSize.set(k, mStepSize[k]);
	return kTTErrNone;
}


TTErr TTMatrixStencil::setStepSize(const TTValue& newStepSize)
{
	TTUInt32 count = newStepSize.getSize();
	TTUInt32 k;
	TTUInt32 step = 0;
	
	if (count > mStepSize.size())
		mStepSize.resize(count);

	// assign all values passed-in
	for (k=0; k<count; k++) {
		newStepSize.get(k, step);
		mStepSize[k] = step;
	}
	
	// if there are fewer values passed-in than there are slots, 
	// fill in the remaining slots with the last value passed-in.
	// for example, this means that you can set both the x and y displacement 
	// to the same value if a single value is received
	for (k=count; k<mStepSize.size(); k++)
		mStepSize[k] = step;
	
	return kTTErrNone;
}





template<typename T>
TTErr TTMatrixStencil::doCalculateAverage2D_zeroedEdges(TTMatrixPtr inMatrix, TTMatrixPtr outMatrix)
{
	TTValue		dimensions;
	TTUInt32	m;
	TTUInt32	n;
	
	inMatrix->getLockedPointer();
	outMatrix->getLockedPointer();
	inMatrix->getDimensions(dimensions);
	dimensions.get(0, m);
	dimensions.get(1, n);
	
	for (TTUInt8 k=0; k < inMatrix->getElementCount(); k++) {	
		for (TTUInt32 i=0; i<m; i++) {
			for (TTUInt32 j=0; j<n; j++) {
				TTUInt32	ii;
				TTUInt32	jj;
				TTFloat64	accum = 0.0;
				T			value;
				
				// working clockwise from 12:00...
				// first point
				ii = i-mStepSize[1];
				jj = j;
				if (ii>0 && ii<=m  && jj>0 && jj<=n)
					inMatrix->get2d(ii, jj, k, value);
				else
					value = 0;
				accum += value;
				
				// second point
				ii = i;
				jj = j+mStepSize[0];
				if (ii>0 && ii<=m  && jj>0 && jj<=n)
					inMatrix->get2d(ii, jj, k, value);
				else
					value = 0;
				accum += value;
				
				// third point
				ii = i+mStepSize[1];
				jj = j;
				if (ii>0 && ii<=m  && jj>0 && jj<=n)
					inMatrix->get2d(ii, jj, k, value);
				else
					value = 0;
				accum += value;
				
				// fourth point
				ii = i;
				jj = j-mStepSize[0];
				if (ii>0 && ii<=m  && jj>0 && jj<=n)
					inMatrix->get2d(ii, jj, k, value);
				else
					value = 0;
				accum += value;
				
				outMatrix->set2d(i, j, k, T(accum / 4.0));
			}
		}
	}
	inMatrix->releaseLockedPointer();
	outMatrix->releaseLockedPointer();
	return kTTErrNone;
}


template<typename T>
TTErr TTMatrixStencil::doCalculateAverage2D_clippedEdges(TTMatrixPtr inMatrix, TTMatrixPtr outMatrix)
{
	TTValue		dimensions;
	TTUInt32	m;
	TTUInt32	n;
	
	inMatrix->getLockedPointer();
	outMatrix->getLockedPointer();
	inMatrix->getDimensions(dimensions);
	dimensions.get(0, m);
	dimensions.get(1, n);
	
	for (TTUInt8 k=0; k < inMatrix->getElementCount(); k++) {	
		for (TTUInt32 i=0; i<m; i++) {
			for (TTUInt32 j=0; j<n; j++) {
				TTUInt32	ii;
				TTUInt32	jj;
				TTFloat64	accum = 0.0;
				T			value;
				
				// working clockwise from 12:00...
				// first point
				ii = i-mStepSize[1];
				jj = j;
				TTLimit<TTUInt32>(ii, 1, m);
				TTLimit<TTUInt32>(jj, 1, n);				
				inMatrix->get2d(ii, jj, k, value);
				accum += value;
				
				// second point
				ii = i;
				jj = j+mStepSize[0];
				TTLimit<TTUInt32>(ii, 1, m);
				TTLimit<TTUInt32>(jj, 1, n);				
				inMatrix->get2d(ii, jj, k, value);
				accum += value;
				
				// third point
				ii = i+mStepSize[1];
				jj = j;
				TTLimit<TTUInt32>(ii, 1, m);
				TTLimit<TTUInt32>(jj, 1, n);				
				inMatrix->get2d(ii, jj, k, value);
				accum += value;
				
				// fourth point
				ii = i;
				jj = j-mStepSize[0];
				TTLimit<TTUInt32>(ii, 1, m);
				TTLimit<TTUInt32>(jj, 1, n);				
				inMatrix->get2d(ii, jj, k, value);
				accum += value;
				
				outMatrix->set2d(i, j, k, T(accum / 4.0));
			}
		}
	}
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
	TTValue		dimensions;
	TTErr		err;
	
	inMatrix->getDimensions(dimensions);
	if (dimensions.getSize() != 2) {
		logError("This class currently only supports 2D matrices");
		return kTTErrInvalidType;
	}
	
	if (dimensions.getSize() > mStepSize.size())
		setStepSize(mStepSize[0]); // TODO: make it so that TTValue can automatically be created/assigned from a vector, then pass the whole vector
	
	outMatrix->adaptTo(inMatrix);	// set dimensions, element count, datatype, etc.
	
	if (mEdges == kTTSym_clip) {
		TTMATRIX_PROCESS_MATRICES_WITH_NAMED_TEMPLATE(doCalculateAverage2D_clippedEdges, inMatrix, outMatrix);
	}
	else {
		TTMATRIX_PROCESS_MATRICES_WITH_NAMED_TEMPLATE(doCalculateAverage2D_zeroedEdges, inMatrix, outMatrix);
	}
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


TTErr TTMatrixStencil::matrixCalculateFirstDerivative(TTMatrixArray& inputMatrices, TTMatrixArray& outputMatrices)
{
	TTMatrixPtr inMatrix	= inputMatrices.getMatrix(0);
	TTMatrixPtr outMatrix	= outputMatrices.getMatrix(0);
	TTErr		err;
	
	outMatrix->adaptTo(inMatrix);
	TTMATRIX_PROCESS_MATRICES_WITH_NAMED_TEMPLATE(doCalculateFirstDerivative, inMatrix, outMatrix);
	return err;
}

