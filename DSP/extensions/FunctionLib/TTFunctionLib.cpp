/** @file
 *
 * @ingroup dspFunctionLib
 *
 * @brief FuncitonLib extends Jamoma DSP with a set of functions for mapping, ramping and more.
 *
 * @details
 *
 * @authors Tim Place, Trond Lossius, Dave Watson
 *
 * @copyright Copyright © 2008 Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#include "TTDSP.h"
#include "TTCosineFunction.h"
#include "TTCrossFadeInFunction.h"
#include "TTCrossFadeOutFunction.h"
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

	TTCosineFunction::registerClass();
	TTCrossFadeInFunction::registerClass();
	TTCrossFadeOutFunction::registerClass();
    TTExpFunction::registerClass();
    TTFreeHandFunction::registerClass();
	TTLinearFunction::registerClass();
	TTLogFunction::registerClass();
	TTLowpassFunction::registerClass();
	TTPowerFunction::registerClass();
	TTSmoothPolynomialFunction::registerClass();
	TTTanhFunction::registerClass();
	
	TTQuadraticEaseInFunction::registerClass();
	TTQuadraticEaseOutFunction::registerClass();
	TTQuadraticEaseInOutFunction::registerClass();
	TTCubicEaseInFunction::registerClass();
	TTCubicEaseOutFunction::registerClass();
	TTCubicEaseInOutFunction::registerClass();
	TTQuarticEaseInFunction::registerClass();
	TTQuarticEaseOutFunction::registerClass();
	TTQuarticEaseInOutFunction::registerClass();
	TTQuinticEaseInFunction::registerClass();
	TTQuinticEaseOutFunction::registerClass();
	TTQuinticEaseInOutFunction::registerClass();
	TTSineEaseInFunction::registerClass();
	TTSineEaseOutFunction::registerClass();
	TTSineEaseInOutFunction::registerClass();
	TTCircularEaseInFunction::registerClass();
	TTCircularEaseOutFunction::registerClass();
	TTCircularEaseInOutFunction::registerClass();
	TTExponentialEaseInFunction::registerClass();
	TTExponentialEaseOutFunction::registerClass();
	TTExponentialEaseInOutFunction::registerClass();
	TTElasticEaseInFunction::registerClass();
	TTElasticEaseOutFunction::registerClass();
	TTElasticEaseInOutFunction::registerClass();
	TTBackEaseInFunction::registerClass();
	TTBackEaseOutFunction::registerClass();
	TTBackEaseInOutFunction::registerClass();
	TTBounceEaseInFunction::registerClass();
	TTBounceEaseOutFunction::registerClass();
	TTBounceEaseInOutFunction::registerClass();
	
	TTFunction::registerClass();
	
	return kTTErrNone;
}

