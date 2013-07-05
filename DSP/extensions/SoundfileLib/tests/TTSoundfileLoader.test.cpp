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
		
        // establish our pointers
        // TODO: update this to new syntax style eventually
		TTSoundfileLoaderPtr testSoundfileLoader = NULL;
        TTSampleMatrixPtr testTargetMatrix = NULL;
        TTObjectBase* objectBasePtrToSampleMatrix = NULL;
        TTObjectBase* ptrToNonSampleMatrix = NULL;
        TTSampleMatrixPtr testTargetMatrix2 = NULL;
        
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
                
        // set up the samplematrix first
        TTBoolean result2a = { TTObjectBaseInstantiate("samplematrix", (TTObjectBasePtr*)&testTargetMatrix, kTTValNONE) == kTTErrNone};
        
        if (!result2a)
        {
            TTTestLog("samplematrix was not created -- ending test");
            return kTTErrGeneric;
        }
        
        testTargetMatrix->setAttributeValue("numChannels", 1);
        testTargetMatrix->setAttributeValue("lengthInSeconds", 0.5);
        
        TTInt32 lengthReturn, channelsReturn;
        
        testTargetMatrix->getAttributeValue("numChannels", channelsReturn);
        testTargetMatrix->getAttributeValue("lengthInSamples", lengthReturn);
        
        TTTestLog("new samplematrix has %i samples and %i channels", lengthReturn, channelsReturn);
        
        // now for the actual test
        TTBoolean result2b = { testSoundfileLoader->setTargetMatrix(testTargetMatrix) == kTTErrNone };
        
        TTTestAssertion("setTargetMatrix operates successfully",
						result2b,
						testAssertionCount,
						errorCount);
        
        // TEST 3: set the target via an objectBasePtr
        objectBasePtrToSampleMatrix = (TTObjectBase*)(TTPtr(testTargetMatrix)); // is there a better syntax for this?
        
        TTBoolean result3 = { testSoundfileLoader->setTargetMatrix(objectBasePtrToSampleMatrix) == kTTErrNone };
        
        TTTestAssertion("setTargetMatrix via ObjectBasePtr operates successfully",
						result3,
						testAssertionCount,
						errorCount);
        
        // TEST 4: set the target to a non-SampleMatrix, should FAIL
        TTObjectBaseInstantiate("delay", (TTObjectBasePtr*)&ptrToNonSampleMatrix, kTTValNONE);
        
        TTBoolean result4 = { testSoundfileLoader->setTargetMatrix(ptrToNonSampleMatrix) == kTTErrInvalidValue };
        
        TTTestAssertion("setTargetMatrix returns error when not a SampleMatrix",
						result4,
						testAssertionCount,
						errorCount);
        
        // TEST 5: copy samplevalues until samplematrix is filled
        
        TTBoolean result5 = { testSoundfileLoader->copyUntilFilled() == kTTErrNone };
        
        TTTestAssertion("copyUntilFilled operates successfully",
						result5,
						testAssertionCount,
						errorCount);
        
        // TEST 6: compare 5 random sample values for equivalence
        
        TTUInt32 randomIndex;
        TTSampleValue randomValueSoundFile, randomValueSampleMatrix;
        TTBoolean result6 = true;
        
        for (int i = 0; i<5; i++)
        {
            randomIndex = lengthReturn * TTRandom64();
            //TTTestLog("let's look at index %i", randomIndex);
            
            testSoundfileLoader->peek(randomIndex,0,randomValueSoundFile);
            testTargetMatrix->peek(randomIndex,0,randomValueSampleMatrix);
            //TTTestLog("Does %f = %f?", randomValueSoundFile, randomValueSampleMatrix);
            
            if (result6) // allows test to keep variable false once it is false
                result6 = TTTestFloatEquivalence(randomValueSoundFile, randomValueSampleMatrix, true, 0.0000001);
        }
        
        TTTestAssertion("comparing 5 random values for equivalence",
						result6,
						testAssertionCount,
						errorCount);
        
        // TEST 7: use the public method to perform loading action
        // the method essentially packages tests 1, 3 & 5 above.
        // because it uses the same TargetMatrix, we are also copying values twice.
        
        // set up another samplematrix first
        TTBoolean result7a = { TTObjectBaseInstantiate("samplematrix", (TTObjectBasePtr*)&testTargetMatrix2, kTTValNONE) == kTTErrNone};
        
        if (!result7a)
        {
            TTTestLog("samplematrix was not created -- ending test");
            return kTTErrGeneric;
        }
        
        testTargetMatrix2->setAttributeValue("numChannels", 1);
        testTargetMatrix2->setAttributeValue("lengthInSeconds", 0.7);
        
        // we will re-use lengthReturn & channelsReturn here`
        
        testTargetMatrix2->getAttributeValue("numChannels", channelsReturn);
        testTargetMatrix2->getAttributeValue("lengthInSamples", lengthReturn);
        
        TTTestLog("new samplematrix has %i samples and %i channels", lengthReturn, channelsReturn);
        
        // set up TTValues passed to the public method
        TTValue loadInput, loadOuput;
        loadInput.append(TT(TESTFILE));
        objectBasePtrToSampleMatrix = (TTObjectBase*)(TTPtr(testTargetMatrix2)); // is there a better syntax for this?
        loadInput.append(objectBasePtrToSampleMatrix);
        
        
        TTBoolean result7b = { load(loadInput, loadOuput) == kTTErrNone };
        
        TTTestAssertion("load operates successfully",
						result7b,
						testAssertionCount,
						errorCount);
        
        // TEST 8: compare 5 random values for equivalence
        
        // we will re-use randomIndex, randomValueSoundFile, & randomValueSampleMatrix here
        TTBoolean result8 = true;
        
        for (int i = 0; i<5; i++)
        {
            randomIndex = lengthReturn * TTRandom64();
            //TTTestLog("let's look at index %i", randomIndex);
            
            testSoundfileLoader->peek(randomIndex,0,randomValueSoundFile);
            testTargetMatrix2->peek(randomIndex,0,randomValueSampleMatrix);
            //TTTestLog("Does %f = %f?", randomValueSoundFile, randomValueSampleMatrix);
            
            if (result8) // allows test to keep variable false once it is false
                result8 = TTTestFloatEquivalence(randomValueSoundFile, randomValueSampleMatrix, true, 0.0000001);
        }
        
        TTTestAssertion("comparing 5 random values for equivalence",
						result8,
						testAssertionCount,
						errorCount);
        
        // TEST 9: use optional load parameters to copy values 5 to 15
        
        // set up another samplematrix by re-using the first one
        testTargetMatrix = NULL;
        objectBasePtrToSampleMatrix = NULL;
        
        TTBoolean result9a = { TTObjectBaseInstantiate("samplematrix", (TTObjectBasePtr*)&testTargetMatrix, kTTValNONE) == kTTErrNone};
        
        if (!result9a)
        {
            TTTestLog("samplematrix was not created -- ending test");
            return kTTErrGeneric;
        }
        
        testTargetMatrix->setAttributeValue("numChannels", 1);
        testTargetMatrix->setAttributeValue("lengthInSamples", 10);
        
        // set up TTValues passed to the public method
        // we'll re-use loadInput, loadOuput here
        loadInput.clear();
        loadOuput.clear();
        loadInput.append(TT(TESTFILE));
        objectBasePtrToSampleMatrix = (TTObjectBase*)(TTPtr(testTargetMatrix)); // is there a better syntax for this?
        loadInput.append(objectBasePtrToSampleMatrix);
        
        TTColumnID copyChannel = 0;
        TTRowID startIndex = 5;
        TTRowID endIndex = 15;
        loadInput.append(TTUInt32(copyChannel));
        loadInput.append(TTUInt32(startIndex));
        loadInput.append(TTUInt32(endIndex));
        
        TTBoolean result9b = { load(loadInput, loadOuput) == kTTErrNone };
        
        TTTestAssertion("load operates with optional parameters",
						result9b,
						testAssertionCount,
						errorCount);
        
        // TEST 10: compare 10 copied values for equivalence
        
        // we will re-use randomIndex, randomValueSoundFile, & randomValueSampleMatrix here
        TTBoolean result10 = true;
        
        for (int i = 0; i<(endIndex-startIndex); i++)
        {
            testSoundfileLoader->peek(i+startIndex,0,randomValueSoundFile);
            testTargetMatrix->peek(i,0,randomValueSampleMatrix);
            //TTTestLog("Does %f = %f?", randomValueSoundFile, randomValueSampleMatrix);
            
            if (result10) // allows test to keep variable false once it is false
                result10 = TTTestFloatEquivalence(randomValueSoundFile, randomValueSampleMatrix, true, 0.0000001);
        }
        
        TTTestAssertion("comparing copied values for equivalence",
						result10,
						testAssertionCount,
						errorCount);
        
        // releasing objects, TODO: is this sufficient?
        testSoundfileLoader = NULL;
        testTargetMatrix = NULL;
        objectBasePtrToSampleMatrix = NULL;
        ptrToNonSampleMatrix = NULL;
        testTargetMatrix2 = NULL;
        
    }
    
    return TTTestFinish(testAssertionCount, errorCount, returnedTestInfo);
}
