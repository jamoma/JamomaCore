
#include "TTBlueAPI.h"


enum LydbaerProcessStatus {
	kProcessUnknown = 0,
	kProcessNotStarted,
	kProcessingCurrently,	
	kProcessComplete
};


class LydbaerObject;
typedef LydbaerObject*	LydbaerObjectPtr;


/**
	The LydbaerObject wraps a TTBlue object in way that makes it possible to build a dynamic graph of the audio processing units.
*/

class LydbaerObject {	
protected:
	// Data
	
	LydbaerProcessStatus		processStatus;	///< Used to enable correct processing of feedback loops, multiple destinations, etc.
	
	LydbaerObjectPtr*			audioSources;	///< An array of objects from which we pull our source samples using the ::getAudioOutput() method.
	TTUInt16					numSources;		///< The number of getSamples callback functions (sources) from which we pull.
	
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
	
	
	/**	Clear the list of source objects from which this object will try to pull audio.	*/
	TTErr resetSources();
	
	/**	Add a source to the list of objects from which to request audio. */
	TTErr addSource(LydbaerObjectPtr anObject);
	
	
	/**	This method is called by an object about to process audio, prior to calling getAudioOutput().
		As with the getAudioOutput() method, this is driven by the destination object and working up through the chains.
		@return 				An error code.	*/
	virtual TTErr prepareToProcess();
	
	/**	This method is required to be implemented by all objects except for those existing solely as a destination.
		@param	audioOutput		This method is passed a reference to an audio signal pointer.
								We then set this audio signal pointer to point to the TTAudioSignal containing our calculated samples.
	 	@return					An error code.	*/
	virtual TTErr getAudioOutput(TTAudioSignalPtr& returnedSignal);
	
};




