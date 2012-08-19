/* 
 * Unit tests for the Jamoma DSP Rectangular Window Function
 * Copyright © 2012, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTWindowFunction.h"
#include "TTRectangularWindow.h"


/*
	coefficients calculated using Octave using these variables and commands:
 
	octave-3.2.3:2> L = 128;
	octave-3.2.3:2> w = ones(L,1);
 
*/
static TTFloat64 sRectangularWindowCoefficients128[128];


TTErr RectangularWindow::test(TTValue& returnedTestInfo)
{
	int	L = 128;
	for (int l=0; l<L; l++)
		sRectangularWindowCoefficients128[l] = 1.0;
	
	int					errorCount = 0;
	int					testAssertionCount = 0;
	int					badSampleCount = 0;
	TTAudioObjectPtr	windowObject = NULL;
	TTAudioSignalPtr	input = NULL;
	TTAudioSignalPtr	output = NULL;
	int					N = 128;
	TTValue				v;
	
	// setup windowObject
	TTObjectInstantiate(TT("WindowFunction"), &windowObject, kTTVal1);
	windowObject->setAttributeValue(TT("function"), TT("rectangular"));
	windowObject->setAttributeValue(TT("mode"), TT("apply"));
	
	// create 1 channel audio signal objects
	TTObjectInstantiate(kTTSym_audiosignal, &input, 1);
	TTObjectInstantiate(kTTSym_audiosignal, &output, 1);
	input->allocWithVectorSize(N);
	output->allocWithVectorSize(N);
									
	// create a signal to be transformed and then process it)
	input->fill(1.0);
	windowObject->process(input, output);
	
	// now test the output
	for (int n=0; n<N; n++)
	{
		TTBoolean result = !TTTestFloatEquivalence(output->mSampleVectors[0][n], sRectangularWindowCoefficients128[n]);
		badSampleCount += result;
		if (result) 
			TTTestLog("BAD SAMPLE @ n=%i ( value=%.10f	expected=%.10f )", n, output->mSampleVectors[0][n], sRectangularWindowCoefficients128[n]);
	}
	
	TTTestAssertion("Produces correct window coefficients", 
					badSampleCount == 0,
					testAssertionCount, 
					errorCount);
	if (badSampleCount)
		TTTestLog("badSampleCount is %i", badSampleCount);
	
	
	TTObjectRelease(&input);
	TTObjectRelease(&output);
	TTObjectRelease(&windowObject);

	
	// wrap up test results and pass back to whoever called test
	return TTTestFinish(testAssertionCount, errorCount, returnedTestInfo);

}