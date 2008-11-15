/* 
 *	filter≈
 *	External object for Max/Lydbaer
 *	Copyright © 2008 by Timothy Place
 * 
 *	License: This code is licensed under the terms of the GNU LGPL
 *	http://www.gnu.org/licenses/lgpl.html 
 */

#include "maxMulticore.h"
#define thisTTClass TTFilter



// For the filter≈ object, we wish to create our own class, 
// which then encapsulates the various filters available in TTBlue.

class TTFilter : public TTAudioObject {
protected:
	TTAudioObjectPtr	actualFilterObject;		///< The actual filter object that this object is currently wrapping
	TTFloat64			frequency;				///< The center or cutoff frequency of the filter
	TTFloat64			q;						///< The width of the filter
	TTSymbolPtr			type;					///< The name of the current filter type
	
public:
	
	// Constructor
	TTFilter(TTUInt16 newMaxNumChannels)
		: TTAudioObject("filter", newMaxNumChannels), actualFilterObject(NULL)
	{
		registerAttributeWithSetter(frequency, kTypeFloat64);
		registerAttributeWithSetter(q, kTypeFloat64);
		registerAttributeWithSetter(type, kTypeSymbol);
		
		registerMessageWithArgument(getTypes);
		registerMessageSimple(clear);

		registerMessageWithArgument(updateMaxNumChannels);
		registerMessageSimple(updateSr);
		
		setAttributeValue(TT("maxNumChannels"), newMaxNumChannels);
		setAttributeValue(TT("type"), TT("lowpass.1"));
		setAttributeValue(TT("frequency"), 1000.0);
		setAttributeValue(TT("q"), 1.0);
		setProcessMethod(processAudio);
	}
	
	// Destructor
	virtual ~TTFilter()
	{
		;
	}
	
	
	TTErr setfrequency(const TTValue& newValue)
	{	
		frequency = newValue;
		return actualFilterObject->setAttributeValue(TT("frequency"), frequency);
	}
		
	TTErr setq(const TTValue& newValue)
	{	
		q = newValue;
		return actualFilterObject->setAttributeValue(TT("q"), q);
	}
		
	TTErr settype(const TTValue& newValue)
	{	
		TTSymbolPtr newType = newValue;
		TTErr		err = kTTErrNone;
		
		// if the type didn't change, then don't change the filter
		if(newType == type)
			return kTTErrNone;
		
		type = newType;
		err = TTObjectInstantiate(type, &actualFilterObject, maxNumChannels);			
		if(!err){
			// Now that we have our new filter, update it with the current state of the wrapper:
			actualFilterObject->setAttributeValue(TT("frequency"), frequency);
			err = actualFilterObject->setAttributeValue(TT("q"), q);
			if(err == kTTErrInvalidAttribute)
				err = actualFilterObject->setAttributeValue(TT("resonance"), q);
			actualFilterObject->setAttributeValue(TT("bypass"), this->attrBypass);
			actualFilterObject->setAttributeValue(TT("sr"), sr);
		}
		return err;
	}
		
	
	TTErr getTypes(TTValue& listOfFilterTypesToReturn)
	{
		return TTGetRegisteredClassNamesForTags(listOfFilterTypesToReturn, TT("filter"));
	}
	
	
	TTErr clear()
	{
		return actualFilterObject->sendMessage(TT("clear"));
	}
	
	
	TTErr updateMaxNumChannels(const TTValue& oldMaxNumChannels)
	{
		if(actualFilterObject)
			return actualFilterObject->setAttributeValue(kTTSym_maxNumChannels, maxNumChannels);
		else
			return kTTErrNone;
	}
	
	
	TTErr updateSr()
	{
		return actualFilterObject->setAttributeValue(kTTSym_sr, sr);
	}

	
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
	{
		return actualFilterObject->process(inputs, outputs);
	}
	
};



// Because we have created this overdriveExtended class outside of the main TTBlue framework, 
// we have to define our own factory method that is used to create a new instance of our object.

TTObjectPtr instantiateTTFilter(TTSymbolPtr className, TTValue& arguments)
{
	return new TTFilter(arguments);
}



int main(void)
{
	MCoreInit();

	// First, we have to register our custom subclass with the TTBlue framework.
	TTClassRegister(TT("filter"), "audio, processor, effect, lydbaer", &instantiateTTFilter);
	// Then we are able to wrap it as a Max class.
	return wrapAsMaxbaer(TT("filter"), "filter≈", NULL);
}

