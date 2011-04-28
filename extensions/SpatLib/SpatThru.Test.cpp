/* 
 * Super simple Spatialization object for Jamoma DSP
 * Copyright © 2011 by Trond Lossius, Nils Peters, and Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */


#include "SpatLib.h"
#include "SpatThru.h"



TTErr SpatThru::test(TTValue& returnedTestInfo)
 {
	 int				errorCount = 0;
	 int				testAssertionCount = 0;
	 int				badSampleCount = 0;
	 
	 TTAudioSignalArrayPtr	input;
	 TTAudioSignalArrayPtr	output;
	 int					N = 32;
	 
	 input->setMaxNumAudioSignals(4);
	 input->allocAllWithVectorSize(N);
	 
	 // create single audio signal buffer
	 TTAudioSignalPtr		buffer = NULL;
	 TTObjectInstantiate(kTTSym_audiosignal, &buffer, 1);
	 buffer->allocWithVectorSize(N);
	 
	 // filling the channels with prime number values
	 // as this will quickly reveal if something is wrong
	 buffer->fill(2.0);
	 input->setSignal(0, buffer);

	 buffer->fill(-3.0);
	 input->setSignal(1, buffer);
	 
	 buffer->fill(5.0);
	 input->setSignal(2, buffer);
	 
	 buffer->fill(7.0);
	 input->setSignal(3, buffer);
	 
	 // process
	 //this->processAudio(input, output);
	 
	 
	 
	 

	 // Wrap up the test results to pass back to whoever called this test
	 return TTTestFinish(testAssertionCount, errorCount, returnedTestInfo);
}
