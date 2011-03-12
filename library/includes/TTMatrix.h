/* 
 * Jamoma N-Dimensional Matrix Data Class
 * Copyright © 2011, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_MATRIX_H__
#define __TT_MATRIX_H__

#include "TTFoundation.h"
#include "TTDataObject.h"

typedef TTByte* TTBytePtr;	///< Data is a pointer to some bytes.

#define X mDimensions[0]
#define Y mDimensions[1]
#define Z mDimensions[2]


/****************************************************************************************************/
// Class Specification

/**	An N-dimensional matrix of compound values.	*/
class TTFOUNDATION_EXPORT TTMatrix : public TTDataObject {
	TTCLASS_SETUP(TTMatrix)
	
	TTBytePtr			mData;				///< matrix of values
	TTUInt32			mDataCount;			///< mDimension[0] * mDimension[1] ...  * mElementCount
	TTUInt32			mDataSize;			///< sizeof(type) * mDataCount
	
	TTSymbolPtr			mType;				///< "uint8", "float32", etc. --> kTypeUInt8, kTypeUInt16, kTypeInt32, kTypeUInt64, kTypeFloat32, or kTypeFloat64
	TTUInt8				mTypeSizeInBytes;	///< number of bytes present in mType
	vector<TTUInt32>	mDimensions;		///< N dimensions, each int specifying the size of that dimension
	TTUInt8				mElementCount;		///< how many elements per value (e.g. 2 for complex numbers, 4 for colors, default = 1)
	
	TTUInt8				mValueStride;		///< how many bytes from one compound value's beginning to the next one
		
	
	/**	Internal method that resizes memory allocated when various attributes change.	*/
	TTErr resize();
	
	/**	Attribute accessor	*/
	TTErr setDimensions(const TTValue& someNewDimensions);
	
	/**	Attribute accessor	*/
	TTErr getDimensions(TTValue& returnedDimensions) const;
	
	/**	Attribute accessor	*/
	TTErr setType(const TTValue& aType);

	/**	Attribute accessor	*/
	TTErr setElementCount(const TTValue& newElementCount);

	/**	Run unit tests.	*/	
	virtual TTErr test(TTValue& returnedTestInfo);
	
public:
	
	TTErr clear();
	TTErr fill(const TTValue& aValue);
	TTErr get(TTValue& aValue) const;
	TTErr set(const TTValue& aValue);
	
	TTSymbolPtr	getTypeAsSymbol()
	{
		return mType;
	}
	
	TTUInt32 getDataCount()
	{
		return mDataCount;
	}
	
	/**	Set dimensions, element count, datatype, etc. (i.e. the metadata describing a matrix)
	 to match the another matrix which is passed-in as an argument.	*/
	TTErr adaptTo(const TTMatrix& anotherMatrix);
	
	/** Return a pointer to the matrix data, and lock the matrix so that others cannot access the data.
		If matrix is already locked, this function waits until it becomes free. */
	TTBytePtr getLockedPointer()
	{
		// TODO: actually lock the data and add spin-lock with atomic access
		return mData;
	}
	
	/**	Release a locked pointer obtained using getLockedPointer().	*/
	void releaseLockedPointer()
	{
		// TODO: see above.
		// NOTE: we could also cache the pointer in getLockedPointer() and match it to this.
		// But maybe that makes not sense.
	}

};


typedef TTMatrix* TTMatrixPtr;
typedef TTMatrix& TTMatrixRef;


#endif // __TT_MATRIX_H__

