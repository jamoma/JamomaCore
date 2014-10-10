/** @file
 *
 * @ingroup dspFunctionLib
 *
 * @brief Unit tests for the Jamoma DSP #TTSineEaseInOutFunction of the #TTFunctionLib
 *
 * @details Derived from Sam Hocevar's public domain C/C++ implementation of Robert Penner easing functions
 *
 * @authors Trond Lossius
 *
 * @copyright Copyright © 2014 by Trond Lossius @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#include "TTFunction.h"
#include "TTSineEaseInOutFunction.h"


/*
 * coefficients calculated in Octave using:

 x = linspace(0,1,128);
 y = 0.5 * (1 - cos(x * pi))
 printf("%.16e,\n", y)
 
 */

TTErr TTSineEaseInOutFunction::test(TTValue& returnedTestInfo)
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
		1.5297137345843259e-04,
		6.1179189286936220e-04,
		1.3761808126126485e-03,
		2.4456704141966878e-03,
		3.8196062924484853e-03,
		5.4971477559346282e-03,
		7.4772683413683594e-03,
		9.7587564416873329e-03,
		1.2340216047418695e-02,
		1.5220067600876686e-02,
		1.8396548962671455e-02,
		2.1867716489936240e-02,
		2.5631446225614418e-02,
		2.9685435198078036e-02,
		3.4027202830282710e-02,
		3.8654092457596656e-02,
		4.3563272953375365e-02,
		4.8751740461286885e-02,
		5.4216320233327786e-02,
		5.9953668572405805e-02,
		6.5960274878299141e-02,
		7.2232463795741997e-02,
		7.8766397463321258e-02,
		8.5558077861808080e-02,
		9.2603349260487744e-02,
		9.9897900759991443e-02,
		1.0743726893007255e-01,
		1.1521684054071507e-01,
		1.2323185538490222e-01,
		1.3147740919131812e-01,
		1.3994845662519972e-01,
		1.4863981437550489e-01,
		1.5754616432650442e-01,
		1.6666205681186025e-01,
		1.7598191394919738e-01,
		1.8550003305312873e-01,
		1.9521059012464603e-01,
		2.0510764341474025e-01,
		2.1518513706007136e-01,
		2.2543690478846373e-01,
		2.3585667369195812e-01,
		2.4643806806511337e-01,
		2.5717461330620817e-01,
		2.6805973987895532e-01,
		2.7908678733230663e-01,
		2.9024900837588552e-01,
		3.0153957300855644e-01,
		3.1295157269760338e-01,
		3.2447802460596120e-01,
		3.3611187586491154e-01,
		3.4784600788963188e-01,
		3.5967324073495344e-01,
		3.7158633748866599e-01,
		3.8357800869967928e-01,
		3.9564091683833241e-01,
		4.0776768078612202e-01,
		4.1995088035210115e-01,
		4.3218306081318714e-01,
		4.4445673747559766e-01,
		4.5676440025462711e-01,
		4.6909851826995785e-01,
		4.8145154445369737e-01,
		4.9381592016831849e-01,
		5.0618407983168145e-01,
		5.1854845554630258e-01,
		5.3090148173004204e-01,
		5.4323559974537272e-01,
		5.5554326252440211e-01,
		5.6781693918681286e-01,
		5.8004911964789874e-01,
		5.9223231921387787e-01,
		6.0435908316166753e-01,
		6.1642199130032060e-01,
		6.2841366251133390e-01,
		6.4032675926504634e-01,
		6.5215399211036806e-01,
		6.6388812413508846e-01,
		6.7552197539403880e-01,
		6.8704842730239657e-01,
		6.9846042699144351e-01,
		7.0975099162411448e-01,
		7.2091321266769337e-01,
		7.3194026012104463e-01,
		7.4282538669379161e-01,
		7.5356193193488652e-01,
		7.6414332630804194e-01,
		7.7456309521153610e-01,
		7.8481486293992853e-01,
		7.9489235658525970e-01,
		8.0478940987535386e-01,
		8.1449996694687110e-01,
		8.2401808605080262e-01,
		8.3333794318813970e-01,
		8.4245383567349563e-01,
		8.5136018562449500e-01,
		8.6005154337480016e-01,
		8.6852259080868188e-01,
		8.7676814461509767e-01,
		8.8478315945928476e-01,
		8.9256273106992734e-01,
		9.0010209924000861e-01,
		9.0739665073951215e-01,
		9.1444192213819186e-01,
		9.2123360253667874e-01,
		9.2776753620425789e-01,
		9.3403972512170086e-01,
		9.4004633142759408e-01,
		9.4578367976667221e-01,
		9.5124825953871317e-01,
		9.5643672704662452e-01,
		9.6134590754240334e-01,
		9.6597279716971729e-01,
		9.7031456480192191e-01,
		9.7436855377438547e-01,
		9.7813228351006365e-01,
		9.8160345103732849e-01,
		9.8477993239912331e-01,
		9.8765978395258136e-01,
		9.9024124355831267e-01,
		9.9252273165863159e-01,
		9.9450285224406532e-01,
		9.9618039370755151e-01,
		9.9755432958580326e-01,
		9.9862381918738730e-01,
		9.9938820810713058e-01,
		9.9984702862654151e-01,
		1.0000000000000000e+00
	};	
	
	// setup Function 
	this->setAttributeValue(TT("function"), TT("easeInOutSine"));

	
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