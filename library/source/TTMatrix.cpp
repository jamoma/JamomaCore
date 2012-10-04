/*
 * Jamoma 2-Dimensional Matrix Data Class
 * Copyright © 2011-2012, Timothy Place & Nathan Wolek
 *
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTMatrix.h"
#include "TTEnvironment.h"
#include "TTBase.h"

#define thisTTClass			TTMatrix
#define thisTTClassName		"matrix"
#define thisTTClassTags		"matrix"


TT_OBJECT_CONSTRUCTOR,
	mData(NULL),
	mRowCount(1), // initialize to a 1x1 matrix by default (maybe we should be using the args?)
	mColumnCount(1), // initialize to a 1x1 matrix by default (maybe we should be using the args?)
	mElementCount(1),
	mComponentCount(1),
	mComponentStride(1),
	mDataCount(0),
	mType(TT("uint8")),
	mTypeSizeInBytes(1),
	mDataSize(0),
	mDataIsLocallyOwned(YES),
	mHeadPtr(NULL),
	mTailPtr(NULL)
{
	addAttributeWithGetterAndSetter(Dimensions, 	kTypeUInt32); // DEPRECATION in progress
	addAttributeWithSetter(RowCount, 				kTypeUInt32);
	addAttributeWithSetter(ColumnCount, 			kTypeUInt32);
	addAttributeWithSetter(Type,					kTypeUInt8);
	addAttributeWithSetter(ElementCount,			kTypeUInt8);

	addMessage(clear);
	addMessageWithArguments(fill);
	addMessageWithArguments(get);
	addMessageWithArguments(set);

	// TODO: getLockedPointer -- returns a pointer to the data, locks the matrix mutex
	// TODO: releaseLockedPointer -- releases the matrix mutex
	// TODO: the above two items mean we need a TTMutex member
	
	resize();

	// DEPRECATION in progress: setAttributeValue(TT("dimensions"), kTTVal1); 
	
	
}


TTMatrix::~TTMatrix()
{
	if (mDataIsLocallyOwned)
		delete[] mData; // TODO: only do this if the refcount for the data is down to zero!
}


TTErr TTMatrix::resize()
{
	TTUInt32 productOfDimensions = 1;

	/*
	for (unsigned int i=0; i<mDimensions.size(); i++) {
		if (i == 0)
			productOfDimensions = mDimensions[i];
		else
			productOfDimensions *= mDimensions[i];
	} */
	if (mRowCount != 0) productOfDimensions = mRowCount;
	if (mColumnCount != 0) productOfDimensions *= mColumnCount;
	
	
	mDataCount = productOfDimensions * mElementCount;
	mDataSize = mDataCount * mTypeSizeInBytes;
	mComponentStride = mTypeSizeInBytes * mElementCount;
    
	if (mDataIsLocallyOwned) {
		// TODO: currently, we are not preserving memory when resizing. Should we try to preserve the previous memory contents?
		// TODO: thread protection
		delete[] mData;
		mData = new TTByte[mDataSize];
		mHeadPtr = mData;
		mTailPtr = mData + mDataSize;
	}

	if (mDataSize && mData)
	{
		return kTTErrNone;
	} else {
		return kTTErrAllocFailed;
	}
}


TTErr TTMatrix::copy(const TTMatrix& source, TTMatrix& dest)
{
	dest.adaptTo(source);
	memcpy(dest.mData, source.mData, source.mDataSize);
	return kTTErrNone;
}


TTErr TTMatrix::adaptTo(const TTMatrix& anotherMatrix)
{
	TTValue v;
	
	// TODO: what should we do if anotherMatrix is not locally owned?
	// It would be nice to re-dimension the data, but we can't re-alloc / resize the number of bytes...
	
	anotherMatrix.getDimensions(v);
	setDimensions(v);
	
	setType(anotherMatrix.mType);
	setElementCount(anotherMatrix.mElementCount);
	
	return kTTErrNone;
}


TTBoolean TTMatrix::setRowCountWithoutResize(TTUInt32 aNewRowCount)
{
	if (aNewRowCount > 0)
	{
		mRowCount = aNewRowCount;
		return true;
	} else {
		return false;
	}
}


TTBoolean TTMatrix::setColumnCountWithoutResize(TTUInt32 aNewColumnCount)
{
	if (aNewColumnCount > 0)
	{
		mColumnCount = aNewColumnCount;
		return true;
	} else {
		return false;
	}
}


TTBoolean TTMatrix::setElementCountWithoutResize(TTUInt8 aNewElementCount)
{
	if (aNewElementCount > 0)
	{
		mElementCount = aNewElementCount;
		return true;
	} else {
		return false;
	}
}


