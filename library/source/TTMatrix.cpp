/*
 * Jamoma 2-Dimensional Matrix Data Class
 * Copyright © 2011-2012, Timothy Place & Nathan Wolek
 *
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTMatrix.h"
#include "TTEnvironment.h"

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
	//addAttributeWithGetterAndSetter(RowCount, 		kTypeUInt32);
	//addAttributeWithGetterAndSetter(ColumnCount, 	kTypeUInt32);
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

	for (unsigned int i=0; i<mDimensions.size(); i++) {
		if (i == 0)
			productOfDimensions = mDimensions[i];
		else
			productOfDimensions *= mDimensions[i];
	}
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

TTErr TTMatrix::setDimensions(const TTValue& someNewDimensions)
{
	TTUInt32 aNewRowCount = 0;
	TTUInt32 aNewColumnCount = 1;  // needed to support calls with 1D

	someNewDimensions.get(0, aNewRowCount);
	mRowCount = aNewRowCount;
	
	someNewDimensions.get(1, aNewColumnCount);
	mColumnCount = aNewColumnCount;
	
	/* DEPRECATION in progress: the following section will be removed */
	
	TTUInt8	size = someNewDimensions.getSize();

	mDimensions.resize(size);
	for (int i=0; i<size; i++) {
		TTInt32 aNewDimension = 0;

		someNewDimensions.get(i, aNewDimension);
		mDimensions[i] = aNewDimension;
	}
	
	/* DEPRECATION in progress: end of section to be removed */
	
	return resize();

}


TTErr TTMatrix::getDimensions(TTValue& returnedDimensions) const
{
	returnedDimensions.setSize(2);
	returnedDimensions.set(0, mRowCount);
	returnedDimensions.set(1, mColumnCount);
	
	return kTTErrNone;
}


TTErr TTMatrix::setType(const TTValue& aType)
{
	TTSymbolPtr typeName = aType;

	// TODO: it's dumb to do this big switch below...
	// TODO: we should use the info already defined in TTDataInfo

	if (typeName == TT("uint8"))
		mTypeSizeInBytes = 1;
	else if (typeName == TT("int32"))
		mTypeSizeInBytes = 4;
	else if (typeName == TT("float32"))
		mTypeSizeInBytes = 4;
	else if (typeName == TT("float64"))
		mTypeSizeInBytes = 8;
	else {
		// don't change the matrix data if something bogus was passed-in
		return kTTErrInvalidValue;
	}

	mType = typeName;
	return resize();
}


TTErr TTMatrix::setElementCount(const TTValue& newElementCount)
{
	mElementCount = newElementCount;
	return resize();
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


TTErr TTMatrix::iterate(TTMatrix* C, const TTMatrix* A, const TTMatrix* B, TTMatrixIterator iterator)
{
	if (A->mType == B->mType  &&  A->mElementCount == B->mElementCount && A->mDimensions == B->mDimensions) {
		int stride = A->mTypeSizeInBytes;
		int size = A->mDataSize;
		
		C->setAttributeValue(kTTSym_type, A->mType);
		C->setAttributeValue(kTTSym_elementCount, A->mElementCount);	
		C->setDimensionsWithVector(A->mDimensions);
		
		for (int k=0; k<size; k+=stride)
			(*iterator)(C->mData+k, A->mData+k, B->mData+k);
		
		return kTTErrNone;
	}
	else
		return kTTErrGeneric;
}

