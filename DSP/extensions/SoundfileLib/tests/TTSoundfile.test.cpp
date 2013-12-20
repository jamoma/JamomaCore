/** @file
 *
 * @ingroup dspSoundFileLib
 *
 * @brief Tests for the #TTSoundfile class
 *
 * @details Tests the core functions of the TTSoundfile class in order to ensure that things are working after a build. It also demostrate how to make calls to common methods within the class.@n 
 * IMPORTANT NOTE: Because POSIX filepaths will be specific to your system, this test will attempt to find the path to the SoundfileLib extension using the TTFoundationBinaryPath environment variable. If you wish to test with a different sound file, you will need to place in that extension folder and change the relevant macros in the header of this class.
 *
 * @authors Nathan Wolek
 *
 * @copyright Copyright © 2013 by Nathan Wolek @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTSoundfile.h"
#include "TTUnitTest.h"

/* 
 
 It is possible to change the target sound file for this test using the macros below.
 Both sound files are included in the Jamoma respository at the following path:
 {JAMOMA_ROOT}/Core/DSP/extensions/SoundfileLib/
 
 This test should look for the named TESTFILE at this path.
 
 */

/*
 #define TESTFILE "geese_clip.aif"
 #define TESTNUMCHANNELS 2
 #define TESTSAMPLERATE 44100
 #define TESTDURATIONINSAMPLES 88202
 #define TESTDURATIONINSECONDS 2.00004535
 #define TESTTITLE ""
 #define TESTARTIST ""
 #define TESTDATE ""
 #define TESTANNOTATION ""
 */

/* */
 #define TESTFILE "ding_b2.aiff"
#define TESTNUMCHANNELS 1
#define TESTSAMPLERATE 44100
#define TESTDURATIONINSAMPLES 39493
#define TESTDURATIONINSECONDS 0.89553288
#define TESTTITLE ""
#define TESTARTIST ""
#define TESTDATE ""
#define TESTANNOTATION ""
/* */


TTErr TTSoundfile::test(TTValue& returnedTestInfo)
{
    int errorCount = 0;
    int testAssertionCount = 0;
    
    // assemble the full path of the target sound file
    
    TTString testSoundPath = TTFoundationBinaryPath;
    int pos = testSoundPath.find_last_of('/');
    testSoundPath = testSoundPath.substr(0,pos+1);
    testSoundPath += TESTFILE;

    std::cout << "We will be using the following path for testing: " << testSoundPath << "\n";

    {
        
        
		TTTestLog("\n");
		TTTestLog("Testing TTSoundfile Basics...");
		
		// TEST 0: instantiate the object to a pointer
        // ** REMOVED **
        
        // TEST 1: set the filepath
        TTBoolean result1 = { this->setFilePath(TT(testSoundPath)) == kTTErrNone };
        
        TTTestAssertion("setFilePath operates successfully",
                        result1,
                        testAssertionCount,
                        errorCount);
        
        // TEST 2: reports correct number of channels
        TTColumnID return2 = this->getNumChannels();
        TTBoolean result2 = { return2 == TESTNUMCHANNELS };
        
        TTTestAssertion("reports the correct number of channels",
                        result2,
                        testAssertionCount,
                        errorCount);
        
        if(!result2)
        {
            TTTestLog("Expected a value of %i, but returned value was %i", TESTNUMCHANNELS, return2);
        }
        
        // TEST 3: reports correct sample rate
        TTFloat64 return3 = this->getSampleRate();
        TTBoolean result3 = TTTestFloatEquivalence(return3, TESTSAMPLERATE, true, 0.0000001);
        
        TTTestAssertion("reports the correct sample rate",
                        result3,
                        testAssertionCount,
                        errorCount);
        
        if(!result3)
        {
            TTTestLog("Expected a value of %f, but returned value was %f", TESTSAMPLERATE, return3);
        }
        
        // TEST 4: reports correct duration in samples
        TTRowID return4 = this->getLengthInSamples();
        TTBoolean result4 = { return4 == TESTDURATIONINSAMPLES };
        
        TTTestAssertion("reports the correct duration in samples",
                        result4,
                        testAssertionCount,
                        errorCount);
        
        if(!result4)
        {
            TTTestLog("Expected a value of %i, but returned value was %i", TESTDURATIONINSAMPLES, return4);
        }
        
        // TEST 5: reports correct duration in seconds
        TTFloat64 return5 = this->getLengthInSeconds();
        TTBoolean result5 = TTTestFloatEquivalence(return5, TESTDURATIONINSECONDS, true, 0.0000001);
        
        TTTestAssertion("reports the correct duration in seconds",
                        result5,
                        testAssertionCount,
                        errorCount);
        
        if(!result5)
        {
            TTTestLog("Expected a value of %f, but returned value was %f", TESTDURATIONINSECONDS, return5);
        }
        
        TTTestLog("\n");
		TTTestLog("Testing TTSoundfile Metadata...");
        
        // TEST 6: reports correct title from metadata
        TTSymbol return6 = this->getTitle();
        
        TTTestLog("Expected metadata title:");
        TTTestLog(TESTTITLE);
        TTTestLog("Returned metadata title:");
        TTTestLog(return6.c_str());
        
        // TEST 7: reports correct artist from metadata
        TTSymbol return7 = this->getArtist();
        
        TTTestLog("Expected metadata artist:");
        TTTestLog(TESTARTIST);
        TTTestLog("Returned metadata artist:");
        TTTestLog(return7.c_str());
        
        // TEST 8: reports correct title from metadata
        TTSymbol return8 = this->getDate();
        
        TTTestLog("Expected metadata date:");
        TTTestLog(TESTDATE);
        TTTestLog("Returned metadata date:");
        TTTestLog(return8.c_str());
        
        // TEST 9: reports correct artist from metadata
        TTSymbol return9 = this->getAnnotation();
        
        TTTestLog("Expected metadata comment:");
        TTTestLog(TESTANNOTATION);
        TTTestLog("Returned metadata comment:");
        TTTestLog(return9.c_str());
        
        TTTestLog("\n");
		TTTestLog("Testing peek method on first 10 sample values...");
        
        TTSampleValue return10;
        TTErr error10;
        
        for (int channel=0;channel<return2;channel++)
        {
            TTTestLog("Channel %i", channel);
            for (int sample=0;sample<10;sample++)
            {
                error10 = this->peek(sample,channel,return10);
                if (error10 == kTTErrNone)
                {
                    TTTestLog("peek sample %i returned the value %f", sample, return10);
                } else {
                    TTTestLog("peek returned an error for sample %i", sample);
                }
            }
        }
        
        TTTestLog("\n");
		TTTestLog("Testing peeki between samples 2 & 3...");
        
        TTSampleValue return11;
        TTErr error11;
        TTFloat64 floatIndex;
        
        for (int channel=0;channel<return2;channel++)
        {
            TTTestLog("Channel %i", channel);
            for (int sample=0;sample<11;sample++)
            {
                floatIndex = 2 + sample*0.1;
                
                error11 = this->peeki(floatIndex,channel,return11);
                if (error11 == kTTErrNone)
                {
                    TTTestLog("peek sample %f returned the value %f", floatIndex, return11);
                } else {
                    TTTestLog("peek returned an error for sample %f", floatIndex);
                }
            }
        }
        
        
    }
    
    return TTTestFinish(testAssertionCount, errorCount, returnedTestInfo);
}
