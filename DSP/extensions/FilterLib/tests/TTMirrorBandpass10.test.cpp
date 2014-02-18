/** @file
 *
 * @ingroup dspFilterLib
 *
 * @brief Unit test for the FilterLib #TTMirrorBandpass10 class.
 *
 * @details Currently this test is just a stub
 *
 * @authors Trond Lossius, Tim Place
 *
 * @copyright Copyright © 2012 by Trond Lossius & Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#include "TTMirrorBandpass10.h"


TTErr TTMirrorBandpass10::test(TTValue& returnedTestInfo)
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
		7.0674340568068483e-02,
		1.8063383296094595e-17,
		-2.9499743613703194e-01,
		-7.8072334799785811e-17,
		4.9001027517053730e-01,
		1.1988555087789236e-16,
		-3.2595302534515552e-01,
		-4.2912227071382815e-17,
		-6.9262306138510921e-02,
		-7.5842516636130114e-17,
		1.9231061355585977e-01,
		5.5281306856353159e-17,
		9.7901356251258020e-03,
		5.2229762020891319e-17,
		-1.1346227588183634e-01,
		-4.7955046899093863e-17,
		-1.3838227587553782e-03,
		-3.7569104065053919e-17,
		6.6942160966828645e-02,
		3.6771455031378096e-17,
		1.9560152187619680e-04,
		2.6722213457516155e-17,
		-3.9495531709373900e-02,
		-2.6582126635259222e-17,
		-2.7648017145388872e-05,
		-1.8569311554906375e-17,
		2.3302161186268298e-02,
		1.8545645968479090e-17,
		3.9080107595075424e-06,
		1.2630826227055644e-17,
		-1.3748155612802015e-02,
		-1.2626934885809215e-17,
		-5.5239216670711703e-07,
		-8.4440401394845668e-18,
		8.1113413147790806e-03,
		8.4434128929711957e-18,
		7.8079904223982118e-08,
		5.5677802124177996e-18,
		-4.7856497829844224e-03,
		-5.5676806383395305e-18,
		-1.1036491478752243e-08,
		-3.6307046225425840e-18,
		2.8235088324602962e-03,
		3.6306890052534564e-18,
		1.5599935106521893e-09,
		2.3460997263945534e-18,
		-1.6658557329721040e-03,
		-2.3460973008634038e-18,
		-2.2050302258663089e-10,
		-1.5045498550795711e-18,
		9.8284634040189363e-04,
		1.5045494814131608e-18,
		3.1167809689491794e-11,
		9.5869067868396263e-19,
		-5.7987430107044643e-04,
		-9.5869062151023546e-19,
		-4.4055276892824179e-12,
		-6.0752052985314669e-19,
		3.4212286419507015e-04,
		6.0752052115593662e-19,
		6.2271483117471075e-13,
		3.8315357982333146e-19,
		-2.0185073556280736e-04,
		-3.8315357850695449e-19,
		-8.8019481544539486e-14,
		-2.4064307570706350e-19,
		1.1909089894680439e-04,
		2.4064307550869392e-19,
		1.2441162892947217e-14,
		1.5058291885858300e-19,
		-7.0263019713123320e-05,
		-1.5058291882880569e-19,
		-1.7583704412391641e-15,
		-9.3919901393696682e-20,
		4.1454821341234235e-05,
		9.3919901389242560e-20,
		2.4843657902913466e-16,
		5.8407517534489307e-20,
		-2.4458132022365634e-05,
		-5.8407517533825402e-20,
		-3.5049909597195199e-17,
		-3.6227322301056862e-20,
		1.4430172478597806e-05,
		3.6227322300958387e-20,
		4.9132206344835089e-18,
		2.2416565339844048e-20,
		-8.5137277684030262e-06,
		-2.2416565339829619e-20,
		-6.6912229969540176e-19,
		-1.3840805516335918e-20,
		5.0230557272950955e-06,
		1.3840805516333896e-20,
		7.8945996319999218e-20,
		8.5289378064590276e-21,
		-2.9635771222509756e-06,
		-8.5289378064588019e-21,
		-1.5373812007322093e-21,
		-5.2461584897021281e-21,
		1.7484953057168026e-06,
		5.2461584897021417e-21,
		-5.6940543718754707e-21,
		3.2215415716556221e-21,
		-1.0316032645681854e-06,
		-3.2215415716556544e-21,
		4.4309958262377231e-21,
		-1.9752299888041326e-21,
		6.0864063631641403e-07,
		1.9752299888041571e-21,
		-2.8474246960033720e-21,
		1.2093520013698434e-21,
		-3.5909485448430771e-07,
		-1.2093520013698592e-21,
		1.7611254578217435e-21,
		-7.3945735156740534e-22,
		2.1186412280574273e-07,
		7.3945735156741550e-22,
		-1.0789660904233311e-21,
		4.5158397711785268e-22,
		-1.2499874607423079e-07,
		-4.5158397711785907e-22,
		6.5900489177975340e-22,
		-2.7546383194814131e-22,
		7.3748619224483956e-08,
		2.7546383194814531e-22,
		-4.0187815854221774e-22,
		1.6785084665280611e-22,
		-4.3511307179737990e-08,
		-1.6785084665280860e-22
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

