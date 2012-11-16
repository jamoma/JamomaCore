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
#include "TTEnvironment.h"

typedef std::vector<TTMatrixPtr>	TTMatrixVector;
typedef TTMatrixVector::iterator	TTMatrixIter;


/****************************************************************************************************/
// Class Specification



/**	An array of TTMatrix instance pointers.	*/
class TTFOUNDATION_EXPORT TTMatrixArray : public TTObject {
	TTCLASS_SETUP(TTMatrixArray)

protected:

	TTMatrixVector	mMatrices;
	
public:

	TTMatrixPtr getMatrix(TTUInt32 aMatrixId) const
	{
		if (aMatrixId < mMatrices.size())
			return mMatrices[aMatrixId];
		else
			return NULL;
	}
	
	TTUInt32 getMatrixCount() const
	{
		return mMatrices.size();
	}
	
	void setMatrixCount(TTUInt32 aCount)
	{
		mMatrices.resize(aCount);
	}
	
	void setMatrix(TTUInt32 aMatrixId, TTMatrix& aMatrix)
	{
		mMatrices[aMatrixId] = &aMatrix;
	}
	
};

typedef TTMatrixArray* TTMatrixArrayPtr;



#endif // __TT_MATRIXARRAY_H__

