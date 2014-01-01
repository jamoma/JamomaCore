/* 
 * Unit tests for the Ramp Object for Jamoma DSP
 * Copyright © 2011, Nils Peters
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTRamp.h"


TTErr TTRamp::test(TTValue& returnedTestInfo)
{
	int					errorCount = 0;
	int					testAssertionCount = 0;
	int					badSampleCount = 0;
	int					badSampleCountTotal = 0;
	TTAudioSignalPtr	output = NULL;
	
	// create 1 channel audio signal objects
	TTObjectBaseInstantiate(kTTSym_audiosignal, &output, 1);
	output->allocWithVectorSize(64);
	
	// setup the generator
	this->setAttributeValue(TT("destinationValue"), 1.0);
	this->setAttributeValue(TT("startValue"), 0.0);
	this->setAttributeValue(TT("mode"), TT("sample"));
	this->setAttributeValue(TT("rampTime"), 64000.0/sr);
	this->process(output);
	

	// created with Octave: sig = linspace(0,1,64) 
	TTFloat64 expectedSignalTest1[64] = {
		0.0000000000000000e+00,
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
		1.0000000000000000e+00		
	};
	
	for (int i=0; i<64; i++) {
		TTBoolean result = !TTTestFloatEquivalence(output->mSampleVectors[0][i], expectedSignalTest1[i]);
		badSampleCount += result;
		if (result)
			//TTTestLog("BAD SAMPLE @ i=%i  ( value=%.10f   expected=%.10f )", i, output->mSampleVectors[0][i], expectedSignalTest1[i]);
            std::cout << "BAD SAMPLE @ n=" << i << " ( value=" << output->mSampleVectors[0][i] << " expected=" << expectedSignalTest1[i] << " )\n";
	}
    
	TTTestAssertion("Test 1: Produces correct ramp from 0 to 1 when a positive Frequency is defined", 
					badSampleCount == 0, 
					testAssertionCount, 
					errorCount);
    
	if (badSampleCount)
		//TTTestLog("badSampleCount is %i", badSampleCount);
        std::cout << "badSampleCount is " << badSampleCount << "\n";
	
	badSampleCountTotal += badSampleCount;
	//reinitializing for next test
	badSampleCount = 0;
	
	// Second test: now the ramp goes from 1 to 0
	
	// setup the generator
	
	this->setAttributeValue(TT("startValue"), 1.0);
	this->setAttributeValue(TT("destinationValue"), 0.0);
	this->setAttributeValue(TT("mode"), TT("sample"));
	this->setAttributeValue(TT("rampTime"), 64000.0/sr); 
	this->process(output);
	// created with Octave: linspace(1,0,64) 
	TTFloat64 expectedSignalTest2[64] = {
		1.0000000000000000e+00,
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
		0.0000000000000000e+00
	};
	
	for (int i=0; i<64; i++) {
		TTBoolean result = !TTTestFloatEquivalence(output->mSampleVectors[0][i], expectedSignalTest2[i]);
		badSampleCount += result;
		if (result)
			//TTTestLog("BAD SAMPLE @ i=%i  ( value=%.10f   expected=%.10f )", i, output->mSampleVectors[0][i], expectedSignalTest2[i]);
            std::cout << "BAD SAMPLE @ n=" << i << " ( value=" << output->mSampleVectors[0][i] << " expected=" << expectedSignalTest2[i] << " )\n";
	}
	
	TTTestAssertion("Test 2: Produces correct ramp from 1 to 0 when a negative Frequency is defined", 
					badSampleCount == 0,
					testAssertionCount, 
					errorCount);
    
	if (badSampleCount)
		//TTTestLog("badSampleCount is %i", badSampleCount);
        std::cout << "badSampleCount is " << badSampleCount << "\n";
	
	badSampleCountTotal += badSampleCount;
	//reinitializing for next test
	badSampleCount = 0;
	
	
	// Finish //
	
	// Total number of bad samples:
	if (badSampleCountTotal)
		TTTestLog("badSampleCountTotal is %i", badSampleCountTotal);
	
	TTObjectBaseRelease(&output);
	
	
	// Wrap up the test results to pass back to whoever called this test
	return TTTestFinish(testAssertionCount, errorCount, returnedTestInfo);
}

