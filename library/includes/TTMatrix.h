/* 
 * Jamoma 2-Dimensional Matrix Data Class
 * Copyright © 2011-2012, Timothy Place & Nathan Wolek
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_MATRIX_H__
#define __TT_MATRIX_H__

#include "TTFoundation.h"
#include "TTDataObject.h"

#define INBOUNDS(distanceFromHead, maxDistanceFromHead) 						\
{																				\
	distanceFromHead == 0 ? 0 : (distanceFromHead <= maxDistanceFromHead)		\
}
#define INBOUNDSZEROINDEX(distanceFromHead, maxDistanceFromHead) 				\
{ 																				\
	distanceFromHead < maxDistanceFromHead 										\
} 

typedef TTByte* TTBytePtr;	///< Data is a pointer to some bytes.


/**	Two types for the numbers used to indicate rows and columns.
	This is so that we can have multiple overrides of functions that take the numbers in either order.

	For example, linear algebra-related matrices will likely access elements in TTRowID, TTColumnID order.
	However, video processing objects will likely access elements in TTColumnID, TTRowID order.
 
	While C internally is indexed beginning at zero, the interface we create to the matrix data is a one-based.
	We do this to be consistent with mathematical and engineering conventions and as used by applications
	such as Octave and Matlab.  INDEX revision underway
 */
typedef TTInt32 TTRowID;
typedef TTInt32 TTColumnID;


/****************************************************************************************************/
// Class Specification

/**	An 2-dimensional matrix of compound values with N elements.	
* Locations for individual values in the matrix are identified by (row, column) pairs.  These coordinates are translated internally into linear memory using <a href="http://en.wikipedia.org/wiki/Row-major_order#Column-major_order">column-major order</a>. Note that support for N dimensions has been deprecated and the TTMatrix class is now fixed at 2 dimensions.
* Each value in the matrix can have a variable amount of elements, enabling the storage of things like complex numbers or RGBA colors at each location.
*/
class TTFOUNDATION_EXPORT TTMatrix : public TTDataObject {
	TTCLASS_SETUP(TTMatrix)

protected:	

	TTBytePtr			mData;					///< matrix of values
	vector<TTUInt32>	mDimensions;			///< variable dimensions - @deprecated use mRowCount and mColumnCount instead
	TTUInt32			mRowCount;				///< How many rows of values the matrix should have. Uses an unsigned 32-bit integer which provides a maximum value of 4,294,967,295.
	TTUInt32			mColumnCount;			///< How many columns of values the matrix should have. Uses an unsigned 32-bit integer which provides a maximum value of 4,294,967,295.
	TTUInt8				mElementCount;			///< How many elements (parts) per value (e.g. 2 for complex numbers, 4 for colors, default = 1). Uses an unsigned 8-bit integer which provides a maximum value of 255.
	TTUInt32			mComponentCount;		///< mRowCount * mColumnCount
	TTUInt8				mComponentStride;		///< how many bytes from one the beginning one matrix component to the next
	TTUInt32			mDataCount;				///< mComponentCount * mElementCount (e.g. total number of floats or ints in the matrix)
	TTSymbolPtr			mType;					///< "uint8", "float32", etc. --> kTypeUInt8, kTypeUInt16, kTypeInt32, kTypeUInt64, kTypeFloat32, or kTypeFloat64
	TTDataInfoPtr		mTypeAsDataInfo;		///< local pointer to info about the data type found in TTBase::ttDataTypeInfo
	TTUInt8				mTypeSizeInBytes;		///< number of bytes present in mType
	TTUInt32			mDataSize;				///< mTypeSizeInBytes * mDataCount
	TTBoolean			mDataIsLocallyOwned;	///< If false, then we are referencing outside memory which we don't own
	TTPtr			mHeadPtr;		///< Pointer used for checking if get/set methods are in bounds. Equal to the start of first component in mData.
	TTPtr			mTailPtr;		///< Pointer used for checking if get/set methods are in bounds. Equal to the start of last component in mData.
	
	
	/**	Internal method that resizes memory allocated when various attributes change.	*/
	TTErr resize();

	/**	Run unit tests.	*/	
	virtual TTErr test(TTValue& returnedTestInfo);
	
	/**	Internal method that sets the value for RowCount without resizing the matrix of values. It is included so that other methods in the class use consistent range checking. Values that are less than 1 will return false and leave the value unchanged. */
	TTBoolean setRowCountWithoutResize(TTUInt32 aNewRowCount);
	
