/** @file
 *
 * @ingroup dspFunctionLib
 *
 * @brief Unit tests for the Jamoma DSP #TTQuinticEaseOutFunction of the #TTFunctionLib
 *
 * @details
 *
 * @authors Trond Lossius
 *
 * @copyright Copyright © 2012 by Trond Lossius @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#include "TTFunction.h"
#include "TTQuinticEaseOutFunction.h"


/*
 * coefficients calculated in Octave using:

 x = linspace(0,1,128);
 f = (x - 1);
 y = f .* f .* f .* f .* f + 1;
 printf("%.16e,\n", y)
 
 */

TTErr TTQuinticEaseOutFunction::test(TTValue& returnedTestInfo)
{
	int					errorCount = 0;
	int					testAssertionCount = 0;
	int					badSampleCount = 0;
	TTAudioSignalPtr	input = NULL;
	TTAudioSignalPtr	output = NULL;
	int					N = 128;
	TTValue				v;
	

	TTFloat64 inputSignal1[128] = {
		0.0000000000000000e+00,
		7.8740157480314960e-03,
		1.5748031496062992e-02,
		2.3622047244094488e-02,
		3.1496062992125984e-02,
		3.9370078740157480e-02,
		4.7244094488188976e-02,
		5.5118110236220472e-02,
		6.2992125984251968e-02,
		7.0866141732283464e-02,
		7.8740157480314960e-02,
		8.6614173228346455e-02,
		9.4488188976377951e-02,
		1.0236220472440945e-01,
		1.1023622047244094e-01,
		1.1811023622047244e-01,
		1.2598425196850394e-01,
		1.3385826771653542e-01,
		1.4173228346456693e-01,
		1.4960629921259844e-01,
		1.5748031496062992e-01,
		1.6535433070866140e-01,
		1.7322834645669291e-01,
		1.8110236220472442e-01,
		1.8897637795275590e-01,
		1.9685039370078738e-01,
		2.0472440944881889e-01,
		2.1259842519685040e-01,
		2.2047244094488189e-01,
		2.2834645669291337e-01,
		2.3622047244094488e-01,
		2.4409448818897639e-01,
		2.5196850393700787e-01,
		2.5984251968503935e-01,
		2.6771653543307083e-01,
		2.7559055118110237e-01,
		2.8346456692913385e-01,
		2.9133858267716534e-01,
		2.9921259842519687e-01,
		3.0708661417322836e-01,
		3.1496062992125984e-01,
		3.2283464566929132e-01,
		3.3070866141732280e-01,
		3.3858267716535434e-01,
		3.4645669291338582e-01,
		3.5433070866141730e-01,
		3.6220472440944884e-01,
		3.7007874015748032e-01,
		3.7795275590551181e-01,
		3.8582677165354329e-01,
		3.9370078740157477e-01,
		4.0157480314960631e-01,
		4.0944881889763779e-01,
		4.1732283464566927e-01,
		4.2519685039370081e-01,
		4.3307086614173229e-01,
		4.4094488188976377e-01,
		4.4881889763779526e-01,
		4.5669291338582674e-01,
		4.6456692913385828e-01,
		4.7244094488188976e-01,
		4.8031496062992124e-01,
		4.8818897637795278e-01,
		4.9606299212598426e-01,
		5.0393700787401574e-01,
		5.1181102362204722e-01,
		5.1968503937007871e-01,
		5.2755905511811019e-01,
		5.3543307086614167e-01,
		5.4330708661417326e-01,
		5.5118110236220474e-01,
		5.5905511811023623e-01,
		5.6692913385826771e-01,
		5.7480314960629919e-01,
		5.8267716535433067e-01,
		5.9055118110236215e-01,
		5.9842519685039375e-01,
		6.0629921259842523e-01,
		6.1417322834645671e-01,
		6.2204724409448819e-01,
		6.2992125984251968e-01,
		6.3779527559055116e-01,
		6.4566929133858264e-01,
		6.5354330708661412e-01,
		6.6141732283464560e-01,
		6.6929133858267720e-01,
		6.7716535433070868e-01,
		6.8503937007874016e-01,
		6.9291338582677164e-01,
		7.0078740157480313e-01,
		7.0866141732283461e-01,
		7.1653543307086609e-01,
		7.2440944881889768e-01,
		7.3228346456692917e-01,
		7.4015748031496065e-01,
		7.4803149606299213e-01,
		7.5590551181102361e-01,
		7.6377952755905509e-01,
		7.7165354330708658e-01,
		7.7952755905511806e-01,
		7.8740157480314954e-01,
		7.9527559055118113e-01,
		8.0314960629921262e-01,
		8.1102362204724410e-01,
		8.1889763779527558e-01,
		8.2677165354330706e-01,
		8.3464566929133854e-01,
		8.4251968503937003e-01,
		8.5039370078740162e-01,
		8.5826771653543310e-01,
		8.6614173228346458e-01,
		8.7401574803149606e-01,
		8.8188976377952755e-01,
		8.8976377952755903e-01,
		8.9763779527559051e-01,
		9.0551181102362199e-01,
		9.1338582677165348e-01,
		9.2125984251968507e-01,
		9.2913385826771655e-01,
		9.3700787401574803e-01,
		9.4488188976377951e-01,
		9.5275590551181100e-01,
		9.6062992125984248e-01,
		9.6850393700787396e-01,
		9.7637795275590555e-01,
		9.8425196850393704e-01,
		9.9212598425196852e-01,
		1.0000000000000000e+00
	};

		
	TTFloat64 expectedSignal1[128] = { 
		0.0000000000000000e+00,
		3.8754940209873467e-02,
		7.6298901163866173e-02,
		1.1266048687655184e-01,
		1.4786784734493952e-01,
		1.8194868218061522e-01,
		2.1493024424188112e-01,
		2.4683934326589752e-01,
		2.7770234950082251e-01,
		3.0754519733795282e-01,
		3.3639338894386372e-01,
		3.6427199789255005e-01,
		3.9120567279756746e-01,
		4.1721864094417060e-01,
		4.4233471192145635e-01,
		4.6657728125450282e-01,
		4.8996933403651011e-01,
		5.1253344856094096e-01,
		5.3429179995366094e-01,
		5.5526616380507965e-01,
		5.7547791980229057e-01,
		5.9494805536121165e-01,
		6.1369716925872630e-01,
		6.3174547526482283e-01,
		6.4911280577473685e-01,
		6.6581861544108978e-01,
		6.8188198480603046e-01,
		6.9732162393337582e-01,
		7.1215587604075015e-01,
		7.2640272113172699e-01,
		7.4007977962796923e-01,
		7.5320431600136928e-01,
		7.6579324240618996e-01,
		7.7786312231120458e-01,
		7.8943017413183802e-01,
		8.0051027486230686e-01,
		8.1111896370775993e-01,
		8.2127144571641897e-01,
		8.3098259541171915e-01,
		8.4026696042444915e-01,
		8.4913876512489228e-01,
		8.5761191425496675e-01,
		8.6569999656036600e-01,
		8.7341628842269947e-01,
		8.8077375749163289e-01,
		8.8778506631702914e-01,
		8.9446257598108825e-01,
		9.0081834973048858e-01,
		9.0686415660852648e-01,
		9.1261147508725782e-01,
		9.1807149669963728e-01,
		9.2325512967166024e-01,
		9.2817300255450219e-01,
		9.3283546785665972e-01,
		9.3725260567609103e-01,
		9.4143422733235615e-01,
		9.4538987899875804e-01,
		9.4912884533448250e-01,
		9.5266015311673879e-01,
		9.5599257487290079e-01,
		9.5913463251264630e-01,
		9.6209460096009880e-01,
		9.6488051178596712e-01,
		9.6750015683968649e-01,
		9.6996109188155855e-01,
		9.7227064021489229e-01,
		9.7443589631814420e-01,
		9.7646372947705928e-01,
		9.7836078741681098e-01,
		9.8013349993414223e-01,
		9.8178808252950533e-01,
		9.8333054003920317e-01,
		9.8476667026752940e-01,
		9.8610206761890873e-01,
		9.8734212673003785e-01,
		9.8849204610202568e-01,
		9.8955683173253406e-01,
		9.9054130074791802e-01,
		9.9145008503536647e-01,
		9.9228763487504279e-01,
		9.9305822257222509e-01,
		9.9376594608944713e-01,
		9.9441473267863811e-01,
		9.9500834251326398e-01,
		9.9555037232046772e-01,
		9.9604425901320937e-01,
		9.9649328332240716e-01,
		9.9690057342907779e-01,
		9.9726910859647677e-01,
		9.9760172280223935e-01,
		9.9790110837052060e-01,
		9.9816981960413609e-01,
		9.9841027641670255e-01,
		9.9862476796477817e-01,
		9.9881545628000312e-01,
		9.9898437990124023e-01,
		9.9913345750671534e-01,
		9.9926449154615815e-01,
		9.9937917187294190e-01,
		9.9947907937622515e-01,
		9.9956568961309089e-01,
		9.9964037644068826e-01,
		9.9970441564837242e-01,
		9.9975898858984513e-01,
		9.9980518581529521e-01,
		9.9984401070353945e-01,
		9.9987638309416282e-01,
		9.9990314291965865e-01,
		9.9992505383757002e-01,
		9.9994280686262926e-01,
		9.9995702399889930e-01,
		9.9996826187191379e-01,
		9.9997701536081740e-01,
		9.9998372123050705e-01,
		9.9998876176377149e-01,
		9.9999246839343270e-01,
		9.9999512533448565e-01,
		9.9999697321623937e-01,
		9.9999821271445721e-01,
		9.9999900818349730e-01,
		9.9999949128845333e-01,
		9.9999976463729479e-01,
		9.9999990541300743e-01,
		9.9999996900573429e-01,
		9.9999999264491546e-01,
		9.9999999903142922e-01,
		9.9999999996973221e-01,
		1.0000000000000000e+00
	};	
	
	// setup Function 
	this->setAttributeValue(TT("function"), TT("easeOutQuintic"));

	
	// create 1 channel audio signal objects
	TTObjectBaseInstantiate(kTTSym_audiosignal, &input, 1);
	TTObjectBaseInstantiate(kTTSym_audiosignal, &output, 1);
	input->allocWithVectorSize(N);
	output->allocWithVectorSize(N);
	
	// create a signal to be transformed and then process it)
	input->clear();	
	for (int i=0; i<N; i++)
		input->mSampleVectors[0][i] = inputSignal1[i]; 
	
	this->process(input, output);
	
	// now test the output
	for (int n=0; n<N; n++)
	{
		TTBoolean result = !TTTestFloatEquivalence(output->mSampleVectors[0][n], expectedSignal1[n]);
		badSampleCount += result;
		if (result) 
			TTTestLog("BAD SAMPLE @ n=%i ( value=%.10f	expected=%.10f )", n, output->mSampleVectors[0][n], expectedSignal1[n]);
	}
	
	TTTestAssertion("Produces correct function values", 
					badSampleCount == 0,
					testAssertionCount, 
					errorCount);
	if (badSampleCount)
		TTTestLog("badSampleCount is %i", badSampleCount);
	
	
	TTObjectBaseRelease(&input);
	TTObjectBaseRelease(&output);
	
	// wrap up test results and pass back to whoever called test
	return TTTestFinish(testAssertionCount, errorCount, returnedTestInfo);
	
}