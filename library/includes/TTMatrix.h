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
	distanceFromHead < maxDistanceFromHead										\
} 

typedef TTByte* TTBytePtr;	///< Data is a pointer to some bytes.


/**	Three typedefs for the numbers used to indicate rows, columns and elements within the matrix.
	
	This is so that we can have consistent datatypes throughout the TTMatrix class and easily change the datatype used should the need arise in the future.
	
	It may also potentially be used to override functions that take the numbers in either order. For example, linear algebra-related matrices will likely access elements in TTRowID, TTColumnID order. However, video processing objects will likely access elements in TTColumnID, TTRowID order.
	
 */
typedef TTUInt32 TTRowID;
typedef TTUInt32 TTColumnID;
typedef TTUInt16 TTElementID;
// TODO: should there be a similar typedef for results of math operations that combine these values, i.e. TTIndexMathType?

/****************************************************************************************************/
// Class Specification

/**	An 2-dimensional matrix of compound values with N elements each.	

* Each compound value stored in the matrix is known as a component. The number of elements in each component is variable, enabling the storage of things like complex numbers or RGBA colors. However, this element count for each component and their datatype is uniform across the entire matrix.

* Locations for individual components in the matrix are identified by (row, column) pairs.  These coordinates are translated internally into linear memory using <a href="http://en.wikipedia.org/wiki/Row-major_order#Column-major_order">column-major order</a>. 

* All dimension indices begin counting at zero. This means that index values greater than or equal to the respective mRowCount, mColumnCount or mElementCount will be out of bounds.

* Please note that previous support for N dimensions has been deprecated and the TTMatrix class is now fixed at 2 dimensions. Throughout this documentation, dimension 1 is referred to as the "row" and dimension 2 is referred to as the "column".
*/
class TTFOUNDATION_EXPORT TTMatrix : public TTDataObject {
	TTCLASS_SETUP(TTMatrix)

protected:	

	TTBytePtr			mData;					///< matrix of values
	vector<TTUInt32>	mDimensions;			///< variable dimensions - @deprecated use mRowCount and mColumnCount instead
	TTRowID				mRowCount;				///< How many rows of values the matrix should have. Uses an unsigned 32-bit integer which provides a maximum value of 4,294,967,295.
	TTColumnID			mColumnCount;			///< How many columns of values the matrix should have. Uses an unsigned 32-bit integer which provides a maximum value of 4,294,967,295.
	TTElementID			mElementCount;			///< How many elements (parts) per value (e.g. 2 for complex numbers, 4 for colors, default = 1). Uses an unsigned 16-bit integer which provides a maximum value of 65,535.
	TTUInt32			mComponentCount;		///< mRowCount * mColumnCount
	TTUInt8				mComponentStride;		///< how many bytes from one the beginning one matrix component to the next
	TTUInt32			mDataCount;				///< mComponentCount * mElementCount (e.g. total number of floats or ints in the matrix)
	TTSymbolPtr			mType;					///< "uint8", "float32", etc. --> kTypeUInt8, kTypeUInt16, kTypeInt32, kTypeUInt64, kTypeFloat32, or kTypeFloat64
	TTDataInfoPtr		mTypeAsDataInfo;		///< local pointer to info about the data type found in TTBase::ttDataTypeInfo
	TTDataType			mTypeAsDataType;		///< member of global enumerated list TTBase::TTDataType
	TTUInt8				mTypeSizeInBytes;		///< number of bytes present in mType
	TTUInt32			mDataSize;				///< mTypeSizeInBytes * mDataCount
	TTBoolean			mDataIsLocallyOwned;	///< If false, then we are referencing outside memory which we don't own
	TTPtr			mHeadPtr;		///< Pointer used for checking if get/set methods are in bounds. Equal to the start of first component in mData.
	TTPtr			mTailPtr;		///< Pointer used for checking if get/set methods are in bounds. Equal to the start of last component in mData.
	
	
	/**	Internal method that resizes memory allocated when various attributes change.	
		@return	TTErr		kTTErrAllocFailed if the resize operation could not be completed, otherwise kTTErrNone */
	TTErr resize();

