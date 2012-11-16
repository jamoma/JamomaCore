/** @file
 *
 * @ingroup foundationLibrary
 *
 * @brief 2-dimensional matrix of compound values with N elements each.
 * 
 * @authors Timothy Place & Nathan Wolek
 *
 * @copyright Copyright © 2011-2012, Timothy Place & Nathan Wolek @n
 * This code is licensed under the terms of the "New BSD License" @n
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
	mType(kTypeUInt8),
	mTypeSizeInBytes(1),
	mDataSize(0),
	mDataIsLocallyOwned(YES),
	mHeadPtr(NULL),
	mTailPtr(NULL)
{
	addAttributeWithGetterAndSetter(Dimensions, 	kTypeUInt32); 	// mDimensions deprecated, we should delete this too
																	// NW: had trouble removing it in Oct 2012
																	// we can keep setDimensions() & getDimensions()
	addAttributeWithSetter(RowCount, 				kTypeUInt32);
	addAttributeWithSetter(ColumnCount, 			kTypeUInt32);
	addAttributeWithGetterAndSetter(Type,			kTypeUInt8);	// necessary so that public interface uses symbols
																	// internally we use TTDataType
	addAttributeWithSetter(ElementCount,			kTypeUInt16);

	addMessage(clear);
	addMessageWithArguments(fill);
	addMessageWithArguments(get);
	addMessageWithArguments(set);

	// TODO: getLockedPointer -- returns a pointer to the data, locks the matrix mutex
	// TODO: releaseLockedPointer -- releases the matrix mutex
	// TODO: the above two items mean we need a TTMutex member
	
	resize();
	
	
}


TTMatrix::~TTMatrix()
{
	if (mDataIsLocallyOwned)
		delete[] mData; // TODO: only do this if the refcount for the data is down to zero!
}


TTErr TTMatrix::resize()
{
	mComponentCount = mRowCount * mColumnCount;
	mDataCount = mComponentCount * mElementCount;
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


TTBoolean TTMatrix::setRowCountWithoutResize(TTRowID aNewRowCount)
{
	if (aNewRowCount > 0)
	{
		mRowCount = aNewRowCount;
		return true;
	} else {
		return false;
	}
}


TTBoolean TTMatrix::setColumnCountWithoutResize(TTColumnID aNewColumnCount)
{
	if (aNewColumnCount > 0)
	{
		mColumnCount = aNewColumnCount;
		return true;
	} else {
		return false;
	}
}


TTBoolean TTMatrix::setElementCountWithoutResize(TTElementID aNewElementCount)
{
	if (aNewElementCount > 0)
	{
		mElementCount = aNewElementCount;
		return true;
	} else {
		return false;
	}
}


TTBoolean TTMatrix::setTypeWithoutResize(TTDataType aNewType)
{
	if (ttDataTypeInfo[aNewType]->isNumerical)
	{
		mType = aNewType;
		mTypeAsDataInfo = TTDataInfo::getInfoForType(aNewType);
		mTypeAsSymbol = &(mTypeAsDataInfo->name);
		mTypeSizeInBytes = (mTypeAsDataInfo->bitdepth / 8);
		return true;
	} else {
		return false;
	}
}


TTErr TTMatrix::setRowCount(const TTValue& aNewRowCount)
{
	TTRowID aNewRowCountInt = aNewRowCount;
	
	if (setRowCountWithoutResize(aNewRowCountInt))
	{
		return resize();
	} else {
		return kTTErrInvalidValue;
	}
}


TTErr TTMatrix::setColumnCount(const TTValue& aNewColumnCount)
{
	TTColumnID aNewColumnCountInt = aNewColumnCount;
	
	if (setColumnCountWithoutResize(aNewColumnCountInt))
	{
		return resize();
	} else {
		return kTTErrInvalidValue;
	}
}


TTErr TTMatrix::setElementCount(const TTValue& newElementCount)
{
	TTElementID aNewElementCountInt = newElementCount;
	
	if (setElementCountWithoutResize(aNewElementCountInt))
	{
		return resize();
	} else {
		return kTTErrInvalidValue;
	}
}


TTErr TTMatrix::setType(const TTValue& aType)
{
	TTSymbol aNewTypeAsSymbol = aType;
	TTDataType aNewDataType = TTDataInfo::matchSymbolToDataType(aNewTypeAsSymbol);
	
	if (setTypeWithoutResize(aNewDataType))
	{
		mTypeAsSymbol = aNewTypeAsSymbol; // TODO: dereferencing TTDataInfo->name not working, so this is temp solution
										// after if{} because we should not change unless resize() will occur
		return resize();
	} else {
		return kTTErrInvalidValue;
	}
}


TTErr TTMatrix::setDimensions(const TTValue& someNewDimensions)
{
	TTRowID aNewRowCount = 1;
	TTColumnID aNewColumnCount = 1; 
	
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


TTErr TTMatrix::getType(TTValue& returnedType) const
{
	returnedType = mTypeAsSymbol;
	
	return kTTErrNone;
}


TTErr TTMatrix::getDimensions(TTValue& returnedDimensions) const
{
	returnedDimensions.setSize(2);
	returnedDimensions.set(0, TTUInt32(mRowCount)); // compile fails if we don't cast mRowCount here
	returnedDimensions.set(1, TTUInt32(mColumnCount)); // compile fails if we don't cast mColumnCount here
	
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
	if (mType == kTypeUInt8) 
		anInputValue.getArray((TTUInt8*)fillValue, mElementCount);
	else if (mType == kTypeInt32) 
		anInputValue.getArray((TTInt32*)fillValue, mElementCount);
	else if (mType == kTypeFloat32) 
		anInputValue.getArray((TTFloat32*)fillValue, mElementCount);
	else if (mType == kTypeFloat64) 
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


// args passed-in should be the 2 coordinates
// args returned will be the value(s) at those coordinates
TTErr TTMatrix::get(const TTValue& anInputValue, TTValue &anOutputValue) const
{
	TTUInt16 dimensionCount = anInputValue.getSize();
	
	if (dimensionCount != 2) // 2 dimensions only
		return kTTErrWrongNumValues;

	TTInt32 i, j;
	anInputValue.get(0, i);
	anInputValue.get(1, j);
	TTUInt32 index = INDEX_OF_COMPONENT_FIRSTBYTE(i, j);
	
	// TODO: there is no bounds checking here
	
	anOutputValue.clear();

	// TODO: here we have this ugly switch again...
	// Maybe we could just have duplicate pointers of different types in our class, and then we could access them more cleanly?
	if (mType == kTypeUInt8) { 
		for (int e=0; e<mElementCount; e++)
			anOutputValue.append((TTUInt8*)(mData+(index+e*mTypeSizeInBytes)));
	}
	else if (mType == kTypeInt32) { 
		for (int e=0; e<mElementCount; e++)
			anOutputValue.append((TTInt32*)(mData+(index+e*mTypeSizeInBytes)));
	}
	else if (mType == kTypeFloat32) { 
		for (int e=0; e<mElementCount; e++)
			anOutputValue.append((TTFloat32*)(mData+(index+e*mTypeSizeInBytes)));
	}
	else if (mType == kTypeFloat64) { 
		for (int e=0; e<mElementCount; e++)
			anOutputValue.append((TTFloat64*)(mData+(index+e*mTypeSizeInBytes)));
	}

	return kTTErrNone;
}


// args passed-in should be the coordinates plus the value
// therefore anInputValue requires (2 + mElementCount) items
TTErr TTMatrix::set(const TTValue& anInputValue, TTValue &anUnusedOutputValue)
{
	TTValue		theValue;
	TTUInt16	dimensionCount = anInputValue.getSize() - mElementCount;

	if (dimensionCount != 2) // 2 dimensions only
		return kTTErrWrongNumValues;

	theValue.copyFrom(anInputValue, dimensionCount);

	TTInt32 i, j;
	anInputValue.get(0, i);
	anInputValue.get(1, j);
	TTUInt32 index = INDEX_OF_COMPONENT_FIRSTBYTE(i, j);
	
	// TODO: there is no bounds checking here
	
	if (mType == kTypeUInt8) { 
		for (int e=0; e<mElementCount; e++)
			anInputValue.get(e+dimensionCount, *(TTUInt8*)(mData+(index+e*mTypeSizeInBytes)));
	}
	else if (mType == kTypeInt32) { 
		for (int e=0; e<mElementCount; e++)
			anInputValue.get(e+dimensionCount, *(TTInt32*)(mData+(index+e*mTypeSizeInBytes)));
	}
	else if (mType == kTypeFloat32) { 
		for (int e=0; e<mElementCount; e++)
			anInputValue.get(e+dimensionCount, *(TTFloat32*)(mData+(index+e*mTypeSizeInBytes)));
	}
	else if (mType == kTypeFloat64) { 
		for (int e=0; e<mElementCount; e++)
			anInputValue.get(e+dimensionCount, *(TTFloat64*)(mData+(index+e*mTypeSizeInBytes)));
	}

	return kTTErrNone;
}


TTBoolean TTMatrix::allAttributesMatch(const TTMatrix& anotherMatrix) const
{
	// TODO: should/could this be inlined?
	if (mType == anotherMatrix.mType  && 
		mElementCount == anotherMatrix.mElementCount && 
		mRowCount == anotherMatrix.mRowCount &&
		mColumnCount == anotherMatrix.mColumnCount)
		{
			return true;
		} else {
			return false;
		}
}


TTErr TTMatrix::copy(const TTMatrix& source, TTMatrix& dest)
{
	// TODO: could this be rethought as an iterator?
	dest.adaptTo(source);
	memcpy(dest.mData, source.mData, source.mDataSize);
	return kTTErrNone;
}


TTErr TTMatrix::adaptTo(const TTMatrix& anotherMatrix)
{
	// TODO: what should we do if anotherMatrix is not locally owned?
	// It would be nice to re-dimension the data, but we can't re-alloc / resize the number of bytes...
	// NW: don't understand above comment, previous set attribute methods *were* calling resize()
	
	if (setRowCountWithoutResize(anotherMatrix.mRowCount) &&
		setColumnCountWithoutResize(anotherMatrix.mColumnCount) &&
		setElementCountWithoutResize(anotherMatrix.mElementCount) &&
		setTypeWithoutResize(anotherMatrix.mType))
	{
		return resize();
	} else {
		return kTTErrInvalidValue;
	}

}


TTErr TTMatrix::iterate(TTMatrix* C, const TTMatrix* A, const TTMatrix* B, TTMatrixIterator iterator)
{
	if(C->adaptTo(A) == kTTErrNone)
	{
		int stride = A->mTypeSizeInBytes;
		int size = A->mDataSize;

		for (int k=0; k<size; k+=stride)
			(*iterator)(C->mData+k, A->mData+k, B->mData+k);

		return kTTErrNone;
	} else {
		return kTTErrGeneric;
	}
}

TTErr TTMatrix::iterateWhenAllAttributesMatch(TTMatrix* C, const TTMatrix* A, const TTMatrix* B, TTMatrixIterator iterator)
{
	if (A->allAttributesMatch(B)) {
		return iterate(C,A,B,iterator);
	} else {
		return kTTErrGeneric;
	}
}


