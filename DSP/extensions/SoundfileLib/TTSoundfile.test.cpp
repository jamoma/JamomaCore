/** @file
 *
 * @ingroup dspSoundFileLib
 *
 * @brief Tests for the #TTSoundfile class
 *
 * @details Tests the core functions of the TTSoundfile class in order to ensure that things are working after a build. It also demostrate how to make calls to common methods within the class.@n 
 * IMPORTANT NOTE: Because POSIX filepaths will be specific to your system, it is important to change the TESTFILE definition to match a local absolute address.
 *
 * @authors Nathan Wolek
 *
 * @copyright Copyright © 2013 by Nathan Wolek @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTSoundfile.h"
#include "TTUnitTest.h"

#define TESTFILE "/Volumes/Storage/Audio/200604femf15/pitched/ding_b2.aiff"

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
        TTBoolean result2 = { soundfile->getNumChannels() == 1 };
        
        TTTestAssertion("reports the correct number of channels",
                        result2,
                        testAssertionCount,
                        errorCount);
        
        // TEST 4: reports correct number of channels
        TTBoolean result4 = { soundfile->getDurationInSamples() == 39493 };
        
        TTTestAssertion("reports the correct number of samples",
                        result4,
                        testAssertionCount,
                        errorCount);
        
    }
    
    return TTTestFinish(testAssertionCount, errorCount, returnedTestInfo);
}