	/**	Internal method that sets the value for ColumnCount without resizing the matrix of values. It is included so that other methods in the class use consistent range checking. Values that are less than 1 will return false and leave the value unchanged. */
	TTBoolean setColumnCountWithoutResize(TTUInt32 aNewColumnCount);
	
	/**	Internal method that sets the value for ElementCount without resizing the matrix of values. It is included so that other methods in the class use consistent range checking. Values that are less than 1 will return false and leave the value unchanged. */
	TTBoolean setElementCountWithoutResize(TTUInt8 aNewElementCount);
	
	/**	Internal method that sets the values for Type and TypeSizeInBytes without resizing the matrix of values. It is included so that other methods in the class consistently check for valid entries. Values that are not a numeric type defined by ttDataTypeInfo in TTBase will return false and leave the values unchanged. */
	TTBoolean setTypeWithoutResize(TTDataInfoPtr aNewType);
	
public:
	
	/**	Attribute accessor. Sets the value for RowCount. Values that are less than 1 will return an error. */
	TTErr setRowCount(const TTValue& aNewRowCount);
	
	/**	Attribute accessor. Sets the value for ColumnCount. Values that are less than 1 will return an error. */
	TTErr setColumnCount(const TTValue& aNewColumnCount);
	
	/**	Attribute accessor.	Sets the value for ElementCount. Values that are less than 1 will return an error. */
	TTErr setElementCount(const TTValue& newElementCount);
	
	/**	Attribute accessor.	Sets the value for Type and TypeSizeInBytes.  Values must be one of the numeric types defined by ttDataTypeInfo in TTBase (i.e., float32, float64, int8, uint8, int16, uint16, int32, uint32, int64, uint64). */
	TTErr setType(const TTValue& aType);
	
	/**	Attribute accessor.  Set the values of RowCount and ColumnCount using a TTValue array. Values beyond the first two items in the TTValue array will be ignored without an error. Values that are less than 1 will return an error. Support for N dimensions has been deprecated. */
	TTErr setDimensions(const TTValue& someNewDimensions);
	
	/**	Alternative to attribute accessor. Set the values of RowCount and ColumnCount with a TTUInt32 vector (instead of using  TTValue array). Values beyond the first two items in the vector will be ignored without an error. Values that are less than 1 will return an error. Support for N dimensions has been deprecated. */
	TTErr setDimensionsWithVector(const vector<TTUInt32>& newDimensions)
	{
		if (this->setRowCountWithoutResize(newDimensions[0]) &&
			this->setColumnCountWithoutResize(newDimensions[1]))
		{
			return resize();
		} else {
			return kTTErrInvalidValue;
		}
	}
	
	/**	Simple data accessor. 
	* @return - the value stored at mRowCount as a TTUInt32 */	
	TTUInt32 getRowCount()
	{
		return mRowCount;
	}
	
	/**	Simple data accessor. 
	* @return - the value stored at mColumnCount as a TTUInt32 */
	TTUInt32 getColumnCount()
	{
		return mColumnCount;
	}
	
	/**	Simple data accessor. 
	* @return - the value stored at mElementCount as a TTUInt32 */
	TTUInt32 getElementCount()
	{
		return mElementCount;
	}
	
	/**	Simple data accessor. 
	* @return - the value stored at mComponentCount as a TTUInt32 */
	TTUInt32 getComponentCount()
	{
		return mComponentCount;
	}
	
	/**	Simple data accessor. 
	* @return - the value stored at mType as a TTSymbolPtr */
	TTSymbolPtr	getTypeAsSymbol()
	{
		return mType;
	}
	
	/**	Simple data accessor. 
	* @return - the value stored at mTypeAsDataInfo as a TTDataInfoPtr */
	TTDataInfoPtr getTypeAsDataInfo()
	{
		return mTypeAsDataInfo;
	}
	
	/**	Simple data accessor. 
	* @return - the value stored at mDataCount as a TTUInt32 */
	TTUInt32 getDataCount()
	{
		return mDataCount;
	}
	
	/**	Simple data accessor. 
	* @return - the value stored at mComponentStride as a TTUInt32 */
	TTUInt32 getComponentStride()
	{
		return mComponentStride;
	}
	
	/**	Attribute accessor. Included for legacy.  Will set returnedDimensions as a 2-item TTValue using the values saved as RowCount & ColumnCount.	*/
	TTErr getDimensions(TTValue& returnedDimensions) const;
	
