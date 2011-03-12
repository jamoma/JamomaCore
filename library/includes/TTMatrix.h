/* 
 * Jamoma N-Dimensional Matrix Data Class
 * Copyright © 2011, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_MATRIX_H__
#define __TT_MATRIX_H__

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
	TTUInt32			mDataSize;			///< sizeof(type) * mDimension[0] * mDimension[1] ...  * mElementCount
	
	TTSymbolPtr			mType;				///< "uint8", "float32", etc. --> kTypeUInt8, kTypeUInt16, kTypeInt32, kTypeUInt64, kTypeFloat32, or kTypeFloat64
	TTUInt8				mTypeSizeInBytes;	///< number of bytes present in mType
	vector<TTUInt32>	mDimensions;		///< N dimensions, each int specifying the size of that dimension
	TTUInt8				mElementCount;		///< how many elements per value (e.g. 2 for complex numbers, 4 for colors, default = 1)
	
	TTUInt8				mValueStride;		///< how many bytes from one compound value's beginning to the next one
		
	
	/**	Internal method that resizes memory allocated when various attributes change.	*/
	TTErr resize();
	
	/**	Set dimensions, element count, datatype, etc. (i.e. the metadata describing a matrix)
		to match the another matrix which is passed-in as an argument.	*/
	TTErr adaptTo(TTMatrix& anotherMatrix);

	/**	Attribute accessor	*/
	TTErr setDimensions(const TTValue& someNewDimensions);
	
	/**	Attribute accessor	*/
	TTErr getDimensions(TTValue& returnedDimensions);
	
	/**	Attribute accessor	*/
	TTErr setType(const TTValue& aType);

	/**	Attribute accessor	*/
	TTErr setElementCount(const TTValue& newElementCount);

	
	TTErr clear();
	TTErr fill(const TTValue& aValue);
	TTErr get(TTValue& aValue);
	TTErr set(const TTValue& aValue);
	

	/**	Run unit tests.	*/	
	virtual TTErr test(TTValue& returnedTestInfo);
};


typedef TTMatrix* TTMatrixPtr;
typedef TTMatrix& TTMatrixRef;


#endif // __TT_MATRIX_H__

