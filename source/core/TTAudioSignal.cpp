/* 
 * TTBlue Audio Signal Class
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTAudioSignal.h"
#define thisTTClass TTAudioSignal


/****************************************************************************************************/

TTAudioSignal::TTAudioSignal(const TTUInt16 initialMaxNumChannels)
 	: TTObject("audiosignal"), isLocallyOwned(false), maxNumChannels(0), vectorSize(0), numChannels(0), sampleVectors(NULL)
{
	registerAttributeWithSetter(vectorSize, kTypeUInt16);
	registerAttributeWithSetter(numChannels, kTypeUInt16);
	registerAttributeWithSetter(maxNumChannels, kTypeUInt16);
	registerAttributeSimple(bitdepth, kTypeUInt8);
	addAttributeProperty(bitdepth, readOnly, kTTVal1);
	
	registerMessageSimple(clear);
	registerMessageSimple(alloc);
	registerMessageWithArgument(allocWithNewVectorSize);
	registerMessageWithArgument(setVector32);
	registerMessageWithArgument(getVector32);
	registerMessageWithArgument(setVector64);
	registerMessageWithArgument(getVector64);
	
	
	setAttributeValue(TT("maxNumChannels"), initialMaxNumChannels);
	setAttributeValue(TT("numChannels"), initialMaxNumChannels);
}


TTAudioSignal::~TTAudioSignal()
{
	chuck();
}


void TTAudioSignal::chuck()
{
	TTUInt32	i;
	
	if(isLocallyOwned){
		for(i=0; i<maxNumChannels; i++){
			free(sampleVectors[i]);
			sampleVectors[i] = NULL;
		}
		isLocallyOwned = false;
	}
	free(sampleVectors);
	maxNumChannels = 0;
	sampleVectors = NULL;
}


TTErr TTAudioSignal::setmaxNumChannels(const TTValue& newMaxNumChannels)
{
	TTUInt32	i;

	chuck();
	maxNumChannels = newMaxNumChannels;
	if(maxNumChannels) {
		sampleVectors = (TTSampleVector *)malloc(sizeof(TTSampleVector) * maxNumChannels);
		for(i=0; i<maxNumChannels; i++)
			sampleVectors[i] = NULL;
	}
	return kTTErrNone;
}


TTErr TTAudioSignal::setVector(const TTUInt16 channel, const TTUInt16 newVectorSize, const TTSampleVector newVector)
{
	TTUInt32	i;
	
	// could check against maxnumchannels here
	
	bitdepth = 64;
	vectorSize = newVectorSize;
	
	if(isLocallyOwned){
		for(i=0; i<maxNumChannels; i++){
			free(sampleVectors[i]);
			sampleVectors[i] = NULL;
		}
		isLocallyOwned = false;
	}
	sampleVectors[channel] = newVector;
	return kTTErrNone;
}

TTErr TTAudioSignal::setVector64(const TTValue& v)
{
	TTUInt16		channel;
	TTUInt16		newVectorSize;
	TTPtr			newVector;
	
	if(v.getSize() == 3){
		v.get(0, channel);
		v.get(1, newVectorSize);
		v.get(2, &newVector);
		return setVector(channel, newVectorSize, TTSampleVector(newVector));
	}
	return kTTErrWrongNumValues;
}


/*
	It sucks if someone sets a 32-bit audio vector, since we have translate it into a 64-bit buffer.
	There may be a better way to do this...
	
	For now, we don't simply reference the data passed in.  Instead we allocate our own buffer and copy the data.
	Unfortunately, this is very slow.
	
	Also note that we are relying on the vector size already being set!
	
	If we passed the vs in to this method, we could avoid having to realloc the memory every single time.
	This would probably be a very good idea.
*/
TTErr TTAudioSignal::setVector(const TTUInt16 channel, const TTUInt16 newVectorSize, const TTFloat32* newVector)
{
	TTUInt32	i;
	
	// 1. could check against maxnumchannels here

	// 2. allocate the vector if need be
	if(bitdepth != 32 || !isLocallyOwned || newVectorSize != vectorSize)
	{
		bitdepth = 32;
		vectorSize = newVectorSize;
		alloc();
	}
	
	// 3. copy the vector (from 32-bits to 64-bits)
	for(i=0; i<vectorSize; i++)
		sampleVectors[channel][i] = newVector[i];
	
	return kTTErrNone;
}

TTErr TTAudioSignal::setVector32(const TTValue& v)
{
	TTUInt16		channel;
	TTUInt16		newVectorSize;
	TTPtr			newVector;
	
	if(v.getSize() == 3){
		v.get(0, channel);
		v.get(1, newVectorSize);
		v.get(2, &newVector);
		return setVector(channel, newVectorSize, (TTFloat32*)newVector);
	}
	return kTTErrWrongNumValues;
}


TTErr TTAudioSignal::getVector(const TTUInt16 channel, const TTUInt16 returnedVectorSize, TTSampleVector returnedVector)
{
	returnedVector = sampleVectors[channel];
	return kTTErrNone;
}

