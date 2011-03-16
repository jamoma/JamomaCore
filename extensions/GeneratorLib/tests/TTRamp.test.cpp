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
	TTObjectInstantiate(kTTSym_audiosignal, &output, 1);
	output->allocWithVectorSize(64);
	
	// setup the generator
	this->setAttributeValue(TT("destinationValue"), 1.0);
	this->setAttributeValue(TT("currentValue"), 0.0);
	this->setAttributeValue(TT("mode"), TT("sample"));
	this->setAttributeValue(TT("rampTime"), 64000.0/sr);
	this->process(output);
	

	// created with Octave: sig = linspace(0,1,65) 
	TTFloat64 expectedSignalTest1[64] = {
		//0.0000000000000000e+00,
		1.5625000000000000e-02,
		3.1250000000000000e-02,
		4.6875000000000000e-02,
		6.2500000000000000e-02,
		7.8125000000000000e-02,
		9.3750000000000000e-02,
		1.0937500000000000e-01,
		1.2500000000000000e-01,
		1.4062500000000000e-01,
		1.5625000000000000e-01,
		1.7187500000000000e-01,
		1.8750000000000000e-01,
		2.0312500000000000e-01,
		2.1875000000000000e-01,
		2.3437500000000000e-01,
		2.5000000000000000e-01,
		2.6562500000000000e-01,
		2.8125000000000000e-01,
		2.9687500000000000e-01,
		3.1250000000000000e-01,
		3.2812500000000000e-01,
		3.4375000000000000e-01,
		3.5937500000000000e-01,
		3.7500000000000000e-01,
		3.9062500000000000e-01,
		4.0625000000000000e-01,
		4.2187500000000000e-01,
		4.3750000000000000e-01,
		4.5312500000000000e-01,
		4.6875000000000000e-01,
		4.8437500000000000e-01,
		5.0000000000000000e-01,
		5.1562500000000000e-01,
		5.3125000000000000e-01,
		5.4687500000000000e-01,
		5.6250000000000000e-01,
		5.7812500000000000e-01,
		5.9375000000000000e-01,
		6.0937500000000000e-01,
		6.2500000000000000e-01,
		6.4062500000000000e-01,
		6.5625000000000000e-01,
		6.7187500000000000e-01,
		6.8750000000000000e-01,
		7.0312500000000000e-01,
		7.1875000000000000e-01,
		7.3437500000000000e-01,
		7.5000000000000000e-01,
		7.6562500000000000e-01,
		7.8125000000000000e-01,
		7.9687500000000000e-01,
		8.1250000000000000e-01,
		8.2812500000000000e-01,
		8.4375000000000000e-01,
		8.5937500000000000e-01,
		8.7500000000000000e-01,
		8.9062500000000000e-01,
		9.0625000000000000e-01,
		9.2187500000000000e-01,
		9.3750000000000000e-01,
		9.5312500000000000e-01,
		9.6875000000000000e-01,
		9.8437500000000000e-01,
		1.0000000000000000e+00
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
	
	// Second test: now the ramp goes from 1 to 0
	
	// setup the generator
	
	this->setAttributeValue(TT("currentValue"), 1.0);
	this->setAttributeValue(TT("destinationValue"), 0.0);
	this->setAttributeValue(TT("mode"), TT("sample"));
	this->setAttributeValue(TT("rampTime"), 64000.0/sr); 
	this->process(output);
	// created with Octave: linspace(1,0,65) 
	TTFloat64 expectedSignalTest2[64] = {
		//1.0000000000000000e+00,
		9.8437500000000000e-01,
		9.6875000000000000e-01,
		9.5312500000000000e-01,
		9.3750000000000000e-01,
		9.2187500000000000e-01,
		9.0625000000000000e-01,
		8.9062500000000000e-01,
		8.7500000000000000e-01,
		8.5937500000000000e-01,
		8.4375000000000000e-01,
		8.2812500000000000e-01,
		8.1250000000000000e-01,
		7.9687500000000000e-01,
		7.8125000000000000e-01,
		7.6562500000000000e-01,
		7.5000000000000000e-01,
		7.3437500000000000e-01,
		7.1875000000000000e-01,
		7.0312500000000000e-01,
		6.8750000000000000e-01,
		6.7187500000000000e-01,
		6.5625000000000000e-01,
		6.4062500000000000e-01,
		6.2500000000000000e-01,
		6.0937500000000000e-01,
		5.9375000000000000e-01,
		5.7812500000000000e-01,
		5.6250000000000000e-01,
		5.4687500000000000e-01,
		5.3125000000000000e-01,
		5.1562500000000000e-01,
		5.0000000000000000e-01,
		4.8437500000000000e-01,
		4.6875000000000000e-01,
		4.5312500000000000e-01,
		4.3750000000000000e-01,
		4.2187500000000000e-01,
		4.0625000000000000e-01,
		3.9062500000000000e-01,
		3.7500000000000000e-01,
		3.5937500000000000e-01,
		3.4375000000000000e-01,
		3.2812500000000000e-01,
		3.1250000000000000e-01,
		2.9687500000000000e-01,
		2.8125000000000000e-01,
		2.6562500000000000e-01,
		2.5000000000000000e-01,
		2.3437500000000000e-01,
		2.1875000000000000e-01,
		2.0312500000000000e-01,
		1.8750000000000000e-01,
		1.7187500000000000e-01,
		1.5625000000000000e-01,
		1.4062500000000000e-01,
		1.2500000000000000e-01,
		1.0937500000000000e-01,
		9.3750000000000000e-02,
		7.8125000000000000e-02,
		6.2500000000000000e-02,
		4.6875000000000000e-02,
		3.1250000000000000e-02,
		1.5625000000000000e-02,
		0.0000000000000000e+00
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
	
	
	// Finish //
	
	// Total number of bad samples:
	if (badSampleCountTotal)
		TTTestLog("badSampleCountTotal is %i", badSampleCountTotal);
	
	TTObjectRelease(&output);
	
	
	// Wrap up the test results to pass back to whoever called this test
	return TTTestFinish(testAssertionCount, errorCount, returnedTestInfo);
}