	/**	Run unit tests.	*/	
	virtual TTErr test(TTValue& returnedTestInfo);
	
	/**	Internal method that sets the value for RowCount without resizing the matrix of values. It is included so that other methods in the class use consistent range checking. Values that are less than 1 will return false and leave the value unchanged. 
		@param	aNewRowCount	number of desired rows in this matrix
		@return TTBoolean		false if value was outside allowed range and therefore not changed, otherwise true
		*/
	TTBoolean setRowCountWithoutResize(TTRowID aNewRowCount);
	
	/**	Internal method that sets the value for ColumnCount without resizing the matrix of values. It is included so that other methods in the class use consistent range checking. Values that are less than 1 will return false and leave the value unchanged. 
		@param	aNewColumnCount		number of desired columns in this matrix
		@return TTBoolean			false if value was outside allowed range and therefore not changed, otherwise true
		*/
	TTBoolean setColumnCountWithoutResize(TTColumnID aNewColumnCount);
	
	/**	Internal method that sets the value for ElementCount without resizing the matrix of values. It is included so that other methods in the class use consistent range checking. Values that are less than 1 will return false and leave the value unchanged. 
		@param	aNewElementCount	number of desired elements in each component
		@return TTBoolean			false if value was outside allowed range and therefore not changed, otherwise true
		*/
	TTBoolean setElementCountWithoutResize(TTElementID aNewElementCount);
	
	/**	Internal method that sets the values for Type and TypeSizeInBytes without resizing the matrix of values. It is included so that other methods in the class consistently check for valid entries. Values that are not a numeric type defined by ttDataTypeInfo in TTBase will return false and leave the values unchanged. 
		@param	aNewType	desired datatype to be used for each element
		@return TTBoolean	false if value was outside allowed range and therefore not changed, otherwise true
		*/
	TTBoolean setTypeWithoutResize(TTDataType aNewType);
	
public:
	
	/**	Attribute accessor. Sets the value for RowCount. Values that are less than 1 will return an error. 
		@param	aNewRowCount	number of desired rows in this matrix	
		@return	TTErr			kTTErrInvalidValue if value was outside allowed range, kTTErrAllocFailed if the resize operation could not be completed, otherwise kTTErrNone 
	*/
	TTErr setRowCount(const TTValue& aNewRowCount);
	
	/**	Attribute accessor. Sets the value for ColumnCount. Values that are less than 1 will return an error.
		@param	aNewColumnCount	number of desired columns in this matrix	
		@return	TTErr			kTTErrInvalidValue if value was outside allowed range, kTTErrAllocFailed if the resize operation could not be completed, otherwise kTTErrNone 
	*/
	TTErr setColumnCount(const TTValue& aNewColumnCount);
	
	/**	Attribute accessor.	Sets the value for ElementCount. Values that are less than 1 will return an error. 
		@param	newElementCount	number of desired elements in each component	
		@return	TTErr			kTTErrInvalidValue if value was outside allowed range, kTTErrAllocFailed if the resize operation could not be completed, otherwise kTTErrNone 
	*/
	TTErr setElementCount(const TTValue& newElementCount);
	
	/**	Attribute accessor.	Sets the value for Type and TypeSizeInBytes.  Values must be one of the numeric types defined by ttDataTypeInfo in TTBase (i.e., float32, float64, int8, uint8, int16, uint16, int32, uint32, int64, uint64). 
		@param	aType		desired datatype to be used for each element	
		@return	TTErr		kTTErrInvalidValue if value was outside allowed range, kTTErrAllocFailed if the resize operation could not be completed, otherwise kTTErrNone 
	*/
	TTErr setType(const TTValue& aType); //TYPECHANGE not sure
	
	/**	Attribute accessor.  Set the values of mRowCount and mColumnCount using a TTValue array. Values beyond the first two items in the TTValue array will be ignored without an error. Values that are less than 1 will return an error. Support for N dimensions has been deprecated. 
		@param	someNewDimensions	a 2-item TTValue array with the desired mRowCount and mColumnCount 	
		@return	TTErr				kTTErrInvalidValue if value was outside allowed range, kTTErrAllocFailed if the resize operation could not be completed, otherwise kTTErrNone 
	*/
	TTErr setDimensions(const TTValue& someNewDimensions);
	
