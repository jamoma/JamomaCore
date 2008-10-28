/* 
 * Lydbaer Extensions for TTBlue
 * Creates a wrapper for TTAudioObjects that can be used to build an audio processing graph.
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __LYDBAER_H__
#define __LYDBAER_H__

#include "TTBlueAPI.h"


enum LydbaerProcessStatus {
	kProcessUnknown = 0,
	kProcessNotStarted,
	kProcessingCurrently,	
	kProcessComplete
};

enum LydbaerFlags {
	kLydbaerProcessor = 0,
	kLydbaerGenerator = 1
};

class LydbaerObject;
typedef LydbaerObject*	LydbaerObjectPtr;


/**
	The LydbaerObject wraps a TTBlue object in way that makes it possible to 
	build a dynamic graph of audio processing units.
*/

class LydbaerObject {	
protected:
	// Data
	
	LydbaerProcessStatus		processStatus;	///< Used to enable correct processing of feedback loops, multiple destinations, etc.
	LydbaerFlags				flags;
	
	LydbaerObjectPtr*			audioSources;	///< An array of objects from which we pull our source samples using the ::getAudioOutput() method.
public:
	TTUInt16					numSources;		///< The number of getSamples callback functions (sources) from which we pull.
protected:
	
	TTAudioSignalPtr			audioInput;		///< The buffered input for processing audio with our object.
	TTAudioSignalPtr			audioOutput;	///< The results of processing audio with our object.
public:	
	TTAudioObjectPtr			audioObject;	///< The actual TTBlue object doing the processing.
	
	// Methods

	/**	Constructor.	
		@param	objectName	The name of the TTBlue object you want to wrap.		*/
	LydbaerObject(TTSymbolPtr objectName, TTUInt16 initialNumChannels);
	
	/**	Destructor.		*/
	virtual ~LydbaerObject();

	/**	Rather than use the internal audio output signal, it is possible to set your own.
		One example for why you might want this is for creating generator objects.	*/
	TTErr setAudioOutputPtr(TTAudioSignalPtr newOutputPtr);

	
	TTUInt16 getNumOutputChannels()
	{
		return audioOutput->getNumChannels();
	}
	
	TTUInt16 getSampleRate()
	{
		TTUInt16 sr;
		audioObject->getAttributeValue(kTTSym_sr, sr);
		return sr;
	}
	
	TTUInt16 getOutputVectorSize()
	{
		return audioOutput->getVectorSize();
	}
	
	TTErr addFlag(LydbaerFlags newFlag)
	{
		flags = newFlag;
		return kTTErrNone;
	}
	
	
	/**	Clear the list of source objects from which this object will try to pull audio.	
		@param	vs		The global vector size that will be used for the chain's output.	*/
	TTErr resetSources(TTUInt16 vs);
	
	/**	Add a source to the list of objects from which to request audio. */
	TTErr addSource(LydbaerObjectPtr anObject);
	
	
	/**	This method is called by an object about to process audio, prior to calling getAudioOutput().
		As with the getAudioOutput() method, this is driven by the destination object and working up through the chains.
		@return 		An error code.		*/
	virtual TTErr prepareToProcess();
	
	
	/**	This method is required to be implemented by all objects except for those existing solely as a destination.
		@param	audioOutput		This method is passed a reference to an audio signal pointer.
								We then set this audio signal pointer to point to the TTAudioSignal containing our calculated samples.
	 	@return					An error code.	*/
	virtual TTErr getAudioOutput(TTAudioSignalPtr& returnedSignal);
	
};



/**	LydbaerSource is a very simple audio object that holds a signal from TTBlue
	that can be used by a Lydbaer graph.		*/
class LydbaerSource : public TTAudioObject
{
public:
	TTAudioSignalPtr	buffer;		///< storage for the audioSignal that we provide
	
	
	/**	Constructor. */
	LydbaerSource(TTUInt16 newMaxNumChannels);
	
	/**	Destructor. */
	virtual ~LydbaerSource();
	
	/**	A standard audio processing method as used by TTBlue objects.*/
	TTErr processAudio(TTAudioSignal& in, TTAudioSignal& out);	
};

typedef LydbaerSource* LydbaerSourcePtr;


#endif // __LYDBAER_H__
