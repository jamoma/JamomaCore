/** @file
 *
 * @ingroup dspSoundFileLib
 *
 * @brief Tests for the #TTSoundfileLoader class
 *
 * @details Tests the core functions of the TTSoundfileLoader class in order to ensure that things are working after a build. It also demostrate how to make calls to common methods within the class.@n 
 * IMPORTANT NOTE: Because POSIX filepaths will be specific to your system, it is important to change the TESTFILE definitions in this file to match a local absolute address. The related TEST definitions should also be set to match the attribution of the file which can be obtained via your sound file editor of choice. 
 *
 * @authors Nathan Wolek
 *
 * @copyright Copyright © 2013 by Nathan Wolek @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTSoundfileLoader.h"
#include "TTUnitTest.h"

/* 
 #define TESTFILE "/Users/nathanwolek/Desktop/geese_clip.aif"
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
 #define TESTFILE "/Volumes/Storage/Audio/200604femf15/pitched/ding_b2.aiff"
#define TESTNUMCHANNELS 1
#define TESTSAMPLERATE 44100
#define TESTDURATIONINSAMPLES 39493
#define TESTDURATIONINSECONDS 0.89553288
#define TESTTITLE ""
#define TESTARTIST ""
#define TESTDATE ""
#define TESTANNOTATION ""
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

TTErr TTSoundfileLoader::test(TTValue& returnedTestInfo)
{
    int errorCount = 0;
    int testAssertionCount = 0;
    
    {
        
        
		TTTestLog("\n");
		TTTestLog("Testing TTSoundfileLoader Basics...");
		
		TTSoundfileLoaderPtr testSoundfileLoader = NULL;
        TTSampleMatrixPtr testTargetMatrix = NULL;
        TTErr err;
		
        // TEST 0: instantiate the object to a pointer
        TTBoolean result0 = { TTObjectBaseInstantiate("soundfile.loader", (TTObjectBasePtr*)&testSoundfileLoader, kTTValNONE) == kTTErrNone};
        
		TTTestAssertion("instantiates successfully",
						result0,
						testAssertionCount,
						errorCount);
        
        // TEST 1: set the filepath
        TTBoolean result1 = { testSoundfileLoader->setFilePath(TT(TESTFILE)) == kTTErrNone };
        
        TTTestAssertion("setFilePath operates successfully",
                        result1,
                        testAssertionCount,
                        errorCount);
        
        // TEST 2: instantiate a TTSampleMatrix and set is as the target
        TTBoolean result2 = { TTObjectBaseInstantiate("samplematrix", (TTObjectBasePtr*)&testTargetMatrix, kTTValNONE) == kTTErrNone};
        
        // set up the samplematrix
        testTargetMatrix->setAttributeValue("numChannels", 1);
        testTargetMatrix->setAttributeValue("length", 1000);
        
        TTBoolean result2b = { testSoundfileLoader->setTargetMatrix(testTargetMatrix) == kTTErrNone };
        
        TTTestAssertion("setTargetMatrix operates successfully",
						result2b,
						testAssertionCount,
						errorCount);
        
        // pre-test
        TTSampleValue test13expect = TTRandom64();
        testTargetMatrix->poke(0,0,test13expect);
        TTTestLog("poking from here worked");
        
        
        // TEST 3: copy one second of samplevalues
        
        TTBoolean result3 = { testSoundfileLoader->copyUntilFull() == kTTErrNone };//false;//
        
        TTTestAssertion("copyUntilFull operates successfully",
						result3,
						testAssertionCount,
						errorCount);
        
        
        
        
        // TEST X prep
        TTValue loadInput, loadOuput;
        loadInput.append(TT(TESTFILE));
        loadInput.append(testTargetMatrix);
        
        /* // TEST X: use the public method to perform loading action
         // the final test, not working yet
        TTBoolean resultX = { load(loadInput, loadOuput) == kTTErrNone };
        
        TTTestAssertion("load operates successfully",
						resultX,
						testAssertionCount,
						errorCount);
        */
    }
    
    return TTTestFinish(testAssertionCount, errorCount, returnedTestInfo);
}