TTErr TTAudioSignal::getVector64(TTValue& v)
{
	TTUInt16		channel;
	TTUInt16		theVectorSize;
	TTPtr			returnedVector;
	
	if(v.getSize() == 3){
		v.get(0, channel);
		v.get(1, theVectorSize);
		v.get(2, &returnedVector);
		return getVector(channel, theVectorSize, TTSampleVector(returnedVector));
	}
	return kTTErrWrongNumValues;
}


TTErr TTAudioSignal::getVector(const TTUInt16 channel, const TTUInt16 theVectorSize, TTFloat32* returnedVector)
{
	TTUInt16 i;
	
	for(i=0; i<theVectorSize; i++)
		returnedVector[i] = (TTFloat32)sampleVectors[channel][i];
	return kTTErrNone;
}

TTErr TTAudioSignal::getVector32(TTValue& v)
{
	TTUInt16		channel;
	TTUInt16		theVectorSize;
	TTPtr			returnedVector;
	
	if(v.getSize() == 3){
		v.get(0, channel);
		v.get(1, theVectorSize);
		v.get(2, &returnedVector);
		return getVector(channel, theVectorSize, (TTFloat32*)returnedVector);
	}
	return kTTErrWrongNumValues;
}


TTErr TTAudioSignal::alloc()
{
	TTUInt32	i;
	if(isLocallyOwned){
		for(i=0; i<maxNumChannels; i++){
			free(sampleVectors[i]);
			sampleVectors[i] = NULL;
		}
	}

	for(i=0; i<maxNumChannels; i++) {
		sampleVectors[i] = (TTSampleVector)malloc(sizeof(TTSampleValue) * vectorSize);
	}
	isLocallyOwned = maxNumChannels > 0 ? true : false;
	bitdepth = 64;
	return kTTErrNone;
}


TTErr TTAudioSignal::allocWithVectorSize(const TTUInt16 newVectorSize)
{
	if(newVectorSize != vectorSize){
		vectorSize = newVectorSize;
		return alloc();
	}
	else
		return kTTErrNone;
}

TTErr TTAudioSignal::allocWithNewVectorSize(const TTValue& newVectorSize)
{
	return allocWithVectorSize(TTUInt16(newVectorSize));
}


TTErr TTAudioSignal::copy(const TTAudioSignal& source, TTAudioSignal& dest)
{
	short			vs;
	TTSampleValue*	inSample;
	TTSampleValue*	outSample;
	short			numchannels = TTAudioSignal::getMinChannelCount(source, dest);
	short			additionalOutputChannels = dest.numChannels - numchannels;
	short			channel;
	
	for(channel=0; channel<numchannels; channel++){
		inSample = source.sampleVectors[channel];
		outSample = dest.sampleVectors[channel];
		vs = source.getVectorSize();
		while(vs--)
			*outSample++ = *inSample++;
	}
	for(channel; channel<(numchannels+additionalOutputChannels); channel++){
		outSample = dest.sampleVectors[channel];
		vs = dest.getVectorSize();
		while(vs--)
			*outSample++ = 0.0;
	}
	return kTTErrNone;
}


TTUInt16 TTAudioSignal::getMinChannelCount(const TTAudioSignal& signal1, const TTAudioSignal& signal2)
{
	if(signal1.numChannels > signal2.numChannels)
		return signal2.numChannels;
	else
		return signal1.numChannels;
}


TTUInt16 TTAudioSignal::getMinChannelCount(const TTAudioSignal& signal1, const TTAudioSignal& signal2, const TTAudioSignal& signal3)
{
	TTUInt16	numChannels = signal1.numChannels;
	
	if(signal2.numChannels < numChannels)
		numChannels = signal2.numChannels;
	if(signal3.numChannels < numChannels)
		numChannels = signal3.numChannels;
	
	return numChannels;
}



TTUInt16 TTAudioSignal::getMaxChannelCount(const TTAudioSignal& signal1, const TTAudioSignal& signal2)
{
	if(signal1.numChannels < signal2.numChannels)
		return signal2.numChannels;
	else
		return signal1.numChannels;
}

TTUInt16 TTAudioSignal::getMaxChannelCount(const TTAudioSignal& signal1, const TTAudioSignal& signal2, const TTAudioSignal& signal3)
{
	TTUInt16	numChannels = signal1.numChannels;
	
	if(signal2.numChannels > numChannels)
		numChannels = signal2.numChannels;
	if(signal3.numChannels > numChannels)
		numChannels = signal3.numChannels;
	
	return numChannels;
}


TTUInt16 TTAudioSignal::getNumChannels(const TTAudioSignal& signal)
{
	return signal.numChannels;
}



// TODO: The old tt audio signal could point to external memory, or allocate its own for the vectors
// This enum was used to keep trac of which was the case:
// enum selectors{
//	k_mode_local = 1,
//	k_mode_external = 0,
//};


// TODO: implement clear() method -- ZERO OUT A VECTOR'S CONTENTS
TTErr TTAudioSignal::clear()
{
	TTUInt8		channel;
	TTUInt16	i;
	
	if(!sampleVectors)
		return kTTErrGeneric;
		
	for(channel=0; channel<numChannels; channel++){
		for(i=0; i<vectorSize; i++)
			sampleVectors[channel][i] = 0.0;
	}
	return kTTErrNone;
}
		
		
// TODO: implement fill() method --- SET ALL VALUES IN THE SIGNAL TO A CONSTANT


