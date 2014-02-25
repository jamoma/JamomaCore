/** @file
 *
 * @ingroup dspFilterLib
 *
 * @brief Unit test for the FilterLib #TTHalfbandLinear33 class.
 *
 * @details Currently this test is just a stub
 *
 * @authors Trond Lossius, Tim Place
 *
 * @copyright Copyright © 2012 by Trond Lossius & Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#include "TTHalfbandLinear33.h"


TTErr TTHalfbandLinear33::test(TTValue& returnedTestInfo)
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
		0.0000000000000000e+00,
		-1.4033886144341021e-03,
		0.0000000000000000e+00,
		2.8696648020251339e-03,
		0.0000000000000000e+00,
		-5.7985191818626753e-03,
		0.0000000000000000e+00,
		1.0903029954258413e-02,
		0.0000000000000000e+00,
		-1.9971682303392909e-02,
		0.0000000000000000e+00,
		3.7485281415763530e-02,
		0.0000000000000000e+00,
		-7.9701634061165733e-02,
		0.0000000000000000e+00,
		2.9216925395010418e-01,
		5.0000000000000000e-01,
		3.4369037427197169e-01,
		0.0000000000000000e+00,
		-1.3023893952773802e-01,
		0.0000000000000000e+00,
		8.6104042704043690e-02,
		0.0000000000000000e+00,
		-6.5831676403848585e-02,
		0.0000000000000000e+00,
		5.3364446243041895e-02,
		0.0000000000000000e+00,
		-4.4382106227734967e-02,
		0.0000000000000000e+00,
		3.7295412888824341e-02,
		0.0000000000000000e+00,
		-3.1244797047627053e-02,
		0.0000000000000000e+00,
		2.6798062990289070e-02,
		0.0000000000000000e+00,
		-2.2131648330448058e-02,
		0.0000000000000000e+00,
		1.8346990400433229e-02,
		0.0000000000000000e+00,
		-1.5243355223767449e-02,
		0.0000000000000000e+00,
		1.2680069280636953e-02,
		0.0000000000000000e+00,
		-1.0553809725476822e-02,
		0.0000000000000000e+00,
		8.7857616982298780e-03,
		0.0000000000000000e+00,
		-7.3136670275350379e-03,
		0.0000000000000000e+00,
		6.0882749139391252e-03,
		0.0000000000000000e+00,
		-5.0669324833186669e-03,
		0.0000000000000000e+00,
		4.2169077154520593e-03,
		0.0000000000000000e+00,
		-3.5095610771282738e-03,
		0.0000000000000000e+00,
		2.9209172646183241e-03,
		0.0000000000000000e+00,
		-2.4310262000329379e-03,
		0.0000000000000000e+00,
		2.0233040542710959e-03,
		0.0000000000000000e+00,
		-1.6839620729024551e-03,
		0.0000000000000000e+00,
		1.4015316044449066e-03,
		0.0000000000000000e+00,
		-1.1664674133319290e-03,
		0.0000000000000000e+00,
		9.7082783948693727e-04,
		0.0000000000000000e+00,
		-8.0800107046215914e-04,
		0.0000000000000000e+00,
		6.7248368858447154e-04,
		0.0000000000000000e+00,
		-5.5969525911386462e-04,
		0.0000000000000000e+00,
		4.6582363007229645e-04,
		0.0000000000000000e+00,
		-3.8769606747829008e-04,
		0.0000000000000000e+00,
		3.2267198896539023e-04,
		0.0000000000000000e+00,
		-2.6855369234410987e-04,
		0.0000000000000000e+00,
		2.2351207385297981e-04,
		0.0000000000000000e+00,
		-1.8602480145583968e-04,
		0.0000000000000000e+00,
		1.5482486591515381e-04,
		0.0000000000000000e+00,
		-1.2885775959743082e-04,
		0.0000000000000000e+00,
		1.0724583623124941e-04,
		0.0000000000000000e+00,
		-8.9258647845389630e-05,
		0.0000000000000000e+00,
		7.4288256705464873e-05,
		0.0000000000000000e+00,
		-6.1828687935307859e-05,
		0.0000000000000000e+00,
		5.1458828369187624e-05,
		0.0000000000000000e+00,
		-4.2828193604805050e-05,
		0.0000000000000000e+00,
		3.5645082207555665e-05,
		0.0000000000000000e+00,
		-2.9666716680464188e-05,
		0.0000000000000000e+00,
		2.4691037980432186e-05,
		0.0000000000000000e+00,
		-2.0549876250725695e-05,
		0.0000000000000000e+00,
		1.7103266952687490e-05,
		0.0000000000000000e+00,
		-1.4234720291507337e-05,
		0.0000000000000000e+00,
		1.1847284050344966e-05,
		0.0000000000000000e+00,
		-9.8602667629068172e-06,
		0.0000000000000000e+00,
		8.2065104729977065e-06,
		0.0000000000000000e+00,
		-6.8301209047192577e-06,
		0.0000000000000000e+00,
		5.6845783267542965e-06,
		0.0000000000000000e+00,
		-4.7311652610242063e-06
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