TTBoolean TTMatrix::setTypeWithoutResize(TTDataInfoPtr aNewType)
{
	if (aNewType->isNumerical)
	{
		mType = aNewType->name;
		mTypeSizeInBytes = (aNewType->bitdepth / 8);
		return true;
	} else {
		return false;
	}
}


TTErr TTMatrix::setRowCount(const TTValue& aNewRowCount)
{
	TTUInt32 aNewRowCountInt = aNewRowCount;
	
	if (setRowCountWithoutResize(aNewRowCountInt))
	{
		return resize();
	} else {
		return kTTErrInvalidValue;
	}
}


TTErr TTMatrix::setColumnCount(const TTValue& aNewColumnCount)
{
	TTUInt32 aNewColumnCountInt = aNewColumnCount;
	
	if (setColumnCountWithoutResize(aNewColumnCountInt))
	{
		return resize();
	} else {
		return kTTErrInvalidValue;
	}
}


TTErr TTMatrix::setElementCount(const TTValue& newElementCount)
{
	TTUInt8 aNewElementCountInt = newElementCount;
	
	if (setElementCountWithoutResize(aNewElementCountInt))
	{
		return resize();
	} else {
		return kTTErrInvalidValue;
	}
}


TTErr TTMatrix::setType(const TTValue& aType)
{
	TTSymbolPtr aNewTypeName = aType;
	TTDataInfoPtr aNewDataType = TTDataInfo::getInfoForType(aNewTypeName);
	
	if (setTypeWithoutResize(aNewDataType))
	{
		return resize();
	} else {
		return kTTErrInvalidValue;
	}
}


TTErr TTMatrix::setDimensions(const TTValue& someNewDimensions)
{
	TTUInt32 aNewRowCount = 1;
	TTUInt32 aNewColumnCount = 1; 
	
	TTUInt8	size = someNewDimensions.getSize();
	
	// needed to support old calls with 1 or 2 dimensions
	if (size > 0) { someNewDimensions.get(0, aNewRowCount); }
	if (size > 1) { someNewDimensions.get(1, aNewColumnCount); }
	
	if (this->setRowCountWithoutResize(aNewRowCount) &&
		this->setColumnCountWithoutResize(aNewColumnCount))
	{
		return resize();
	} else {
		return kTTErrInvalidValue;
	}
}


TTErr TTMatrix::getDimensions(TTValue& returnedDimensions) const
{
	returnedDimensions.setSize(2);
	returnedDimensions.set(0, mRowCount);
	returnedDimensions.set(1, mColumnCount);
	
	return kTTErrNone;
}


TTErr TTMatrix::clear()
{
	memset(mData, 0, mDataSize);
	return kTTErrNone;
}


TTErr TTMatrix::fill(const TTValue& anInputValue, TTValue &anUnusedOutputValue)
{
	TTBytePtr fillValue = new TTByte[mComponentStride];

	// TODO: here we have this ugly switch again...
	if (mType == TT("uint8"))
		anInputValue.getArray((TTUInt8*)fillValue, mElementCount);
	else if (mType == TT("int32"))
		anInputValue.getArray((TTInt32*)fillValue, mElementCount);
	else if (mType == TT("float32"))
		anInputValue.getArray((TTFloat32*)fillValue, mElementCount);
	else if (mType == TT("float64"))
		anInputValue.getArray((TTFloat64*)fillValue, mElementCount);

	for (TTUInt32 i=0; i<mDataSize; i += mComponentStride)
		memcpy(mData+i, fillValue, mComponentStride);

	delete[] fillValue;
	return kTTErrNone;
}

/*
	To find the index in the matrix:

	1D Matrix:	index = x
	2D Matrix:	index = dim_0 y  +  x
	3D Matrix:	index = dim_0 dim_1 z  +  dim_0 y  +  x
	etc.
 */


// args passed-in should be the coordinates
// args returned will be the value at those coordinates
TTErr TTMatrix::get(const TTValue& anInputValue, TTValue &anOutputValue) const
{
	TTUInt16 dimensionCount = anInputValue.getSize();

	if (dimensionCount != mDimensions.size())
		return kTTErrWrongNumValues;

	int productOfLowerDimensionSizes = 1;
	int index = 0;

	for (int d=0; d<dimensionCount; d++) {
		int position = anInputValue.getInt32(d);

		index += position * productOfLowerDimensionSizes;
		productOfLowerDimensionSizes *= mDimensions[d];
	}

	anOutputValue.clear();

	// TODO: here we have this ugly switch again...
	// Maybe we could just have duplicate pointers of different types in our class, and then we could access them more cleanly?
	if (mType == TT("uint8")) {
		for (int e=0; e<mElementCount; e++)
			anOutputValue.append((TTUInt8*)(mData+(index*mComponentStride+e*mTypeSizeInBytes)));
	}
	else if (mType == TT("int32")) {
		for (int e=0; e<mElementCount; e++)
			anOutputValue.append((TTInt32*)(mData+(index*mComponentStride+e*mTypeSizeInBytes)));
	}
	else if (mType == TT("float32")) {
		for (int e=0; e<mElementCount; e++)
			anOutputValue.append((TTFloat32*)(mData+(index*mComponentStride+e*mTypeSizeInBytes)));
	}
	else if (mType == TT("float64")) {
		for (int e=0; e<mElementCount; e++)
			anOutputValue.append((TTFloat64*)(mData+(index*mComponentStride+e*mTypeSizeInBytes)));
	}

	return kTTErrNone;
}

