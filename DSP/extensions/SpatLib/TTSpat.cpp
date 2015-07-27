/** @file
 *
 * @ingroup dspSpatLib
 *
 * @brief Host a SpatLib object
 *
 * @details
 *
 * @authors Trond Lossius, Nils Peters, Timothy Place
 *
 * @copyright Copyright © 2011 by Trond Lossius, Nils Peters, and Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTSpat.h"

#define thisTTClass			TTSpat
#define thisTTClassName		"spat"
#define thisTTClassTags		"audio, spatialization"

TT_AUDIO_CONSTRUCTOR,
mSpatFunctionObject(NULL),
mSourceCount(0),
mSinkCount(0)
{
	//TTValue v;
	
	mSources.resize(1);
	mSinks.resize(1);
	
	addAttributeWithSetter(SpatFunction,	kTypeSymbol); // setting the type...
	
	addAttributeWithSetter(SourceCount,		kTypeUInt16);
	addAttributeWithSetter(SinkCount,		kTypeUInt16);

	addMessageWithArguments(getSourcePosition);
	addMessageWithArguments(setSourcePosition);
	addMessageWithArguments(getSinkPosition);
	addMessageWithArguments(setSinkPosition);
	
	addMessageWithArguments(getSpatFunctions);
	
	//addUpdate(MaxNumChannels);
	
	setAttributeValue("spatFunction", "spat.snap");
	setAttributeValue("sourceCount", 2);
	setAttributeValue("sinkCount", 8);
	
	setProcessMethod(processAudio);
	
	
	// unit stuff
	addAttributeWithGetterAndSetter(Rolloff, kTypeFloat64);
	
	addMessageWithArguments(getSourceWidth);
	addMessageWithArguments(setSourceWidth);
}


TTSpat::~TTSpat()
{
	delete mSpatFunctionObject;
}


TTErr TTSpat::setSpatFunction(const TTValue& aSpatFunction)
{
	TTErr				err;
	TTSymbol			spatFunctionName;
	TTAudioObjectBasePtr	spatFunction = NULL;
	
	spatFunctionName = aSpatFunction[0];
	
	// if the function didn't change, then don't change the function
	if (spatFunctionName == mSpatFunction)
		return kTTErrNone;	
	
	// TTObjectBaseInstantiate will automatically free the object passed into it
	err = TTObjectBaseInstantiate(spatFunctionName, &spatFunction, kTTValNONE);
	if (!err && spatFunction) {
		// Now set the state of the object to the state we have stored
		spatFunction->setAttributeValue(TT("sourceCount"), mSourceCount);
		spatFunction->setAttributeValue(TT("sinkCount"), mSinkCount);
		
		mSpatFunction = spatFunctionName;
		mSpatFunctionObject = spatFunction;
		
		// FIXME: This is not thread safe if the audio is running
		// We need to queue this switch to occur at a time when it is safe 
		// (when audio is not processed by the old object any longer)
		// Redmine #994
		//
		// ACTUALLY: it should be okay because of the locks in the TTObjectBaseInstantiate spinlocking to wait
		// for any process calls.
		// However, maybe those need some improvements like using volatile or atomic types
	}
	else {
		// some problems have occurred, not yet sure how we should handle this...
	}
	
	
	return err;
}



TTErr TTSpat::getSpatFunctions(const TTValue&, TTValue& listOfSpatFunctionsToReturn)
{
	TTValue v;
	
	v.resize(2);
	v[0] = TT("spatialization");
	v[1] = TT("processing"); // more efficent than append
	return TTObject::GetRegisteredClassNamesForTags(listOfSpatFunctionsToReturn, v);

}		   

/*
TTErr TTSpat::getFunctionParameters(const TTValue&, TTValue& aListOfParameterNamesToReturn)
{
	mSpatFunctionObject->getAttributeNames(aListOfParameterNamesToReturn);
	return kTTErrNone;
}


TTErr TTSpat::getFunctionParameter(const TTValue& aParameterNameIn, TTValue& aValueOut)
{
	TTSymbol parameterName;
	
	aParameterNameIn.get(0, parameterName);
	return mSpatFunctionObject->getAttributeValue(parameterName, aValueOut);
}


TTErr TTSpat::setFunctionParameter(const TTValue& aParameterNameAndValue, TTValue&)
{
	TTSymbol	parameterName;
	TTValue		parameterValue;
	
	aParameterNameAndValue.get(0, parameterName);
	parameterValue.copyFrom(aParameterNameAndValue, 1); //TODO: maybe there are more arguments ? 
	//aParameterNameAndValue.clear(); // only needed so that we don't return a value
	return mSpatFunctionObject->setAttributeValue(parameterName, parameterValue);
}
*/




TTErr TTSpat::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	return mSpatFunctionObject->processAudio(inputs, outputs);
}

