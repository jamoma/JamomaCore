
#include "lydbaer.cpp"


TTErr lydbaer::prepareToProcess()
{
	processStatus = kProcessNotStarted;
}


TTErr lydbaer::getAudioOutput(TTAudioSignalPtr& audioOutput)
{
	TTAudioSignalPtr	pulledInput = NULL;
	TTErr				err;
	
	switch(processStatus){
		
		// we have not processed anything yet, so let's get started
		case kProcessNotStarted:
		
			// zero the samples
			audioInput->clear();
		
			// sum the sources
			for(TTUInt16 i=0; i<numSources; i++){
				err = audioSources[i]->getAudio(pulledInput);
				if(!err)
					audioInput += pulledInput;		// this relies on += being overriden in the TTAudioSignal class
			}
			
			// process the audio
			if(numSources)
				audioObject->process(audioInput, audioOutput);		// a processor
			else
				audioObject->process(audioOutput);					// a generator (or no input)
			
			// return
			returnedSignal = audioOutput;
			break;
			
			
		// we already processed everything that needs to be processed, so just set the pointer
		case kProcessComplete:
			returnedSignal = audioOutput;
			
			
		// to prevent feedback / infinite loops, we just hand back the last calculated output here
		case kProcessingCurrently:
			returnedSignal = audioOutput;
			break;
		
		
		// we should never get here
		default:
			break;
	}
	
}