/*

template<typename T>
TTErr TTMatrix::get2dWithinBounds(TTRowID i, TTColumnID j, T& data) 
{
		//TTUInt32 m = mDimensions[0];
		TTUInt32 n = mDimensions[1];
		
		i -= 1;	// convert to zero-based indices for data access
		j -= 1;	// convert to zero-based indices for data access
		
		TTUInt32 distanceFromHead = (i*n+j) * mComponentStride;
		TTBoolean isInBounds = inBoundsZeroIndex(distanceFromHead);
		if (isInBounds)
		{
			data = *(T*)(mData + distanceFromHead);	
			return kTTErrNone;
		} else {
			return kTTErrInvalidValue;
		}
}

*/

// args passed-in should be the coordinates plus the value
TTErr TTMatrix::set(const TTValue& anInputValue, TTValue &anUnusedOutputValue)
{
	TTValue		theValue;
	TTValue		theDimensions = anInputValue;
	TTUInt16	dimensionCount = anInputValue.getSize() - mElementCount;

	if (dimensionCount != mDimensions.size())
		return kTTErrWrongNumValues;

	theValue.copyFrom(anInputValue, dimensionCount);
	theDimensions.setSize(dimensionCount);

	int productOfLowerDimensionSizes = 1;
	int index = 0;

	for (int d=0; d<dimensionCount; d++) {
		int position = anInputValue.getInt32(d) - 1; // subtract 1 to get back to zero-based indices for mem access in C

		index += position * productOfLowerDimensionSizes;
		productOfLowerDimensionSizes *= mDimensions[d];
	}
	
	if (mType == TT("uint8")) {
		for (int e=0; e<mElementCount; e++)
			anInputValue.get(e+dimensionCount, *(TTUInt8*)(mData+(index*mComponentStride+e*mTypeSizeInBytes)));
	}
	else if (mType == TT("int32")) {
		for (int e=0; e<mElementCount; e++)
			anInputValue.get(e+dimensionCount, *(TTInt32*)(mData+(index*mComponentStride+e*mTypeSizeInBytes)));
	}
	else if (mType == TT("float32")) {
		for (int e=0; e<mElementCount; e++)
			anInputValue.get(e+dimensionCount, *(TTFloat32*)(mData+(index*mComponentStride+e*mTypeSizeInBytes)));
	}
	else if (mType == TT("float64")) {
		for (int e=0; e<mElementCount; e++)
			anInputValue.get(e+dimensionCount, *(TTFloat64*)(mData+(index*mComponentStride+e*mTypeSizeInBytes)));
	}

	return kTTErrNone;
}

TTBoolean TTMatrix::allAttributesMatch(const TTMatrix* A, const TTMatrix* B)
{
	if (A->mType == B->mType  &&  
		A->mElementCount == B->mElementCount && 
		A->mDimensions == B->mDimensions)
		{
			return true;
		} else {
			return false;
		}
}

TTErr TTMatrix::iterate(TTMatrix* C, const TTMatrix* A, const TTMatrix* B, TTMatrixIterator iterator)
{
	//TTBoolean AmatchesB = allAttributesMatch(A, B);
	if (true) {
		int stride = A->mTypeSizeInBytes;
		int size = A->mDataSize;
		TTValue		dims;		// DEPRECATION in progress
		
		C->setAttributeValue(kTTSym_type, A->mType);
		C->setAttributeValue(kTTSym_elementCount, A->mElementCount);
		
		/* DEPRECATION in progress: the following section had to be changed to prevent malloc errors. results are less efficient code, but this will be regained once mRowCount & mColumnCount are fully implemented. */
		
		dims.setSize(2);
		dims.set(0, A->mRowCount);
		dims.set(1, A->mColumnCount);	
		C->setAttributeValue(kTTSym_dimensions, dims);
		
		/* DEPRECATION in progress: end section to be changed */
		
		for (int k=0; k<size; k+=stride)
			(*iterator)(C->mData+k, A->mData+k, B->mData+k);
		
		return kTTErrNone;
	}
	else
		return kTTErrGeneric;
}