	TTErr clear();
	TTErr fill(const TTValue& anInputValue, TTValue &anOutputValue);
	
	
	/** Internal method used by both set() and get() functions to locate the data within mData to be operated on. 
	 *	Allows our interface to be consistent in its lookup method and represents a specific application of the <a href="http://en.wikipedia.org/wiki/Don't_repeat_yourself">DRY principle</a>.
	 *	@return - a TTBytePtr within mData that is between mHeadPtr and mTailPtr
	*/
	TTBytePtr where(TTRowID i, TTColumnID j)
	{
		TTBytePtr locationAsBytePtr;
		TTUInt32 indexOfComponent = i * mColumnCount + j;
		
		// I would ideally like to use mHeadPtr instead of mData in the next line, but type mismatch needs to be resolved
		locationAsBytePtr = mData + ( indexOfComponent * mComponentStride );
		
		return locationAsBytePtr;
	}
	
	TTBytePtr where(TTRowID i, TTColumnID j, TTUInt32 e)
	{
		TTBytePtr locationAsBytePtr;
		TTUInt32 indexOfComponent = i * mColumnCount + j;
		TTUInt16 bytesToElement = e * mTypeSizeInBytes;
		
		// I would ideally like to use mHeadPtr instead of mData in the next line, but type mismatch needs to be resolved
		locationAsBytePtr = mData + ( indexOfComponent * mComponentStride ) + bytesToElement;
		
		return locationAsBytePtr;
	}
	

	/** Test to see if a specific distance from the head is still in within the matrix.  
	 	This method works most efficiently just before array access, so that you can compute the distance once (using row, column & element values) before checking if it is inBounds then pulling its value.
		Treats the first item in the array as 1, therefore 0 produces a return value of FALSE.
		Returns true or false.
	*/
	TTBoolean inBounds(TTUInt32 distanceFromHead)
	{
		return INBOUNDS(distanceFromHead, mDataCount);
	}
	
	/** Test to see if a specific distance from the head is still in within the matrix. 
	  	This method works most efficiently just before array access, so that you can compute the distance once (using row, column & element values) before checking if it is inBounds then pulling its value.
		Treats the first item in the array as 0, therefore totalDistanceFromHead equal to mDataCount produces a return value of FALSE.
		Returns true or false.
	*/
	TTBoolean inBoundsZeroIndex(TTUInt32 distanceFromHead)
	{
		return INBOUNDSZEROINDEX(distanceFromHead, mDataCount);
	}
	
	/**	Get the value of a component located at any location in 2-dimensional matrix.
		Will set anOutputValue as a N-item TTValue using the values saved at ElementCount & return all elements that are stored at the coordinates specied by anInputValue.
		All dimension indices begin counting at one. INDEX revision underway.	*/
	TTErr get(const TTValue& anInputValue, TTValue &anOutputValue) const;

	/**	Get the value of a component located at (i,j) in a 2-dimensional matrix.
		The first location in the matrix is (1,1). INDEX revision underway.
		In order to provide some degree of efficiency, the data passed-in is not bounds checked --
		you must ensure that you are passing memory that is at least mComponentStride bytes large.
	 
		In fact, you should pass a compound type if you want more than one of the primitive types.
		For example, pass a pointer to a TTComplex if you want two doubles.
	 */
	template<typename T>
	TTErr get2d(TTRowID i, TTColumnID j, T& data) const
	{
		//TTUInt32 m = mRowCount;
		TTUInt32 n = mColumnCount;
		
		i -= 1;	// convert to zero-based indices for data access
		j -= 1;	// convert to zero-based indices for data access
		
		data = *(T*)(mData + (i*n+j) * mComponentStride);	
		return kTTErrNone;
	}
	
	
	template<typename T>
	TTErr get2dWithinBounds(TTRowID i, TTColumnID j, T& data) const
	{
		//TTUInt32 m = mRowCount;
		TTUInt32 n = mColumnCount;
		
		i -= 1;	// convert to zero-based indices for data access
		j -= 1;	// convert to zero-based indices for data access
		
		TTUInt32 distanceFromHead = (i*n+j) * mComponentStride;
		TTBoolean isInBounds = INBOUNDSZEROINDEX(distanceFromHead,mDataCount);
		
		if (isInBounds)
		{
			data = *(T*)(mData + distanceFromHead);	
			return kTTErrNone;
		} else {
			return kTTErrInvalidValue;
		}
	
	}	
	
