/** @file
 *
 * @ingroup dspSoundFileLib
 *
 * @brief Tests for the #TTSoundfileLoader class
 *
 * @details Tests the core functions of the TTSoundfileLoader class in order to ensure that things are working after a build. It also demostrate how to make calls to common methods within the class.@n 
 * IMPORTANT NOTE: Because POSIX filepaths will be specific to your system, this test will attempt to find the path to the SoundfileLib extension using the TTFoundationBinaryPath environment variable. If you wish to test with a different sound file, you will need to place in that extension folder and change the relevant macros in the header of this class.
 *
 * @authors Nathan Wolek
 *
 * @copyright Copyright © 2013 by Nathan Wolek @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTSoundfileLoader.h"
#include "TTUnitTest.h"
#include "TTBuffer.h"

/*
 
 It is possible to change the target sound file for this test using the macros below.
 Both sound files are included in the Jamoma respository at the following path:
 {JAMOMA_ROOT}/Core/DSP/extensions/SoundfileLib/
 
 The test should look for the named TESTFILE at this path.
 
 */

/* */
 #define TESTFILE "geese_clip.aif"
 #define TESTNUMCHANNELS 2
 #define TESTSAMPLERATE 44100
 #define TESTDURATIONINSAMPLES 88202
 #define TESTDURATIONINSECONDS 2.00004535
 #define TESTTITLE ""
 #define TESTARTIST ""
 #define TESTDATE ""
 #define TESTANNOTATION ""
/* */

/* 
#define TESTFILE "ding_b2.aiff"
#define TESTNUMCHANNELS 1
#define TESTSAMPLERATE 44100
#define TESTDURATIONINSAMPLES 39493
#define TESTDURATIONINSECONDS 0.89553288
#define TESTTITLE ""
#define TESTARTIST ""
#define TESTDATE ""
#define TESTANNOTATION ""
 */

