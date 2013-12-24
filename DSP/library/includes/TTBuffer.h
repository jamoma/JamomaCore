/** @file
 *
 * @ingroup dspLibrary
 *
 * @brief Audio buffer that manages multiple SampleMatrices.
 * 
 * @details TODO: put more info here 
 * 
 * @see TTSampleMatrix, TTMatrix, TTAudioSignal
 *  
 * @authors Timothy Place & Nathan Wolek
 *
 * @copyright Copyright © 2012, Timothy Place & Nathan Wolek @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
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
class TTDSP_EXPORT TTBuffer : public TTAudioObjectBase {
	TTCLASS_SETUP(TTBuffer)
	
protected:
	
	TTSymbol				mName;					// The name associated with this buffer
	TTSampleMatrixPtr		mActiveMatrix;			// The active TTSampleMatrix
	TTSampleMatrixPtr		mBecomingActiveMatrix;		// TODO: would something like this help direct changes to right place?
	
	// next line is causing build problems due to init issues
	//TTSampleMatrix			mBufferPool[3];		// temporarily an array until I get more used to vectors
	
	// internal method used for initializing the TTBuffer and mActiveMatrix for use
	TTErr init(TTUInt16	channelCount, TTSymbol name);

	// internal method used for disposing of a no-longer used matrix
	TTErr chuckMatrix(TTSampleMatrixPtr oldMatrix);
	
	// internal methods used for prepping mBecomingActiveMatrix, then swapping it out with mActiveMatrix
	TTErr prepareBecomingActiveMatrix();
	TTErr promoteBecomingActiveMatrix();
	
public:
	
	// public method to check out the mActiveMatrix
	TTErr checkOutMatrix(TTSampleMatrixPtr& startUsingThisMatrix);
    TTErr checkOutMatrixValues(const TTValueRef unusedInput, TTValueRef output);
	
	// public method to check in TTSampleMatrix. if it is no longer mActiveMatrix, action is taken.
	TTErr checkInMatrix(TTSampleMatrixPtr& doneUsingThisMatrix);
    TTErr checkInMatrixValues(const TTValueRef input, TTValueRef unusedOutput);
	
	TTErr getNames(const TTValueRef unusedInput, TTValueRef returnedNames)
	{
		return gTTBufferNameMap->getKeys(returnedNames);
	}
	
		
	TTErr setName(const TTValueRef newName)
	{
		TTSymbol			name = kTTSymEmpty;
		TTSymbol			oldName = mName;
		TTValue				returnedValue;
		TTErr				err = kTTErrNone;
		
		newName.get(0, name);
		
		// if the name is the same, then do nothing
		if (name == mName)
			return kTTErrNone;
		
		// if the name was left off, then generate a random value
		if (name == kTTSymEmpty)
			name = TTSymbol::random();
		
		// see if the name is already in the global buffer name map
		err = gTTBufferNameMap->lookup(name, returnedValue);
		
		// if it is already in use by another TTBuffer
		if (err == kTTErrNone)
		{
			return kTTErrInvalidValue;
		} else { // if it is not, then we can add it 
			gTTBufferNameMap->append(name, TTPtr(this));
			mName = name;
			return kTTErrNone;
		}
	}
	
	
	/****************************************************************************************************/
	// TODO: Some will need to be rewritten as BufferPool implementation is fleshed out
	
	/*
	Set methods could follow this pattern
		1) TTObjectInstantiate("samplematrix", (TTObjectPtr*)&mBecomingActiveMatrix, kTTValNONE)
		2) mBecomingActiveMatrix.adaptTo(mActiveMatrix)
		3) mBecomingActiveMatrix->setTheWhatever(TTValue arg1)
		4) if no error...
			mBecomingIdle = mActiveMatrix
			mActiveMatrix = mBecomingActiveMatrix
		5) if mBecomingIdle->getUserCount() = 0 then delete
			else mBecomingIdle->setBufferPoolStage(kSM_BecomingIdle)
	*/
	
	// Macros to wrap TTSampleMatrix methods as our own
	
	#define TTBUFFER_WRAP_1ARG(methodname) \
			TTErr methodname (TTValue& arg1) { return mActiveMatrix -> methodname (arg1); }
	#define TTBUFFER_WRAP_k1ARG(methodname) \
			TTErr methodname (const TTValue& arg1) { return mActiveMatrix -> methodname (arg1); }
	#define TTBUFFER_WRAP_WITHSPAWN_k1ARG(methodname) \
			TTErr methodname (const TTValue& arg1) \
				{ \
					TTErr err = prepareBecomingActiveMatrix(); \
					if (!err) \
						err = mBecomingActiveMatrix -> methodname (arg1); \
					if (!err) \
						err = promoteBecomingActiveMatrix(); \
					return err; \
				}

	// Methods of the hosted TTSampleMatrix object

	TTBUFFER_WRAP_WITHSPAWN_k1ARG( setNumChannels )
	TTBUFFER_WRAP_1ARG( getNumChannels )
	
	TTBUFFER_WRAP_WITHSPAWN_k1ARG( setLengthInSeconds )
	TTBUFFER_WRAP_1ARG(  getLengthInSeconds )
	
	TTBUFFER_WRAP_WITHSPAWN_k1ARG( setLengthInSamples )
	TTBUFFER_WRAP_1ARG(  getLengthInSamples )

	/** NOTE: We do not wrap getValueAtIndex, peek, setValueAtIndex, poke and simliar methods.  
	Objects should work directly with the TTSampleMatrixPtr that they check out for these types of operations.
	*/
	
	TTErr	fill(const TTValue& value, TTValue& unusedOutput)								
	{ 
		TTErr err = prepareBecomingActiveMatrix();
		if (!err)
			err = mBecomingActiveMatrix -> fill (value,unusedOutput);
		if (!err)
			err = promoteBecomingActiveMatrix();
		return err;
	}
    
    TTErr	load(const TTValue& value, TTValue& unusedOutput)
	{
		TTErr err = prepareBecomingActiveMatrix();
		if (!err)
			err = mBecomingActiveMatrix -> load (value,unusedOutput);
		if (!err)
			err = promoteBecomingActiveMatrix();
		return err;
	}

	TTBUFFER_WRAP_k1ARG( normalize )
	
	/****************************************************************************************************/

	
	/**	Unit testing */
	virtual TTErr test(TTValue& returnedTestInfo);	

};

typedef TTBuffer* TTBufferPtr;

/** Wrap TTBuffer instances for convenience. */
class TTAudioBuffer : public TTObject {
public:
	TTAudioBuffer(const TTValue& channelCount, const TTValue& sampleCount):
	TTObject(kTTSym_buffer, channelCount)
	{
        instance()->setLengthInSamples(sampleCount);
    }
    
    TTBufferPtr instance()
	{
		return (TTBufferPtr)mObjectInstance;
	}
    
    TTErr load(const TTValue &value)
    {
        TTValue unusedOuput;
        return instance()->load(value, unusedOuput);
    }
    
    TTErr checkOutMatrix(TTSampleMatrixPtr& startUsingThisMatrix)
    {
        return instance()->checkOutMatrix(startUsingThisMatrix);
    }
    
    TTErr checkInMatrix(TTSampleMatrixPtr& doneUsingThisMatrix)
    {
        return instance()->checkInMatrix(doneUsingThisMatrix);
    }
    
};

#endif // __TT_BUFFER_H__
