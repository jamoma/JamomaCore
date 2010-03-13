/* 
 *	filter≈
 *	Filter object for Jamoma Multicore
 *	Copyright © 2008 by Timothy Place
 * 
 *	License: This code is licensed under the terms of the GNU LGPL
 *	http://www.gnu.org/licenses/lgpl.html 
 */

#include "maxMulticore.h"

#define thisTTClass			TTMulticoreFilter
#define thisTTClassName		"multicore.filter"
#define thisTTClassTags		"audio, processor, filter, multicore"



// For the filter≈ object, we wish to create our own class, 
// which then encapsulates the various filters available in TTBlue.

class TTMulticoreFilter : TTAudioObject {
	TTCLASS_SETUP(TTMulticoreFilter)

protected:
	TTAudioObjectPtr	mActualFilterObject;	///< The actual filter object that this object is currently wrapping
	TTFloat64			mFrequency;				///< The center or cutoff frequency of the filter
	TTFloat64			mQ;						///< The width of the filter
	TTSymbolPtr			mType;					///< The name of the current filter type
	
public:
		
	TTErr setFrequency(const TTValue& newValue)
	{	
		mFrequency = newValue;
		return mActualFilterObject->setAttributeValue(TT("Frequency"), mFrequency);
	}
		
	TTErr setQ(const TTValue& newValue)
	{	
		mQ = newValue;
		return mActualFilterObject->setAttributeValue(TT("Q"), mQ);
	}
		
	TTErr setType(const TTValue& newValue)
	{	
		TTSymbolPtr newType = newValue;
		TTErr		err = kTTErrNone;
		
		// if the type didn't change, then don't change the filter
		if (newType == mType)
			return kTTErrNone;
		
		mType = newType;
		err = TTObjectInstantiate(mType, &mActualFilterObject, maxNumChannels);			
		if (!err) {
			// Now that we have our new filter, update it with the current state of the wrapper:
			mActualFilterObject->setAttributeValue(TT("Frequency"), mFrequency);
			err = mActualFilterObject->setAttributeValue(TT("Q"), mQ);
			if (err == kTTErrInvalidAttribute)
				err = mActualFilterObject->setAttributeValue(TT("Resonance"), mQ);
			mActualFilterObject->setAttributeValue(TT("Bypass"), this->attrBypass);
			mActualFilterObject->setAttributeValue(TT("SampleRate"), sr);
		}
		return err;
	}
		
	
	TTErr getTypes(TTValue& listOfFilterTypesToReturn)
	{
		return TTGetRegisteredClassNamesForTags(listOfFilterTypesToReturn, TT("filter"));
	}
	
	
	TTErr clear()
	{
		return mActualFilterObject->sendMessage(TT("Clear"));
	}
	
	
	TTErr updateMaxNumChannels(const TTValue& oldMaxNumChannels)
	{
		if (mActualFilterObject)
			return mActualFilterObject->setAttributeValue(TT("MaxNumChannels"), maxNumChannels);
		else
			return kTTErrNone;
	}
	
	
	TTErr updateSr()
	{
		return mActualFilterObject->setAttributeValue(kTTSym_SampleRate, sr);
	}

	
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
	{
		return mActualFilterObject->process(inputs, outputs);
	}
	
};


TT_AUDIO_CONSTRUCTOR_EXPORT,
	mActualFilterObject(NULL),
	mFrequency(0),
	mQ(0),
	mType(NULL)
{
	addAttributeWithSetter(Frequency, kTypeFloat64);
	addAttributeWithSetter(Q, kTypeFloat64);
	addAttributeWithSetter(Type, kTypeSymbol);
	
	addMessageWithArgument(getTypes);
	addMessage(clear);
	
	addMessageWithArgument(updateMaxNumChannels);
	addMessage(updateSr);
	
	setAttributeValue(TT("MaxNumChannels"), arguments);
	setAttributeValue(TT("Type"), TT("lowpass.1"));
	setAttributeValue(TT("Frequency"), 1000.0);
	setAttributeValue(TT("Q"), 1.0);
	setProcessMethod(processAudio);
}


// Destructor
TTMulticoreFilter::~TTMulticoreFilter()
{
	;
}


/*******************************************************************************/

int main(void)
{
	TTMulticoreInit();

	// First, we have to register our custom subclass with the Jamoma Foundation runtime.
	TTMulticoreFilter::registerClass();
	
	// Then we are able to wrap it as a Max class.
	return wrapAsMaxMulticore(TT("multicore.filter"), "jcom.filter≈", NULL);
}