	template<typename T>
	TTErr get2d(TTRowID i, TTColumnID j, TTUInt32 element, T& data)
	{
		//TTUInt32 m = mRowCount;
		TTUInt32 n = mColumnCount;
		
		i -= 1;			// convert to zero-based indices for data access
		j -= 1;			// convert to zero-based indices for data access
		element -=1;	// convert to zero-based indices for data access
		
		data = *(T*)((mData + (i*n+j) * mComponentStride) + element);	
		return kTTErrNone;
	}

	/**	Get the value of a component located at (i,j) in a 2-dimensional matrix.
	 similar to get2d but the first location in the matrix is (0,0). INDEX revision underway. **/
	
	template<typename T>
	TTErr get2dZeroIndex(TTRowID i, TTColumnID j, T& data) const
	{
		TTUInt32 n = mColumnCount;		
		data = *(T*)(mData + (i*n+j) * mComponentStride);	
		return kTTErrNone;
	}
		
	template<typename T>
	TTErr get2dZeroIndex(TTRowID i, TTColumnID j, TTUInt32 element, T& data)
	{
		TTUInt32 n = mColumnCount;
		data = *(T*)((mData + (i*n+j) * mComponentStride) + element);	
		return kTTErrNone;
	}
	
	
	
	/**	Set the value of a component located at any location in an 2-dimensional matrix.
	 All dimension indices begin counting at one.	INDEX revision underway.	*/
	TTErr set(const TTValue& anInputValue, TTValue &anOutputValue);

	/**	Set the value of a component located at (i,j) in a 2-dimensional matrix.	
		The first location in the matrix is (1,1).  INDEX revision underway.
		In order to provide some degree of efficiency, the data passed-in is not bounds checked --
		you must ensure that you are passing memory that is at least mComponentStride bytes large.
	 
	 
		In fact, you should pass a compound type if you want more than one of the primitive types.
		For example, pass a pointer to a TTComplex if you want two doubles.
	 */
	template<typename T>
	TTErr set2d(TTRowID i, TTColumnID j, T data)
	{
		//TTUInt32 m = mRowCount;
		TTUInt32 n = mColumnCount;
		
		i -= 1;	// convert to zero-based indices for data access
		j -= 1;	// convert to zero-based indices for data access
		
		*(T*)(mData + (i*n+j) * mComponentStride) = data;
		
		return kTTErrNone;
	}
	
	
	template<typename T>
	TTErr set2d(TTRowID i, TTColumnID j, TTUInt32 element, T data)
	{
		//TTUInt32 m = mRowCount;
		TTUInt32 n = mColumnCount;
		
		i -= 1;			// convert to zero-based indices for data access
		j -= 1;			// convert to zero-based indices for data access
		element -=1;	// convert to zero-based indices for data access
		
		*(T*)(mData + ((i*n+j) * mComponentStride) + element) = data;
		
		return kTTErrNone;
	}
	
	/**	Set the value of a component located at (i,j) in a 2-dimensional matrix.	
	 Similar to set2d but the first location in the matrix is (0,0). INDEX revision underway.**/
	
	template<typename T>
	TTErr set2dZeroIndex(TTRowID i, TTColumnID j, T data)
	{
		TTUInt32 n = mColumnCount;
		*(T*)(mData + (i*n+j) * mComponentStride) = data;		
		return kTTErrNone;
	}
	
	
	template<typename T>
	TTErr set2dZeroIndex(TTRowID i, TTColumnID j, TTUInt32 element, T data)
	{
		TTUInt32 n = mColumnCount;
		*(T*)(mData + ((i*n+j) * mComponentStride) + element) = data;		
		return kTTErrNone;
	}
	
	
	/**	You must proceed to set the various attributes, dimensions, etc. to match the data format of the matrix you are referencing.

		One caveat regards data alignment.  Jitter, for example, aligns rows on 16-byte boundaries.
		In this case, a 4x10 matrix (using the m-by-n convention rather than Jitter's width-by-height convention) of 32-bit ints, 
		all with a value of "4" will look like this:
	 
		4, 4, 4, 4,   4, 4, 4, 4,   4, 4, 0, 0
		4, 4, 4, 4,   4, 4, 4, 4,   4, 4, 0, 0
		4, 4, 4, 4,   4, 4, 4, 4,   4, 4, 0, 0
		4, 4, 4, 4,   4, 4, 4, 4,   4, 4, 0, 0
	 
		Thus, the rows are really of a dimension length 12 instead of 10 and the total size of the matrix scales as well.
		
		For the time being, we do not handle this case.  
		Jitter users must dimension their matrices so that the row size in bytes is a multiple of 16.
		This is not actually hard to do for most purposes.  For example:
	 
		float64, element count of 1, width is a multiple of 2 (an even number)
		float32 or int32, element count of 1, width is a multiple of 4
		uint8, element count of 1, width is a multiple of 16 (which includes 80, 160, 320, 640, ...), but 
			element count of 4 (i.e. color pixels) width should be a multiple of values.
	 */
	void referenceExternalData(TTPtr aDataPointer)
	{
		
		// TODO: see TTAudioSignal for more robust handling of freeing mData here, etc.
		// TODO: see the destructor, because there is also the issue of refcounting the data references?
		// for now we will just leak the memory until the design is complete
		mDataIsLocallyOwned = NO;
		mData = (TTBytePtr)aDataPointer;
	}
	
	
	/** Return a pointer to the matrix data, and lock the matrix so that others cannot access the data.
		If matrix is already locked, this function waits until it becomes free. */
	TTBytePtr getLockedPointer()
	{
		// TODO: actually lock the data and add spin-lock with atomic access
		// NOTE: when locked, we cannot resize, change type, etc. either...
		
		return mData;
	}
	
