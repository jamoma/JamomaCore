/** @file
 *
 * @ingroup dspFilterLib
 *
 * @brief Unit test for the FilterLib #TTHalfband9 class.
 *
 * @details Currently this test is just a stub
 *
 * @authors Trond Lossius, Tim Place
 *
 * @copyright Copyright © 2012 by Trond Lossius & Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#include "TTHalfband9.h"


TTErr TTHalfband9::test(TTValue& returnedTestInfo)
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
		8.7103045030879483e-03,
		6.5442805786156327e-02,
		2.1752960418473016e-01,
		4.0159114675452823e-01,
		4.0353211792457022e-01,
		1.2030853381927020e-01,
		-1.8246245365496197e-01,
		-1.6374428214620290e-01,
		7.3759595434999117e-02,
		1.3557578188789043e-01,
		-2.9480119034157672e-02,
		-1.0385906449486471e-01,
		1.1768051181853019e-02,
		7.8235267984828785e-02,
		-4.6970087126678179e-03,
		-5.8706586396073894e-02,
		1.8747000302069827e-03,
		4.4013161078726402e-02,
		-7.4824100988214021e-04,
		-3.2990420653853873e-02,
		2.9864218340860499e-04,
		2.4727036940893864e-02,
		-1.1919575486409350e-04,
		-1.8533241881956156e-02,
		4.7574082755266522e-05,
		1.3890873825360833e-02,
		-1.8988036545967643e-05,
		-1.0411360218772368e-02,
		7.5786123658265979e-06,
		7.8034260100494678e-03,
		-3.0248185615325640e-06,
		-5.8487511897430174e-03,
		1.2072826644949055e-06,
		4.3837014883001159e-03,
		-4.8185747420545896e-07,
		-3.2856310826633872e-03,
		1.9232167600518332e-07,
		2.4626155853971947e-03,
		-7.6760513308280766e-08,
		-1.8457566806100649e-03,
		3.0637089514506656e-08,
		1.3834143437329480e-03,
		-1.2228048165209913e-08,
		-1.0368838246887998e-03,
		4.8805276317090555e-09,
		7.7715549991975530e-04,
		-1.9479437471995521e-09,
		-5.8248634675791178e-04,
		7.7747430781886294e-10,
		4.3657973750991743e-04,
		-3.1030993589390189e-10,
		-3.2722117568094997e-04,
		1.2385265383832053e-10,
		2.4525576570440455e-04,
		-4.9432770557625903e-11,
		-1.8382181558415425e-04,
		1.9729886516544118e-11,
		1.3777641389022791e-04,
		-7.8747037150572516e-12,
		-1.0326489358256396e-04,
		3.1429962127728598e-12,
		7.7398140549037774e-05,
		-1.2544503959705767e-12,
		-5.8010732908556275e-05,
		5.0068332553363524e-13,
		4.3479663835796007e-05,
		-1.9983555609105167e-13,
		-3.2588472382409617e-05,
		7.9759495556712181e-14,
		2.4425408076516508e-05,
		-3.1834060243826912e-14,
		-1.8307104202478260e-05,
		1.2705789881620152e-14,
		1.3721370108965461e-05,
		-5.0712066032225982e-15,
		-1.0284313432908937e-05,
		2.0240486150152843e-15,
		7.7082027484415434e-06,
		-8.0784971240215606e-16,
		-5.7773802790718454e-06,
		3.2243353889171191e-16,
		4.3302082182200926e-06,
		-1.2869149472504737e-16,
		-3.2455373036571498e-06,
		5.1364076055775978e-17,
		2.4325648695387360e-06,
		-2.0500720072451300e-17,
		-1.8232333480949888e-06,
		8.1823631565498873e-18,
		1.3665328654672198e-06,
		-3.2657909863192238e-18,
		-1.0242309764426052e-06,
		1.3034609393725535e-18,
		7.6767205503389109e-07,
		-5.2024469036363035e-19,
		-5.7537840353823865e-07,
		2.0764299847898359e-19,
		4.3125225815807068e-07,
		-8.2875646048798849e-20,
		-3.2322817301236335e-07,
		3.3077795824167722e-20,
		2.4226296756135623e-07,
		-1.3202196649436381e-20,
		-1.8157868141459877e-07,
		5.2693352754490783e-21,
		1.3609516087477989e-07,
		-2.1031268494457227e-21,
		-1.0200477649268290e-07,
		8.3941186385839346e-22,
		7.6453669332855475e-08,
		-3.3503080300264441e-22,
		-5.7302841645625260e-08,
		1.3371938590986161e-22,
		4.2949091774362909e-08,
		-5.3370836376407339e-23,
		-3.2190802956164986e-08,
		2.1301669583177287e-23,
		2.4127350594668349e-08,
		-8.5020426479852997e-24,
		-1.8083706936752792e-08,
		3.3933832700722577e-24,
		1.3553931472551566e-08,
		-1.3543862921382747e-24,
		-1.0158816386769628e-08,
		5.4057030471922016e-25,
		7.6141413721247876e-09,
		-2.1575547245305183e-25,
		-5.7068802730017340e-09
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

