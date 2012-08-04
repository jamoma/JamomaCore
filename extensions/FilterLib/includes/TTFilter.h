/* 
 *	filter≈
 *	Generalized filter wrapper object for Jamoma
 *	Copyright © 2010 by Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_FILTER_H__
#define __TT_FILTER_H__

#include "TTDSP.h"


/**	A Generalized filter wrapper object for Jamoma. */
class TTFilter : TTAudioObject {
	TTCLASS_SETUP(TTFilter)
	
protected:
	TTAudioObjectPtr	mActualFilterObject;	///< The actual filter object that this object is currently wrapping
	TTFloat64			mFrequency;				///< The center or cutoff frequency of the filter
	TTFloat64			mQ;						///< The width of the filter
	TTSymbolPtr			mType;					///< The name of the current filter type
	
public:
	
	TTErr setFrequency(const TTValue& newValue)
	{	
		mFrequency = newValue;
		return mActualFilterObject->setAttributeValue(TT("frequency"), mFrequency);
	}
	
	TTErr setQ(const TTValue& newValue)
	{	
		mQ = newValue;
		return mActualFilterObject->setAttributeValue(TT("q"), mQ);
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
			mActualFilterObject->setAttributeValue(TT("frequency"), mFrequency);
			err = mActualFilterObject->setAttributeValue(TT("q"), mQ);
			if (err == kTTErrInvalidAttribute)
				err = mActualFilterObject->setAttributeValue(TT("resonance"), mQ);
			mActualFilterObject->setAttributeValue(TT("bypass"), this->attrBypass);
			mActualFilterObject->setAttributeValue(kTTSym_sampleRate, (unsigned int)sr);
		}
		return err;
	}
	
	
	TTErr getTypes(const TTValue&, TTValue& listOfFilterTypesToReturn)
	{
		return TTGetRegisteredClassNamesForTags(listOfFilterTypesToReturn, TT("filter"));
	}
	
	
	TTErr clear()
	{
		return mActualFilterObject->sendMessage(TT("clear"));
	}
	
	
	TTErr mode(const TTValue& newMode, TTValue&)
	{
		if (mActualFilterObject)
			return mActualFilterObject->setAttributeValue(TT("mode"), const_cast<TTValue&>(newMode));
		else
			return kTTErrNone;
	}
	
	
	TTErr updateMaxNumChannels(const TTValue& oldMaxNumChannels, TTValue&)
	{
		if (mActualFilterObject)
			return mActualFilterObject->setAttributeValue(kTTSym_maxNumChannels, maxNumChannels);
		else
			return kTTErrNone;
	}
	
	
	TTErr updateSampleRate(const TTValue& oldSampleRate, TTValue&)
	{
		return mActualFilterObject->setAttributeValue(kTTSym_sampleRate, (unsigned int)sr);
	}
	
	
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
	{
		return mActualFilterObject->process(inputs, outputs);
	}
	
};


#endif // __TT_FILTER_H__