//
//TTErr TTSpatBase::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
//{
//	TTAudioSignal&		in = inputs->getSignal(0);
//	TTAudioSignal&		out = outputs->getSignal(0);
//	TTUInt16			vs = in.getVectorSizeAsInt();
//	TTSampleValuePtr	inSample;
//	TTSampleValuePtr	outSample;
//	TTChannelCount		numInputChannels = in.getNumChannelsAsInt();
//	TTChannelCount		numOutputChannels = out.getNumChannelsAsInt();
//	TTChannelCount		outChannel;
//	TTChannelCount		inChannel;
//	TTSampleValue       gainValue;
//	
//	TTInt16				sourceCount = mMixerMatrixCoefficients->getRowCount();
//	TTInt16				sinkCount	= mMixerMatrixCoefficients->getColumnCount();
//	
//	// If the input signal has more channels than we have sources, the additional channels are ignored.
//	if (numInputChannels > sourceCount) {
//		numInputChannels = sourceCount;
//	}
//	
//	// Force the right number of sinks
//	if ( numOutputChannels != sinkCount ) {
//		TTValue v = sinkCount;
//		
//		out.setMaxNumChannels(v);
//		out.setNumChannels(v);
//		numOutputChannels = sinkCount;
//	}
//	// Setting all output signals to zero.
//	out.clear();
//	
//	// TODO: Make sure that when we iterate over the matrix, this is done in an efficient way.
//	
//	for (outChannel=0; outChannel<numOutputChannels; outChannel++) {
//		outSample = out.mSampleVectors[outChannel];
//		for (inChannel=0; inChannel<numInputChannels; inChannel++) {
//			
//			mMixerMatrixCoefficients->get2d(inChannel, outChannel, gainValue);
//			
//			if (gainValue != 0.0){
//				inSample = in.mSampleVectors[inChannel];
//				for (int i=0; i<vs; i++) {
//					outSample[i] += inSample[i] * gainValue;
//				}
//			}
//		}
//	}
//	return kTTErrNone;
//	
//}

#if 0
#pragma mark -
#pragma mark Setters and Getters
#endif



TTErr TTSpat::setSourceCount(const TTValue& aSourceCount)
{
	mSourceCount = aSourceCount;
	
	return mSpatFunctionObject->setAttributeValue(TT("sourceCount"), (TTValue&)aSourceCount);
}


TTErr TTSpat::setSinkCount(const TTValue& aSinkCount)
{
	mSinkCount = aSinkCount;
	
	
	
	return mSpatFunctionObject->setAttributeValue(TT("sinkCount"), (TTValue&)aSinkCount);
}


TTErr TTSpat::getSourcePosition(const TTValue& anIndex, TTValue& returnedPosition)
{
	//	return mSpatFunctionObject->getSourcePosition(aPosition);
	return mSpatFunctionObject->sendMessage("getSourcePosition", anIndex, returnedPosition);
}


TTErr TTSpat::setSourcePosition(const TTValue& aPosition, TTValue& unused)
{
	//	return mSpatFunctionObject->setSourcePosition(aPosition);
	return mSpatFunctionObject->sendMessage("setSourcePosition", aPosition, unused);
}


TTErr TTSpat::getSinkPosition(const TTValue& anIndex, TTValue& returnedPosition)
{
	//	return mSpatFunctionObject->getSinkPosition(aPosition);
	return mSpatFunctionObject->sendMessage("getSinkPosition", anIndex, returnedPosition);
}


TTErr TTSpat::setSinkPosition(const TTValue& aPosition, TTValue& unused)
{
	//	return mSpatFunctionObject->setSinkPosition(aPosition);
	return mSpatFunctionObject->sendMessage("setSinkPosition", aPosition, unused);
}


TTErr TTSpatBase::getSourceCount(TTValue& value)
{
	value = TTUInt32(mSources.size());
	return kTTErrNone;
}

TTErr TTSpatBase::setSourceCount(const TTValue& value)
{
	
	TTInt32 number = value;
	
	TTLimitMin<TTInt32>(number, 1);
	mSources.resize(number);
	mRenderer->recalculateMatrixCoefficients(mSources, mSinks);
	return kTTErrNone;
}


TTErr TTSpatBase::getSinkCount(TTValue& value)
{
	value = TTUInt32(mSinks.size());
	return kTTErrNone;
}


TTErr TTSpatBase::setSinkCount(const TTValue& value)
{
	TTInt32 number = value;
	
	TTLimitMin<TTInt32>(number, 1);
	mSinks.resize(number);
	mRenderer->recalculateMatrixCoefficients(mSources, mSinks);
	return kTTErrNone;
}


void TTSpatBase::getOneSourcePosition(TTInt32 sourceNumber, TTFloat64& x, TTFloat64& y, TTFloat64& z)
{
	// Ensure that source number is within range
	TTInt32 source = sourceNumber - 1;
	source = TTClip<TTInt32>(source, 0, mSources.size()-1);
	
	mSources[source].getPosition(x, y, z);
}


TTErr TTSpatBase::getSourcePosition(const TTValue& requestedChannel, TTValue& aPosition)
{
	TTInt16 sourceNumber;
	TTFloat64 x, y, z;
	
	// TODO: We need to think of what to do if there are no arguments...
	// or if sinkNumber is out of range of the available sources
	
	sourceNumber = requestedChannel[0];
	
	getOneSourcePosition(sourceNumber, x, y, z);
	
	aPosition.resize(4);
	
	aPosition[0] = sourceNumber;
	aPosition[1] = x;
	aPosition[2] = y;
	aPosition[3] = z;
	
	return kTTErrNone;
}

