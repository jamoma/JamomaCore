/** @file
 *
 * @ingroup dspFilterLib
 *
 * @brief Unit test for the FilterLib #TTHalfband5 class.
 *
 * @details Currently this test is just a stub
 *
 * @authors Trond Lossius, Tim Place
 *
 * @copyright Copyright © 2012 by Trond Lossius & Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#include "TTHalfband5.h"


TTErr TTHalfband5::test(TTValue& returnedTestInfo)
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
		5.8633130931362999e-02,
		2.7473511118309202e-01,
		4.9312431191437128e-01,
		3.4904123736642811e-01,
		-5.7826844691827237e-02,
		-1.9178776631069927e-01,
		6.7811379123270000e-03,
		1.0538166660185366e-01,
		-7.9519869415419712e-04,
		-5.7904087781039601e-02,
		9.3249978301583841e-05,
		3.1816571988958868e-02,
		-1.0935076374207048e-05,
		-1.7482258885702932e-02,
		1.2823155295866721e-06,
		9.6059806773903869e-03,
		-1.5037234868315085e-07,
		-5.2782003388509632e-03,
		1.7633603217591508e-08,
		2.9002139138817069e-03,
		-2.0678267324974936e-09,
		-1.5935811841700823e-03,
		2.4248631109979614e-10,
		8.7562540762450207e-04,
		-2.8435463255555136e-11,
		-4.8113008743691570e-04,
		3.3345204803138516e-12,
		2.6436665613102363e-04,
		-3.9102675183110701e-13,
		-1.4526160533051807e-04,
		4.5854245475557767e-14,
		7.9816926582228624e-05,
		-5.3771559574544760e-15,
		-4.3857024397722548e-05,
		6.3055897858357374e-16,
		2.4098128948135768e-05,
		-7.3943294302474394e-17,
		-1.3241204271741136e-05,
		8.6710537126665775e-18,
		7.2756474555896681e-06,
		-1.0168220552953214e-18,
		-3.9977516252808162e-06,
		1.1923892140405642e-19,
		2.1966454745078236e-06,
		-1.3982702581597083e-20,
		-1.2069912773374857e-06,
		1.6396992624821784e-21,
		6.6320576555267281e-07,
		-1.9228140309035384e-22,
		-3.6441181947276244e-07,
		2.2548121366125807e-23,
		2.0023344347856449e-07,
		-2.6441339046326361e-24,
		-1.1002231471331357e-07,
		3.1006769886076289e-25,
		6.0453985730766682e-08,
		-3.6360479969779087e-26,
		-3.3217664982406486e-08,
		4.2638575655905180e-27,
		1.8252117764368297e-08,
		-5.0000663783190304e-28,
		-1.0028995206641226e-08,
		5.8633909325097141e-29,
		5.5106342263025482e-09,
		-6.8757793649521737e-30,
		-3.0279294137051657e-09,
		8.0629694352080949e-31,
		1.6637570482576867e-09,
		-9.4551428518026836e-32,
		-9.1418495526945707e-10,
		1.1087692576089754e-32,
		5.0231741065572863e-10,
		-1.3002122610811441e-33,
		-2.7600845933140902e-10,
		1.5247103148506851e-34,
		1.5165842952377716e-10,
		-1.7879707904607984e-35,
		-8.3331790994136082e-11,
		2.0966865091708119e-36,
		4.5788337727720326e-11,
		-2.4587058922846931e-37,
		-2.5159328113028421e-11,
		2.8832324900808418e-38,
		1.3824301612849511e-11,
		-3.3810589619293951e-39,
		-7.5960420812696175e-12,
		3.9648414560292900e-40,
		4.1737989314981080e-12,
		-4.6494213642692257e-41,
		-2.2933782270020068e-12,
		5.4522026321254776e-42,
		1.2601430443605575e-12,
		-6.3935942158747018e-43,
		-6.9241107879799563e-13,
		7.4975289356277306e-44,
		3.8045926943594402e-13,
		-8.7920719148868685e-45,
		-2.0905103937824409e-13,
		1.0310134074870424e-45,
		1.1486732109304567e-13,
		-1.2090308822635693e-46,
		-6.3116172463603666e-14,
		1.4177853203964235e-47,
		3.4680457318478726e-14,
		-1.6625838464673590e-48,
		-1.9055878594545459e-14,
		1.9496499270857956e-49,
		1.0470637848727901e-14,
		-2.2862815889028757e-50,
		-5.7533037070563024e-15,
		2.6810369549621389e-51,
		3.1612690672564175e-15,
		-3.1439518162423572e-52,
		-1.7370232173447230e-15,
		3.6867947696726928e-53,
		9.5444253348962928e-16,
		-4.3233664089456659e-54,
		-5.2443775111229063e-16,
		5.0698501743993577e-55,
		2.8816292772089180e-16,
		-5.9452237815590213e-56,
		-1.5833694797248904e-16,
		6.9717416880080627e-57,
		8.7001438011226458e-17,
		-8.1755008642523690e-58,
		-4.7804699490206380e-17,
		9.5871042520636096e-59,
		2.6267258859032305e-17
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