	/**	Alternative to attribute accessor. Set the values of mRowCount and mColumnCount with a TTUInt32 vector (instead of using  TTValue array). Values beyond the first two items in the vector will be ignored without an error. Values that are less than 1 will return an error. Support for N dimensions has been deprecated. 
		@param	newDimensions	a 2-item TTUInt32 vector with the desired mRowCount and mColumnCount 	
		@return	TTErr			kTTErrInvalidValue if value was outside allowed range, kTTErrAllocFailed if the resize operation could not be completed, otherwise kTTErrNone 
	*/
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
		@return	TTRowID		the value stored at mRowCount */	
	TTRowID getRowCount()
	{
		return mRowCount;
	}
	
	/**	Simple data accessor. 
		@return	TTColumnID		the value stored at mColumnCount */
	TTColumnID getColumnCount()
	{
		return mColumnCount;
	}
	
	/**	Simple data accessor. 
		@return	TTElementID		the value stored at mElementCount */
	TTElementID getElementCount()
	{
		return mElementCount;
	}
	
	/**	Simple data accessor. 
		@return	TTUInt32		the value stored at mComponentCount */
	TTUInt32 getComponentCount()
	{
		return mComponentCount;
	}
	
	/**	Simple data accessor. 
		@return	TTSymbolPtr		the value stored at mType */
	TTSymbolPtr	getTypeAsSymbol()
	{
		return mTypeAsDataInfo->name; // mTypeAsDataInfo->name TYPECHANGE done
	}
	
	/**	Simple data accessor. 
		@return	TTDataInfoPtr		the value stored at mTypeAsDataInfo*/
	TTDataInfoPtr getTypeAsDataInfo()
	{
		return mTypeAsDataInfo;
	}
	
	/**	Simple data accessor. 
		@return	TTUInt32		the value stored at mDataCount */
	TTUInt32 getDataCount()
	{
		return mDataCount;
	}
	
	/**	Simple data accessor. 
		@return	TTUInt32		the value stored at mComponentStride */
	TTUInt32 getComponentStride()
	{
		return mComponentStride;
	}
	
	/**	Legacy attribute accessor. Will set returnedDimensions as a 2-item TTValue using the values saved as RowCount & ColumnCount.	
	
	@param[out]	returnedDimensions	a 2-item TTValue with mRowCount first & mColumnCount second
	@return		TTErr				always returns kTTErrNone 
	*/
	TTErr getDimensions(TTValue& returnedDimensions) const;
	
	
	/** Set every element in the matrix to zero.
	
	@return	TTErr				always returns kTTErrNone 
	*/
	TTErr clear();
	
