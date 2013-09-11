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
	mDataIsLocallyOwned(YES)
{
	addAttributeWithGetterAndSetter(Dimensions, 	kTypeInt32); 	// mDimensions deprecated and not used directly
							// setDimensions() & getDimensions() methods actually work with RowCount and ColumnCount
	addAttributeWithSetter(RowCount, 				kTypeInt32);
	addAttributeWithSetter(ColumnCount, 			kTypeInt32);
	addAttributeWithGetterAndSetter(Type,			kTypeUInt8);	// necessary so that public interface uses symbols
																	// internally we use TTDataType
	addAttributeWithSetter(ElementCount,			kTypeInt16);

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
	mComponentStride = mTypeSizeInBytes * mElementCount;
    
	if (mDataIsLocallyOwned && mDataSize != mDataCount * mTypeSizeInBytes) {
		mDataSize = mDataCount * mTypeSizeInBytes;

		// TODO: currently, we are not preserving memory when resizing. Should we try to preserve the previous memory contents?
		// TODO: thread protection
		delete[] mData;
		mData = new TTByte[mDataSize];
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
	
	TTUInt8	size = someNewDimensions.size();
	
	// needed to support old calls with 1 or 2 dimensions
	if (size > 0)
		aNewRowCount = someNewDimensions[0];
	if (size > 1)
		aNewColumnCount = someNewDimensions[1];
	
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
	returnedDimensions.resize(2);
	returnedDimensions[0] = TTUInt32(mRowCount); // compile fails if we don't cast mRowCount here
	returnedDimensions[1] = TTUInt32(mColumnCount); // compile fails if we don't cast mColumnCount here
	
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
	TTUInt32 inputElementCount = anInputValue.size();
	TTUInt32 fillIterationCount = (inputElementCount < mElementCount) ? inputElementCount : mElementCount; // which ever is smaller 
	
	// first we need to copy the TTValues in our array of TTBytes
	TTBytePtr tempCopyValuePtr;
    union TTNumericalDataValue {
		TTFloat32		float32;
		TTFloat64		float64;
		TTInt8			int8;
		TTUInt8			uint8;
		TTInt16			int16;
		TTUInt16		uint16;
		TTInt32			int32;
		TTUInt32		uint32;
		TTInt64			int64;
		TTUInt64		uint64;
	} tempCopyValue;
    
    
	for (TTUInt32 f=0; f<fillIterationCount; f++) // step through the elements
	{
		
		// NW: an even uglier switch than before, but I see no way around it...
		switch (mType) {
			case kTypeFloat32:
				tempCopyValue.float32 = anInputValue[f];
				tempCopyValuePtr = (TTBytePtr)&(tempCopyValue.float32);
				break;
			case kTypeFloat64:
				tempCopyValue.float64 = anInputValue[f];
				tempCopyValuePtr = (TTBytePtr)&(tempCopyValue.float64);
				break;
			case kTypeInt8:
				tempCopyValue.int8 = anInputValue[f];
				tempCopyValuePtr = (TTBytePtr)&(tempCopyValue.int8);
				break;
			case kTypeUInt8:
				tempCopyValue.uint8 = anInputValue[f];
				tempCopyValuePtr = (TTBytePtr)&(tempCopyValue.uint8);
				break;
			case kTypeInt16:
				tempCopyValue.int16 = anInputValue[f];
				tempCopyValuePtr = (TTBytePtr)&(tempCopyValue.int16);
				break;
			case kTypeUInt16:
				tempCopyValue.uint16 = anInputValue[f];
				tempCopyValuePtr = (TTBytePtr)&(tempCopyValue.uint16);
				break;
			case kTypeInt32:
				tempCopyValue.int32 = anInputValue[f];
				tempCopyValuePtr = (TTBytePtr)&(tempCopyValue.int32);
				break;
			case kTypeUInt32:
				tempCopyValue.uint32 = anInputValue[f];
				tempCopyValuePtr = (TTBytePtr)&(tempCopyValue.uint32);
				break;
			case kTypeInt64:
				tempCopyValue.int64 = anInputValue[f];
				tempCopyValuePtr = (TTBytePtr)&(tempCopyValue.int64);
				break;
			case kTypeUInt64:
				tempCopyValue.uint64 = anInputValue[f];
				tempCopyValuePtr = (TTBytePtr)&(tempCopyValue.uint64);
				break;
			default:
				return kTTErrInvalidType; // type is not numerical or undefined
				break;
		}
		
		memcpy(	fillValue+(f*mTypeSizeInBytes), // pointer to where to start copying
				tempCopyValuePtr, // the TTBytePtr from the switch above
				mTypeSizeInBytes); // number of bytes to copy
				
	}

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
	TTUInt16 dimensionCount = anInputValue.size();
	
	if (dimensionCount != 2) // 2 dimensions only
		return kTTErrWrongNumValues;

	TTInt32 i, j;
	i = anInputValue[0];
	j = anInputValue[1];
	
	TTBoolean weAreNotInBounds = makeInBounds(i,j);
	if (weAreNotInBounds)
		return kTTErrOutOfBounds;
		// TODO: for now we throw an error when out of bounds. wrapping could be option in future version.
	
	TTUInt32 index = INDEX_OF_COMPONENT_FIRSTBYTE(i, j);
	
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
	TTUInt16	dimensionCount = anInputValue.size() - mElementCount;

	if (dimensionCount != 2) // 2 dimensions only
		return kTTErrWrongNumValues;

	theValue.copyFrom(anInputValue, dimensionCount);

	TTInt32 i, j;
	i = anInputValue[0];
	j = anInputValue[1];
	
	TTBoolean weAreNotInBounds = makeInBounds(i,j);
	if (weAreNotInBounds)
		return kTTErrOutOfBounds;
		// TODO: for now we throw an error when out of bounds. wrapping could be option in future version.
	
	TTUInt32 index = INDEX_OF_COMPONENT_FIRSTBYTE(i, j);
	
	if (mType == kTypeUInt8) { 
		for (int e=0; e<mElementCount; e++)
			*(TTUInt8*)(mData+(index+e*mTypeSizeInBytes)) = anInputValue[e+dimensionCount];
	}
	else if (mType == kTypeInt32) { 
		for (int e=0; e<mElementCount; e++)
			*(TTInt32*)(mData+(index+e*mTypeSizeInBytes)) = anInputValue[e+dimensionCount];
	}
	else if (mType == kTypeFloat32) { 
		for (int e=0; e<mElementCount; e++)
			*(TTFloat32*)(mData+(index+e*mTypeSizeInBytes)) = anInputValue[e+dimensionCount];
	}
	else if (mType == kTypeFloat64) { 
		for (int e=0; e<mElementCount; e++)
			*(TTFloat64*)(mData+(index+e*mTypeSizeInBytes)) = anInputValue[e+dimensionCount];
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
	
	// NOTE: there is potential for some attributes to change while others fail
	// if that happens, mData is never resized but attributes that changed will report bogus results
	
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


