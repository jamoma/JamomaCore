/** @file
 *
 * @ingroup dspWindowFunctionLib
 *
 * @brief Unit tests for the Tukey Window Function Unit
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
#include "TTTukeyWindow.h"


/*
 * coefficients calculated using Octave using these variables and commands:
 * alpha = 0.5
 * alphaOverTwo = alpha / 2
 * twoOverAlpha = 2 / alpha
 * x = 0.0:1/127:1.0
 * n = 1:length(x)
 * y = 
 *		if x(n) < alphaOverTwo
 *			y(n) = 0.5 * (1 + cos ( pi * ((twoOverAlpha * x(n) ) - 1)));
 *		else
 *			if x(n)  > (1 - alphaOverTwo)
 *				y(n) = 0.5 * (1 + cos ( pi * ((twoOverAlpha * x(n) ) - twoOverAlpha + 1)));
 *			else 
 *				y(n) = 1;
 *			end
 *		end
*/
static TTFloat64 sTukeyWindowCoefficients128[128] = {
	0, 0.002445670414196688, 0.009758756441687333, 0.0218677164899363, 0.03865409245759671, 0.0599536685724058, 0.08555807786180814, 0.1152168405407152, 
	0.148639814375505, 0.1855000330531288, 0.2254369047884639, 0.2680597398789554, 0.3129515726976034, 0.3596732407349534, 0.4077676807861221, 0.4567644002546273, 
	0.5061840798316815, 0.5555432625244022, 0.6043590831616676, 0.6521539921103681, 0.6984604269914436, 0.7428253866937918, 0.7848148629399286, 0.8240180860508026, 
	0.8600515433748003, 0.8925627310699273, 0.9212336025366787, 0.9457836797666722, 0.9659727971697173, 0.9816034510373285, 0.9925227316586316, 0.9986238191873873, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	0.9986238191873873, 0.9925227316586317, 0.9816034510373286, 0.9659727971697174, 0.9457836797666723, 0.9212336025366786, 0.8925627310699273, 0.8600515433748003, 
	0.8240180860508026, 0.7848148629399287, 0.7428253866937922, 0.698460426991444, 0.6521539921103678, 0.6043590831616674, 0.5555432625244022, 0.5061840798316815, 
	0.4567644002546273, 0.4077676807861222, 0.3596732407349537, 0.3129515726976038, 0.2680597398789558, 0.2254369047884637, 0.1855000330531288, 0.148639814375505, 
	0.1152168405407152, 0.08555807786180825, 0.05995366857240592, 0.03865409245759677, 0.02186771648993618, 0.009758756441687333, 0.002445670414196688, 0
};


TTErr TukeyWindow::test(TTValue& returnedTestInfo)
{
	int					errorCount = 0;
	int					testAssertionCount = 0;
	int					badSampleCount = 0;
	TTAudioObjectBasePtr	windowObject = NULL;
	TTAudioSignalPtr	input = NULL;
	TTAudioSignalPtr	output = NULL;
	int					N = 128;
	TTValue				v;
	TTFloat64			testAlpha = 0.5;
	
	// setup windowObject
	TTObjectBaseInstantiate(TT("WindowFunction"), &windowObject, TTValue(1));
	windowObject->setAttributeValue(TT("function"), TT("tukey"));
	windowObject->setAttributeValue(TT("mode"), TT("apply"));
	
	// set the value for alpha
	windowObject->setAttributeValue(TT("alpha"), testAlpha);
	TTTestLog("alpha was set to %.10f for test", testAlpha);
	
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
		TTBoolean result = !TTTestFloatEquivalence(output->mSampleVectors[0][n], sTukeyWindowCoefficients128[n]);
		badSampleCount += result;
		if (result) 
			TTTestLog("BAD SAMPLE @ n=%i ( value=%.10f	expected=%.10f )", n, output->mSampleVectors[0][n], sTukeyWindowCoefficients128[n]);
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