// Rather than having two methods with different names, we could use the same name and overload
void TTSpatBase::setOneSourcePosition(TTInt32 sourceNumber, TTFloat64 x, TTFloat64 y, TTFloat64 z)
{
	// Ensure that source number is within range
	TTInt32 source = sourceNumber - 1;
	source = TTClip<TTInt32>(source, 0, mSources.size()-1);
	
	mSources[source].setPosition(x, y, z);
	mRenderer->recalculateMatrixCoefficients(mSources, mSinks);
}

TTErr TTSpatBase::setSourcePosition(const TTValue& aPosition, TTValue& unused)
{
	TTInt32 sourceNumber;
	TTFloat64 x, y, z;
	
	// TODO: We need to think of what to do if there are not four arguments...
	
	sourceNumber = aPosition[0];
	x = aPosition[1];
	y = aPosition[2];
	z = aPosition[3];
	
	setOneSourcePosition(sourceNumber, x, y, z);
	
	return kTTErrNone; // Return something else if we don't have four arguments
}


void TTSpatBase::getOneSinkPosition(TTInt32 sinkNumber, TTFloat64& x, TTFloat64& y, TTFloat64& z)
{
	// Ensure that sink number is within range
	TTInt32 sink = sinkNumber - 1;
	sink = TTClip<TTInt32>(sink, 0, mSinks.size()-1);
	
	mSinks[sink].getPosition(x, y, z);
	mRenderer->recalculateMatrixCoefficients(mSources, mSinks);
}


TTErr TTSpatBase::getSinkPosition(const TTValue& requestedChannel, TTValue& aPosition)
{
	TTInt16 sinkNumber;
	TTFloat64 x, y, z;
	
	// TODO: We need to think of what to do if there are no arguments...
	// or if sinkNumber is out of range of the available sources
	
	sinkNumber = requestedChannel[0];
	
	getOneSinkPosition(sinkNumber, x, y, z);
	
	aPosition.resize(4);
	
	aPosition[0] = sinkNumber;
	aPosition[1] = x;
	aPosition[2] = y;
	aPosition[3] = z;
	
	return kTTErrNone;
}


void TTSpatBase::setOneSinkPosition(TTInt32 sinkNumber, TTFloat64 x, TTFloat64 y, TTFloat64 z)
{
	// Ensure that sink number is within range
	TTInt32 sink = sinkNumber - 1;
	sink = TTClip<TTInt32>(sink, 0, mSinks.size()-1);
	
	mSinks[sink].setPosition(x, y, z);
}


TTErr TTSpatBase::setSinkPosition(const TTValue& aPosition, TTValue& unused)
{
	TTInt32 sinkNumber;
	TTFloat64 x, y, z;
	
	// TODO: We need to think of what to do if there are not four arguments...
	
	sinkNumber = aPosition[0];
	x = aPosition[1];
	y = aPosition[2];
	z = aPosition[3];
	
	setOneSinkPosition(sinkNumber, x, y, z);
	
	return kTTErrNone; // Return something else if we don't have four arguments
}


#if 0
#pragma mark -
#pragma mark Particular to Units
#endif

TTErr TTSpat::setSourceWidth(const TTValue& aWidth, TTValue& anUnused)
{
	TTInt32 sourceNumber;
	TTFloat64 width;
	
	// TODO: We need to think of what to do if there are not two arguments...
	
	sourceNumber = aWidth[0];
	width = aWidth[1];
	
	sourceNumber = sourceNumber - 1;
	sourceNumber = TTClip<TTInt32>(sourceNumber, 0, mSources.size()-1);
	getSource(sourceNumber)->setWidth(width);
//	mRenderer->recalculateMatrixCoefficients(mSources, mSinks);
// set the flag
	mSceneHasChanged = true;
	
	return kTTErrNone; // Return something else if we don't have four arguments
}


TTErr TTSpat::getSourceWidth(const TTValue& aRequestedChannel, TTValue& aWidth)
{
	TTInt16 sourceNumber;
	TTFloat64 width;
	
	// TODO: We need to think of what to do if there are no arguments...
	// or if sinkNumber is out of range of the available sources
	
	sourceNumber = aRequestedChannel[0];
	
	sourceNumber = sourceNumber - 1;
	sourceNumber = TTClip<TTInt32>(sourceNumber, 0, mSources.size()-1);
	getSource(sourceNumber)->getWidth(width);
	
	aWidth.resize(2);
	aWidth[0] = sourceNumber;
	aWidth[1] = width;
	
	return kTTErrNone;
}

TTErr TTSpat::getRolloff(TTValue& aValue)
{
	aValue = getRolloff();
	return kTTErrNone;
}


TTErr TTSpat::setRolloff(const TTValue& aValue)
{
	TTFloat64 rolloff = aValue;
	
	setRolloff(rolloff);
	//	recalculateMatrixCoefficients(mSources, mSinks);
	// set the flag
	mSceneHasChanged = true;
	
	return kTTErrNone;
}


