/* 
 * Unit tests for the Phasor Object for Jamoma DSP
 * Copyright © 2011, Nils Peters
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTPhasor.h"


TTErr TTPhasor::test(TTValue& returnedTestInfo)
{
	int					errorCount = 0;
	int					testAssertionCount = 0;
	int					badSampleCount = 0;
	int					badSampleCountTotal = 0;
	TTAudioSignalPtr	output = NULL;
	
	/*0.  We assume that have an object
	
	1.  We set the frequency and gain
	
	2.  We process N vectors, each containing M samples
	
	3.  We check to see that several of the samples are what we expect
	
	4.  Optionally go back to #1 with some different settings and repeat
	*/
	
	// create 1 channel audio signal objects
	TTObjectInstantiate(kTTSym_audiosignal, &output, 1);
	output->allocWithVectorSize(64);
	
	// setup the generator
	this->setAttributeValue(TT("frequency"), sr/64.0);
	this->setAttributeValue(TT("gain"), 0);
	this->setAttributeValue(TT("phase"), 0);
	this->process(output);
	// created with Octave: linspace(0,1,64) 
	TTFloat64 expectedSignalTest1[64] = {
		0.0,
		1.5873015873015872e-02,
		3.1746031746031744e-02,
		4.7619047619047616e-02,
		6.3492063492063489e-02,
		7.9365079365079361e-02,
		9.5238095238095233e-02,
		1.1111111111111110e-01,
		1.2698412698412698e-01,
		1.4285714285714285e-01,
		1.5873015873015872e-01,
		1.7460317460317459e-01,
		1.9047619047619047e-01,
		2.0634920634920634e-01,
		2.2222222222222221e-01,
		2.3809523809523808e-01,
		2.5396825396825395e-01,
		2.6984126984126983e-01,
		2.8571428571428570e-01,
		3.0158730158730157e-01,
		3.1746031746031744e-01,
		3.3333333333333331e-01,
		3.4920634920634919e-01,
		3.6507936507936506e-01,
		3.8095238095238093e-01,
		3.9682539682539680e-01,
		4.1269841269841268e-01,
		4.2857142857142855e-01,
		4.4444444444444442e-01,
		4.6031746031746029e-01,
		4.7619047619047616e-01,
		4.9206349206349204e-01,
		5.0793650793650791e-01,
		5.2380952380952384e-01,
		5.3968253968253965e-01,
		5.5555555555555558e-01,
		5.7142857142857140e-01,
		5.8730158730158732e-01,
		6.0317460317460314e-01,
		6.1904761904761907e-01,
		6.3492063492063489e-01,
		6.5079365079365081e-01,
		6.6666666666666663e-01,
		6.8253968253968256e-01,
		6.9841269841269837e-01,
		7.1428571428571430e-01,
		7.3015873015873012e-01,
		7.4603174603174605e-01,
		7.6190476190476186e-01,
		7.7777777777777779e-01,
		7.9365079365079361e-01,
		8.0952380952380953e-01,
		8.2539682539682535e-01,
		8.4126984126984128e-01,
		8.5714285714285710e-01,
		8.7301587301587302e-01,
		8.8888888888888884e-01,
		9.0476190476190477e-01,
		9.2063492063492058e-01,
		9.3650793650793651e-01,
		9.5238095238095233e-01,
		9.6825396825396826e-01,
		9.8412698412698407e-01,
		1.0,
	};
	
	for (int i=0; i<64; i++) {
		TTBoolean result = !TTTestFloatEquivalence(output->mSampleVectors[0][i], expectedSignalTest1[i]);
		badSampleCount += result;
		if (result)
			TTTestLog("BAD SAMPLE @ i=%i  ( value=%.10f   expected=%.10f )", i, output->mSampleVectors[0][i], expectedSignalTest1[i]);
	}

	TTTestAssertion("Test 1: Produces correct ramp from 0 to 1 when a positive Frequency is defined", 
					badSampleCount == 0, 
					testAssertionCount, 
					errorCount);
	if (badSampleCount)
		TTTestLog("badSampleCount is %i", badSampleCount);
	
	badSampleCountTotal += badSampleCount;
	//reinitializing for next test
	badSampleCount = 0;
	
	// Second test: now with a negative Frequency: ramp should go from 1 to 0
	
	// setup the generator
	this->setAttributeValue(TT("frequency"), sr/-64.0);
	this->setAttributeValue(TT("gain"), 0);
	this->setAttributeValue(TT("phase"), 0);
	this->process(output);
	// created with Octave: linspace(1,0,64) 
	TTFloat64 expectedSignalTest2[64] = {
		1.0,
		9.8412698412698418e-01,
		9.6825396825396826e-01,
		9.5238095238095233e-01,
		9.3650793650793651e-01,
		9.2063492063492069e-01,
		9.0476190476190477e-01,
		8.8888888888888884e-01,
		8.7301587301587302e-01,
		8.5714285714285721e-01,
		8.4126984126984128e-01,
		8.2539682539682535e-01,
		8.0952380952380953e-01,
		7.9365079365079372e-01,
		7.7777777777777779e-01,
		7.6190476190476186e-01,
		7.4603174603174605e-01,
		7.3015873015873023e-01,
		7.1428571428571430e-01,
		6.9841269841269837e-01,
		6.8253968253968256e-01,
		6.6666666666666674e-01,
		6.5079365079365081e-01,
		6.3492063492063489e-01,
		6.1904761904761907e-01,
		6.0317460317460325e-01,
		5.8730158730158732e-01,
		5.7142857142857140e-01,
		5.5555555555555558e-01,
		5.3968253968253976e-01,
		5.2380952380952384e-01,
		5.0793650793650791e-01,
		4.9206349206349209e-01,
		4.7619047619047616e-01,
		4.6031746031746035e-01,
		4.4444444444444442e-01,
		4.2857142857142860e-01,
		4.1269841269841268e-01,
		3.9682539682539686e-01,
		3.8095238095238093e-01,
		3.6507936507936511e-01,
		3.4920634920634919e-01,
		3.3333333333333337e-01,
		3.1746031746031744e-01,
		3.0158730158730163e-01,
		2.8571428571428570e-01,
		2.6984126984126988e-01,
		2.5396825396825395e-01,
		2.3809523809523814e-01,
		2.2222222222222221e-01,
		2.0634920634920639e-01,
		1.9047619047619047e-01,
		1.7460317460317465e-01,
		1.5873015873015872e-01,
		1.4285714285714290e-01,
		1.2698412698412698e-01,
		1.1111111111111116e-01,
		9.5238095238095233e-02,
		7.9365079365079416e-02,
		6.3492063492063489e-02,
		4.7619047619047672e-02,
		3.1746031746031744e-02,
		1.5873015873015928e-02,
		0.0,
	};
	
	for (int i=0; i<64; i++) {
		TTBoolean result = !TTTestFloatEquivalence(output->mSampleVectors[0][i], expectedSignalTest2[i]);
		badSampleCount += result;
		if (result)
			TTTestLog("BAD SAMPLE @ i=%i  ( value=%.10f   expected=%.10f )", i, output->mSampleVectors[0][i], expectedSignalTest2[i]);
	}
	
	TTTestAssertion("Test 2: Produces correct ramp from 1 to 0 when a negative Frequency is defined", 
					badSampleCount == 0, 
					testAssertionCount, 
					errorCount);
	if (badSampleCount)
		TTTestLog("badSampleCount is %i", badSampleCount);
	
	badSampleCountTotal += badSampleCount;
	//reinitializing for next test
	badSampleCount = 0;
	
	// Third test: two Ramps within a block (we want to check if the jump from 0 to 1 is correct)
	
	// setup the generator
	this->setAttributeValue(TT("frequency"), (sr)/-32.0);
	this->setAttributeValue(TT("gain"), 0);
	this->setAttributeValue(TT("phase"), 0);
	this->process(output);
	// created with Octave: expectedSignalTest3 = [linspace(1,0,32)';linspace(1,0,32)']
	TTFloat64 expectedSignalTest3[64] = {
		1.0,
		9.6774193548387100e-01,
		9.3548387096774199e-01,
		9.0322580645161288e-01,
		8.7096774193548387e-01,
		8.3870967741935487e-01,
		8.0645161290322576e-01,
		7.7419354838709675e-01,
		7.4193548387096775e-01,
		7.0967741935483875e-01,
		6.7741935483870974e-01,
		6.4516129032258063e-01,
		6.1290322580645162e-01,
		5.8064516129032251e-01,
		5.4838709677419351e-01,
		5.1612903225806450e-01,
		4.8387096774193550e-01,
		4.5161290322580649e-01,
		4.1935483870967738e-01,
		3.8709677419354838e-01,
		3.5483870967741937e-01,
		3.2258064516129037e-01,
		2.9032258064516125e-01,
		2.5806451612903225e-01,
		2.2580645161290325e-01,
		1.9354838709677424e-01,
		1.6129032258064513e-01,
		1.2903225806451613e-01,
		9.6774193548387122e-02,
		6.4516129032258118e-02,
		3.2258064516129004e-02,
		0.0,
		1.0,
		9.6774193548387100e-01,
		9.3548387096774199e-01,
		9.0322580645161288e-01,
		8.7096774193548387e-01,
		8.3870967741935487e-01,
		8.0645161290322576e-01,
		7.7419354838709675e-01,
		7.4193548387096775e-01,
		7.0967741935483875e-01,
		6.7741935483870974e-01,
		6.4516129032258063e-01,
		6.1290322580645162e-01,
		5.8064516129032251e-01,
		5.4838709677419351e-01,
		5.1612903225806450e-01,
		4.8387096774193550e-01,
		4.5161290322580649e-01,
		4.1935483870967738e-01,
		3.8709677419354838e-01,
		3.5483870967741937e-01,
		3.2258064516129037e-01,
		2.9032258064516125e-01,
		2.5806451612903225e-01,
		2.2580645161290325e-01,
		1.9354838709677424e-01,
		1.6129032258064513e-01,
		1.2903225806451613e-01,
		9.6774193548387122e-02,
		6.4516129032258118e-02,
		3.2258064516129004e-02,
		0.0,
		
	};
	
	for (int i=0; i<64; i++) {
		TTBoolean result = !TTTestFloatEquivalence(output->mSampleVectors[0][i], expectedSignalTest3[i]);
		badSampleCount += result;
		if (result)
			TTTestLog("BAD SAMPLE @ i=%i  ( value=%.10f   expected=%.10f )", i, output->mSampleVectors[0][i], expectedSignalTest3[i]);
	}
	
	TTTestAssertion("Test 3: Produces correct signal when phase is wrapped from 0 to 1", 
					badSampleCount == 0, 
					testAssertionCount, 
					errorCount);

	if (badSampleCount)
		TTTestLog("badSampleCount is %i", badSampleCount);
	
	badSampleCountTotal += badSampleCount;
	//reinitializing for next test
	badSampleCount = 0;
	
	// Forth test: two Ramps within a block (we want to check if the jump from 1 to 0 is correct)
	
	// setup the generator
	this->setAttributeValue(TT("frequency"), (sr)/32.0);
	this->setAttributeValue(TT("gain"), 0);
	this->setAttributeValue(TT("phase"), 0);
	this->process(output);
	// created with Octave: expectedSignalTest4 = [linspace(,1,32)';linspace(0,1,32)']
	TTFloat64 expectedSignalTest4[64] = {
		0.0000000000000000e+00,
		3.2258064516129031e-02,
		6.4516129032258063e-02,
		9.6774193548387094e-02,
		1.2903225806451613e-01,
		1.6129032258064516e-01,
		1.9354838709677419e-01,
		2.2580645161290322e-01,
		2.5806451612903225e-01,
		2.9032258064516131e-01,
		3.2258064516129031e-01,
		3.5483870967741937e-01,
		3.8709677419354838e-01,
		4.1935483870967744e-01,
		4.5161290322580644e-01,
		4.8387096774193550e-01,
		5.1612903225806450e-01,
		5.4838709677419351e-01,
		5.8064516129032262e-01,
		6.1290322580645162e-01,
		6.4516129032258063e-01,
		6.7741935483870963e-01,
		7.0967741935483875e-01,
		7.4193548387096775e-01,
		7.7419354838709675e-01,
		8.0645161290322576e-01,
		8.3870967741935487e-01,
		8.7096774193548387e-01,
		9.0322580645161288e-01,
		9.3548387096774188e-01,
		9.6774193548387100e-01,
		1.0000000000000000e+00,
		0.0000000000000000e+00,
		3.2258064516129031e-02,
		6.4516129032258063e-02,
		9.6774193548387094e-02,
		1.2903225806451613e-01,
		1.6129032258064516e-01,
		1.9354838709677419e-01,
		2.2580645161290322e-01,
		2.5806451612903225e-01,
		2.9032258064516131e-01,
		3.2258064516129031e-01,
		3.5483870967741937e-01,
		3.8709677419354838e-01,
		4.1935483870967744e-01,
		4.5161290322580644e-01,
		4.8387096774193550e-01,
		5.1612903225806450e-01,
		5.4838709677419351e-01,
		5.8064516129032262e-01,
		6.1290322580645162e-01,
		6.4516129032258063e-01,
		6.7741935483870963e-01,
		7.0967741935483875e-01,
		7.4193548387096775e-01,
		7.7419354838709675e-01,
		8.0645161290322576e-01,
		8.3870967741935487e-01,
		8.7096774193548387e-01,
		9.0322580645161288e-01,
		9.3548387096774188e-01,
		9.6774193548387100e-01,
		1.0000000000000000e+00,
		
	};
	
	for (int i=0; i<64; i++) {
		TTBoolean result = !TTTestFloatEquivalence(output->mSampleVectors[0][i], expectedSignalTest4[i]);
		badSampleCount += result;
		if (result)
			TTTestLog("BAD SAMPLE @ i=%i  ( value=%.10f   expected=%.10f )", i, output->mSampleVectors[0][i], expectedSignalTest4[i]);
	}
	
	TTTestAssertion("Test 4: Produces correct signal when phase is wrapped from 1 to 0", 
					badSampleCount == 0, 
					testAssertionCount, 
					errorCount);
	if (badSampleCount)
		TTTestLog("badSampleCount is %i", badSampleCount);
	
	badSampleCountTotal += badSampleCount;
	//reinitializing for next test
	badSampleCount = 0;
	
	
	// Total number of bad samples:
	if (badSampleCountTotal)
		TTTestLog("badSampleCountTotal is %i", badSampleCountTotal);
	
	TTObjectRelease(&output);
	
	
	// Wrap up the test results to pass back to whoever called this test
	return TTTestFinish(testAssertionCount, errorCount, returnedTestInfo);
}

