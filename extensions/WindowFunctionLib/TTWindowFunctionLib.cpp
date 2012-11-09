/** @file
 *
 * @ingroup dspWindowFunctionLib
 *
 * @brief WindowFunctionLib: Extension Class for Jamoma DSP
 *
 * @details This library provides a set of window functions that can be used for e.g., granular synthesis and spectral processing.
 *
 * @authors Tim Place, Trond Lossius
 *
 * @copyright Copyright © 2009 by Timothy Place & Trond Lossius @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTDSP.h"

#include "TTBartlettWindow.h"
#include "TTBlackmanWindow.h"
#include "TTBlackmanHarrisWindow.h"
#include "TTExpodecWindow.h"
#include "TTGaussWindow.h"
#include "TTHammingWindow.h"
#include "TTHanningWindow.h"
#include "TTKaiserWindow.h"
#include "TTNuttallWindow.h"
#include "TTRectangularWindow.h"
#include "TTTrapezoidWindow.h"
#include "TTTukeyWindow.h"
#include "TTWelchWindow.h"

#include "TTWindowFunction.h"


/** Register classes for all of the window functions.
 @return 
 */
extern "C" TT_EXTENSION_EXPORT TTErr TTLoadJamomaExtension_WindowFunctionLib(void)
{
	TTDSPInit();

	BartlettWindow::registerClass();
	BlackmanWindow::registerClass();
	BlackmanHarrisWindow::registerClass();
	ExpodecWindow::registerClass();
	GaussWindow::registerClass();
	HammingWindow::registerClass();
	HanningWindow::registerClass();
	KaiserWindow::registerClass();
	NuttallWindow::registerClass();
	RectangularWindow::registerClass();
	TrapezoidWindow::registerClass();
	TukeyWindow::registerClass();
	WelchWindow::registerClass();

	WindowFunction::registerClass();
	return kTTErrNone;
}

