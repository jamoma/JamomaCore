/** @file
 *
 * @ingroup dspWindowFunctionLib
 *
 * @brief Unot tests for the Kaiser Window Function Unit
 *
 * @details 
 *
 * @authors Tim Place, Trond Lossius
 *
 * @copyright Copyright © 2011 by Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#include "TTWindowFunction.h"
#include "TTKaiserWindow.h"


/*	Reference window table of 128 points, adapted from the Matlab code for the Wikipedia article at:
	http://commons.wikimedia.org/wiki/File:Window_function_(Kaiser;_alpha_%3D_3_pi).png

	N=128;
	k=0:N-1;
	beta = 3 * pi;
	w = besseli(0, beta * sqrt(1 - (2*k / (N-1) -1 ).^2) ) / besseli(0, beta);
 
	The use of alpha and beta is inconsistent among sources for many references on this formula.
	Most often, beta = alpha * pi, and so in this case the adjustment has been made to the original formula.
 */
static TTFloat64 sKaiserB3PiWindowCoefficients128[128] = {
	0.000612335927796156,	0.00111689329607919,	0.00179402708978792,	0.00267595621116774,	0.00379777893185251,	0.00519739541418763,	0.00691538620877882,	0.00899484496799450,	
	0.0114811641628067,		0.0144217731860963,		0.0178658288623726,		0.0218638590538193,		0.0264673607469130,		0.0317283547130500,		0.0376988995505867,		0.0444305686238845,
	0.0519738941065314,	0.0603777829998968,	0.0696889106236525,	0.0799510976511257,	0.0912046772790296,	0.103485859568466,	0.116826100363096,	0.131251482472908,	
	0.146782117000954,	0.163431572779949,	0.181206341871096,	0.200105348955726,	0.220119512219747,	0.241231362991256,	0.263414730944525,	0.286634501132081,	
	0.310846448455336,	0.335997154439626,	0.362024010349221,	0.388855309771215,	0.416410432824564,	0.444600123123790,	0.473326857558506,	0.502485307853777,	
	0.531962891766401,	0.561640410663399,	0.591392769136173,	0.621089771241996,	0.650596986948547,	0.679776681401526,	0.708488798753721,	0.736591991499331,	
	0.763944685561660,	0.790406170796288,	0.815837706104752,	0.840103628013463,	0.863072451365011,	0.884617950698585,	0.904620210965353,	0.922966636433854,	
	0.939552906988288,	0.954283871505835,	0.967074368612417,	0.977849965852688,	0.986547609160636,	0.993116175471601,	0.997516922362848,	0.999723829734840,	
	0.999723829734840,	0.997516922362848,	0.993116175471601,	0.986547609160636,	0.977849965852688,	0.967074368612417,	0.954283871505835,	0.939552906988288,	
	0.922966636433854,	0.904620210965353,	0.884617950698585,	0.863072451365011,	0.840103628013463,	0.815837706104752,	0.790406170796288,	0.763944685561660,	
	0.736591991499331,	0.708488798753721,	0.679776681401526,	0.650596986948547,	0.621089771241995,	0.591392769136173,	0.561640410663399,	0.531962891766401,	
	0.502485307853777,	0.473326857558506,	0.444600123123790,	0.416410432824565,	0.388855309771215,	0.362024010349221,	0.335997154439626,	0.310846448455336,	
	0.286634501132081,	0.263414730944525,	0.241231362991256,	0.220119512219747,	0.200105348955725,	0.181206341871096,	0.163431572779949,	0.146782117000954,	
	0.131251482472908,	0.116826100363096,	0.103485859568466,	0.0912046772790296,	0.0799510976511256,	0.0696889106236525,	0.0603777829998968,	0.0519738941065314,	
	0.0444305686238845,		0.0376988995505867,		0.0317283547130501,		0.0264673607469130,		0.0218638590538193,		0.0178658288623726,		0.0144217731860963,		0.0114811641628067,	
	0.00899484496799450,	0.00691538620877882,	0.00519739541418765,	0.00379777893185252,	0.00267595621116773,	0.00179402708978792,	0.00111689329607919,	0.000612335927796156
};


