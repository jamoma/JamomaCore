/** @file
 *
 * @ingroup dspFilterLib
 *
 * @brief Unit test for the FilterLib #TTMirror5 class.
 *
 * @details Currently this test is just a stub
 *
 * @authors Trond Lossius, Tim Place
 *
 * @copyright Copyright © 2012 by Trond Lossius & Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#include "TTMirror5.h"


TTErr TTMirror5::test(TTValue& returnedTestInfo)
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
		7.0674300000000009e-02,
		2.9499740000000008e-01,
		4.9001028663902008e-01,
		3.2595306798647988e-01,
		-6.9262268002024285e-02,
		-1.9231061515606962e-01,
		9.7901246149110100e-03,
		1.1346226292688229e-01,
		-1.3838204081432742e-03,
		-6.6942145123093336e-02,
		1.9560107734252700e-04,
		3.9495517523470428e-02,
		-2.7647938440890702e-05,
		-2.3302149962156432e-02,
		3.9079973915285613e-06,
		1.3748147306492493e-02,
		-5.5238996011132109e-07,
		-8.1113354204645771e-03,
		7.8079547525793074e-08,
		4.7856457191299143e-03,
		-1.1036434737947830e-08,
		-2.8235060889289102e-03,
		1.5599846034399431e-09,
		1.6658539102363946e-03,
		-2.2050164244277675e-10,
		-9.8284514459913972e-04,
		3.1167600196645400e-11,
		5.7987352451874057e-04,
		-4.4054977573835213e-12,
		-3.4212236412372947e-04,
		6.2271163772243082e-13,
		2.0185041579670696e-04,
		-8.8019856761032695e-14,
		-1.1909069569789498e-04,
		1.2441758262586756e-14,
		7.0262891190140414e-05,
		-1.7587966371346617e-15,
		-4.1454740435148659e-05,
		2.4871020593324766e-16,
		2.4458081292087447e-05,
		-3.5221112477168146e-17,
		-1.4430140780308876e-05,
		5.0194927135191785e-18,
		8.5137080236501794e-06,
		-7.3485316829127910e-19,
		-5.0230434626718830e-06,
		1.1950398800020321e-19,
		2.9635695231504051e-06,
		-2.6513228832670869e-20,
		-1.7484906080972187e-06,
		9.6589535937215692e-21,
		1.0316003666261971e-06,
		-4.9914184530848174e-21,
		-6.0863885198754988e-07,
		2.9266329760366538e-21,
		3.5909375775062412e-07,
		-1.7723171778773028e-21,
		-2.1186344978532796e-07,
		1.0805453189708951e-21,
		1.2499833368340461e-07,
		-6.5922640038317494e-22,
		-7.3748366881873580e-08,
		4.0190838638882530e-22,
		4.3511152968797626e-08,
		-2.4479756585757947e-22,
		-2.5671353993595163e-08,
		1.4895992104184382e-22,
		1.5145965365180379e-08,
		-9.0559076874096129e-23,
		-8.9360408064365251e-09,
		5.5006797979493654e-23,
		5.2722176083853564e-09,
		-3.3384399540656698e-23,
		-3.1105809734157971e-09,
		2.0245716674136402e-23,
		1.8352265992942586e-09,
		-1.2268830665260494e-23,
		-1.0827741504052964e-09,
		7.4296828674525858e-24,
		6.3883111831354280e-10,
		-4.4962438451158232e-24,
		-3.7690703788317506e-10,
		2.7192939589807101e-24,
		2.2237319243447632e-10,
		-1.6436236973575789e-24,
		-1.3119902719574039e-10,
		9.9288932759863952e-25,
		7.7406743810545411e-11,
		-5.9946375669920988e-25,
		-4.5669576333153981e-11,
		3.6174231588718040e-25,
		2.6944812554763918e-11,
		-2.1818251521322291e-25,
		-1.5897299294285429e-11,
		1.3153281833419012e-25,
		9.3793239176720739e-12,
		-7.9259362909325056e-26,
		-5.5337523389421523e-12,
		4.7739456955314446e-26,
		3.2648851044637075e-12,
		-2.8742364821490316e-26,
		-1.9262652342310445e-12,
		1.7297879530636474e-26,
		1.1364864716170984e-12,
		-1.0406277116216493e-26,
		-6.7052110852443567e-13,
		6.2580130465599618e-27,
		3.9560396731965272e-13,
		-3.7620291000851088e-27,
		-2.3340428357796508e-13,
		2.2607792704891021e-27,
		1.3770731360872481e-13,
		-1.3581567810419338e-27,
		-8.1246598951116872e-14,
		8.1564748482217489e-28,
		4.7935070898844410e-14,
		-4.8968950748891102e-28,
		-2.8281442567949531e-14,
		2.9390664139034975e-28,
		1.6685904051588870e-14,
		-1.7634886737622909e-28,
		-9.8445966237363652e-15,
		1.0578273101095320e-28,
		5.8082608161020127e-15,
		-6.3436563790738660e-29,
		-3.4268436785439442e-15,
		3.8032165947872505e-29,
		2.0218199507537990e-15
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

