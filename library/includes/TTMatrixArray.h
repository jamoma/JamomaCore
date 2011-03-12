/*
 * Maintains an array of Jamoma matrices
 * Copyright © 2011, Timothy Place
 *
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_MATRIXARRAY_H__
#define __TT_MATRIXARRAY_H__

#include "TTMatrix.h"

typedef vector<TTMatrixPtr>			TTMatrixVector;
typedef TTMatrixVector::iterator	TTMatrixIter;


/****************************************************************************************************/
// Class Specification



/**	An array of TTMatrix instance pointers.	*/
class TTFOUNDATION_EXPORT TTMatrixArray : public TTDataObject {
	TTCLASS_SETUP(TTMatrixArray)

	TTMatrixVector	mMatrices;
	
public:
	TTMatrixPtr getMatrix(TTUInt32 aMatrixId)
	{
		if (aMatrixId < mMatrices.size())
			return mMatrices[aMatrixId];
		else
			return NULL;
	}
	
};

typedef TTMatrixArray* TTMatrixArrayPtr;



#endif // __TT_MATRIXARRAY_H__

