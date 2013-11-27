/** @file
 *
 * @ingroup dspWindowFunctionLib
 *
 * @brief Unit test for the Gauss Window Function Unit for Jamoma DSP
 *
 * @details
 *
 * @authors Nathan Wolek, Tim Place, Trond Lossius
 *
 * @copyright Copyright © 2011 by Nathan Wolek @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTWindowFunction.h"
#include "TTGaussWindow.h"


/*
 * coefficients calculated using Octave using these variables and commands:
 * N = 128
 * k = 0:N-1
 * sigma = 0.4
 * y = exp(-0.5*( (k-(N-1)/2)/(sigma*(N-1)/2) ).^2);
 */
static TTFloat64 sGaussWindowCoefficients128[128] = {
	0.04393693362340742, 0.04844385382644425, 0.05333035421212484, 0.05861882293983547, 
	0.06433192710868552, 0.07049249318362928, 0.07712337438092012, 0.0842473050332327,
	0.09188674210444778, 0.100063694185871, 0.1087995384783336, 0.1181148264467149, 
	0.1280290790231343, 0.1385605724303148, 0.1497261158950781, 0.161540822720985,
	0.1740178763859497, 0.187168293522201, 0.2010006858190279, 0.2155210230600156, 
	0.2307323996625531, 0.2466348072248616, 0.2632249157012795, 0.2804958659167827,
	0.2984370761936094, 0.3170340658935324, 0.3362682986762221, 0.3561170482350605, 
	0.3765532891949464, 0.397545615740786, 0.4190581903897632, 0.4410507251249852,
	0.4634784968731615, 0.486292399035766, 0.5094390304734198, 0.5328608229995226, 
	0.5564962080645988, 0.5802798229111972, 0.6041427560549315, 0.6280128315053217,
	0.6518149306860175, 0.6754713505536563, 0.6989021959543232, 0.7220258038028613, 
	0.744759196229827, 0.7670185594204288, 0.7887197444759794, 0.8097787862677291,
	0.8301124359315742, 0.8496387023758121, 0.8682773979480479, 0.8859506832361098, 
	0.9025836058652441, 0.9181046281029399, 0.9324461380955926, 0.9455449396390315, 
	0.9573427155278681, 0.9677864597358519, 0.9768288739490784, 0.9844287243031341,
	0.9905511545602596, 0.9951679523986283, 0.9982577659672924, 0.9998062683808934, 
	0.9998062683808934, 0.9982577659672924, 0.9951679523986283, 0.9905511545602596,
	0.9844287243031341, 0.9768288739490784, 0.9677864597358519, 0.9573427155278681, 
	0.9455449396390315, 0.9324461380955926, 0.9181046281029399, 0.9025836058652441,
	0.8859506832361098, 0.8682773979480479, 0.8496387023758121, 0.8301124359315742, 
	0.8097787862677291, 0.7887197444759794, 0.7670185594204288, 0.744759196229827,
	0.7220258038028613, 0.6989021959543232, 0.6754713505536563, 0.6518149306860175, 
	0.6280128315053217, 0.6041427560549315, 0.5802798229111972, 0.5564962080645988,
	0.5328608229995226, 0.5094390304734198, 0.486292399035766, 0.4634784968731615, 
	0.4410507251249852, 0.4190581903897632, 0.397545615740786, 0.3765532891949464,
	0.3561170482350605, 0.3362682986762221, 0.3170340658935324, 0.2984370761936094, 
	0.2804958659167827, 0.2632249157012795, 0.2466348072248616, 0.2307323996625531,
	0.2155210230600156, 0.2010006858190279, 0.187168293522201, 0.1740178763859497, 
	0.161540822720985, 0.1497261158950781, 0.1385605724303148, 0.1280290790231343,
	0.1181148264467149, 0.1087995384783336, 0.100063694185871, 0.09188674210444778, 
	0.0842473050332327, 0.07712337438092012, 0.07049249318362928, 0.06433192710868552,
	0.05861882293983547, 0.05333035421212484, 0.04844385382644425, 0.04393693362340742
};

TTErr GaussWindow::test(TTValue& returnedTestInfo)
{
	int					errorCount = 0;
	int					testAssertionCount = 0;
	int					badSampleCount = 0;
	TTAudioObjectBasePtr	windowObject = NULL;
	TTAudioSignalPtr	input = NULL;
	TTAudioSignalPtr	output = NULL;
	int					N = 128;
	TTValue				v;
	TTFloat64			testSigma = 0.4;
	
	// setup windowObject
	TTObjectBaseInstantiate(TT("WindowFunction"), &windowObject, TTValue(1));
	windowObject->setAttributeValue(TT("function"), TT("gauss"));
	windowObject->setAttributeValue(TT("mode"), TT("apply"));
	
	// set the value for sigma
	windowObject->setAttributeValue(TT("sigma"), testSigma);
	TTTestLog("sigma was set to %.10f for test", testSigma);
	
	// create 1 channel audio signal objects
	TTObjectBaseInstantiate(kTTSym_audiosignal, &input, 1);
	TTObjectBaseInstantiate(kTTSym_audiosignal, &output, 1);
	input->allocWithVectorSize(N);
	output->allocWithVectorSize(N);
	
	// create a signal to be transformed and then process it)
	input->fill(1.0);
	windowObject->process(input, output);
	
	// now test the output
	for (int n=0; n<N; n++)
	{
		TTBoolean result = !TTTestFloatEquivalence(output->mSampleVectors[0][n], sGaussWindowCoefficients128[n]);
		badSampleCount += result;
		if (result) 
			TTTestLog("BAD SAMPLE @ n=%i ( value=%.10f	expected=%.10f )", n, output->mSampleVectors[0][n], sGaussWindowCoefficients128[n]);
	}
	
	TTTestAssertion("Produces correct window coefficients", 
					badSampleCount == 0,
					testAssertionCount, 
					errorCount);
	if (badSampleCount)
		TTTestLog("badSampleCount is %i", badSampleCount);
	
	
	TTObjectBaseRelease(&input);
	TTObjectBaseRelease(&output);
	TTObjectBaseRelease(&windowObject);
	
	
	// wrap up test results and pass back to whoever called test
	return TTTestFinish(testAssertionCount, errorCount, returnedTestInfo);
	
}