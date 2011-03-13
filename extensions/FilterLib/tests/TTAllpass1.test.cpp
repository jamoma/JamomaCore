/* 
 * Unit tests for the First-Order Allpass Filter Object for Jamoma DSP
 * Copyright © 2011, Tim Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTAllpass1.h"


TTErr TTAllpass1::test(TTValue& returnedTestInfo)
{
	int					errorCount = 0;
	int					testAssertionCount = 0;
	int					badSampleCount = 0;
	TTAudioSignalPtr	input = NULL;
	TTAudioSignalPtr	output = NULL;
	
	// create 1 channel audio signal objects
	TTObjectInstantiate(kTTSym_audiosignal, &input, 1);
	TTObjectInstantiate(kTTSym_audiosignal, &output, 1);
	input->allocWithVectorSize(64);
	output->allocWithVectorSize(64);
	
	// create an impulse
	input->clear();						// set all samples to zero
	input->mSampleVectors[0][0] = 1.0;	// set the first sample to 1
	
	// setup the filter
	this->setAttributeValue(TT("linearGain"), 0.5);
	this->setAttributeValue(TT("delayInSamples"), 1);
	this->process(input, output);
	
	// coefficients calculated in Matlab/Scilab
	//	a = [0.5, 1.0];	% numerator (fir)
	//	b = [1.0, 0.5];	% denominator (iir)
	//	i = impz(a, b, 64);
	TTFloat64 expectedImpulseResponse[64] = {
		0.500000000000000    ,
		0.750000000000000    ,
		-0.375000000000000   ,
		0.187500000000000    ,
		-0.0937500000000000  ,
		0.0468750000000000   ,
		-0.0234375000000000  ,
		0.0117187500000000   ,
		-0.00585937500000000 ,
		0.00292968750000000  ,
		-0.00146484375000000 ,
		0.000732421875000000 ,
		-0.000366210937500000,
		0.000183105468750000 ,
		-9.15527343750000e-05,
		4.57763671875000e-05 ,
		-2.28881835937500e-05,
		1.14440917968750e-05 ,
		-5.72204589843750e-06,
		2.86102294921875e-06 ,
		-1.43051147460938e-06,
		7.15255737304688e-07 ,
		-3.57627868652344e-07,
		1.78813934326172e-07 ,
		-8.94069671630859e-08,
		4.47034835815430e-08 ,
		-2.23517417907715e-08,
		1.11758708953857e-08 ,
		-5.58793544769287e-09,
		2.79396772384644e-09 ,
		-1.39698386192322e-09,
		6.98491930961609e-10 ,
		-3.49245965480804e-10,
		1.74622982740402e-10 ,
		-8.73114913702011e-11,
		4.36557456851006e-11 ,
		-2.18278728425503e-11,
		1.09139364212751e-11 ,
		-5.45696821063757e-12,
		2.72848410531878e-12 ,
		-1.36424205265939e-12,
		6.82121026329696e-13 ,
		-3.41060513164848e-13,
		1.70530256582424e-13 ,
		-8.52651282912120e-14,
		4.26325641456060e-14 ,
		-2.13162820728030e-14,
		1.06581410364015e-14 ,
		-5.32907051820075e-15,
		2.66453525910038e-15 ,
		-1.33226762955019e-15,
		6.66133814775094e-16 ,
		-3.33066907387547e-16,
		1.66533453693773e-16 ,
		-8.32667268468867e-17,
		4.16333634234434e-17 ,
		-2.08166817117217e-17,
		1.04083408558608e-17 ,
		-5.20417042793042e-18,
		2.60208521396521e-18 ,
		-1.30104260698261e-18,
		6.50521303491303e-19 ,
		-3.25260651745651e-19,
		1.62630325872826e-19		
	};
	
	for (int i=0; i<64; i++) {
		TTBoolean result = !TTTestFloatEquivalence(output->mSampleVectors[0][i], expectedImpulseResponse[i]);
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
	
	
	
	
	TTObjectRelease(&input);
	TTObjectRelease(&output);
	
	
	// Wrap up the test results to pass back to whoever called this test
	return TTTestFinish(testAssertionCount, errorCount, returnedTestInfo);
}