	/** Fill every component in the matrix with the same value.
	
	@param[in]	anInputValue		TTValue array containing the elements used to fill matrix
	@param[out]	anOutputValue		unused
	@return		TTErr				always returns kTTErrNone 
	*/
	TTErr fill(const TTValue& anInputValue, TTValue &anOutputValue);
	
	
	/** Internal macro used by both set() and get() functions to locate the data within mData to be operated on. 
		Allows our interface to be consistent in its lookup method and represents a specific application of the <a href="http://en.wikipedia.org/wiki/Don't_repeat_yourself">DRY principle</a>.

		@param	i			row in matrix
		@param	j			column in matrix
	*/
	#define INDEX_OF_FIRSTCOMPONENTBYTE(i, j)			\
	{													\
		(i * mColumnCount + j) * mComponentStride		\
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
	
	
	/**	Get the value of a component located at any location in 2-dimensional matrix.
		Pass in coordinate pair using anInputValue. Returns via anOutputValue an mElementCount-item TTValue using the values stored at the coordinates specified by anInputValue. 
		Remember that the first location in the matrix is row 0 and column 0.
		Used primarily as an interface to the matrix data from Jamoma implementations in Ruby and Max. To retrieve values from the matrix with less overhead, see the get2d() method.

		@param[in]	anInputValue		TTValue array containing the row and column values of coordinates
		@param[out]	anOutputValue		method sets to a TTValue array containing element(s) found at the given coordinates
		@return		TTErr				kTTErrWrongNumValues if anInputValue does not have 2 items, else kTTErrNone 
		*/
	TTErr get(const TTValue& anInputValue, TTValue &anOutputValue) const;


	/**	Get the value of a component located at (i,j) in a 2-dimensional matrix.
		Remember that the first component in the matrix is (0,0).
		
		In order to provide some degree of efficiency, the data passed-in is not bounds checked --
		you must ensure that you are passing memory that is at least mComponentStride bytes large.
	 
		In fact, you should pass a compound type if you want more than one of the primitive types.
		For example, pass a pointer to a TTComplex if you want two doubles.
		
		@param[in]	i			row in matrix of desired component
		@param[in]	j			column in matrix of desired component
		@param[out]	data		reference to where method should return value
		@return 	TTErr		always returns kTTErrNone
	 */
	template<typename T>
	TTErr get2d(TTRowID i, TTColumnID j, T& data) const
	{
		TTUInt32 index = INDEX_OF_FIRSTCOMPONENTBYTE(i, j);
		data = *(T*)(mData + index);
		return kTTErrNone;
	}
	
		
	/**	Get the value of element e of the component located at (i,j) in a 2-dimensional matrix.
		Remember that the first component in the matrix is (0,0) and its first element is 0.
		
		In order to provide some degree of efficiency, the data passed-in is not bounds checked --
		you must ensure that you are passing memory that is at least mComponentStride bytes large.
	 
		In fact, you should pass a compound type if you want more than one of the primitive types.
		For example, pass a pointer to a TTComplex if you want two doubles.
		
		@param[in]	i			row in matrix of desired component
		@param[in]	j			column in matrix of desired component
		@param[in]	e			element within matrix component
		@param[out]	data		reference to where method should return value
		@return 	TTErr		always returns kTTErrNone
	 */
	template<typename T>
	TTErr get2d(TTRowID i, TTColumnID j, TTElementID e, T& data)
	{
		TTUInt32 index = INDEX_OF_FIRSTCOMPONENTBYTE(i, j);
		data = *(T*)(mData + index + e);	// TODO: don't we need to account for bytes per element?
		return kTTErrNone;
	}
	
		
	/**	Set the value of a component located at any location in an 2-dimensional matrix.
		Pass in coordinate pair and new value using anInputValue. Returns nothing via anOutputValue.
		Remember that the first location in the matrix is row 0 and column 0.
		Used primarily as an interface to the matrix data from Jamoma implementations in Ruby and Max. To store values in the matrix with less overhead, see the set2d() method.	

		@param[in]	anInputValue		TTValue array containing the row and column values of coordinates and elements to be stored at this location, therefore anInputValue requires (2 + mElementCount) items
		@param[out]	anOutputValue		unused
		@return		TTErr				kTTErrWrongNumValues if anInputValue does not have (2 + mElementCount) items, else kTTErrNone 
		*/
	TTErr set(const TTValue& anInputValue, TTValue &anOutputValue);

	/**	Set the value of a component located at (i,j) in a 2-dimensional matrix.	
		Remember that the first component in the matrix is (0,0).
		
		In order to provide some degree of efficiency, the data passed-in is not bounds checked --
		you must ensure that you are passing memory that is at least mComponentStride bytes large.
	 
		In fact, you should pass a compound type if you want more than one of the primitive types.
		For example, pass a pointer to a TTComplex if you want two doubles.
		
		@param[in]	i			row in matrix of component to be set
		@param[in]	j			column in matrix of component to be set
		@param[out]	data		reference to where method should return value
		@return 	TTErr		always returns kTTErrNone
	 */
	template<typename T>
	TTErr set2d(TTRowID i, TTColumnID j, T data)
	{
		TTUInt32 index = INDEX_OF_FIRSTCOMPONENTBYTE(i, j);
		*(T*)(mData + index) = data;
		return kTTErrNone;
	}
	
	/**	Set the value of element e of the component located at (i,j) in a 2-dimensional matrix.
		Remember that the first component in the matrix is (0,0) and its first element is 0.
		
		In order to provide some degree of efficiency, the data passed-in is not bounds checked --
		you must ensure that you are passing memory that is at least mComponentStride bytes large.
	 
		In fact, you should pass a compound type if you want more than one of the primitive types.
		For example, pass a pointer to a TTComplex if you want two doubles.
		
		@param[in]	i			row in matrix of component to be set
		@param[in]	j			column in matrix of component to be set
		@param[in]	e			element within matrix component
		@param[out]	data		reference to where method should return value
		@return 	TTErr		always returns kTTErrNone
	 */
	template<typename T>
	TTErr set2d(TTRowID i, TTColumnID j, TTElementID e, T data)
	{
		TTUInt32 index = INDEX_OF_FIRSTCOMPONENTBYTE(i, j);
		*(T*)(mData + index + e) = data;	// TODO: don't we need to account for bytes per element?
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

	
	/**	Compare the attributes of this matrix to another to see if they all match. Used before conducting certain math operations.	
	
	@param	anotherMatrix		matrix that you would like to compare to this one
	@return	TTBoolean			true if mType, mElementCount, mRowCount AND mColumnCount match, otherwise false
	*/
	TTBoolean allAttributesMatch(const TTMatrix& anotherMatrix) const;
	TTBoolean allAttributesMatch(const TTMatrix* anotherMatrix) const
	{
		return TTMatrix::allAttributesMatch(*anotherMatrix);
	}
	
	/**	Copy the data from one matrix into another.
	
	@param[in]	source			matrix that you would like to copy FROM
	@param[out]	dest			matrix that you would like to copy TO
	@return		TTErr			kTTErrInvalidValue if operation is not completed, otherwise kTTErrNone
	*/
	static TTErr copy(const TTMatrix& source, TTMatrix& dest);
	static TTErr copy(const TTMatrix* source, TTMatrix* dest)
	{
		return TTMatrix::copy(*source, *dest);
	}

	/**	Set dimensions, element count, datatype, etc. (i.e. the metadata describing a matrix)
	 to match the another matrix which is passed-in as an argument.	
	
	@param	anotherMatrix	matrix to which you would like to conform the attributes of this one
	@return	TTErr			kTTErrInvalidValue if operation is not completed, otherwise kTTErrNone
	*/
	TTErr adaptTo(const TTMatrix& anotherMatrix);
	TTErr adaptTo(const TTMatrix* anotherMatrix)
	{
		return adaptTo(*anotherMatrix);
	}
	
	/**	A function (method) type for implementing iterators used by the iterate() method.	
	@param[out]	c			pointer to matrix that holds the results of the operation
	@param[in]	a			pointer to matrix 1 of 2 for the iteration operation
	@param[in]	b			pointer to matrix 2 of 2 for the iteration operation
	*/
	typedef void (*TTMatrixIterator)(TTPtr c, const TTPtr a, const TTPtr b);
	
	/**	Step through every component in the matrix A and B to produce matrix C using the specified iterator method.
	@param[out]	C			pointer to matrix that holds the results of the operation
	@param[in]	A			pointer to matrix 1 of 2 for the iteration operation
	@param[in]	B			pointer to matrix 2 of 2 for the iteration operation
	@param[in]	iterator	function that will be used to operate on matrices A and B
	@return		TTErr		kTTErrGeneric if attributes do not match or if iterate fails, otherwise returns kTTErrNone
	*/
	static TTErr iterate(TTMatrix* C, const TTMatrix* A, const TTMatrix* B, TTMatrixIterator iterator);
	
	/**	Only if all the attributes of matrix A and B match, then step through every component to produce matrix C using the specified iterator method.	
	@param[out]	C			pointer to matrix that holds the results of the operation
	@param[in]	A			pointer to matrix 1 of 2 for the iteration operation
	@param[in]	B			pointer to matrix 2 of 2 for the iteration operation
	@param[in]	iterator	function that will be used to operate on matrices A and B
	@return		TTErr		kTTErrGeneric if attributes do not match or if iterate fails, otherwise returns kTTErrNone
	*/
	static TTErr iterateWhenAllAttributesMatch(TTMatrix* C, const TTMatrix* A, const TTMatrix* B, TTMatrixIterator iterator);

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


// TYPECHANGE not sure
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