TTErr KaiserWindow::test(TTValue& returnedTestInfo)
{
	int					errorCount = 0;
	int					testAssertionCount = 0;
	int					badSampleCount = 0;
	TTAudioObjectBasePtr	windowObject = NULL;
	TTAudioSignalPtr	input = NULL;
	TTAudioSignalPtr	output = NULL;
	int					N = 128;
	TTValue				v, aReturnWeDontCareAbout;
	
	// create the object and set the beta parameter
	TTObjectBaseInstantiate(TT("WindowFunction"), &windowObject, TTValue(1));
	windowObject->setAttributeValue(TT("function"), TT("kaiser"));
	windowObject->setAttributeValue(TT("mode"), TT("apply"));
	
	v.resize(2);
	v.set(0, TT("beta"));
	v.set(1, 6.0);
	windowObject->sendMessage(TT("setParameter"), v, aReturnWeDontCareAbout);
	
	TTTestAssertion("Internal intermediate value 1 (zeroth-order bessel fn of the first kind, taken of beta = 6.0) is correct.",
					TTTestFloatEquivalence(((KaiserWindow*)((WindowFunction*)windowObject)->mFunctionObject)->mBesselIOofBeta, 67.2344069764780),
					testAssertionCount,
					errorCount);
	
	// change the alpha parameter and test Bessel function again
	v.resize(2);
	v.set(0, TT("alpha"));
	v.set(1, 2.0);
	windowObject->sendMessage(TT("setParameter"), v, aReturnWeDontCareAbout);
	
	TTTestAssertion("Internal intermediate value 2 (zeroth-order bessel fn of the first kind, taken of alpha = 2) is correct.",
					TTTestFloatEquivalence(((KaiserWindow*)((WindowFunction*)windowObject)->mFunctionObject)->mBesselIOofBeta, 87.10851065339077),
					testAssertionCount,
					errorCount);  // added 4/26 by Wolek
	
	// change the beta parameter and try applying the window
	v.resize(2);
	v.set(0, TT("beta"));
	v.set(1, 3.0 * kTTPi);
	windowObject->sendMessage(TT("setParameter"), v, aReturnWeDontCareAbout);
	
	TTTestAssertion("Internal intermediate value 2 (zeroth-order bessel fn of the first kind, taken of beta = 3 * pi) is correct.",
					TTTestFloatEquivalence(((KaiserWindow*)((WindowFunction*)windowObject)->mFunctionObject)->mBesselIOofBeta, 1633.090522058824),
					testAssertionCount,
					errorCount);  // added 4/26 by Wolek
	
	// create 1 channel audio signal objects
	TTObjectBaseInstantiate(kTTSym_audiosignal, &input, 1);
	TTObjectBaseInstantiate(kTTSym_audiosignal, &output, 1);
	input->allocWithVectorSize(N);
	output->allocWithVectorSize(N);
	
	// create a signal to be transformed, and then process it
	input->fill(1.0);
	windowObject->process(input, output);
		
	// now test the output
	for (int n=0; n<N; n++) {
		TTBoolean result = !TTTestFloatEquivalence(output->mSampleVectors[0][n], sKaiserB3PiWindowCoefficients128[n]);
		badSampleCount += result;
		if (result)
			TTTestLog("BAD SAMPLE @ n=%i  ( value=%.10f   expected=%.10f )", n, output->mSampleVectors[0][n], sKaiserB3PiWindowCoefficients128[n]);
	}

	TTTestAssertion("Produces correct window shape for beta = 3 pi", 
					badSampleCount == 0, 
					testAssertionCount, 
					errorCount);
	if (badSampleCount)
		TTTestLog("badSampleCount is %i", badSampleCount);
	
	
	TTObjectBaseRelease(&input);
	TTObjectBaseRelease(&output);
	TTObjectBaseRelease(&windowObject);
	
	// Wrap up the test results to pass back to whoever called this test
	return TTTestFinish(testAssertionCount, errorCount, returnedTestInfo);
}

