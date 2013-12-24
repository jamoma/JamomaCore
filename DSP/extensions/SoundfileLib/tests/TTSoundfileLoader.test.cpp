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
        int randomIndex6;
        TTSampleValue randomValueSoundFile6;
        TTBoolean result6 = true;
        
        for (int i = 0; i<5; i++)
        {
            randomIndex6 = lengthReturn * TTRandom64();
            //std::cout << "let's look at index " << randomIndex6 << "\n";
            
            TTValue peekInput6(randomIndex6);
            peekInput6.append(0);
            TTValue peekOutput6;
            
            this->peek(randomIndex6,0,randomValueSoundFile6);
            newTargetMatrix.send("peek",peekInput6,peekOutput6);
            //std::cout << "Does " << randomValueSoundFile6 << " = " << double(peekOutput6) << " ?\n";
            
            if (result6) // allows test to keep variable false once it is false
                result6 = TTTestFloatEquivalence(randomValueSoundFile6, double(peekOutput6), true, 0.0000001);
        }
        
        TTTestAssertion("comparing 5 random values for equivalence",
                        result6,
                        testAssertionCount,
                        errorCount);
        
        //
        
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
        int randomIndex7;
        double randomValueSoundFile7, randomValueSampleMatrix7;
        TTBoolean result7 = true;
        
        for (int i = 0; i<5; i++)
        {
            randomIndex7 = lengthReturn * TTRandom64();
            //std::cout << "let's look at index " << randomIndex7 << "\n";
            
            this->peek(randomIndex7,0,randomValueSoundFile7);
            myMatrix7->peek(randomIndex7,0,randomValueSampleMatrix7);
            //std::cout << "Does " << randomValueSoundFile7 << " = " << randomValueSampleMatrix7 << " ?\n";
            
            if (result7) // allows test to keep variable false once it is false
                result7 = TTTestFloatEquivalence(randomValueSoundFile7, randomValueSampleMatrix7, true, 0.0000001);
        }
        
        TTTestAssertion("comparing 5 random values for equivalence",
                        result7,
                        testAssertionCount,
                        errorCount);
        
        // check in samplematrix
        TTBoolean result7c = { aBufferByAnyOtherName.checkInMatrix(myMatrix7) == kTTErrNone };
        
        TTTestAssertion("TTBuffer checks in SampleMatrix successfully",
                        result7c,
                        testAssertionCount,
                        errorCount);
        
        
        // releasing objects
        objectBasePtrToSampleMatrix = NULL;
        ptrToNonSampleMatrix = NULL;
        delete testTargetMatrix;
        delete testNonSampleMatrix;
        
    } catch (...) {
        TTTestAssertion("FAILED to run tests -- likely that necessary objects did not instantiate",
            0,
            testAssertionCount,
            errorCount);
        
    }
    
    return TTTestFinish(testAssertionCount, errorCount, returnedTestInfo);
}
