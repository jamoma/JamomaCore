/** @file
 *
 * @ingroup dspFilterLib
 *
 * @brief Unit test for the FilterLib #TTHalfband3 class.
 *
 * @details Currently this test is just a stub
 *
 * @authors Trond Lossius, Tim Place
 *
 * @copyright Copyright © 2012 by Trond Lossius & Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#include "TTHalfband3.h"


TTErr TTHalfband3::test(TTValue& returnedTestInfo)
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
		1.6732703066028551e-01,
		5.0000000000000000e-01,
		4.4400332962082373e-01,
		0.0000000000000000e+00,
		-1.4858751749746485e-01,
		0.0000000000000000e+00,
		4.9725416192068023e-02,
		0.0000000000000000e+00,
		-1.6640812479531246e-02,
		0.0000000000000000e+00,
		5.5689154799491731e-03,
		0.0000000000000000e+00,
		-1.8636601825159878e-03,
		0.0000000000000000e+00,
		6.2368144900041200e-04,
		0.0000000000000000e+00,
		-2.0871752987828646e-04,
		0.0000000000000000e+00,
		6.9848169042566186e-05,
		0.0000000000000000e+00,
		-2.3374973445900554e-05,
		0.0000000000000000e+00,
		7.8225297969311240e-06,
		0.0000000000000000e+00,
		-2.6178413663441822e-06,
		0.0000000000000000e+00,
		8.7607124514007336e-07,
		0.0000000000000000e+00,
		-2.9318080019229514e-07,
		0.0000000000000000e+00,
		9.8114145485566412e-08,
		0.0000000000000000e+00,
		-3.2834297259742170e-08,
		0.0000000000000000e+00,
		1.0988130928579614e-08,
		0.0000000000000000e+00,
		-3.6772226415713450e-09,
		0.0000000000000000e+00,
		1.2305974913818090e-09,
		0.0000000000000000e+00,
		-4.1182444834182878e-10,
		0.0000000000000000e+00,
		1.3781872418869671e-10,
		0.0000000000000000e+00,
		-4.6121595775766970e-11,
		0.0000000000000000e+00,
		1.5434779340946107e-11,
		0.0000000000000000e+00,
		-5.1653115920344612e-12,
		0.0000000000000000e+00,
		1.7285925022605568e-12,
		0.0000000000000000e+00,
		-5.7848050124978363e-13,
		0.0000000000000000e+00,
		1.9359084913799975e-13,
		0.0000000000000000e+00,
		-6.4785963898529581e-14,
		0.0000000000000000e+00,
		2.1680885935210819e-14,
		0.0000000000000000e+00,
		-7.2555965312463478e-15,
		0.0000000000000000e+00,
		2.4281148464850376e-15,
		0.0000000000000000e+00,
		-8.1257849472899261e-16,
		0.0000000000000000e+00,
		2.7193269340281361e-16,
		0.0000000000000000e+00,
		-9.1003380253093222e-17,
		0.0000000000000000e+00,
		3.0454650795597902e-17,
		0.0000000000000000e+00,
		-1.0191772574846598e-17,
		0.0000000000000000e+00,
		3.4107180842280273e-18,
		0.0000000000000000e+00,
		-1.1414106589064267e-18,
		0.0000000000000000e+00,
		3.8197771263762468e-19,
		0.0000000000000000e+00,
		-1.2783039286812309e-19,
		0.0000000000000000e+00,
		4.2778960133521548e-20,
		0.0000000000000000e+00,
		-1.4316152747753782e-20,
		0.0000000000000000e+00,
		4.7909586595214552e-21,
		0.0000000000000000e+00,
		-1.6033137730278138e-21,
		0.0000000000000000e+00,
		5.3655546571496608e-22,
		0.0000000000000000e+00,
		-1.7956046572526379e-22,
		0.0000000000000000e+00,
		6.0090639107572724e-23,
		0.0000000000000000e+00,
		-2.0109576424697945e-23,
		0.0000000000000000e+00,
		6.7297514219615749e-24,
		0.0000000000000000e+00,
		-2.2521386450373288e-24,
		0.0000000000000000e+00,
		7.5368734421874993e-25,
		0.0000000000000000e+00,
		-2.5222453070871987e-25,
		0.0000000000000000e+00,
		8.4407963566348191e-26,
		0.0000000000000000e+00,
		-2.8247467815277213e-26,
		0.0000000000000000e+00,
		9.4531298264046359e-27,
		0.0000000000000000e+00,
		-3.1635282885969360e-27,
		0.0000000000000000e+00,
		1.0586875898814802e-27,
		0.0000000000000000e+00,
		-3.5429410162352438e-28,
		0.0000000000000000e+00,
		1.1856596001023556e-28,
		0.0000000000000000e+00,
		-3.9678580051797744e-29,
		0.0000000000000000e+00,
		1.3278597961767507e-29,
		0.0000000000000000e+00,
		-4.4437367365485529e-30,
		0.0000000000000000e+00,
		1.4871145463253936e-30,
		0.0000000000000000e+00
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

