/** @file
 *
 * @ingroup dspFunctionLib
 *
 * @brief FuncitonLib extends Jamoma DSP with a set of functions for mapping, ramping and more, including Robert Penner's easing functions
 *
 * @details FunctionLib makes use of code derived from Sam Hocevar's public domain C/C++ implementation of Robert Penner easing functions
 *
 * @authors Tim Place, Trond Lossius, Dave Watson
 *
 * @copyright Copyright © 2008 Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#include "TTDSP.h"
#include "TTExpFunction.h"
#include "TTFreeHandFunction.h"
#include "TTLinearFunction.h"
#include "TTLogFunction.h"
#include "TTLowpassFunction.h"
#include "TTPowerFunction.h"
#include "TTSmoothPolynomialFunction.h"
#include "TTTanhFunction.h"

#include "TTQuadraticEaseInFunction.h"
#include "TTQuadraticEaseOutFunction.h"
#include "TTQuadraticEaseInOutFunction.h"
#include "TTCubicEaseInFunction.h"
#include "TTCubicEaseOutFunction.h"
#include "TTCubicEaseInOutFunction.h"
#include "TTQuarticEaseInFunction.h"
#include "TTQuarticEaseOutFunction.h"
#include "TTQuarticEaseInOutFunction.h"
#include "TTQuinticEaseInFunction.h"
#include "TTQuinticEaseOutFunction.h"
#include "TTQuinticEaseInOutFunction.h"
#include "TTSineEaseInFunction.h"
#include "TTSineEaseOutFunction.h"
#include "TTSineEaseInOutFunction.h"
#include "TTCircularEaseInFunction.h"
#include "TTCircularEaseOutFunction.h"
#include "TTCircularEaseInOutFunction.h"
#include "TTExponentialEaseInFunction.h"
#include "TTExponentialEaseOutFunction.h"
#include "TTExponentialEaseInOutFunction.h"
#include "TTElasticEaseInFunction.h"
#include "TTElasticEaseOutFunction.h"
#include "TTElasticEaseInOutFunction.h"
#include "TTBackEaseInFunction.h"
#include "TTBackEaseOutFunction.h"
#include "TTBackEaseInOutFunction.h"
#include "TTBounceEaseInFunction.h"
#include "TTBounceEaseOutFunction.h"
#include "TTBounceEaseInOutFunction.h"

#include "TTFunction.h"


extern "C" TT_EXTENSION_EXPORT TTErr TTLoadJamomaExtension_FunctionLib(void)
{
	TTDSPInit();
	
	// Register all functions
	
	// Linear should show up first
	TTLinearFunction::registerClass();

	// Robert Penner easing functions
	TTBackEaseInFunction::registerClass();
	TTBackEaseInOutFunction::registerClass();
	TTBackEaseOutFunction::registerClass();
	TTBounceEaseInFunction::registerClass();
	TTBounceEaseInOutFunction::registerClass();
	TTBounceEaseOutFunction::registerClass();
	TTCircularEaseInFunction::registerClass();
	TTCircularEaseInOutFunction::registerClass();
	TTCircularEaseOutFunction::registerClass();
	TTCubicEaseInFunction::registerClass();
	TTCubicEaseInOutFunction::registerClass();
	TTCubicEaseOutFunction::registerClass();
	TTElasticEaseInFunction::registerClass();
	TTElasticEaseInOutFunction::registerClass();
	TTElasticEaseOutFunction::registerClass();
	TTExponentialEaseInFunction::registerClass();
	TTExponentialEaseInOutFunction::registerClass();
	TTExponentialEaseOutFunction::registerClass();
	TTQuadraticEaseInFunction::registerClass();
	TTQuadraticEaseInOutFunction::registerClass();
	TTQuadraticEaseOutFunction::registerClass();
	TTQuarticEaseInFunction::registerClass();
	TTQuarticEaseInOutFunction::registerClass();
	TTQuarticEaseOutFunction::registerClass();
	TTQuinticEaseInFunction::registerClass();
	TTQuinticEaseInOutFunction::registerClass();
	TTQuinticEaseOutFunction::registerClass();
	TTSineEaseInFunction::registerClass();
	TTSineEaseInOutFunction::registerClass();
	TTSineEaseOutFunction::registerClass();
	
	// More regular functions
	TTExpFunction::registerClass();
	TTFreeHandFunction::registerClass();
	TTLogFunction::registerClass();
	TTLowpassFunction::registerClass();
	TTPowerFunction::registerClass();
	TTSmoothPolynomialFunction::registerClass();
	TTTanhFunction::registerClass();
	
	TTFunction::registerClass();
	
	return kTTErrNone;
}

