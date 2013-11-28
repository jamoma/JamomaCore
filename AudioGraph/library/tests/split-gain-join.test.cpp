/** @file
 *
 * @ingroup audioGraphLibrary
 *
 * @brief Jamoma Audio Graph integration test
 *
 * @details Implemented as a unit test for TTAudioGraphGenerator for the time-being...
 *
 * @authors Timothy Place, Trond Lossius
 *
 * @copyright Copyright © 2011, Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#include "TTAudioGraphObject.h"
#include "TTAudioGraphGenerator.h"
#include "TTAudioGraphInlet.h"		// required for windows build

/*
TTErr TTAudioGraphGenerator::test(TTValue& returnedTestInfo)
{
	int							errorCount = 0;
	int							testAssertionCount = 0;
	int							badSampleCount = 0;
//	TTAudioSignalPtr			input = NULL;
	TTAudioSignalPtr			output = NULL;
	TTAudioGraphPreprocessData	mInitData;
//	TTAudioSignalPtr			mAudioSignal = NULL;
	TTAudioGraphObjectPtr		obj0 = NULL;
	TTAudioGraphObjectPtr		obj1 = NULL;
	TTAudioGraphObjectPtr		obj2 = NULL;
	TTAudioGraphObjectPtr		obj3 = NULL;
	TTAudioGraphObjectPtr		obj4 = NULL;
	TTAudioGraphObjectPtr		obj5 = NULL;
	TTAudioGraphObjectPtr		obj6 = NULL;
	TTAudioGraphObjectPtr		obj7 = NULL;
//	TTAudioGraphObjectPtr		obj8 = NULL;
	TTAudioGraphObjectPtr		obj9 = NULL;
	TTAudioGraphObjectPtr		obj10 = NULL;
//	TTAudioGraphObjectPtr		obj11 = NULL;
	TTAudioGraphObjectPtr		obj12 = NULL;
	TTAudioGraphObjectPtr		obj13 = NULL;
	TTValue						audioObjectArguments;

	memset(&mInitData, 0, sizeof(mInitData));	
	audioObjectArguments.resize(3);
		   
	// Create the Graph

	audioObjectArguments.set(0, TT("thru"));	// <<-- THIS IS THE SINK ON WHICH WE WILL PULL
	audioObjectArguments.set(1, 1);				// <<-- NUMBER OF INLETS
	audioObjectArguments.set(2, 1);
	TTObjectBaseInstantiate(TT("audio.object"), (TTObjectBasePtr*)&obj0, audioObjectArguments);
	obj0->mKernel->setAttributeValue(TT("maxNumChannels"), 0);
	obj0->mKernel->setAttributeValue(TT("mute"), 0);
	obj0->mKernel->setAttributeValue(TT("bypass"), 0);
	obj0->mKernel->setAttributeValue(TT("sampleRate"), 44100);

	audioObjectArguments.set(0, TT("audio.join"));
	audioObjectArguments.set(1, 2);
	audioObjectArguments.set(2, 1);
	TTObjectBaseInstantiate(TT("audio.object"), (TTObjectBasePtr*)&obj1, audioObjectArguments);
	obj1->mKernel->setAttributeValue(TT("maxNumChannels"), 1);
	obj1->mKernel->setAttributeValue(TT("mute"), 0);
	obj1->mKernel->setAttributeValue(TT("bypass"), 0);
	obj1->mKernel->setAttributeValue(TT("sampleRate"), 44100);

	audioObjectArguments.set(0, TT("gain"));
	audioObjectArguments.set(1, 1);
	audioObjectArguments.set(2, 1);
	TTObjectBaseInstantiate(TT("audio.object"), (TTObjectBasePtr*)&obj2, audioObjectArguments);
	//obj2->mKernel->setAttributeValue(TT("midiGain"), 86.639865);
	obj2->mKernel->setAttributeValue(TT("maxNumChannels"), 0);
	obj2->mKernel->setAttributeValue(TT("interpolated"), 0);
	obj2->mKernel->setAttributeValue(TT("mute"), 0);
	obj2->mKernel->setAttributeValue(TT("bypass"), 0);
	//obj2->mKernel->setAttributeValue(TT("gain"), -6.000000);
	//obj2->mKernel->setAttributeValue(TT("linearGain"), 0.501187);
	obj2->mKernel->setAttributeValue(TT("linearGain"), 0.25);
	obj2->mKernel->setAttributeValue(TT("sampleRate"), 44100);

	audioObjectArguments.set(0, TT("audio.split"));
	audioObjectArguments.set(1, 1);
	audioObjectArguments.set(2, 2);
	TTObjectBaseInstantiate(TT("audio.object"), (TTObjectBasePtr*)&obj3, audioObjectArguments);
	obj3->mKernel->setAttributeValue(TT("maxNumChannels"), 1);
	TTValue v(1,1);
	obj3->mKernel->setAttributeValue(TT("groups"), v);
	obj3->mKernel->setAttributeValue(TT("mute"), 0);
	obj3->mKernel->setAttributeValue(TT("bypass"), 0);
	obj3->mKernel->setAttributeValue(TT("sampleRate"), 44100);

	audioObjectArguments.set(0, TT("audio.generator"));
	audioObjectArguments.set(1, 0);
	audioObjectArguments.set(2, 1);
	TTObjectBaseInstantiate(TT("audio.object"), (TTObjectBasePtr*)&obj4, audioObjectArguments);
	obj4->mKernel->setAttributeValue(TT("maxNumChannels"), 2);
	obj4->mKernel->setAttributeValue(TT("mute"), 0);
	obj4->mKernel->setAttributeValue(TT("bypass"), 0);
	obj4->mKernel->setAttributeValue(TT("vectorSize"), 64);
	obj4->mKernel->setAttributeValue(TT("sampleRate"), 44100);
	obj4->addAudioFlag(kTTAudioGraphGenerator);
	obj4->setOutputNumChannels(0, 2);
	
	obj3->connectAudio(obj4, 0, 0);
	obj2->connectAudio(obj3, 0, 0);

//	TTObjectBaseInstantiate(TT("graph.object"), (TTObjectBasePtr*)&obj8, TTValue(TT("plugtastic.parameter")));
//	((PlugtasticParameter*)obj8->mKernel)->setOwner(obj8);
//	obj8->mKernel->setAttributeValue(TT("rangeTop"), 24.000000);
//	obj8->mKernel->setAttributeValue(TT("bypass"), 0);
//	obj8->mKernel->setAttributeValue(TT("name"), TT("gain"));
//	obj8->mKernel->setAttributeValue(TT("style"), TT("decibels"));
//	obj8->mKernel->setAttributeValue(TT("default"), -6.000000);
//	obj8->mKernel->setAttributeValue(TT("value"), 0.000000);
//	obj8->mKernel->setAttributeValue(TT("rangeBottom"), -96.000000);

//	obj2->connect(obj8);
	obj1->connectAudio(obj2, 0, 0);
	audioObjectArguments.set(0, TT("gain"));
	audioObjectArguments.set(1, 1);
	audioObjectArguments.set(2, 1);
	TTObjectBaseInstantiate(TT("audio.object"), (TTObjectBasePtr*)&obj9, audioObjectArguments);
//	obj9->mKernel->setAttributeValue(TT("midiGain"), 86.639865);
	obj9->mKernel->setAttributeValue(TT("maxNumChannels"), 0);
	obj9->mKernel->setAttributeValue(TT("interpolated"), 0);
	obj9->mKernel->setAttributeValue(TT("mute"), 0);
	obj9->mKernel->setAttributeValue(TT("bypass"), 0);
//	obj9->mKernel->setAttributeValue(TT("gain"), -6.000000);
//	obj9->mKernel->setAttributeValue(TT("linearGain"), 0.501187);
	obj9->mKernel->setAttributeValue(TT("linearGain"), 0.25);
	obj9->mKernel->setAttributeValue(TT("sampleRate"), 44100);

	obj9->connectAudio(obj3, 1, 0);

//	TTObjectBaseInstantiate(TT("graph.object"), (TTObjectBasePtr*)&obj11, TTValue(TT("plugtastic.parameter")));
//	((PlugtasticParameter*)obj11->mKernel)->setOwner(obj11);
//	obj11->mKernel->setAttributeValue(TT("rangeTop"), 24.000000);
//	obj11->mKernel->setAttributeValue(TT("bypass"), 0);
//	obj11->mKernel->setAttributeValue(TT("name"), TT("gain"));
//	obj11->mKernel->setAttributeValue(TT("style"), TT("decibels"));
//	obj11->mKernel->setAttributeValue(TT("default"), -6.000000);
//	obj11->mKernel->setAttributeValue(TT("value"), 0.000000);
//	obj11->mKernel->setAttributeValue(TT("rangeBottom"), -96.000000);

//	obj9->connect(obj11);
	obj1->connectAudio(obj9, 0, 1);
	obj0->connectAudio(obj1, 0, 0);

	// SET UP SOME AUDIO AND PULL ON THE GRAPH
	// obj4 is the source
	// obj0 is the sink
	
	TTSampleValue chan1input[64] = {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1};
	TTSampleValue chan2input[64] = {2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2};
	TTSampleValue chan1output[64];
	TTSampleValue chan2output[64];
	

	mInitData.vectorSize = 64;
	
	
	TTTestLog("Processing First Pull");
	
	TTAudioGraphGeneratorPtr(obj4->getUnitGenerator())->mBuffer->setVector64Copy(0, 64, chan1input);
	TTAudioGraphGeneratorPtr(obj4->getUnitGenerator())->mBuffer->setVector64Copy(1, 64, chan2input);
	
	obj0->lockProcessing();
	obj0->preprocess(mInitData);
	obj0->process(output, 0);
	obj0->unlockProcessing();
	
	output->getVectorCopy(0, 64, chan1output);
	output->getVectorCopy(1, 64, chan2output);
	
	
	// CHECK THE RESULTS
	for (int i=0; i<64; i++) {
		TTBoolean result = TTTestFloatEquivalence(chan1output[i], chan1input[i] * 0.25);
		badSampleCount += !result;
		if (!result)
			TTTestLog("CHAN1 BAD SAMPLE @ i=%i  ( value=%.10f   expected=%.10f )", i, chan1output[i], chan1input[i] * 0.25);

		result = TTTestFloatEquivalence(chan2output[i], chan2input[i] * 0.25);
		badSampleCount += !result;
		if (!result)
			TTTestLog("CHAN2 BAD SAMPLE @ i=%i  ( value=%.10f   expected=%.10f )", i, chan2output[i], chan2input[i] * 0.25);		
	}
	
	TTTestAssertion("Produces correct results for first pull", 
					badSampleCount == 0, 
					testAssertionCount, 
					errorCount);
	if (badSampleCount)
		TTTestLog("badSampleCount is %i", badSampleCount);	


	
	
	TTTestLog("Processing Second Pull");
	
	TTAudioGraphGeneratorPtr(obj4->getUnitGenerator())->mBuffer->setVector64Copy(0, 64, chan1input);
	TTAudioGraphGeneratorPtr(obj4->getUnitGenerator())->mBuffer->setVector64Copy(1, 64, chan2input);
	
	obj0->lockProcessing();
	obj0->preprocess(mInitData);
	obj0->process(output, 64);
	obj0->unlockProcessing();
	
	output->getVectorCopy(0, 64, chan1output);
	output->getVectorCopy(1, 64, chan2output);
	
	
	// CHECK THE RESULTS
	for (int i=0; i<64; i++) {
		TTBoolean result = TTTestFloatEquivalence(chan1output[i], chan1input[i] * 0.25);
		badSampleCount += !result;
		if (!result)
			TTTestLog("CHAN1 BAD SAMPLE @ i=%i  ( value=%.10f   expected=%.10f )", i, chan1output[i], chan1input[i] * 0.25);
		
		result = TTTestFloatEquivalence(chan2output[i], chan2input[i] * 0.25);
		badSampleCount += !result;
		if (!result)
			TTTestLog("CHAN2 BAD SAMPLE @ i=%i  ( value=%.10f   expected=%.10f )", i, chan2output[i], chan2input[i] * 0.25);		
	}
	
	TTTestAssertion("Produces correct results for second pull", 
					badSampleCount == 0, 
					testAssertionCount, 
					errorCount);
	if (badSampleCount)
		TTTestLog("badSampleCount is %i", badSampleCount);	
	
	
	
	

	// FREE MEMORY FROM OUR GRAPH

	TTObjectBaseRelease((TTObjectBasePtr*)&obj0);
	TTObjectBaseRelease((TTObjectBasePtr*)&obj1);
	TTObjectBaseRelease((TTObjectBasePtr*)&obj2);
	TTObjectBaseRelease((TTObjectBasePtr*)&obj3);
	TTObjectBaseRelease((TTObjectBasePtr*)&obj4);
	TTObjectBaseRelease((TTObjectBasePtr*)&obj5);
	TTObjectBaseRelease((TTObjectBasePtr*)&obj6);
	TTObjectBaseRelease((TTObjectBasePtr*)&obj7);
//	TTObjectBaseRelease((TTObjectBasePtr*)&obj8);
	TTObjectBaseRelease((TTObjectBasePtr*)&obj9);
	TTObjectBaseRelease((TTObjectBasePtr*)&obj10);
//	TTObjectBaseRelease((TTObjectBasePtr*)&obj11);
	TTObjectBaseRelease((TTObjectBasePtr*)&obj12);
	TTObjectBaseRelease((TTObjectBasePtr*)&obj13);

		   
	// Wrap up the test results to pass back to whoever called this test
	return TTTestFinish(testAssertionCount, errorCount, returnedTestInfo);
}
 */