	/**	Release a locked pointer obtained using getLockedPointer().	*/
	void releaseLockedPointer()
	{
		// TODO: see above.
		// NOTE: we could also cache the pointer in getLockedPointer() and match it to this.
		// But maybe that makes not sense.
	}
	
#if 0
#pragma mark -
#endif

	
	/**	Compare the attributes of this matrix to another to see if they all match. Used before conducting certain math operations.	*/
	TTBoolean allAttributesMatch(const TTMatrix& anotherMatrix);
	TTBoolean allAttributesMatch(const TTMatrix* anotherMatrix)
	{
		return TTMatrix::allAttributesMatch(*anotherMatrix);
	}
	
	/**	Copy the data from one matrix into another.	*/
	static TTErr copy(const TTMatrix& source, TTMatrix& dest);
	static TTErr copy(const TTMatrix* source, TTMatrix* dest)
	{
		return TTMatrix::copy(*source, *dest);
	}

	/**	Set dimensions, element count, datatype, etc. (i.e. the metadata describing a matrix)
	 to match the another matrix which is passed-in as an argument.	*/
	TTErr adaptTo(const TTMatrix& anotherMatrix);
	TTErr adaptTo(const TTMatrix* anotherMatrix)
	{
		return adaptTo(*anotherMatrix);
	}
	
	/**	A function (method) type for implementing iterators used by the iterate() method	*/
	typedef void (*TTMatrixIterator)(TTPtr c, const TTPtr a, const TTPtr b);
	
	/**	Step through every component in the matrix A and B to produce matrix C using the specified iterator method.	*/
	static TTErr iterate(TTMatrix* C, const TTMatrix* A, const TTMatrix* B, TTMatrixIterator iterator);

	/**	Add two matrices to produce a third matrix.
		The resulting matrix is instantiated by this method.
		You, the caller, are responsible for freeing it.	*/
	TTMatrix* operator + (const TTMatrix& B) const;

	/**	Subtract matrix B from matrix A to produce matrix C.
		The resulting matrix is instantiated by this method.
		You, the caller, are responsible for freeing it.	*/
	TTMatrix* operator - (const TTMatrix& B) const;
	
};


typedef TTMatrix* TTMatrixPtr;
typedef TTMatrix& TTMatrixRef;

//TTMatrixPtr operator + (const TTMatrix& A, const TTMatrix& B);



#define TTMATRIX_PROCESS_MATRICES_WITH_NAMED_TEMPLATE(template_name, input_matrix, output_matrix) \
	if (input_matrix->getTypeAsSymbol() == kTTSym_uint8) \
		err = template_name<TTUInt8>(input_matrix, output_matrix); \
	else if (input_matrix->getTypeAsSymbol() == kTTSym_int32) \
		err = template_name<TTInt32>(input_matrix, output_matrix); \
	else if (input_matrix->getTypeAsSymbol() == kTTSym_float32) \
		err = template_name<TTFloat32>(input_matrix, output_matrix); \
	else if (input_matrix->getTypeAsSymbol() == kTTSym_float64) \
		err = template_name<TTFloat64>(input_matrix, output_matrix); \
	else \
		err = kTTErrInvalidType;


#endif // __TT_MATRIX_H__

