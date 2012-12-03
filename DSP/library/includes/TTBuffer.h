/*
	Jamoma DSP Audio Buffer Object 
	Copyright © 2012, Timothy Place & Nathan Wolek
	
	License: This code is licensed under the terms of the "New BSD License"
	http://creativecommons.org/licenses/BSD/
*/

#ifndef __TT_BUFFER_H__
#define __TT_BUFFER_H__

#include "TTDSP.h"
#include "TTSampleMatrix.h"


extern TTHashPtr gTTBufferNameMap;	// maps names to TTSampleMatrix instances for TTBuffer


/**	TTBuffer is a container object that holds some audio in a chunk of memory.
	Other objects can then access this buffer to record into it, play back from it,
	or perform other operations on it.
	
	This object does not process audio by itself, but inherits from TTAudioObject for sample-rate support.
	Perhaps we could add a simple process method that takes a sample index as input and provides the value as output?
	
	@see TTAudioSignal
*/
class TTDSP_EXPORT TTBuffer : public TTAudioObject {
	TTCLASS_SETUP(TTBuffer)
	
protected:
	
	TTSymbol				mName;				// The name associated with this buffer
	TTSampleMatrixPtr		mActiveMatrix;		// The active TTSampleMatrix
	TTSampleMatrixPtr		mBecomingActiveMatrix;		// TODO: would something like this help direct changes to right place?
	
	// next line is causing build problems due to init issues
	//TTSampleMatrix			mBufferPool[3];		// temporarily an array until I get more used to vectors
	
public:
	
	TTErr getNames(const TTValueRef unusedInput, TTValueRef returnedNames)
	{
		return gTTBufferNameMap->getKeys(returnedNames);
	}
	
	
	// internal method used for disposing of a no-longer used matrix
	void chuckMatrix(TTSampleMatrixPtr oldMatrix, TTSymbol& oldMatrixName)
	{
		if (oldMatrix->getReferenceCount() == 1) // only one of these, it is about to go away, so we'll pop it from the map
			gTTBufferNameMap->remove(oldMatrixName);
		
		TTObjectRelease(TTObjectHandle(&oldMatrix));
	}
	
	// TODO: re-write to simply change the name, not chuckMatrix.  names should not be attached to SampleMatrix, right?
	TTErr setName(const TTValueRef newName)
	{
		TTSymbol			name = kTTSymEmpty;
		TTSampleMatrixPtr	oldMatrix = mActiveMatrix;
		TTSymbol			oldName = mName;
		TTSampleMatrixPtr	newMatrix = NULL;
		TTValue				returnedValue;
		TTErr				err = kTTErrNone;
		
		newName.get(0, name);
		
		if (name == mName)
			return kTTErrNone;
		if (name == kTTSymEmpty)
			name = TTSymbol::random();
		
		err = gTTBufferNameMap->lookup(name, returnedValue);
		if (!err)
			newMatrix = TTSampleMatrixPtr(TTPtr(returnedValue));
		
		if (!newMatrix) {
			TTObjectInstantiate("samplematrix", (TTObjectPtr*)&newMatrix, kTTValNONE);
			
			// TODO: set attributes to match our matrix attrs?
			
			gTTBufferNameMap->append(name, TTPtr(newMatrix));
		}
		
		mActiveMatrix = (TTSampleMatrixPtr)TTObjectReference(TTObjectPtr(newMatrix));
		mName = name;
		
		// TODO: Not threadsafe !!!
		// TODO: double-buffering scheme, e.g. to preserve the integrity of grains in granular synthesis	
		chuckMatrix(oldMatrix, oldName);
		
		return kTTErrNone;
	}
	
	
	/****************************************************************************************************/
	// TODO: Some will need to be rewritten as BufferPool implementation is fleshed out
	
	// Macros to wrap TTSampleMatrix methods as our own
	
	#define TTBUFFER_WRAP_1ARG(methodname) \
			TTErr methodname (TTValue& arg1) { return mActiveMatrix -> methodname (arg1); }
	#define TTBUFFER_WRAP_k1ARG(methodname) \
			TTErr methodname (const TTValue& arg1) { return mActiveMatrix -> methodname (arg1); }

	// Methods of the hosted TTSampleMatrix object

	TTBUFFER_WRAP_k1ARG( setNumChannels )
	TTBUFFER_WRAP_1ARG(  getNumChannels )
	
	TTBUFFER_WRAP_k1ARG( setLength )
	TTBUFFER_WRAP_1ARG(  getLength )
	
	TTBUFFER_WRAP_k1ARG( setLengthInSamples )
	TTBUFFER_WRAP_1ARG(  getLengthInSamples )
	TTErr lengthInSamples(TTUInt32& returnedLengthInSamples)								{ return mActiveMatrix->lengthInSamples(returnedLengthInSamples); }

	TTErr getContents(TTSampleValuePtr& beggining)											{ return mActiveMatrix->getContents(beggining); }

	TTErr	getValueAtIndex(const TTValue& index, TTValue &output)							{ return mActiveMatrix->getValueAtIndex(index, output); }
	TTErr	peek(const TTUInt64 index, const TTUInt16 channel, TTSampleValue& value)		{ return mActiveMatrix->peek(index, channel, value); }
	
	TTErr	setValueAtIndex(const TTValue& index, TTValue& unusedOutput)					{ return mActiveMatrix->setValueAtIndex(index, unusedOutput); }
	TTErr	poke(const TTUInt64 index, const TTUInt16 channel, const TTSampleValue value)	{ return mActiveMatrix->poke(index, channel, value); }
	
	TTErr	fill(const TTValue& value, TTValue& unusedOutput)								{ return mActiveMatrix->fill(value, unusedOutput); }

	TTBUFFER_WRAP_k1ARG( normalize )
	
	/****************************************************************************************************/

	
	/**	Unit testing */
	virtual TTErr test(TTValue& returnedTestInfo);	

};


#endif // __TT_BUFFER_H__
