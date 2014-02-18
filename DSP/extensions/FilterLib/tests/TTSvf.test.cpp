/** @file
 *
 * @ingroup dspFilterLib
 *
 * @brief Unit test for the FilterLib #TTSvf class.
 *
 * @details Currently this test is just a stub
 *
 * @authors Trond Lossius, Tim Place
 *
 * @copyright Copyright © 2012 by Trond Lossius & Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#include "TTSvf.h"


TTErr TTSvf::test(TTValue& returnedTestInfo)
{
	int					errorCount = 0;
	int					testAssertionCount = 0;
	int					badSampleCount = 0;
	TTAudioSignalPtr	input = NULL;
	TTAudioSignalPtr	output = NULL;
	
	// create 1 channel audio signal objects
	TTObjectBaseInstantiate(kTTSym_audiosignal, &input, 1);
	TTObjectBaseInstantiate(kTTSym_audiosignal, &output, 1);
	input->allocWithVectorSize(128);
	output->allocWithVectorSize(128);
	
	// create an impulse
	input->clear();						// set all samples to zero
	input->mSampleVectors[0][0] = 1.0;	// set the first sample to 1
	
	// setup the filter
	//this->setAttributeValue(TT("linearGain"), 0.5);
	//this->setAttributeValue(TT("delayInSamples"), 1);
	this->process(input, output);
	
	/// The following values are not necsessarily to be trusted. They were calculated from this filter unit itself at a time when the filter was assumed to work. As such, if this test fails in the future, it should be considered an indication that something has changed in the code or compiler that causes the calculated impulse response to differ from earlier results, but this test is not able to say anything meaningful about whether the old or new behaviour is to be trusted (or eventually none of them).
	TTFloat64 expectedImpulseResponse[128] = {
		5.0000000000000000e+05,
		5.0087319869171590e+17,
		5.0174842408388438e+29,
		5.0262517884414260e+41,
		5.0350346564490692e+53,
		5.0438328716326373e+65,
		5.0526464608097724e+77,
		5.0614754508449776e+89,
		5.0703198686496978e+101,
		5.0791797411824051e+113,
		5.0880550954486772e+125,
		5.0969459585012814e+137,
		5.1058523574402592e+149,
		5.1147743194130052e+161,
		5.1237118716143473e+173,
		5.1326650412866394e+185,
		5.1416338557198395e+197,
		5.1506183422515868e+209,
		5.1596185282672929e+221,
		5.1686344412002213e+233,
		5.1776661085315740e+245,
		5.1867135577905743e+257,
		5.1957768165545460e+269,
		5.2048559124490098e+281,
		5.2139508731477499e+293,
		5.2230617263729118e+305,
		5.2230617263729118e+305,
		5.2230617263729118e+305,
		5.2230617263729118e+305,
		5.2230617263729118e+305,
		5.2230617263729118e+305,
		5.2230617263729118e+305,
		5.2230617263729118e+305,
		5.2230617263729118e+305,
		5.2230617263729118e+305,
		5.2230617263729118e+305,
		5.2230617263729118e+305,
		5.2230617263729118e+305,
		5.2230617263729118e+305,
		5.2230617263729118e+305,
		5.2230617263729118e+305,
		5.2230617263729118e+305,
		5.2230617263729118e+305,
		5.2230617263729118e+305,
		5.2230617263729118e+305,
		5.2230617263729118e+305,
		5.2230617263729118e+305,
		5.2230617263729118e+305,
		5.2230617263729118e+305,
		5.2230617263729118e+305,
		5.2230617263729118e+305,
		5.2230617263729118e+305,
		5.2230617263729118e+305,
		5.2230617263729118e+305,
		5.2230617263729118e+305,
		5.2230617263729118e+305,
		5.2230617263729118e+305,
		5.2230617263729118e+305,
		5.2230617263729118e+305,
		5.2230617263729118e+305,
		5.2230617263729118e+305,
		5.2230617263729118e+305,
		5.2230617263729118e+305,
		5.2230617263729118e+305,
		5.2230617263729118e+305,
		5.2230617263729118e+305,
		5.2230617263729118e+305,
		5.2230617263729118e+305,
		5.2230617263729118e+305,
		5.2230617263729118e+305,
		5.2230617263729118e+305,
		5.2230617263729118e+305,
		5.2230617263729118e+305,
		5.2230617263729118e+305,
		5.2230617263729118e+305,
		5.2230617263729118e+305,
		5.2230617263729118e+305,
		5.2230617263729118e+305,
		5.2230617263729118e+305,
		5.2230617263729118e+305,
		5.2230617263729118e+305,
		5.2230617263729118e+305,
		5.2230617263729118e+305,
		5.2230617263729118e+305,
		5.2230617263729118e+305,
		5.2230617263729118e+305,
		5.2230617263729118e+305,
		5.2230617263729118e+305,
		5.2230617263729118e+305,
		5.2230617263729118e+305,
		5.2230617263729118e+305,
		5.2230617263729118e+305,
		5.2230617263729118e+305,
		5.2230617263729118e+305,
		5.2230617263729118e+305,
		5.2230617263729118e+305,
		5.2230617263729118e+305,
		5.2230617263729118e+305,
		5.2230617263729118e+305,
		5.2230617263729118e+305,
		5.2230617263729118e+305,
		5.2230617263729118e+305,
		5.2230617263729118e+305,
		5.2230617263729118e+305,
		5.2230617263729118e+305,
		5.2230617263729118e+305,
		5.2230617263729118e+305,
		5.2230617263729118e+305,
		5.2230617263729118e+305,
		5.2230617263729118e+305,
		5.2230617263729118e+305,
		5.2230617263729118e+305,
		5.2230617263729118e+305,
		5.2230617263729118e+305,
		5.2230617263729118e+305,
		5.2230617263729118e+305,
		5.2230617263729118e+305,
		5.2230617263729118e+305,
		5.2230617263729118e+305,
		5.2230617263729118e+305,
		5.2230617263729118e+305,
		5.2230617263729118e+305,
		5.2230617263729118e+305,
		5.2230617263729118e+305,
		5.2230617263729118e+305,
		5.2230617263729118e+305,
		5.2230617263729118e+305,
		5.2230617263729118e+305
	};
	
	//TTTestLog("\nRESULTING VALUES");
	for (int i=0; i<128; i++) {
		TTBoolean result = !TTTestFloatEquivalence(output->mSampleVectors[0][i], expectedImpulseResponse[i]);
		//TTTestLog("%.16e,", output->mSampleVectors[0][i]);
		badSampleCount += result;
		if (result)
			TTTestLog("BAD SAMPLE @ i=%i  ( value=%.10f   expected=%.10f )", i, output->mSampleVectors[0][i], expectedImpulseResponse[i]);
	}
	
	TTTestAssertion("Produces correct impulse response for a delay of 1 sample and alpha = 0.5",
					badSampleCount == 0,
					testAssertionCount,
					errorCount);
	if (badSampleCount)
		TTTestLog("badSampleCount is %i", badSampleCount);
	
	TTObjectBaseRelease(&input);
	TTObjectBaseRelease(&output);
	
	// Wrap up the test results to pass back to whoever called this test
	return TTTestFinish(testAssertionCount, errorCount, returnedTestInfo);
}

