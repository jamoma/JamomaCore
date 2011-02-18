/* 
 * Jamoma N-Dimensional Matrix Data Class
 * Copyright © 2011, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTMatrix.h"

#define thisTTClass			TTMatrix
#define thisTTClassName		"matrix"
#define thisTTClassTags		"matrix"


TT_OBJECT_CONSTRUCTOR,
	mData(NULL),
	mDataSize(0),
//	mType(),
//	mDimensions(),
	mElementCount(1)
{
	addAttributeWithGetterAndSetter(Dimensions, kTypeUInt32);
	addAttributeWithSetter(Type,				kTypeUInt8);
	addAttributeWithSetter(ElementCount,		kTypeUInt8);
	
	addMessage(clear);
	addMessageWithArgument(fill);
	// TODO: getAverage message
	
	// TODO: set message (for cell)
	// TODO: get message (for cell)
	
	// TODO: getLockedPointer -- returns a pointer to the data, locks the matrix mutex
	// TODO: releaseLockedPointer -- releases the matrix mutex
	// TODO: the above two items mean we need a TTMutex member
	
	
//	setAttributeValue(TT("dimensions"), TTValue());
}


TTMatrix::~TTMatrix()
{
	delete[] mData; // TODO: only do this if the refcount for the data is down to zero!
}


TTErr TTMatrix::resize()
{
	TTUInt32 productOfDimensions;
	
	for (uint i=0; i<mDimensions.size(); i++) {
		if (i == 0)
			productOfDimensions = mDimensions[i];
		else
			productOfDimensions *= mDimensions[i];
	}
	mDataSize = productOfDimensions * mElementCount * mTypeSizeInBytes;
	
	// TODO: currently, we are not preserving memory when resizing. Should we try to preserve the previous memory contents?
	// TODO: thread protection
	delete[] mData;
	mData = new char[mDataSize];

	if (mDataSize && mData)
		return kTTErrNone;
	else
		return kTTErrAllocFailed;
}


TTErr TTMatrix::setDimensions(const TTValue& someNewDimensions)
{
	TTUInt8	size = someNewDimensions.getSize();
	
	mDimensions.resize(size);
	for (int i=0; i<size; i++) {
		TTUInt8 aNewDimension = 0;
		
		someNewDimensions.get(i, aNewDimension);
		mDimensions[i] = aNewDimension;
	}
	return resize();
}


TTErr TTMatrix::getDimensions(TTValue& returnedDimensions)
{
	TTUInt8	size = mDimensions.size();
	
	returnedDimensions.setSize(size);
	for (uint i=0; i<size; i++)
		returnedDimensions.set(i, mDimensions[i]);
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


TTErr TTMatrix::fill(const TTValue& aValue)
{
	int		stride = mTypeSizeInBytes * mElementCount;
	TTByte	fillValue[stride];
	
	// TODO: here we have this ugly switch again...
	if (mType == TT("uint8"))
		aValue.getArray((TTUInt8*)fillValue, stride);
	else if (mType == TT("int32"))
		aValue.getArray((TTInt32*)fillValue, stride);
	else if (mType == TT("float32"))
		aValue.getArray((TTFloat32*)fillValue, stride);
	else if (mType == TT("float64"))
		aValue.getArray((TTFloat64*)fillValue, stride);
	
	for (TTUInt32 i=0; i<mDataSize; i += stride)
		memcpy(mData+i, fillValue, stride);
	
	return kTTErrNone;
}
