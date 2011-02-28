/* 
 * WindowFunctionLib
 * Extension Class for Jamoma DSP
 * Copyright © 2009, Timothy Place & Trond Lossius
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTDSP.h"

#include "BartlettWindow.h"
#include "BlackmanWindow.h"
#include "BlackmanHarrisWindow.h"
#include "HammingWindow.h"
#include "HanningWindow.h"
#include "KaiserWindow.h"
#include "NuttallWindow.h"
#include "RectangularWindow.h"
#include "TrapezoidWindow.h"
#include "WelchWindow.h"

#include "WindowFunction.h"


extern "C" TT_EXTENSION_EXPORT TTErr loadTTExtension(void)
{
	TTDSPInit();

	BartlettWindow::registerClass();
	BlackmanWindow::registerClass();
	BlackmanHarrisWindow::registerClass();
	HammingWindow::registerClass();
	HanningWindow::registerClass();
	KaiserWindow::registerClass();
	NuttallWindow::registerClass();
	RectangularWindow::registerClass();
	TrapezoidWindow::registerClass();
	WelchWindow::registerClass();

	WindowFunction::registerClass();
	return kTTErrNone;
}

