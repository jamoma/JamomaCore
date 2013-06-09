/** @file
 *
 * @ingroup dspSoundFileLib
 *
 * @brief Tests for the #TTSoundfile class
 *
 * @details Tests the core functions of the TTSoundfile class in order to ensure that things are working after a build. It also demostrate how to make calls to common methods within the class.@n 
 * IMPORTANT NOTE: Because POSIX filepaths will be specific to your system, it is important to change the TESTFILE definitions in this file to match a local absolute address. The related TEST definitions should also be set to match the attribution of the file which can be obtained via your sound file editor of choice. 
 *
 * @authors Nathan Wolek
 *
 * @copyright Copyright © 2013 by Nathan Wolek @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTSoundfile.h"
#include "TTUnitTest.h"

/* */
 #define TESTFILE "/Volumes/Storage/Audio/200604femf15/pitched/ding_b2.aiff"
 #define TESTNUMCHANNELS 1
 #define TESTSAMPLERATE 44100
 #define TESTDURATIONINSAMPLES 39493
 #define TESTDURATIONINSECONDS 0.89553288
 #define TESTTITLE ""
 #define TESTARTIST "Nathan Wolek"
 #define TESTDATE "2006"
 #define TESTANNOTATION "Yo Mama"
/* */

/* 
 #define TESTFILE "/Volumes/Storage/Audio/200604femf15/ambience/street.aiff"
 #define TESTNUMCHANNELS 1
 #define TESTSAMPLERATE 44100
 #define TESTDURATIONINSAMPLES 4750848
 #define TESTDURATIONINSECONDS 107.728980
 #define TESTTITLE "UF Street"
 #define TESTARTIST "MPG"
 #define TESTDATE "2006"
 #define TESTANNOTATION ""
 */

TTErr TTSoundfile::test(TTValue& returnedTestInfo)
{
    int errorCount = 0;
    int testAssertionCount = 0;
    
    {
        
        
		TTTestLog("\n");
		TTTestLog("Testing TTSoundfile Basics...");
		
		TTSoundfilePtr soundfile = NULL;
		TTErr err;
		
        // TEST 0: instantiate the object to a pointer
        TTBoolean result0 = { TTObjectBaseInstantiate("soundfile", (TTObjectBasePtr*)&soundfile, kTTValNONE) == kTTErrNone};
        
		TTTestAssertion("instantiates successfully",
						result0,
						testAssertionCount,
						errorCount);
        
        // TEST 1: set the filepath
        TTBoolean result1 = { soundfile->setFilePath(TT(TESTFILE)) == kTTErrNone };
        
        TTTestAssertion("setFilePath operates successfully",
                        result1,
                        testAssertionCount,
                        errorCount);
        
        // TEST 2: reports correct number of channels
        TTBoolean result2 = { soundfile->getNumChannels() == TESTNUMCHANNELS };
        
        TTTestAssertion("reports the correct number of channels",
                        result2,
                        testAssertionCount,
                        errorCount);
        
        if(!result2)
        {
            TTTestLog("Expected a value of %i, but returned value was %i", TESTNUMCHANNELS, soundfile->getNumChannels());
        }
        
        // TEST 3: reports correct sample rate
        TTBoolean result3 = TTTestFloatEquivalence(soundfile->getSampleRate(), TESTSAMPLERATE);
        
        TTTestAssertion("reports the correct sample rate",
                        result3,
                        testAssertionCount,
                        errorCount);
        
        if(!result3)
        {
            TTTestLog("Expected a value of %f, but returned value was %f", TESTSAMPLERATE, soundfile->getSampleRate());
        }
        
        // TEST 4: reports correct duration in samples
        TTBoolean result4 = { soundfile->getDurationInSamples() == TESTDURATIONINSAMPLES };
        
        TTTestAssertion("reports the correct duration in samples",
                        result4,
                        testAssertionCount,
                        errorCount);
        
        if(!result4)
        {
            TTTestLog("Expected a value of %i, but returned value was %i", TESTDURATIONINSAMPLES, soundfile->getDurationInSamples());
        }
        
        // TEST 5: reports correct duration in seconds
        TTFloat64 return5 = soundfile->getDurationInSeconds();
        TTBoolean result5 = TTTestFloatEquivalence(return5, TESTDURATIONINSECONDS);
        
        TTTestAssertion("reports the correct duration in seconds",
                        result5,
                        testAssertionCount,
                        errorCount);
        
        if(!result5)
        {
            TTTestLog("Expected a value of %f, but returned value was %f", TESTDURATIONINSECONDS, return5);
        }
        
    }
    
    return TTTestFinish(testAssertionCount, errorCount, returnedTestInfo);
}