TTErr TTSoundfileLoader::test(TTValue& returnedTestInfo)
{
    int errorCount = 0;
    int testAssertionCount = 0;
    
    // assemble the full path of the target sound file
    
    TTString testSoundPath = TTFoundationBinaryPath;
    int pos = testSoundPath.find_last_of('/');
    testSoundPath = testSoundPath.substr(0,pos+1);
    testSoundPath += TESTFILE;
    
    std::cout << "We will be using the following path for testing: " << testSoundPath << "\n";
    
    try {
        
		TTTestLog("\n");
		TTTestLog("Testing TTSoundfileLoader Basics...");
		
        // TEST 0: establish our objects & pointers
        TTObject* testTargetMatrix = new TTObject("samplematrix");
        TTObject* testNonSampleMatrix = new TTObject("delay");
        TTObjectBase* objectBasePtrToSampleMatrix;
        TTObjectBase* ptrToNonSampleMatrix;
        
        // TEST 1: set the filepath
        TTBoolean result1 = { this->setFilePath(TT(testSoundPath)) == kTTErrNone };
        
        TTTestAssertion("setFilePath operates successfully",
                        result1,
                        testAssertionCount,
                        errorCount);
        
        // TEST 2: set up the samplematrix first
        int channelsSend = 1;           // compiler complained about TTInt32 being ambiguous here
        int lengthSend = 22050;         // compiler complained about TTInt32 being ambiguous here
        testTargetMatrix->set("numChannels", channelsSend);
        testTargetMatrix->set("lengthInSamples", lengthSend);
        
        TTInt32 channelsReturn, lengthReturn;
        
        testTargetMatrix->get("numChannels", channelsReturn);
        testTargetMatrix->get("lengthInSamples", lengthReturn);
        
        // now for the actual test
        TTBoolean result2a = { channelsSend == channelsReturn };
        
        TTTestAssertion("numChannels attribute set successfully",
						result2a,
						testAssertionCount,
						errorCount);
        
        TTBoolean result2b = { lengthSend == lengthReturn };
        
        TTTestAssertion("lengthInSamples attribute set successfully",
						result2b,
						testAssertionCount,
						errorCount);
        //
        
        // TEST 3: set the target via an objectBasePtr
        objectBasePtrToSampleMatrix = testTargetMatrix->instance(); // is there a better syntax for this?
        
        TTBoolean result3 = { this->setTargetMatrix(objectBasePtrToSampleMatrix) == kTTErrNone };
        
        TTTestAssertion("setTargetMatrix via ObjectBasePtr operates successfully",
						result3,
						testAssertionCount,
						errorCount);
        
        // TEST 4: set the target to a non-SampleMatrix, should FAIL
        ptrToNonSampleMatrix = testNonSampleMatrix->instance();
        
        TTBoolean result4 = { this->setTargetMatrix(ptrToNonSampleMatrix) == kTTErrInvalidValue };
        
        TTTestAssertion("setTargetMatrix returns error when not a SampleMatrix",
						result4,
						testAssertionCount,
						errorCount);
        
        // TEST 5: copy samplevalues until samplematrix is filled
        
        TTBoolean result5 = { this->copyUntilFilled() == kTTErrNone };
        
        TTTestAssertion("copyUntilFilled operates successfully",
						result5,
						testAssertionCount,
						errorCount);
        
        // releasing objects
        objectBasePtrToSampleMatrix = NULL;
        ptrToNonSampleMatrix = NULL;
        delete testTargetMatrix;
        delete testNonSampleMatrix;
        
        
        // TEST 6: use TTSampleMatrix's load message, then compare 5 random sample values for equivalence
        
        // create a new TTSampleMatrix
        TTObject newTargetMatrix("samplematrix");
        
        // set the length and channel count
        newTargetMatrix.set("numChannels", TESTNUMCHANNELS);
        newTargetMatrix.set("lengthInSamples", TESTDURATIONINSAMPLES);
        
        // prepare necessary TTValues
        TTValue loadInput6 = TT(testSoundPath); // we cannot pass the naked TTString, it needs to be part of a TTValue
        TTValue aReturnWeDontCareAbout6;
        
        // send message
        TTBoolean result6a = { newTargetMatrix.send("load", loadInput6, aReturnWeDontCareAbout6) == kTTErrNone };
        
        TTTestAssertion("TTSampleMatrix load operates successfully",
                        result6a,
                        testAssertionCount,
                        errorCount);
        
        // now let's test some values!
        int randomIndex6, randomChannel6;
        TTSampleValue testValueSoundFile6;
        TTBoolean result6b = true;
        
        for (int i = 0; i<10; i++)
        {
            randomIndex6 = lengthReturn * TTRandom64();
            randomChannel6 = i % TESTNUMCHANNELS;
            std::cout << "let's look at index " << randomIndex6 << " & channel " << randomChannel6 << "\n";
            
            TTValue peekInput6(randomIndex6);
            peekInput6.append(randomChannel6);
            TTValue peekOutput6;
            
            this->peek(randomIndex6,randomChannel6,testValueSoundFile6);
            newTargetMatrix.send("peek",peekInput6,peekOutput6);
            std::cout << "Does " << testValueSoundFile6 << " = " << double(peekOutput6) << " ?\n";
            
            if (result6b) // allows test to keep variable false once it is false
                result6b = TTTestFloatEquivalence(testValueSoundFile6, double(peekOutput6), true, 0.0000001);
        }
        
        
        TTTestAssertion("comparing values @ 10 random indexes for equivalence",
                        result6b,
                        testAssertionCount,
                        errorCount);
        
        
        // TEST 7: now use TTBuffer's load message, and again compare 5 random sample values for equivalence
        
        // create a new TTBuffer with convenience syntax
        TTAudioBuffer aBufferByAnyOtherName(TESTNUMCHANNELS, TESTDURATIONINSAMPLES);
        
        // prepare necessary TTValues
        TTValue loadInput7 = TT(testSoundPath); // we cannot pass the naked TTString, it needs to be part of a TTValue
        
        // send message
        TTBoolean result7a = { aBufferByAnyOtherName.load(loadInput7) == kTTErrNone };
        
        TTTestAssertion("TTBuffer load operates successfully",
                        result7a,
                        testAssertionCount,
                        errorCount);
        
        // setup pointer to samplematrix
        TTSampleMatrixPtr myMatrix7;
        
        // check out samplematrix
        TTBoolean result7b = { aBufferByAnyOtherName.checkOutMatrix(myMatrix7) == kTTErrNone };
        
        TTTestAssertion("TTBuffer checks out SampleMatrix successfully",
                        result7b,
                        testAssertionCount,
                        errorCount);
        
        TTValue testChannel, testSample;
        myMatrix7->getNumChannels(testChannel);
        myMatrix7->getLengthInSamples(testSample);
        
        //std::cout << "Samplematrix has " << int(testChannel) << " channels & " << int(testSample) << " samples\n";
        
        // now let's test some values!
        int randomIndex7, randomChannel7;
        double testValueSoundFile7, testValueSampleMatrix7;
        TTBoolean result7c = true;
        
        for (int i = 0; i<10; i++)
        {
            randomIndex7 = lengthReturn * TTRandom64();
            randomChannel7 = i % TESTNUMCHANNELS;
            std::cout << "let's look at index " << randomIndex7 << " & channel " << randomChannel7 << "\n";
            
            this->peek(randomIndex7,randomChannel7,testValueSoundFile7);
            myMatrix7->peek(randomIndex7,randomChannel7,testValueSampleMatrix7);
            std::cout << "Does " << testValueSoundFile7 << " = " << testValueSampleMatrix7 << " ?\n";
            
            if (result7c) // allows test to keep variable false once it is false
                result7c = TTTestFloatEquivalence(testValueSoundFile7, testValueSampleMatrix7, true, 0.0000001);
        }
        
        TTTestAssertion("comparing values @ 10 random indexes for equivalence",
                        result7c,
                        testAssertionCount,
                        errorCount);
        
        // check in samplematrix
        TTBoolean result7d = { aBufferByAnyOtherName.checkInMatrix(myMatrix7) == kTTErrNone };
        
        TTTestAssertion("TTBuffer checks in SampleMatrix successfully",
                        result7d,
                        testAssertionCount,
                        errorCount);
        
        
        // TEST 8: use optional load parameters to copy samples 5 to 15 from channel 0
        
        // resize
        aBufferByAnyOtherName.set("numChannels", 1);
        aBufferByAnyOtherName.set("lengthInSamples", 10);
        
        // prepare necessary TTValues
        int copyChannel8 = 0;       // first channel
        int startIndex8 = 5;        // start @ sample 5
        int endIndex8 = 15;         // end @ sample 15
        
        TTValue loadInput8 = TT(testSoundPath); // we cannot pass the naked TTString, it needs to be part of a TTValue
        loadInput8.append(copyChannel8);
        loadInput8.append(startIndex8);
        loadInput8.append(endIndex8);
        
        // send message
        TTBoolean result8a = { aBufferByAnyOtherName.load(loadInput8) == kTTErrNone };
        
        TTTestAssertion("TTBuffer load operates successfully w optional parameters",
                        result8a,
                        testAssertionCount,
                        errorCount);
        
        // setup pointer to samplematrix
        TTSampleMatrixPtr myMatrix8;
        
        // check out samplematrix
        TTBoolean result8b = { aBufferByAnyOtherName.checkOutMatrix(myMatrix8) == kTTErrNone };
        
        TTTestAssertion("TTBuffer checks out SampleMatrix successfully",
                        result8b,
                        testAssertionCount,
                        errorCount);
        
        // now let's test some values!
        double testValueSoundFile8, testValueSampleMatrix8;
        TTBoolean result8c = true;

        for (int i = 0; i<10; i++)
        {
            //std::cout << "let's look at index " << i << "\n";
            
            this->peek(i+startIndex8,copyChannel8,testValueSoundFile8);
            myMatrix8->peek(i,copyChannel8,testValueSampleMatrix8);
            //std::cout << "Does " << testValueSoundFile8 << " = " << testValueSampleMatrix8 << " ?\n";
            
            if (result8c) // allows test to keep variable false once it is false
                result8c = TTTestFloatEquivalence(testValueSoundFile8, testValueSampleMatrix8, true, 0.0000001);
        }
        
        TTTestAssertion("comparing all 10 copied values for equivalence",
                        result8c,
                        testAssertionCount,
                        errorCount);
        
        // check in samplematrix
        TTBoolean result8d = { aBufferByAnyOtherName.checkInMatrix(myMatrix8) == kTTErrNone };
        
        TTTestAssertion("TTBuffer checks in SampleMatrix successfully",
                        result8d,
                        testAssertionCount,
                        errorCount);
        
        // TEST 9: load soundfile into buffer/samplematrix with different sample rate
        
        aBufferByAnyOtherName.set("numChannels", 2);
        aBufferByAnyOtherName.set("sampleRate", 88200.);
        aBufferByAnyOtherName.set("lengthInSeconds", 0.25);
        
        TTValue loadInput9 = TT(testSoundPath); // we cannot pass the naked TTString, it needs to be part of a TTValue
        
        // send message
        TTBoolean result9a = { aBufferByAnyOtherName.load(loadInput9) == kTTErrNone };
        
        TTTestAssertion("TTBuffer load operates successfully w optional parameters",
                        result9a,
                        testAssertionCount,
                        errorCount);
        
        // setup pointer to samplematrix
        TTSampleMatrixPtr myMatrix9;
        
        // check out samplematrix
        TTBoolean result9b = { aBufferByAnyOtherName.checkOutMatrix(myMatrix9) == kTTErrNone };
        
        TTTestAssertion("TTBuffer checks out SampleMatrix successfully",
                        result9b,
                        testAssertionCount,
                        errorCount);
        
        TTValue testChannel9, testSampleCount9, testSampleRate9;
        myMatrix9->getAttributeValue("numChannels", testChannel9);
        myMatrix9->getAttributeValue("lengthInSamples", testSampleCount9);
        myMatrix9->getAttributeValue("sampleRate", testSampleRate9);
        
        std::cout << "Samplematrix has " << int(testChannel9) << " channels & " << int(testSampleCount9) << " samples @ " << double(testSampleRate9) << " Hz\n";
        
        
        // DO SOMETHING HERE
        
        // check in samplematrix
        TTBoolean result9d = { aBufferByAnyOtherName.checkInMatrix(myMatrix9) == kTTErrNone };
        
        TTTestAssertion("TTBuffer checks in SampleMatrix successfully",
                        result9d,
                        testAssertionCount,
                        errorCount);
        
        
    } catch (...) {
        TTTestAssertion("FAILED to run tests -- likely that necessary objects did not instantiate",
            0,
            testAssertionCount,
            errorCount);
        
    }
    
    return TTTestFinish(testAssertionCount, errorCount, returnedTestInfo);
}
